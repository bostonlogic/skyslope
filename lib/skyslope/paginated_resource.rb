module Skyslope
  class PaginatedResource
    include Enumerable

    attr_reader :action, :resource, :collection
    attr_accessor :links

    def initialize(action, resource, *args)
      @page_number = 0
      @links = []
      @action = action
      @resource = resource
      @collection = []
      @args = args
      @options = args.last.kind_of?(Hash) ? args.last : {}
    end

    def [](index)
      @collection[index]
    end

    def each(start = 0)
      # Start off with the first page if we have no idea of anything yet
      fetch_next_page if links.empty?

      return to_enum(:each, start) unless block_given?
      Array(@collection[start..-1]).each do |element|
        yield(element)
      end

      unless last?
        start = [@collection.size, start].max
        fetch_next_page
        each(start, &Proc.new)
      end

      self
    end

    def last?
      !self.links.any? { |link| link.rel == 'next' }
    end

    def ==(other)
      each_with_index.each.all? { |object, index| object == other[index] }
    end

    private

    def fetch_next_page
      @page_number += 1
      retrieve(@page_number)
    end

    def retrieve(page_number)
      invoker = ResourceKit::ActionInvoker.new(action, resource, *@args)
      invoker.options[:pageNumber] = page_number

      @collection += invoker.handle_response
      
      self.links = LinkMapping.extract_collection(invoker.response.body, :all)
    end

  end
end
