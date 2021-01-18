class NewsController < ApplicationController
    require 'open-uri'
    require 'nokogiri'

    def parallelrate
        require 'openssl'
        doc = Nokogiri::HTML(URI.open('https://www.bbc.com/news'))
    
        test1 = doc.css('#orb-modules').css('#site-container').css('#latest-stories-tab-container').css('#news-top-stories-container')
        test = test1.css('#u5934588249247284 > div > div > div > div.gel-layout__item.nw-c-top-stories__primary-item.gel-2\/3\@l.gel-9\/16\@xxl.nw-o-no-keyline.nw-o-keyline\@s.nw-o-no-keyline\@m')
        @formattedrate = test[0].text
        render template: 'news/home'
      end

end
