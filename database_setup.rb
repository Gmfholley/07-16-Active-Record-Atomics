unless ActiveRecord::Base.connection.table_exists?(:photographs)
  ActiveRecord::Base.connection.create_table :photographs do |t|
    t.string :name
    t.integer :photographer_id
    t.string :style
  end  
end


unless ActiveRecord::Base.connection.table_exists?(:photographers)
  ActiveRecord::Base.connection.create_table :photographers do |t|
    t.string :name
  end  
end

unless ActiveRecord::Base.connection.table_exists?(:albums)
  ActiveRecord::Base.connection.create_table :albums do |t|
    t.string :name
  end  
end

unless ActiveRecord::Base.connection.table_exists?(:albums_photographs)
  ActiveRecord::Base.connection.create_table :albums_photographs, id: false do |t|
    t.integer :album_id
    t.integer :photograph_id
  end  
  
  add_index :albums_photographs, :album_id
  add_index :albums_photographs, :photograph_id
end