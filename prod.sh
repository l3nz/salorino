cd sito 

bundle config build.nokogiri --use-system-libraries \
  --with-xml2-include=$(brew --prefix libxml2)/include/libxml2 &&
bundle install --path ~/_vendor/bundle &&
bundle exec jekyll build --config "_config.yml" -d "_UPLOAD_ME" 

# Rimpiazza il contenuto di <title>...</title>
INDEX="./_UPLOAD_ME/index.html"

sed -i '' \
   's%<title>.\{1,\}<\/title>%<title>Parrocchia di Salorino</title>%' \
   $INDEX

find ./_UPLOAD_ME -type f -name "index.html" -exec \
	sed -i '' \
   		's%Powered by .\{1,\}.<\/div>%<\/div>%' \
   		{} \;




