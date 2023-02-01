module FunTranslate
    module Request
        include FunTranslate::Connection

        def post(path, params={})
        # path translate/pirate.json
        # text = "Hello sir! my mother goes with me to the ocean."

        respond_with(connection.post(path, params))
        end

        private

        def respond_with(raw_response)
           body = raw_response.body.empty? ? raw_response.body : JSON.parse(raw_response.body)

           return body['contents']
        end
    end
end