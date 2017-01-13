class CreateUserStories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_stories do |t|
      t.string :as_a
      t.string :i_want_to
      t.string :so_that_i
      t.belongs_to :projects, foreign_key: true

      t.timestamps
    end
  end
end
