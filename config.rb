###
# Page options, layouts, aliases and proxies
###

#set :markdown_engine, :redcarpet
#Requested Markdown engine (redcarpet) not found. 

#set :layouts_dir, '_layouts'
#set :partials_dir, '_partials'

# Asset Settings
set :css_dir, 'assets/css'
set :fonts_dir, 'assets/fonts'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
set :build_dir, 'build-results'

configure :development do
  compass_config do |config|
    config.sass_options = {:debug_info => true}
  end
end


# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do

  #set :host, 'hostname.lh'
  config[:host] = "http://phobos.lh"
  
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Create favicon/touch icon set from source/favicon_base.png
  # activate :favicon_maker,
  # :favicon_maker_base_image => "favicon_base.svg"
  #activate :favicon-maker

  #	activate :favicon_maker, :icons => {
  #		"favicon_base.png" => [
  #			{ icon: "apple-touch-icon-114x114-precomposed.png" },
  #			{ icon: "apple-touch-icon-72x72-precomposed.png" },
  #			{ icon: "apple-touch-icon-57x57-precomposed.png" },
  #			{ icon: "apple-touch-icon-precomposed.png", size: "57x57" },
  #			{ icon: "apple-touch-icon.png", size: "57x57" },
  #			{ icon: "favicon.png", size: "16x16" },
  #			{ icon: "favicon.ico", size: "16x16" },
  #		]
  #	}

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher
end

# This will push to the gh-pages branch of the repo, which will
# host it on github pages (If this is a github repository)
# https://github.com/middleman-contrib/middleman-deploy
#activate :deploy do |deploy|
#  deploy.method = :git
#  deploy.build_before = true
#end