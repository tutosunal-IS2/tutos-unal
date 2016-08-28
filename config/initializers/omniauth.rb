

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :google_oauth2, 'my Google client id', 'my Google client secret', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

provider :google_oauth2, '14536028436-8de5n7tg415ekd0ptk6t62apc7qn2j01.apps.googleusercontent.com', 'e1DjVDrS9wZyXC_vGh8eNZQM'
           
end
