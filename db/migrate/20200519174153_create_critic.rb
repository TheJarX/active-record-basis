class CreateCritic < ActiveRecord::Migration[6.0]
  def change
    create_table :critics do |t|
      t.string :username
      t.text :body
      t.references :game, null: false, foreign_key: true
    end
  end
end
