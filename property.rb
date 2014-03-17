
class Property 

  attr_reader :name, :cost, :type, :location
  
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @cost = params[:cost]
  end


end



