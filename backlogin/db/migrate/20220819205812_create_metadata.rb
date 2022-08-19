class CreateMetadata < ActiveRecord::Migration[7.0]
  def change
    create_table :metadata do |t|
      t.string :chave
      t.string :valor

      t.timestamps
    end
  end
end
