class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table(:settings, id: :uuid) do |t|
      t.string :email

      t.timestamps
    end
  end
end
