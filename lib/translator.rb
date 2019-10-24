require "yaml"

def load_library(file_path)
 emoticons_library = YAML.load_file('./lib/emoticons.yml')
  
  emoticons = {}
  emoticons[get_meaning] = {}
  emoticons[get_emoticon] = {}
  
  emoticons_library.each do |meaning, emoticons_array|
      emoticons[:get_meaning] = emoticons[:get_meaning].merge({emoticons_array[1] => meaning})
      emoticons[:]
      pp emoticons_array[i]
    i += 2
    end
  end
 
 pp emoticons
end