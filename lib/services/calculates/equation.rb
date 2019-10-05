module Services
  module Calculations
    class Equation
      class << self
        def call(equation_params)
          return quadratic_equation(equation_params) if equation_params[:type] == 'quadratic'
        end

        private

        def quadratic_equation(equation_params)
          discriminant = equation_params[:b] ** 2 - 4 * equation_params[:a] * equation_params[:c]

          if discriminant > 0
            x1 = (-equation_params[:b] + Math.sqrt(discriminant)) / (2 * equation_params[:a])
            x2 = (-equation_params[:b] - Math.sqrt(discriminant)) / (2 * equation_params[:a])
          elsif discriminant == 0
            x1 = -equation_params[:b] / (2 * equation_params[:a])
          else
            x1 = 'No solutions'
            x2 = 'No solutions'
          end
        end
      end
    end
  end
end
