module Speller
class Spell
  require 'JSON'
  attr_writer :HTTPClient
  def initialize original_text, respons_from_ya
    @corrected_text = original_text
    @response_json = JSON.parse(respons_from_ya)

    for i in @response_json do
     @corrected_text.gsub!(i['word'], i["s"][0])
    end
  # puts response_json
  def to_s
    @corrected_text
  end
end
  def show_mistakes
    mistakes = String.new
    for i in @response_json do
     mistakes += i['word'] + ' => ' + i["s"][0]+"\n"
    end
    mistakes
  end
end
end
