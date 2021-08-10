module Skyslope
  class TransactionResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      action :all do
        verb :get
        query_keys :modifiedAfter, :modifiedBefore, :createdAfter, :createdBefore, :closedAfter, :closedBefore, :status, :type, :email, :propertyAddress
        path 'api/files'
        handler(200) { |response| TransactionMapping.extract_collection(response.body, :read) }
      end

      action :listings do
        verb :get
        query_keys :agentGuid, :createdByGuid, :earliestDate, :latestDate, :pageNumber
        path 'api/files/listings'
        handler(200) { |response| TransactionMapping.extract_collection(response.body, :read) }
      end

      action :sales do
        verb :get
        query_keys :agentGuid, :createdByGuid, :earliestDate, :latestDate, :pageNumber
        path 'api/files/sales'
        handler(200) { |response| TransactionMapping.extract_collection(response.body, :read) }
      end

      # action :create_listing do
      # end

      # action :create_sale do
      # end

      # action :find_listing do
      # end

      # action :find_sale do
      # end

      # action :update_listing do
      # end

      # action :update_sale do
      # end

      # action :destroy do
      # end

    end

  end
end
