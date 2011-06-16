namespace :db do
desc "Fill database with sample data"
task :populate => :environment do
Rake::Task['db:reset'].invoke
make_users
end
end
def make_users
admin = User.create!(:name => "Pratik Agarwal",
:email => "pratikag@iitk.ac.in",
:password => "123456",
:password_confirmation => "123456"
)
admin.toggle!(:admin)
admin.toggle!(:activated)
end
