Given /^there is a project called "(.*?)"$/ do |arg1|
  Project.create(:name => arg1)
end

Then /^I should not see "(.*?)"$/ do |arg1|
  assert(page.has_no_content?(arg1))
end
