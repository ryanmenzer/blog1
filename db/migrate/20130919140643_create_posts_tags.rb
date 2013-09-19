class CreatePostsTags < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.string :body
  		t.timestamps
  	end

  	create_table :tags do |t|
  		t.string :name
  		t.timestamps
  	end

  	create_table :posts_tags do |t|
  		t.belongs_to :posts
  		t.belongs_to :tags
  	end
  end
end
