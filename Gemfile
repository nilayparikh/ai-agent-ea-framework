# Gemfile for LocalM-AiD Framework Site
# GitHub Pages compatible Jekyll setup

source "https://rubygems.org"

# GitHub Pages gem includes Jekyll and plugins
gem "github-pages", group: :jekyll_plugins

# Optional: Additional plugins
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
end

# Windows and JRuby compatibility
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance booster for watching directories on Windows
gem "wdm", "~> 0.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock to specific platform for GitHub Pages compatibility
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
