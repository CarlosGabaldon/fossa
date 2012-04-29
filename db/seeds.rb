# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#


user = User.create(:email => 'elephant@jungle.com')

high_priority = Priority.create(:name => "High")
med_priority = Priority.create(:name => "Med")
low_priority = Priority.create(:name => "Low")

giraffes_project = Project.new(:name => "Giraffes for Congress",
                      :description => "Giraffes running for congress.",
                      :priority => high_priority)
giraffes_project.save
gorillas_project = Project.new(:name => "Gorillas for a green planet",
                      :description => "Gorillas supporting green policy.",
                      :priority => med_priority)
gorillas_project.save
zebras_project = Project.new(:name => "Zebras for the rainforest",
                      :description => "Zebras fighting to save the rainforest  .",
                      :priority => low_priority)
zebras_project.save

user.projects << giraffes_project
user.projects << gorillas_project
user.projects << zebras_project
user.save
