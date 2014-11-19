class CreateLaunches < ActiveRecord::Migration
  def change
    create_table :launches do |t|

      t.timestamps
    end
  end
end
