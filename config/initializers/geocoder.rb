Geocoder.configure(
  :lookup => :google,
  :api_key => Rails.application.secrets.google_geocoding_api_key
)
