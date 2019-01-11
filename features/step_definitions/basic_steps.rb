Given("the following article exists:") do |table|
    table.hashes.each do |article|
        FactoryBot.create(:article, article)
    end
end

Given("I visit the landing page") do
    visit root_path
end

Given("I click on {string}") do |link|
    click_on link
end

Given("I click {string} within {string}") do |element, card|
    selected_card = card.split.first
    article = Article.find_by(title: selected_card)
    dom_section = "#article_#{article.id}"
    within(dom_section) do
        click_on element
    end
end