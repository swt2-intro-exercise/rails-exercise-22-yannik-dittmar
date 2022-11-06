describe "Edit author page", type: :feature do
    it "should exist at 'edit_author_path' and render withour error" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end
    
    it "should have text input for first name, last name, and homepage" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end

    it "should save the author when submitted" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    
        page.fill_in 'author[last_name]', with: 'from Turing'
        find('input[type="submit"]').click
    
        @alan.reload
        expect(@alan.last_name).to eq('from Turing')
    end
end