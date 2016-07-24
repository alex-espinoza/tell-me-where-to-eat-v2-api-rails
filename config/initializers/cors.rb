# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

if Rails.env.production?
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 's3.amazonaws.com'

      resource '/api',
        headers: :any,
        methods: [:get]
    end
  end
else
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'

      resource '*',
        headers: :any,
        methods: [:any]
    end
  end
end
