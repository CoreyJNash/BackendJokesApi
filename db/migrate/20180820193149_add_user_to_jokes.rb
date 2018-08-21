class AddUserToJokes < ActiveRecord::Migration[5.1]
  def change
    add_reference :jokes, :user, foreign_key: true
  end
end
