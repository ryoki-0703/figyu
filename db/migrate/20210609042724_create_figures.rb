class CreateFigures < ActiveRecord::Migration[5.2]
  def change
    create_table :figures do |t|

      t.timestamps
    end
  end
end
