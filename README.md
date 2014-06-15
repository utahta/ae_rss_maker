# AeRssMaker

Make Momoiro Clover Z Angel Eyes RSS

## Installation

Add this line to your application's Gemfile:

    gem 'ae_rss_maker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ae_rss_maker

## Usage

Make News RSS:

    rss = AeRssMaker.news(id, password)

Make Kwkm dairy RSS:

    rss = AeRssMaker.kwkm(id, password)

Make Momorikobuta dairy RSS:

    rss = AeRssMaker.momorikobuta(id, password)

## Contributing

1. Fork it ( https://github.com/utahta/ae_rss_maker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
