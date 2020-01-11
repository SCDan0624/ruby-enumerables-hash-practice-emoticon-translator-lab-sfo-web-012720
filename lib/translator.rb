require "yaml"

def load_library(file_path)
  load_emoticons = YAML.load_file(file_path)
  
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  load_emoticons.each do |key,value|
    new_hash['get_emoticon'][value[0]] = load_emoticons[key][1]
    new_hash['get_meaning'][value[1]] = key
  end

  new_hash
end

def get_japanese_emoticon(file_path,emoticon)
 result = load_library(file_path)['get_emoticon'][emoticon]
 
 statement_to_evaluate ? true_results_do_this : else_do_this
 
 result ? result : "Sorry could not find that emoticon at this time"
 
end

def get_english_meaning
  
end