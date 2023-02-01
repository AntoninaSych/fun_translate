require 'faraday'
conn = Faraday.new url: 'https://api.funtranslations.com'
r = conn.post('/translate/youda.json',"text=Master Obiwan has lost a planet.")
puts r.body