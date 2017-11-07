class AddHypIdToArguments < ActiveRecord::Migration[5.1]
  def change
    add_reference :arguments, :hypothesis, index: true, foreign_key: true
  end
end
