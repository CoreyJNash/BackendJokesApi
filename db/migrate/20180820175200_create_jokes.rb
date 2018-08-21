class CreateJokes < ActiveRecord::Migration[5.1]
  def change
    create_table :jokes do |t|
      t.string :title
      t.string :joke
      t.string :writer

      t.timestamps
    end
  end
end
