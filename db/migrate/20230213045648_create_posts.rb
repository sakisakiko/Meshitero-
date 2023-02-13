class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
       t.integer:user_id, null:false,default: 0
       t.string :shop_name, null: false, default: ""
       t.string :caption, null:false, default: ""
      t.timestamps
    end
  end
end
