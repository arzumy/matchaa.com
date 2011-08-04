#for heroku
# require 'fileutils'
# FileUtils.mkdir_p(Rails.root.join("tmp", "stylesheets"))

# Rails.configuration.middleware.insert_before('Rack::Sendfile', 'Rack::Static',
#     :urls => ['/stylesheets'],
#     :root => "#{Rails.root}/tmp")
require 'compass'
require 'compass/app_integration/rails'
# Compass::AppIntegration::Rails.initialize!

require 'fileutils'
FileUtils.mkdir_p(Rails.root.join("tmp", "stylesheets"))

if Compass::AppIntegration::Rails.env.equal?(:production)
  Compass::AppIntegration::Rails.initialize!

  Rails.configuration.middleware.delete('Sass::Plugin::Rack')
  Rails.configuration.middleware.insert_before('Rack::Sendfile', 'Sass::Plugin::Rack')

  Rails.configuration.middleware.insert_before('Rack::Sendfile', 'Rack::Static',
      :urls => ['/stylesheets'],
      :root => "#{Rails.root}/tmp")
end