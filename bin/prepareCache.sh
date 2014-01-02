# Clears or refreshes all kinds of cache

# Write the doctrine proxies
sudo chmod -R 777 doctrine/proxy
sudo rm -rfv doctrine/proxy*
./bin/doctrine orm:generate-proxies

# Clear all doctrine cache
./bin/doctrine orm:clear-cache:metadata
./bin/doctrine orm:clear-cache:query
./bin/doctrine orm:clear-cache:result

# Clear all serializer cache
sudo chmod -R 777 cache
sudo rm -rfv cache/serializer/annotations/*
sudo rm -rfv cache/serializer/metadata/*

# Clear symfony cache
sudo chmod -R 777 app/cache
sudo rm -rfv app/cache/*

# Clear symfony logs
sudo chmod -R 777 app/logs
sudo rm -rfv app/logs/*
app/console assetic:dump
app/console assets:install