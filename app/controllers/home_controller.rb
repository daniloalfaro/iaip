class HomeController < ApplicationController

  def get_institutions


  end

  def index
    @institutions = Institution.paginate(page: params[:page], per_page: 50)
    @institutions2 = Institution.all

    # respond_to do |format|
    #   format.html
    #   format.csv { send_data @institutions2.to_csv, filename: "institutions-#{Date.today}.csv" }
    # end
  end

end
