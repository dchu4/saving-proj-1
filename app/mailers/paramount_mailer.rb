class ParamountMailer < ApplicationMailer
  def book_a_tour_email(email)
    mail( :to => user_email,
    :subject => 'Thanks for signing up for our amazing app' )
  end

  def job_application_email(career)
    @career = career
    attachments[@career.resume.file.filename] = File.read(@career.resume.file.file)
    mail( :from => @career.email, :to => 'danchu123@gmail.com',
    :subject => "#{@career.job_role} Job Application")
  end

  def contact_email(email)
    mail( :to => user_email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
