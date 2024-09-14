### Run<br/>
```
docker-compose run app rails new . --force --database=mysql --skip-bundle
```
In config/environments/development.rb,<br/>
```
config.file_watcher = ActiveSupport::EventedFileUpdateChecker
```
After generating rails structure, goto database.yml
Set like, <br/> <br/>
```
default: &default
  adapter: mysql2
  encoding: utf8mb4 
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %> 
  database: <%= ENV['DB_NAME'] %> 
  username: <%= ENV['DB_USER'] %> 
  password: <%= ENV['DB_PASSWORD'] %> 
  host: <%= ENV['DB_HOST'] %> 
```
```
development: <br/>
  <<: *default <br/>
  database: <%= ENV['DB_NAME'] %> 
```
<br/>
Build & Run <br/>
```
docker-compose build
```
```
docker-compose up
```
view on, <br/>
```
localhost:8080
```
<br/>
DONE.
    
           
