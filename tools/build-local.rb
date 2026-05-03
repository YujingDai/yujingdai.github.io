require "bundler/setup"
require "forwardable"
require "liquid"

%w[
  assign break capture case comment continue cycle decrement for if ifchanged
  increment raw table_row unless
].each { |tag| require "liquid/tags/#{tag}" }

%w[
  drop url_drop static_file_drop collection_drop document_drop excerpt_drop
  jekyll_drop site_drop unified_payload_drop
].each { |drop| require "jekyll/drops/#{drop}" }

%w[url_filters grouping_filters date_filters].each do |filter|
  require "jekyll/filters/#{filter}"
end

require "jekyll"

%w[include link post_url highlight].each { |tag| require "jekyll/tags/#{tag}" }
%w[identity markdown smartypants].each { |converter| require "jekyll/converters/#{converter}" }

require "jekyll/converters/markdown/kramdown_parser"
require "jekyll/commands/build"

Jekyll::Commands::Build.process({})
