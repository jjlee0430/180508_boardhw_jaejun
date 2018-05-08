class CreateLions < ActiveRecord::Migration[5.1]
  def change
    create_table :lions do |t|
      t.string :content
      t.belongs_to :like

      t.timestamps
    end
  end
end
