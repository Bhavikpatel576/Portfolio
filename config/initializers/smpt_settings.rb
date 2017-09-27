ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'smtp.gmail.com',
    :port           => 587,
    :domain         => 'bhavik-patel-portfolio.herokuapp.com',
    :authentication => :plain,
    :user_name      => ENV['GMAIL_USERNAME'],
    :password       => ENV['GMAIL_PASSWORD']
  }