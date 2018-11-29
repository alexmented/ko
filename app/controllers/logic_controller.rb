class LogicController < ApplicationController
    #def armstrong_number?(arg)
    #  number = arg.to_s.length
    #  arg == arg.to_s.split('').map(&:to_i).map { |elem| elem**number }.inject(&:+)
    #end

  def input
  end

  def output
        if params[:param] == '' || params[:param].to_i.nil? || params[:param].to_i.zero?
          @result = 'There is no data or the data is incorrect'
          nil
        else
            z = 10
            @result = []
            @n = params[:param].to_i
            while z <= @n
                @result.push z if (z * z).to_s.split(//) == (z * z).to_s.split(//).reverse
                z += 1
            end
            
        end
  end
end
