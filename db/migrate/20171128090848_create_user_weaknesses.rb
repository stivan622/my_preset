class CreateUserWeaknesses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_weaknesses do |t|
      t.references :user
      t.references :weakness
      t.timestamps
    end
  end
end
