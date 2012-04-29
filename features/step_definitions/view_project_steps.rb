Given /^the user has the medium priority project "([^"]*)"$/  do |project_name|
  @project = FactoryGirl.create(:project_with_user, :name => project_name, :priority_id => 2)
end

Given /^the user has the high priority project "([^"]*)"$/ do |project_name|
  @high_project = FactoryGirl.create(:project_with_user, :name => project_name, :priority_id => 1)
end

When /^they vist the project list page$/ do
  visit(projects_path)
end

Then /^they should see the medium priority project "([^"]*)"$/ do |project_name|
  page.should have_content(project_name)
end

Then /^they should see the high priority project "([^"]*)"$/ do |project_name|
  page.should have_content(project_name)
end