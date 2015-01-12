class CreateMardis < ActiveRecord::Migration
  def change
    create_table :mardis do |t|

      t.timestamps
    end
  end
end
