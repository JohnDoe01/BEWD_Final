# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


FirstDate = DateTime.new(2014,1,10)
numberOfIssues = 50

for week in (1..numberOfIssues)
  Issue.create(:issue_date => FirstDate + 7 * week)
end