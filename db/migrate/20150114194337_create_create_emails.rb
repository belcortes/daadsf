class CreateCreateEmails < ActiveRecord::Migration
  def change
    create_table :create_emails do |t|
      t.string :text
      t.string :to
      t.string :from
      t.string :subject
      t.string :html
      t.string :attachmentX

      t.timestamps
    end
  end
end
