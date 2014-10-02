class AddSpreePagesNavTitle < ActiveRecord::Migration
  def self.up
    add_column :spree_pages, :nav_title,        :string
    add_column :spree_pages, :path,             :string
    add_column :spree_pages, :meta_title,       :string
    add_column :spree_pages, :meta_description, :string  
    add_column :spree_pages, :meta_keywords,    :string  
    add_column :spree_pages, :position,         :integer , :default => 999  
    add_column :spree_pages, :accessible,       :boolean , :default => true
    add_column :spree_pages, :visible,          :boolean , :default => true
  end

  def self.down
    remove_column :spree_pages, :nav_title       
    remove_column :spree_pages, :path
    remove_column :spree_pages, :meta_title
    remove_column :spree_pages, :meta_description  
    remove_column :spree_pages, :meta_keywords  
    remove_column :spree_pages, :position  
    remove_column :spree_pages, :accessible
    remove_column :spree_pages, :visible
  end
end
