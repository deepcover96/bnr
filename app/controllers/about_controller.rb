class AboutController < ApplicationController
  def company
  	@year = 1999
  	# @year = params[:year]
  	@user_agent = request.env['HTTP_USER_AGENT']
  end

  def contact
  end

  def future
  	@year = 2020
  	render :template => 'about/company', :layout => 'beautiful'
  end

  # redirect if mispelled in this way
  def companie
  	flash[:notice] = "Learn to spell!!!!"
  	redirect_to :controller => 'about', :action => 'company'
  end

  def supervisors
  	@supervisors = ["Bob Jones", "Jodi Bell", "Benjamine Krause", "Mark Fritz", "Wilfredo Ruiz"]
  end

  def managers
  	@managers = ["Joe Black", "Phil Berguaer", "Gus Johnson"]
  end

  def more_info
  end

  def thank_you
  	@full_name = params[:full_name]
  	@color = params[:color]
  end

end
