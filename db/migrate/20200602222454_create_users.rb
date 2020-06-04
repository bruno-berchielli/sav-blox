class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cellphone
      t.string :role
      t.string :cpf
      t.integer :institution_id
      t.string :password

      t.timestamps
    end
  end
end
