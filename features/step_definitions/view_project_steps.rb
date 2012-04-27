Given /^the user has the project "([^"]*)"$/ do |project_name|
  @project = FactoryGirl.create(:project_with_user, :name => project_name)
end

When /^they vist the project list page$/ do
  visit(projects_path)
end

Then /^they should see the project "([^"]*)"$/ do |project_name|
  page.should have_content(project_name)
end