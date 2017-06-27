class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
