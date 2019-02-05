class CreateCalendarEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :calendar_events do |t|
      t.date :event_date
      t.string :event

      t.timestamps
    end
  end
end
