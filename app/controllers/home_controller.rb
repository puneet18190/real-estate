class HomeController < ApplicationController
  def index
    @data = []
    @data << House.all.order('created_at desc')
    @data << CommercialUnit.all.order('created_at desc')
    @data << ComplexBuilding.all.order('created_at desc')
    @data = @data.compact.flatten
  end
end
