class AddUsersToArguments < ActiveRecord::Migration[5.1]
  def change
    add_reference :arguments, :user, index: true, foreign_key: true
  end
end
