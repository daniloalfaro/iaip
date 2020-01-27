desc "get institutions from IAIP"

task :get_institutions   => :environment do
  response = RestClient.get "https://www.transparencia.gob.sv/api/v1/institutions.json"
  json = JSON.parse response

   if !json.blank?
        @institutions = json

        @institutions.each do |i|
          institution = Institution.new
          institution.name = i["name"]
          institution.acronym = i["acronym"]
          institution.institution_id = i["id"]
          institution.institution_type_id = i["institution_type_id"]
          institution.website_url = i["website_url"]
          if institution.save
            puts "Importando institucion: #{i["name"]}"
          else
            #puts institution.errors.inspect
          end

        end
   end


end
