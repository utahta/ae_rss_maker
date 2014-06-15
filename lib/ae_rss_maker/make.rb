# coding: utf-8
require 'rss'

module AeRssMaker
  module_function

  def make(feeds, opts={})
    title = opts[:title].nil? ? '' : " | #{opts[:title]}"
    RSS::Maker.make('atom') do |maker|
      maker.channel.author = 'Momoiro Clover Z'
      maker.channel.updated = Time.now.to_s
      maker.channel.about = 'http://fc.momoclo.net/pc/'
      maker.channel.title = "ANGEL EYES#{title}"

      feeds.each do |feed|
        maker.items.new_item do |item|
          item.link = feed.url
          item.title = feed.title
          item.updated = feed.date
          item.description = feed.description
        end
      end
    end
  end

end
