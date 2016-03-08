class PagesController < ApplicationController
  def index
    @rand = rand(2) + 1
    puts "*************#{@rand}"
  end

  def about
  end

  def signup
  end

  def productreviews
  end

  def blog
  end
end
