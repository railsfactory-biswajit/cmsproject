# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120307133203) do

  create_table "bolt_articles", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "category"
    t.integer  "status"
    t.string   "access"
    t.integer  "featured"
    t.text     "article_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bolt_user_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bolt_users", :force => true do |t|
    t.string   "name"
    t.string   "login_name"
    t.string   "password"
    t.string   "confirm_password"
    t.string   "email"
    t.date     "registration_date"
    t.date     "last_visit_date"
    t.boolean  "receive_system_emails"
    t.boolean  "Block_this_user"
    t.boolean  "public"
    t.boolean  "manager"
    t.boolean  "administrator"
    t.boolean  "registered"
    t.boolean  "author"
    t.boolean  "editor"
    t.boolean  "publisher"
    t.boolean  "shop_suppliers"
    t.boolean  "customer_group"
    t.boolean  "super_user"
    t.string   "login",                                :null => false
    t.integer  "access_level",          :default => 0, :null => false
    t.string   "crypted_password",                     :null => false
    t.string   "password_salt",                        :null => false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",           :default => 0, :null => false
    t.integer  "failed_login_count",    :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
