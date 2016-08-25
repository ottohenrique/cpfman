class CreateDocumentations < ActiveRecord::Migration[5.0]
  def change
    create_table :documentations do |t|
      t.string :documentation
      t.string :birthday
      t.string :external_id
      t.integer :status

      t.timestamps
    end
  end
end
