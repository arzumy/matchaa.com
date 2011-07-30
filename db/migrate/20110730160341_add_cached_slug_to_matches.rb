class AddCachedSlugToMatches < ActiveRecord::Migration
  def self.up
    add_column :matches, :cached_slug, :string
  end

  def self.down
    remove_column :matches, :cached_slug
  end
end
