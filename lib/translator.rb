require "yaml"

def load_library(file_path)
 emoticons = YAML.load_file('./lib/emoticons.yml')
  
  pp emoticons
  
 

end