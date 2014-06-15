require 'mechanize'
require 'date'
require 'open-uri'
require 'ae_rss_maker/version'
require 'ae_rss_maker/feed'
require 'ae_rss_maker/make'
require 'ae_rss_maker/news/fetch'
require 'ae_rss_maker/kwkm/fetch'
require 'ae_rss_maker/momorikobuta/fetch'

module AeRssMaker
  module_function

  def news(id, password)
    feeds = News.fetch(id, password)
    make(feeds, title: 'News')
  end

  def kwkm(id, password)
    feeds = Kwkm.fetch(id, password)
    make(feeds, title: 'Kwkm')
  end

  def momorikobuta(id, password)
    feeds = Momorikobuta.fetch(id, password)
    make(feeds, title: 'Momorikobuta')
  end

end
