describe "Delete author page", type: :feature do
    it "should exist a delete button at 'author_path'" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)

        expect(page).to have_link('Delete')
    end

    it "should delete an author" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)

        @count = Author.count
        click_link('Delete')
        Author.count.should == @count - 1
    end
end