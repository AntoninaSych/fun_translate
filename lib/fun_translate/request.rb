module FunTranslate
    module Request
        include FunTranslate::connection

        def post(path, params={})
        # path translate/pirate.json
        # text = "Hello sir! my mother goes with me to the ocean."

        connection.post(path, params)
        end

    end
end