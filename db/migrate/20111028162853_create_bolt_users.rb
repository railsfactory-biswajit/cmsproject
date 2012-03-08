class CreateBoltUsers < ActiveRecord::Migration
  
  def change
 create_table :bolt_users do |t|
      t.string :name
      t.string :login_name
      t.string :password
      t.string :confirm_password
      t.string :email
      t.date :registration_date
      t.date :last_visit_date
      t.boolean :receive_system_emails
      t.boolean :Block_this_user
      t.boolean :public
      t.boolean :manager
      t.boolean :administrator
      t.boolean :registered
      t.boolean :author
      t.boolean :editor
      t.boolean :publisher
      t.boolean :shop_suppliers
      t.boolean :customer_group
       t.boolean :super_user
      t.string    :login, :null => false
      

      t.integer   :access_level, :null => false, :default => 0
      t.string    :crypted_password, :null => false
      t.string    :password_salt, :null => false
      t.string    :persistence_token
      t.string    :single_access_token
      t.string    :perishable_token
      t.integer   :login_count, :null => false, :default => 0
      t.integer   :failed_login_count, :null => false, :default => 0
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip
      t.string    :time_zone
      t.timestamps
  
end
end
end