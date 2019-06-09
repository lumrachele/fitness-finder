class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :date, default: Time.new().strftime("%Y-%m-%d")
      t.time :time, default: Time.new().strftime("%H:%M:%S") {'CURRENT_TIMESTAMP'}

      t.timestamps
    end
  end
end
