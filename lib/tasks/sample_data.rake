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
:password_confirmation => "123456",
:rollno=>"10523",
:department=>"Materials Science 
And Engineering"
)
admin.toggle!(:admin)
admin.toggle!(:activated)
admin1 = User.create!(:name => "Sanchit Gupta",
:email => "sanchitg@iitk.ac.in",
:password => "123456",
:password_confirmation => "123456",
:rollno=>"12345",
:department=>"Computer Science 
And Engineering"
)
admin1.toggle!(:admin)
admin1.toggle!(:activated)
end
end
