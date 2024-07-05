### Run<br/>
1. docker-compose run app rails new . --force --database=mysql --skip-bundle
2. After generating rails structure, goto database.yml
   Set like, <br/>
   default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  database: <%= ENV['DB_NAME'] %>
  username: <%= ENV['DB_USER'] %>
  password: <%= ENV['DB_PASSWORD'] %>
  host: <%= ENV['DB_HOST'] %>

  development:
    <<: *default
    database: <%= ENV['DB_NAME'] %>
<br/>
3. docker-compose build <br>
4. docker-compose up <br/>
DONE.
    
           
