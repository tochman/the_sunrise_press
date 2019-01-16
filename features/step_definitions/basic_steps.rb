Given('the following article exists:') do |table|
    table.hashes.each do |article|
        user = User.find_by(name: article[:user_id])
        category = Category.find_or_create_by(name: article[:category_id])
        article.except!(article[:user_id]).except!(article[:category_id]).merge!(user_id: user.id).merge!(category_id: category.id)
        FactoryBot.create(:article, article)
    end
end

Given('the following category exists:') do |table|
    table.hashes.each do |category|
        FactoryBot.create(:category, category)
    end
end

Given('I visit the landing page') do
    visit root_path
end

Given('I click on {string}') do |link|
    click_on link
end

Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end 
end

Given('I click {string} within {string}') do |element, card|
    selected_card = card.split.first
    article = Article.find_by(title: selected_card)
    dom_section = "#article_#{article.id}"
    within(dom_section) do
        click_on element
    end
end

Given('I fill in {string} field with {string}') do |element, value|
    fill_in element,with: value
end

Given('I select {string} from {string}') do |option, selector|
    select option, from: selector
end

Given('I am logged in as {string}') do |email|
    @user = User.find_by email: email
    login_as @user, scope: :user
    visit root_path
end

When("I click on {string} within {string}") do |button, title|
    article = Article.find_by(title: title)
    dom_section = "#article_#{article.id}" 
    within(dom_section) do 
        click_on button
    end
end