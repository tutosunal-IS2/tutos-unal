class CreateArchivos < ActiveRecord::Migration[5.0]
  def change
    create_table :archivos do |t|
      t.string :path
      t.string :tipo
      t.integer :tamaño

      t.timestamps
    end
  end
end
