class AddColleagueIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :colleague_id, :integer
  end
end
