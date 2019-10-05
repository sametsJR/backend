class EquationsController < ApplicationController
  def calculate
    answer = Services::Calculations::Equation.call(equation_params)
    render json: answer
  end

  private

  def equation_params
    params.permit(:a, :b, :c, :type)
  end
end
