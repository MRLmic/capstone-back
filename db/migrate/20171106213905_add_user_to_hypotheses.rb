class AddUserToHypotheses < ActiveRecord::Migration[5.1]
  def change
    add_reference :hypotheses, :user, index: true, foreign_key: true
  end
end
