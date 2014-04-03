class ChangeTag < ActiveRecord::Migration
  def change
    rename_column :recipes_tags, :tags_id, :tag_id

  end
end
