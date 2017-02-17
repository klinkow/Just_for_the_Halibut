class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :product_id, :integer
      t.column :text, :string
      t.column :author, :string
      t.timestamps
    end
  end
end
