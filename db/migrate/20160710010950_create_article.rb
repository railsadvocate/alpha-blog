class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
