class CreateCategoria < ActiveRecord::Migration
  def self.up
    create_table :categoria do |t|
      t.integer :post_id
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :categoria
  end
end
