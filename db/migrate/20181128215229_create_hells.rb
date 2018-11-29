class CreateHells < ActiveRecord::Migration[5.1]
  def change
    create_table :hells do |t|
		t.integer :user_id
		t.string :top
		t.string :tas
		t.string :stat
      t.timestamps
    end
  end
end
