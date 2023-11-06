class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_founder
      t.string :company_founding_time
      t.integer :company_headcount
      t.string :headquarter_address

      t.timestamps
    end
  end
end
