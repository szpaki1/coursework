class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :content
      t.string :photo

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end

end
