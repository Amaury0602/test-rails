class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.references :service_one
      t.references :service_two

      t.timestamps
    end
  end
end
