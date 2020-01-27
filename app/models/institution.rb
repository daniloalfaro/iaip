class Institution < ApplicationRecord
  validates :institution_id, uniqueness: true

  # def self.to_csv
  # attributes = %w{name acronym website_url institution_id institution_type_id }
  #
  # CSV.generate(headers: true) do |csv|
  #   csv << attributes
  #
  #   all.each do |institution|
  #     csv << attributes.map{ |attr| institution.send(attr) }
  #   end
  # end
  #
  # def name
  #   "#{name} #{acronym} #{website_url} #{institution_id} #{institution_type_id}"
  # end

end
