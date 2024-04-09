class CreateWinners < ActiveRecord::Migration[7.1]
  def change
    create_table :winners do |t|
      t.references :user, null: false, foreign_key: true
      t.float :distance

      t.timestamps
    end
  end
end
