class ChangeDefaultForStatus < ActiveRecord::Migration
  def self.up
    change_column_default :matches, :status, 'new'
    Match.update_all(status: 'new')
  end
end
