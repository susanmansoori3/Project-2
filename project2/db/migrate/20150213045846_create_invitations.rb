class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :title
      t.string :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :invitations, :users
  end
end
