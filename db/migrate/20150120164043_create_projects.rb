class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :organisation, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :projects, :organisations
  end
end
