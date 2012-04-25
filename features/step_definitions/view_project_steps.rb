Given /^the user has the project "([^"]*)"$/ do |project_name|
  @project = FactoryGirl.create(:project_with_user)
end