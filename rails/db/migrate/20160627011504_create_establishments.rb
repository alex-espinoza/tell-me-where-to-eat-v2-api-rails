class CreateEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :categories
      t.string :phone_number
      t.string :url
      t.string :address
      t.timestamps
    end
  end
end
