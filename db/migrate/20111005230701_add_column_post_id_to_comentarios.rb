class AddColumnPostIdToComentarios < ActiveRecord::Migration
  def self.up
    add_column :comentarios, :post_id, :integer
  end

  def self.down
    remove_column :comentarios, :post_id
  end
end
