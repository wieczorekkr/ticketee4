Given /^I am on the homepage$/ do
  visit('/')
end

When /^I follow "(.*?)"$/ do |arg1|
  click_link(arg1)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  #fill_in(arg1, :with => arg2)
  #find(arg1).set arg2
  first(:field, arg1).set(arg2)
end

When /^I press "(.*?)"$/ do |arg1|
  click_button(arg1)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  assert(page.has_content?(arg1))
end

Then /^I should see "([^"]*)" within "(.*?)"$/ do |arg1, arg2|
  within(arg2) do
	 assert(page.has_content?(arg1))
  end
end

Then /^I should be on the project page for "(.*?)"$/ do |arg1|
  assert(page.has_content?(arg1))
end

Then /^I should see title "(.*?)"$/ do |arg1|
  page.source.should have_xpath "//title" , text: arg1
end
