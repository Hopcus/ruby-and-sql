class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      # we have information on what to build in from the crm schema:
      # CREATE TABLE contacts (
        # id INTEGER PRIMARY KEY AUTOINCREMENT,
        # first_name TEXT,
        # last_name TEXT,
        # email TEXT,
        # company_id INTEGER
        #);
        t.string "first_name"
        t.string "last_name"
        t.string "email"
        t.string "company_id"

      t.timestamps
    end
  end
end
