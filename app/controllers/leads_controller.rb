class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  def new
    @lead = Lead.new
  end


  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to lead_path(@lead)
    else
      render :new
    end
  end

    private

    def lead_params
      params.require(:lead)
    end
end
