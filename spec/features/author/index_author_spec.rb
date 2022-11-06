describe "Author index page", type: :feature do
    it "should render withour error" do
        visit authors_path
    end

    it "should have a table with the correct headers" do
        visit authors_path
        expect(page).to have_table('authors')
        expect(page).to have_text('Name')
        expect(page).to have_text('Homepage')
    end
end