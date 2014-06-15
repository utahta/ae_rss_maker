# coding: utf-8
require 'spec_helper'

describe AeRssMaker::News do

  describe '#fetch' do
    it '1つ以上のフィードが取れること' do
      feeds = AeRssMaker::News.fetch(ID, PASSWORD)
      expect(feeds.length).to be > 0
    end
  end

end
