Given("the following article exists:") do |table|
    table.hashes.each do |article|
        FactoryBot.create(:article, article)
    end
end

Given("the following category exists:") do |table|
    table.hashes.each do |category|
        FactoryBot.create(:category, category)
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

Given("I click {string}") do |string|
    click_on string
end

Given("I fill in {string} field with {string}") do |field, input|
    fill_in field, with: input
end

Given("I click {string} within {string}") do |element, card|
    selected_card = card.split.first
    article = Article.find_by(title: selected_card)
    dom_section = "#article_#{article.id}"
    within(dom_section) do
        click_on element
    end
end