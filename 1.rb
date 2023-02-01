require "fun_translations"

client = FunTranslate::client
result = client.translate :pirate, "Hello miss!"
puts result.translated_text