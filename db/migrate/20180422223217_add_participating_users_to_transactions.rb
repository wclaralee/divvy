class AddParticipatingUsersToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :participating_users, :text
  end
end
