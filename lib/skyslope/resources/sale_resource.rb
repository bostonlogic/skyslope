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

      action :add_buyer_contact do
        verb :post
        path 'api/files/sales/:sale_guid/buyerContact'
        binding.pry
        body { |object| BuyerMapping.representation_for(:create, object) }
        handler(200) { |response| BuyerMapping.extract_single(response.body, :created) }
      end

      action :add_seller_contact do
        verb :post
        path 'api/files/sales/:sale_guid/sellerContact'
        body { |object| SellerMapping.representation_for(:create, object) }
        handler(200) { |response| SellerMapping.extract_single(response.body, :created) }
      end

    end

  end
end
