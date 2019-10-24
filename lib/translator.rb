require "yaml"

def load_library(file_path)
 emoticons_library = YAML.load_file('./lib/emoticons.yml')
  
  emoticons = {}
  emoticons[get_meaning] = {}
  emoticons[get_emoticon] = {}
  
  emoticons_library.each do |meaning, emoticons_array|
    i = 0 
    while i < emoticons_array.length
      #emoticons[get_meaning][emoticons_array[i+1]] = {}
      puts emoticons_array[i]
    i += 2
    end
  end
 
 pp emoticons
end