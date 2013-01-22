Given /^there is a project called "(.*?)"$/ do |arg1|
  Project.create(:name => arg1)
end
