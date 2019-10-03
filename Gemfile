source 'https://rubygems.org'

ruby '2.0.0'

gem 'middleman', '~>3.2.1'

# Live-reloading plugin
gem 'middleman-livereload'
gem 'http_parser.rb', '~> 0.6.0'

# A requirement for the newer versions of Middleman
gem 'tzinfo-data'

# Middleman-blog
gem 'middleman-blog'
gem 'nokogiri', '~> 1.6.8' # Required for blog article.summary

# Windows-only
platforms :mswin, :mingw do
  # For faster file watcher updates on Windows:
  gem 'wdm', '~> 0.1.0'
end

# nix-only
platforms :ruby do
  # Required to do Coffee on Linux
  gem 'therubyracer'

  gem 'rb-inotify', '~> 0.9.2'
end

# Sass & Compass
gem 'sass', '~> 3.2.12'
gem 'compass', '~> 0.12.2'

gem 'oily_png'
gem 'singularitygs', '~> 1.1.2'
gem 'breakpoint', '~> 2.0.7'
gem 'breakpoint-slicer'
gem 'toolkit'
gem 'sass-css-importer', '~> 1.0.0.beta.0'
gem 'modular-scale'
gem 'animation'
gem 'SassyLists', '~> 0.4.9'
gem 'sassy-buttons'
gem 'compass-import-once', :require => 'compass/import-once/activate'
#gem 'sass-globbing'