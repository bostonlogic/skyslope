module Skyslope
  class SaleResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      action :all do
        verb :get
        query_keys :agentGuid, :createdByGuid, :earliestDate, :latestDate, :pageNumber
        path 'api/files/sales'
        handler(200) do |response|
          sales_payload = JSON.load(response.body)['value']
          SaleMapping.extract_collection(sales_payload.to_json, :all)
        end
      end

      action :find do
        verb :get
        path 'api/files/sales/:sale_guid'
        handler(200) do |response|
          sale_payload = JSON.load(response.body)['value']
          SaleMapping.extract_single(sale_payload.to_json, :read)
        end
      end

      action :update do
        verb :put
        path 'api/files/sales/:sale_guid'
        body { |object| SaleMapping.representation_for(:update, object) }
        handler(200) { |response| SaleMapping.extract_single(response.body, :read) }
      end

      action :create do
        verb :post
        path 'api/files/sales'
        body { |object| SaleMapping.representation_for(:create, object) }
        handler(200) { |response| SaleMapping.extract_single(response.body, :created) }
      end

      # action :sale_form do
      #   verb :get
      #   query_keys :checklistTypeId, :officeGuid
      #   path 'api/files/saleForm'
      #   handler(200) { |response| SaleFormMapping.extract_single(response.body, :read) }
      # end

      # action :update_form do
      #   verb :get
      #   path 'api/files/sales/:sale_guid/updateSaleForm'
      #   handler(200) { |response| SaleFormMapping.extract_single(response.body, :read) }
      # end

    end

  end
end
