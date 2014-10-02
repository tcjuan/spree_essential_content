class AddSpreePagesNavTitle < ActiveRecord::Migration
  def self.up
    add_column :spree_pages, :nav_title,        :string
    add_column :spree_pages, :path,             :string
    add_column :spree_pages, :accessible,       :boolean , :default => true
  end

  def self.down
    remove_column :spree_pages, :nav_title       
    remove_column :spree_pages, :path 
    remove_column :spree_pages, :accessible
  end
end