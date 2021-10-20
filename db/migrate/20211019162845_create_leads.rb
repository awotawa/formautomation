class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :situation
      t.text :domains
      t.text :type

      t.timestamps
    end
  end
end
