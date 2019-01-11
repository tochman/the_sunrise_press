Given("the following article exists:") do |table|
    table.hashes.each do |article|
        FactoryBot.create(:article, article)
    end
end

Given("I visit the landing page") do
    visit root_path
end

Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end 
end
  
Given("I visit the page") do
    visit root_path
end
  
Given("I click {string}") do |string|
    click_on string
end
  
Given("I fill in {string} field with {string}") do |field, input|
    fill_in field, with: input
end
  