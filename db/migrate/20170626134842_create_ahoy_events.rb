class CreateAhoyEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :ahoy_events, id: :uuid do |t|
      t.uuid :visit_id

      # user
      t.uuid :user_id
      # add t.string :user_type if polymorphic

      t.string :name
      t.jsonb :properties
      t.timestamp :time
    end

    add_index :ahoy_events, [:visit_id, :name]
    add_index :ahoy_events, [:user_id, :name]
    add_index :ahoy_events, [:name, :time]
  end
end
