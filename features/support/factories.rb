require 'factory_girl'

FactoryGirl.define do
  factory :user, :class => User do |user|
    user.email "example@example.com"
  end
  
  factory :project do |project|
    project.name 'Project one'
    project.description 'Project one description'
    project.priority 2
  end
  
  factory :project_with_user, :parent => :project do |project|
    project.after_create do |p|
      FactoryGirl.create(:user, :projects => [p])
    end
  end
  
end
