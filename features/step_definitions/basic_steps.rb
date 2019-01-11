Given("the following article exists:") do |table|
    table.hashes.each do |article|
        FactoryBot.create(:article, article)
    end
end

Given("I visit the landing page") do
    visit root_path
end