require 'open-uri'

class ParamountMailer < ApplicationMailer
  def tour_email(tour)
    @tour = tour
    mail(:from => @tour.email, :to => "danchu123@gmail.com", :bcc => @tour.email,
    :subject => 'Tour Sign-up' )
  end

  def job_application_email(career)
    @career = career
    attachments[@career.resume.file.filename] = open(@career.resume.url).read
    mail( :from => @career.email, :to => 'danchu123@gmail.com',
    :subject => "#{@career.job_role} Job Application")
  end

  def contact_email(contact)
    @contact = contact
    mail(:from => @contact.email, :to => "danchu123@gmail.com",
    :subject => 'Paramount Contact' )
  end
end
