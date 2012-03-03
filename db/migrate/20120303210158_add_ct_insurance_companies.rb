class AddCtInsuranceCompanies < ActiveRecord::Migration
  def up
    add_column :surveys, :husky_insurance, :boolean
    add_column :surveys, :saga_insurance,  :boolean
  end

  def down
    remove_column :surveys, :husky_insurance
    remove_column :surveys, :saga_insurance
  end
end
