class CreateHcs < ActiveRecord::Migration
  def change
    create_table :hcs do |t|
      t.string :home
      t.string :contact
      t.string :about
      t.string :employment
      t.string :services
      t.string :why

      t.timestamps
    end
  end
end
