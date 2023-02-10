class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.date :day
      
      t.timestamps
    end
  end
end
