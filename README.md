### Run<br/>
1. docker-compose run app rails new . --force --database=mysql --skip-bundle
2. In config/environments/development.rb,<br/>
   please add: <br/> config.file_watcher = ActiveSupport::EventedFileUpdateChecker
3. After generating rails structure, goto database.yml
Set like, <br/> <br/>
default: &default <br/>
  adapter: mysql2 <br/>
  encoding: utf8mb4 <br/>
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %> <br/>
  database: <%= ENV['DB_NAME'] %> <br/>
  username: <%= ENV['DB_USER'] %> <br/>
  password: <%= ENV['DB_PASSWORD'] %> <br/>
  host: <%= ENV['DB_HOST'] %> <br/>

  development: <br/>
    <<: *default <br/>
    database: <%= ENV['DB_NAME'] %> <br/>
<br/>
3. docker-compose build <br>
4. docker-compose up <br/>
5. view on, localhost:8080 <br/>
DONE.
    
           
