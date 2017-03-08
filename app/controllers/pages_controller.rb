class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:admin_dashboard]

  def about
    @videos = Video.all
    @images = Image.all
  end

  def admin_dashboard
    @images = Image.all.order("id ASC")
    gon.images = @images
    @videos = Video.all.order("id ASC")
    gon.videos = @videos
    @tours = Tour.all.order("id ASC")

    @image = Image.new
    @video = Video.new
  end

  def home
    @tour = Tour.new
    @welcome = Component.find_by_name('welcome')
    @we_offer = Component.find_by_name('we_offer')
    @we_invite = Component.find_by_name('we_invite')
    @services = Component.find_by_name('services')
    @amenities_activities = Component.find_by_name('amenities_activities')
    @social_services = Component.find_by_name('social_services')
    @rooms = Component.find_by_name('rooms')
    @care_paramount = Component.find_by_name('care_paramount')
  end

  def circle_of_care
    @circle_of_care = Component.find_by_name('circle_of_care')
  end

  def wound_care
    @wound_care = Component.find_by_name('wound_care')
  end

  def dementia_care
    @dementia_care = Component.find_by_name('dementia_care')
  end

  def short_term_therapy
    @short_term_therapy = Component.find_by_name('short_term_therapy')
  end

  def therapy
    @therapy = Component.find_by_name('therapy')
  end

  def contact
  end

  def referral
    @hiring_bonus = Component.find_by_name('hiring_bonus')
    @referral_bonus = Component.find_by_name('referral_bonus')
  end
end
