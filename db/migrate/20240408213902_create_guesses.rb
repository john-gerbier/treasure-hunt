class CreateGuesses < ActiveRecord::Migration[7.1]
  def change
    create_table :guesses do |t|
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
