Refraction.configure do |req|
  req.permanent! "http://www.matchaa.com#{req.path}" if req.host == "matchaa.com"
end