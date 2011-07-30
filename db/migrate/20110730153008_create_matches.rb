class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :user_id
      t.integer :player1_id
      t.integer :player2_id
      t.integer :category_id
      t.string :question_ids
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
