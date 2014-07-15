class EventsController < ApplicationController

  def index
      @page_graph = Koala::Facebook::API.new(@page_access_token)
      @events = []
      @events = @page_graph.get_connection('me', 'events') # the page event listings
  end

end