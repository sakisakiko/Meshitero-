class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
       t.integer:followinng_user_id, null:false,default:0
       t.integer:follower_user_id,null:false,default:0
      t.timestamps
    end
  end
end
