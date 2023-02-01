module FunTranslate
    class Client
        include FunTranslate::Request

        def initialize
        end

        #endpoint = :yoda, :pirate,
        def translate(endpoint, text)
          FunTranslate::Translation.new(
             post("translate/#{endpoint}.json", {text:text})
          )
        end
    end
end