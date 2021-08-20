module ErrorHandlingResourcable
  def self.included(base)
    base.send(:resources) do
      default_handler do |response|
        if (200...299).include?(response.status)
          next
        elsif response.status == 401
          raise Skyslope::UnauthorizedError.new("#{response.status}: #{response.body}")
        elsif response.status == 403
          raise Skyslope::UnauthorizedError.new("#{response.status}: #{response.body}")
        elsif response.status == 404
          raise Skyslope::NotFoundError.new("#{response.status}: #{response.body}")
        elsif response.status == 422
          raise Skyslope::UnprocessableEntityError.new("#{response.status}: #{response.body}")
        elsif response.status == 429
          raise Skyslope::RequestOverLimitError.new("#{response.status}: #{response.body}")
        else
          raise Skyslope::Error.new("#{response.status}: #{response.body}")
        end
      end
    end
  end
end
