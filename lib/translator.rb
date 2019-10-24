require "yaml"

def load_library(file_path)
 emoticons_library = YAML.load_file('./lib/emoticons.yml')
  
  emoticons = {}
  emoticons[get_meaning] = {}
  emoticons[get_emoticon] = {}
  
  emoticons_library.each do |meaning, emoticons_array|
      emoticons[get_meaning] = emoticons[get_meaning].merge({emoticons_array[1] => meaning})
      emoticons[get_emoticon] = emoticons[get_emoticon].merge({emoticons_array[0] => emoticons_array[1]})
    end
emoticons
end