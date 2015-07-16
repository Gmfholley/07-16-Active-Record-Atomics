unless ActiveRecord::Base.connection.table_exists?(:photographs)
  ActiveRecord::Base.connection.create_table :photographs do |t|
    t.string :name
    t.integer :photographer_id
    t.string :style
  end  
end