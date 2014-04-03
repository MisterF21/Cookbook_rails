class CreateTagsTable < ActiveRecord::Migration
  def change
    create_table :tags_tables do |t|

      t.column :name, :string

      t.timestamps

    end
  end
end
