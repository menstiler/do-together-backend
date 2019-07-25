class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :group, foreign_key: true
      t.references :activity, foreign_key: true
      t.string :time

      t.timestamps
    end
  end
end
