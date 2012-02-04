class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.datetime :data
      t.string :titulo
      t.string :chamada
      t.string :texto, :limit => 10000

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
