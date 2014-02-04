###
# Compass
###

# Copmass extensions
#require 'sass-globbing'
require 'sass-css-importer'
require 'breakpoint-slicer'
require 'singularitygs'
require 'toolkit'
require 'modular-scale'
require 'animation'
require 'SassyLists'
require 'sassy-buttons'

# Timezone stuff
require 'tzinfo'

# Change Compass configuration
compass_config do |config|
  config.output_style = (environment == :development) ? :nested : :compressed
  #config.sass_options = (environment == :development) ? {debug_info: true} : {}
end



###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Relative links are required for Github Pages
set :relative_links, true

# Pretty URLs
activate :directory_indexes

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

assets_path = 'assets/'
set :css_dir,       assets_path + 'stylesheets'
set :js_dir,        assets_path + 'javascripts'
set :images_dir,    assets_path + 'images'
set :fonts_dir,     assets_path + 'fonts'

set :partials_dir,  'partials'

set :layout,        'skeleton'

set :file_watcher_ignore,[
    /^bin\//,
    /^\.bundle\//,
    /^vendor\//,
    /^\.sass-cache\//,
    /^\.cache\//,
    /^\.git\//,
    /^\.gitignore$/,
    /\.DS_Store/,
    /^\.rbenv-.*$/,
    /^\.idea\//,
    /^Gemfile$/,
    /^Gemfile\.lock$/,
    /^Gruntfile\.js$/,
    /^package\.json$/,
    /^[a-zA-Z0-9_-]+\.iml$/,
    /~$/,
    /(^|\/)\.?#/,
    /^tmp\//,
    /^build\//,
    /^\.bowerrc\//,
    /^bower_components\//,
    /^node_modules\//
]

## Add bower's directory to sprockets asset path
#after_configuration do
#  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
#  sprockets.append_path File.join "#{root}", @bower_config["directory"]
#end


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
