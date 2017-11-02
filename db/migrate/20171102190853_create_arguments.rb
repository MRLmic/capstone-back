class CreateArguments < ActiveRecord::Migration[5.1]
  def change
    create_table :arguments do |t|
      t.string :content
      t.boolean :position

      t.timestamps
    end
  end
end
