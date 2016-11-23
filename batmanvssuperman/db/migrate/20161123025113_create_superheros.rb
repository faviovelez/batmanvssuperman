class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.string :email_batman
      t.string :email_superman
      t.integer :votes_batman
      t.integer :votes_superman

      t.timestamps null: false
    end
  end
end
