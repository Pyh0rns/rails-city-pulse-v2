class CreatePulses < ActiveRecord::Migration[6.1]
  def change
    create_table :pulses do |t|
      t.string :pulse_content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
