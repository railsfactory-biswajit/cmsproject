class CreateBoltUserGroups < ActiveRecord::Migration
  def change
    create_table :bolt_user_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
