class CreateInstitutions < ActiveRecord::Migration[6.0]
  def change
    create_table :institutions do |t|
      t.text :name
      t.text :acronym
      t.integer :institution_id
      t.integer :institution_type_id
      t.text :website_url
      t.timestamps
    end
  end
end
