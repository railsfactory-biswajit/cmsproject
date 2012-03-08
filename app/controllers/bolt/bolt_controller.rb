require 'authlogic'

module Bolt
  class BoltController < ApplicationController

    unloadable

   

  	require 'bolt/config_helper'
  	include Bolt::ConfigHelper


   
    helper_method :current_user_session, :current_user
    before_filter :authorise
    before_filter :set_time_zone
    
    ActionView::Base.field_error_proc = proc { |input, instance| "<span class='formError'>#{input}</span>".html_safe }

    def index		
	
    end

  	def blank
  		@bolt_page_title = "Welcome"
  	end

  private
  
    def authorise    
      unless current_user
        session[:return_to] = request.fullpath
        redirect_to new_bolt_user_session_url
        return false
      end
    end
    
    def set_time_zone
      Time.zone = current_user.time_zone if current_user
    end
  
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = Bolt::UserSession.find
    end

    def current_user
      return @session_user if defined?(@session_user)
      @session_user = current_user_session && current_user_session.user
    end
  
    def needs_admin
      unless @session_user.is_admin?
        redirect_to :controller => :bolt, :action => :index
      end
    end
  
    def needs_admin_or_current_user
      unless @session_user.is_admin? || params[:id].to_i == @session_user.id
        redirect_to :controller => :bolt, :action => :index
      end
    end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end

  end
end