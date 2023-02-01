module FunTranslate
    module Connection
        BASE_URL = 'https://api.funtranslations.com'
        def connection
            Faraday.new do |faraday|
                faraday.adapter Faraday.default_adapter
                faraday.request :url_encoded
            end
        end

        private
        def options
            headers = {
                accept: 'application/json',
                'Content-Type' => 'application/x-www-form-url_encoded',
                user_agent: 'fun_translate get/#{FunTranslate::VERSION}'
            }
            return {
            headers: headers,
            url: BASE_URL
            }
        end
    end
end