###
# Page options, layouts, aliases and proxies
###

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
# activate :i18n, :langs => [:es, :en], :mount_at_root => :es
# activate :directory_indexes
# set :trailing_slash, true

# Assets
set :js_dir, '/assets/javascripts'
set :css_dir, '/assets/stylesheets'
set :fonts_dir, '/assets/fonts'
set :images_dir, '/assets/images'

activate :external_pipeline,
  name: :webpack,
  command: build? ? 'yarn run build' : 'yarn run watch',
  source: ".tmp/dist",
  latency: 1

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload,
    no_swf: true,
    livereload_css_target: 'assets/stylesheets/app.css.scss'
end

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
  activate :gzip
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end
