class StaticPagesController < ApplicationController
  def home
    @quote = Quote.find(1 + (rand(Quote.count).round))
    @contact = Contact.new
  end
end
