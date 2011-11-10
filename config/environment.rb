# Load the rails application
require File.expand_path('../application', __FILE__)


# Initialize the rails application
Blog::Application.initialize!
# config.action_mailer.default_url_options = { :host => 'localhost:3000' }

ActionMailer::Base.smtp_settings = {
                    :address        => "smtp.gmail.com",
                    :port           => 587,
                    :authentication => :plain,
                    :user_name      => "rodrigo.rr.mart@gmail.com",
                    :password       => "09042008N@"
    }

