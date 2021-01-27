class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.string :header
      t.string :footer
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
