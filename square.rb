

class Square

  attr_reader :name, :type, :location

  def initialize(params)
    @type = params[:type]
    @name = params[:name]
  end

end



