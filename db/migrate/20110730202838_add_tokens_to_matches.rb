class AddTokensToMatches < ActiveRecord::Migration
  def self.up
    add_column :matches, :token1, :string
    add_column :matches, :token2, :string
  end

  def self.down
    remove_column :matches, :token1
    remove_column :matches, :token2
  end
end
