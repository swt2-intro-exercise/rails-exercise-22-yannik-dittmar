describe "Show author page", type: :feature do
    it "should exist at 'author_path'" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
    end

    it "should have the authors name and homepage" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)

        expect(page).to have_text('Alan Turing')
        expect(page).to have_text('http://wikipedia.de/Alan_Turing')
    end
end