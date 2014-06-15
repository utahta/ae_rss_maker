# coding: utf-8
require 'spec_helper'

describe AeRssMaker::Kwkm do

  describe '#fetch' do
    it '1つ以上のフィードが取れること' do
      feeds = AeRssMaker::Kwkm.fetch(ID, PASSWORD)
      expect(feeds.length).to be > 0
    end
  end

end
