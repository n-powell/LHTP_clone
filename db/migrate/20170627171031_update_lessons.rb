class UpdateLessons < ActiveRecord::Migration[5.1]
  def change
    change_table :lessons do |t|
      t.column :section_id, :integer
    end
  end
end
