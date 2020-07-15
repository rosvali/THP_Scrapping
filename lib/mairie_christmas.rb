require 'nokogiri'
require 'open-uri'


def mairie_christmas
    pages = Nokogiri::HTML(URI.open('http://annuaire-des-mairies.com/val-d-oise.html'))
    temp = pages.css('[@class="lientxt"]')
    temp.each do |nom|

        nomCommune = nom['href'].delete_prefix "."
        url2 ="http://annuaire-des-mairies.com#{nomCommune}"
        page2 = Nokogiri::HTML(URI.open(url2))
        email = page2.css('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
        
        pp email

    end



end