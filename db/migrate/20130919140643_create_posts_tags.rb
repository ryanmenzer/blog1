class CreatePostsTags < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.text :body
  		t.timestamps
  	end

  	create_table :tags do |t|
  		t.string :name
  		t.timestamps
  	end

  	create_table :posts_tags do |t|
  		t.belongs_to :post
  		t.belongs_to :tag
  	end
  end
end
