class StaticPagesController < ApplicationController
  def home
    @quote = Quote.find(1 + rand(Quote.count))
  end
end
