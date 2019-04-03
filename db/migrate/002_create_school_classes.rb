class CreateSchoolClasses < ActiveRecord::Migration
    def change
      create_table :schoolclass do |t|
        t.string :title
        t.string :room_number
  
        t.timestamps null: false
      end
    end
  end