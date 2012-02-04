class CreateLogins < ActiveRecord::Migration
  def self.up
    create_table :logins do |t|
      t.string :login
      t.string :senha
#      t.datatime :ultimo_login
      t.string :cpf

      t.timestamps
    end
  end

  def self.down
    drop_table :logins
  end
end
