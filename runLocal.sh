cd sito &&
bundle config force_ruby_platform true && \
bundle config build.nokogiri --platform arm64-darwin --use-system-libraries \
  --with-xml2-include=$(brew --prefix libxml2)/include/libxml2 &&
bundle install --path ~/.bundle &&
bundle exec jekyll serve --config "_config.yml,_config_local.yml"  -w


