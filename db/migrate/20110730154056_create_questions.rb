class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :category_id
      t.string :body
    end
  end

  def self.down
    drop_table :questions
  end
end
