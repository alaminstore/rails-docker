### Run<br/>
1. ```
   docker-compose run app rails new . --force --database=mysql --skip-bundle
   ```
2. In config/environments/development.rb,<br/>
   ```
   config.file_watcher = ActiveSupport::EventedFileUpdateChecker
   ```
4. After generating rails structure, goto database.yml
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
3. ```
  docker-compose build
 ```
4.```
docker-compose up
```
5. view on, localhost:8080 <br/>
DONE.
    
           
