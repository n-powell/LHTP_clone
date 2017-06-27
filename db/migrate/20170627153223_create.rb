class Create < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :content, :string
      t.column :number, :integer

      t.timestamps
    end
  end
end
