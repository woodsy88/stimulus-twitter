class ChangeFollowsColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :follows, :followed_user, :followed_user_id
  end
end
