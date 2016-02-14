class CreateHiMoms < ActiveRecord::Migration
  def change
    create_table :hi_moms do |t|

      t.timestamps null: false
    end
  end
end
