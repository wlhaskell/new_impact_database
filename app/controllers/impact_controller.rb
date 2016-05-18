class ImpactController < ApplicationController
  def index
  	@impacts = Impact.all
  end
end
