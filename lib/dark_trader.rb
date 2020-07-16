# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

def crypto

tab = []
page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
trader = page.css('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr')
tab = trader.map { |tr| { tr.css('td[2]/div/a').text => tr.css('td[5]/a').text } }
end

begin
	pp crypto
rescue => e
	puts 'You messed up in crypto!'
end
