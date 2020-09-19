class CreateMagazineoenologistjobtitles < ActiveRecord::Migration[6.0]
  def change
    create_table :magazineoenologistjobtitles do |t|
      t.references :magazine, null: false, foreign_key: true
      t.references :oenologist, null: false, foreign_key: true
      t.references :job_title, null: false, foreign_key: true

      t.timestamps
    end
  end
end
