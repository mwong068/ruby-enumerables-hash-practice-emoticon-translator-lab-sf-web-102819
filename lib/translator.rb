require "yaml"

def load_library(file_path)
 emoticons_library = YAML.load_file('./lib/emoticons.yml')
  
  emoticons = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  
  emoticons_library.each do |meaning, emoticons_array|
      emoticons[:get_meaning] = emoticons[:get_meaning].merge({emoticons_array[1] => meaning})
      emoticons[:get_emoticon] = emoticons[:get_emoticon].merge({emoticons_array[0] => emoticons_array[1]})
    end
 emoticons
end

def get_japanese_emoticon(file_path, western_emoticon)
  emoticons_library = load_library(file_path)
  
   apology_message = "Sorry, no such emoticon here!"
   
   emojis = emoticons_library[:get_emoticon]
   if emojis.include?(western_emoticon)
     emojis[western_emoticon]
  else
    apology_message
  end
end

def get_english_meaning(file_path, japanese_emoticon)
   emoticons_library = load_library(file_path)
   
   apology_message2 = "Sorry, no such emoticon here!"
   
   emojis2 = emoticons_library[:get_emoticon]
   if emojis.include?(western_emoticon)
     emojis[western_emoticon]
  else
    apology_message2
  end
end