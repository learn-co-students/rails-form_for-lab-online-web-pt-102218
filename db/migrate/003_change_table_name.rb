class ChangeTableName < ActiveRecord::Migration
    def change 
        rename_table :schoolclass, :school_class
    end 
end 
