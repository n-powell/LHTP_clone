require 'rails_helper'

describe "the edit a Section process" do
  it "edits a Section" do
    chapter = Chapter.create(:name => 'Rails')
    section = Section.create(:name => 'Week 1', :chapter_id => chapter.id)
    visit chapter_path(chapter)
    click_on 'Edit Section'
    fill_in 'Name', :with => 'updated section'
    click_on 'Update Section'
    expect(page).to have_content 'updated section'
  end

  it "gives error when no name is entered" do
    chapter = Chapter.create(:name => 'Home stuff')
    section = Section.create(:name => 'Wash the dishes', :chapter_id => chapter.id)
    visit chapter_path(chapter)
    click_on 'Edit Section'
    fill_in 'Name', :with => ''
    click_button 'Update Section'
    expect(page).to have_content 'errors'
  end
end
