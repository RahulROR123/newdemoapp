class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :type
      t.string :setup
      t.string :punchline

      t.timestamps
    end
  end
end
