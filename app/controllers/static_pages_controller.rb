class StaticPagesController < ApplicationController
  def home
    @quote = Quote.find(1 + rand(Quote.count))
    @contact = Contact.new
  end
end
