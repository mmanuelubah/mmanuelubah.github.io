# _plugins/read_time.rb
module Jekyll
  module ReadTime
    def read_time(input)
      return "0 min read" if input.nil? || input.strip.empty?

      words_per_minute = 200.0
      words = input.split.size
      minutes = (words / words_per_minute).ceil
      "#{minutes} min read"
    end
  end
end

Liquid::Template.register_filter(Jekyll::ReadTime)

