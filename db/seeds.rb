projects = Project.create([{ :name => 'Rails 2'}, { :name => 'Rails 3.0'}, {:name => 'Stuff on Rails 3.1'}])

tasks = [
  "The Asset Pipeline",
  "HTTP Streaming",
  "jQuery is now the default",
  "Reversible migrations",
  "Mountable engines",
  "Identity Map",
  "Prepared statements",
  "Rack::Cache on by default",
  "Turn test-output on Ruby 1.9",
  "Force SSL",
  "Role-based mass-assignment protection",
  "BCrypt-based passwords",
  "Custom serializers"
  ]

tasks.each do |task|
Task.create(:project => projects.last, :description => task)
end