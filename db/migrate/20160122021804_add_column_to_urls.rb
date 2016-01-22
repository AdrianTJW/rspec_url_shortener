class AddColumnToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :long_url, :string
    add_column :urls, :short_url, :string
  end
end
