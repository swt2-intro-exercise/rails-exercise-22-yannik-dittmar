describe "Show paper page", type: :feature do
  it "should render without error" do
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)
  end

  it "should display the author's name" do
    @paper = FactoryBot.create :paper
    @alan = FactoryBot.create :author
    @paper.authors << @alan

    visit paper_path(@paper)
    expect(page).to have_text(@alan.name)
  end
end