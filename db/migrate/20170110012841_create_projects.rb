class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.boolean :web_app
      t.boolean :mobile_app
      t.datetime :due_date

      t.timestamps
    end
  end
end
