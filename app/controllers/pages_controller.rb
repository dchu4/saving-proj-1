class PagesController < ApplicationController
  def about
    @videos = Video.all
    @images = Image.all
  end

  def home
    @tour = Tour.new
  end

  def circle_of_care
  end

  def wound_care
  end

  def dementia_care
  end

  def therapy
  end

  def contact
  end
end
