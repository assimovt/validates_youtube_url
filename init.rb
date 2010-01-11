require 'net/http'

module ValidatesYoutubeUrl
  # Ex.: http://www.youtube.com/watch?v=ID&feature=rec-fresh+div-f-6-HM
  REGEXP = /watch\?v=(.*?)(?:&feature|\Z)/
  DEFAULT_MESSAGE     = 'does not appear to be a valid YouTube URL'
  
  def validates_youtube_url(*attr_names)
    validates_each(attr_names) do |record, attr_name, value|
      unless value.nil?
        id = value.match(REGEXP)[1]
        status = Net::HTTP.get_response(URI.parse("http://gdata.youtube.com/feeds/api/videos/#{id}")) rescue false
        record.errors.add(attr_name, DEFAULT_MESSAGE) unless status.is_a?(Net::HTTPOK)
      end
    end
  end
  
end

ActiveRecord::Base.extend(ValidatesYoutubeUrl)
