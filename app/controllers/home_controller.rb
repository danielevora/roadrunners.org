class HomeController < ApplicationController

	def index
	  
    config = YAML.load_file('config/facebook.yml')[Rails.env]
	  
	  @page_graph = Koala::Facebook::API.new(config['page_access_token'])
    @events = [];
    @events = @page_graph.get_connection('me', 'events', args={}, options={})
    @events = @events.reverse
    @events = @events.select { |event| event['start_time'] > DateTime.now }
	end

end