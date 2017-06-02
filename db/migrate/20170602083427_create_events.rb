class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :author
      t.text :blob

      t.timestamps
    end
  end
end
