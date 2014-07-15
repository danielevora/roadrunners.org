class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #config = YAML::load(File.open("#{Rails.root}/config/facebook.yml"));
  #fbConfig = YAML.load_file("#{Rails.root}/config/facebook.yml")[Rails.env]
  #@page_access_token = config['page_access_token']
  #FQL #@graph.fql_query("select uid, name, pic_square from user where ids in (#{id_array.join(",")})")
  
end