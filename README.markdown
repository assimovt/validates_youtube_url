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

By [ASIM Solutions](http://www.asim.ae) under the MIT license:

>  Copyright (c) 2009 ASIM Solutions
>
>  Permission is hereby granted, free of charge, to any person obtaining a copy
>  of this software and associated documentation files (the "Software"), to deal
>  in the Software without restriction, including without limitation the rights
>  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
>  copies of the Software, and to permit persons to whom the Software is
>  furnished to do so, subject to the following conditions:
>
>  The above copyright notice and this permission notice shall be included in
>  all copies or substantial portions of the Software.
>
>  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
>  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
>  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
>  THE SOFTWARE.
