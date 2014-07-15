
class NewslettersController < ApplicationController

  def index
    newsletters = Dir.glob("#{Rails.root}/app/assets/newsletters/*.pdf");
    @newsletters = newsletters;
  end

end