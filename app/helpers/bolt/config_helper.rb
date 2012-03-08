module Bolt
  module ConfigHelper
    
    # Text string containing the name of the website or client
    # Used in text and titles throughout Backbone
    def bolt_config_website_name
      'Bolt'
    end
    
    # URL to the logo used for the login screen and top banner - it should be a transparent PNG
    def bolt_config_logo
      '/bolt/images/backbone.png'
    end
    
    # The server hostname where Backbone will run
    def bolt_config_hostname
      if ENV['RAILS_ENV'] == 'production'
        'http://localhost:3000'
      else
        'http://localhost:3000'
      end
    end

  	# The sender email address used for notifications
    def bolt_config_email_from_address
      'donotreply@toolbox-design.co.uk'
    end
    
    # The page that the user is shown when they login or click the logo
    # do not point this at backbone/index!
    def bolt_config_dashboard_url
      url_for :controller => :dashboard, :action => :index
    end
    
    # A list of stylesheet files to include in the page head section
    def bolt_config_stylesheet_includes
      %w[/bolt/stylesheets/custom /backbone/stylesheets/screen /backbone/stylesheets/elements]
    end
    
    # A list of JavaScript files to include in the page head section
    def bolt_config_javascript_includes
      %w[/bolt/javascripts/jquery /backbone/javascripts/custom /backbone/javascripts/backbone /backbone/javascripts/rails]
    end
    
  end
end
