class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|

      t.timestamps
      t.string      :name,          null: false
      t.string      :date,          null: false
      t.text        :info,          null: false
      t.integer     :area_id,       null: false
      t.integer     :salary,        null: false
      t.string      :time_start,    null: false
      t.string      :time_finish,   null: false
      t.string      :station,       null: false
      t.string      :phone,         null: false
      t.string      :place,         null: false
      t.integer     :genre_id,      null: false
      t.references  :user,          foreign_key: true
    end
  end
end
