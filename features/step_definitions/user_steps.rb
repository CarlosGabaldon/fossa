Given /^there is a user$/ do
  FactoryGirl.create(:user)
end

Given /^the user has the project "([^"]*)"$/ do |project_name|
  User.count.should == 1
  Factory(:project, :name => project_name, :user => User.first )
end