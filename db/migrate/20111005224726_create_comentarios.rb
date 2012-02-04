class CreateComentarios < ActiveRecord::Migration
  def self.up
    create_table :comentarios do |t|
      t.string :nome
      t.string :site
      t.string :email
      t.string :comentario

      t.timestamps
    end
  end

  def self.down
    drop_table :comentarios
  end
end
