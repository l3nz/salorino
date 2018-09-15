cd sito &&
bundle config build.nokogiri --use-system-libraries \
  --with-xml2-include=$(brew --prefix libxml2)/include/libxml2 &&
bundle install --path ~/_vendor/bundle &&
bundle exec jekyll build --config "_config.yml" -d "_UPLOAD_ME" 


