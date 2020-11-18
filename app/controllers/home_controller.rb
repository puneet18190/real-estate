class HomeController < ApplicationController
  def index
    @data = []
    @data << House.all.order('created_at desc')
    @data << CommercialUnit.all.order('created_at desc')
    @data << ComplexBuilding.all.order('created_at desc')
    @data = @data.compact.flatten
  end

  def purchase
    if params.key?('id') && params.key?('klass')
      owner_email = params["klass"].constantize.find_by(id: params["id"]).try(:owner_email)
      begin
	      LongTaskWorker.perform_async(owner_email)
	    rescue Exception => e
	    	puts e.message
	    end
      redirect_to root_url, notice: 'Operation Completed.'
    end
  end
end
