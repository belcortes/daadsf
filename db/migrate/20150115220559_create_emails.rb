class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :text
      t.string :html
      t.string :to
      t.string :from
      t.string :subject
      t.string :attachments

      t.timestamps
    end
  end
end
