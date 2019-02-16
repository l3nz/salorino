cd sito 

#bundle config build.nokogiri --use-system-libraries \
#  --with-xml2-include=$(brew --prefix libxml2)/include/libxml2 
#bundle install --path ~/_vendor/bundle &&
#bundle exec jekyll build --config "_config.yml" -d "_UPLOAD_ME" 


source /etc/profile.d/rvm.sh && ruby -v && /usr/local/bin/bundle install --path ~/_vendor/bundle && /usr/local/bin/bundle exec jekyll build --config "_config.yml" -d "_UPLOAD_ME"



# Rimpiazza il contenuto di <title>...</title>
INDEX="./_UPLOAD_ME/index.html"

perl -p -i -e 's%<title>.+<\/title>%<title>Parrocchia di Salorino<\/title>%' $INDEX


#sed -i '' \
#   's%<title>.\{1,\}<\/title>%<title>Parrocchia di Salorino</title>%' \
#   $INDEX

find ./_UPLOAD_ME -type f -name "index.html" -exec \
	perl -p -i -e 's%Powered by .+\.<\/div>%<\/div>%' {} \;




