
require_relative 'speller\HTTPClient'
require_relative 'speller\spell'
require 'JSON'
module Speller
  URL = 'http://speller.yandex.net/services/spellservice.json/checkText?text='
  def self.do text
    @text = text
    @respons = HTTPClient.new.get(URL, text)
    Spell.new(@text, @respons)
  end
end

text = 'Преветствую тебя, пустынный уголок,
Приют спокойствия, трудов и вдахновенья,
Где льется дней моих нивидимый поток
На лоне счатья и зобвенья. '

respons = Speller.do text
puts respons, respons.show_mistakes
