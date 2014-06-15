# coding: utf-8

module AeRssMaker
  class Kwkm
    def initialize
      @agent = Mechanize.new
    end

    def self.fetch(id, password)
      Kwkm.new.fetch(id, password)
    end

    def fetch(id, password)
      login(id, password)

      feeds = []
      diary_list.each do |node|
        feed = Feed.new
        feed.title = title(node)
        feed.url = url(node)
        feed.date = date(node)
        feed.description = description(feed.url)
        feeds.push(feed)
      end
      feeds
    end

    private

    def login(id, password)
      page = @agent.get('https://fc.momoclo.net/pc/login.php')
      page.forms_with(action: '/pc/login.php').each do |form|
        form.login_id = id
        form.password = password
        @agent.submit(form)
      end
    end

    def diary_list
      page = @agent.get('http://fc.momoclo.net/pc/diary/')
      page.search('//div[@id="inmain"]/div[@class="cont"]/ul/li')
    end

    def title(node)
      elm = node.xpath('./h3/a')
      elm.empty? ? '' : elm[0].text
    end

    def url(node)
      elm = node.xpath('./h3/a')
      elm.empty? ? '' : URI.join('http://fc.momoclo.net', elm[0][:href]).to_s
    end

    def date(node)
      elm = node.xpath('./p[@class="date"]')
      elm.empty? ? '' : elm.text[/[0-9]{4}\/[0-9]{2}\/[0-9]{2}/]
    end

    def description(url)
      page = @agent.get(url)
      body = page.search('//p[@class="body"]')
      body.empty? ? '' : body.to_html
    end
  end
end

