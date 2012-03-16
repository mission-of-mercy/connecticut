class UpdateSurveyFor2012 < ActiveRecord::Migration
  def up
    remove_column :surveys, :husky_insurance
    %w{a b c d unknown}.each do |husky_type|
      add_column :surveys, "husky_insurance_#{husky_type}", :boolean
    end
    add_column :surveys, :charter_oak, :boolean
  end

  def down
    raise "NO WAY"
  end
end
