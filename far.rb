require 'faraday'
conn = Faraday.new url: 'https://api.funtranslations.com'
r = conn.post('/translate/pirate.json',"text=Hello sir! my mother goes with me to the ocean.")
puts r.body