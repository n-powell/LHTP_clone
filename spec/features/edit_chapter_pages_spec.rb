require 'rails_helper'

describe "the edit a Chapter process" do
  it "edits a Chapter" do
    chapter = Chapter.create(:name => 'Rails')
    visit chapter_path(chapter)
    click_on 'Edit chapter'
    fill_in 'Name', :with => 'updated chapter'
    click_on 'Update Chapter'
    expect(page).to have_content 'updated chapter'
  end

  it "gives error when no name is entered" do
    chapter = Chapter.create(:name => 'Home stuff')
    visit chapter_path(chapter)
    click_on 'Edit chapter'
    fill_in 'Name', :with => ''
    click_button 'Update Chapter'
    expect(page).to have_content 'errors'
  end
end
