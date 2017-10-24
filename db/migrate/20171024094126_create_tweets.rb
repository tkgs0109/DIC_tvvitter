class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :user
      t.text :content
      t.timestamp :updated_at
    end
  end
end
