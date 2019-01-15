Then('I should see {string}') do |content|
    expect(page).to have_content content
end

Then('I should not see {string}') do |content|
    expect(page).not_to have_content content
end

Then("I should see {string} within {string}") do |content, element|
    page.find(".#{element}").should have_text(content)
end