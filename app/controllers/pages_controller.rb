class PagesController < ApplicationController
  def index
    @rand = rand(6) + 1
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
