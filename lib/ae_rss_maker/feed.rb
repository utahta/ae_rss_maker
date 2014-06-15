# coding: utf-8

module AeRssMaker
  class Feed
    attr_accessor :title, :url, :date, :description
    def initialize
      @title = ''
      @url = ''
      @date = ''
      @description = ''
    end
  end
end

