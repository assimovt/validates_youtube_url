# validates\_youtube\_url

A very tiny Rails plugin that provides a `validates_youtube_url` method to `ActiveRecord` models. 
Plugin extracts YouTube ID from the provided URL and further validates against YouTube API.

## Usage

    class User < ActiveRecord::Base
      validates_youtube_url :url
    end
    
## Caveats

The plugin does not validate the format of URL or checks for the nil value, therefore good to be used in conjunction
with [validates_url_format_of](http://github.com/henrik/validates_url_format_of/)
  
## License

Released under the MIT license
