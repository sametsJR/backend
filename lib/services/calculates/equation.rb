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
          no_solutions_error = 'No solutions'
          coefficient_error = "Coefficient a can't be 0"

          return coefficient_error if equation_params[:a] == 0
          return no_solutions_error if equation_params[:b] == 0 && equation_params[:c] != 0 && (-equation_params[:c] / equation_params[:a]) < 0
          return no_solutions_error if discriminant < 0

          if equation_params[:b] == 0 && equation_params[:c] == 0
            x1 = 0
            [x1]
          elsif equation_params[:b] == 0 && equation_params[:c] != 0 && (-equation_params[:c] / equation_params[:a]) > 0
            x1 = Math.sqrt(-equation_params[:c] / equation_params[:a])
            x2 = -Math.sqrt(-equation_params[:c] / equation_params[:a])
            [x1, x2]
          elsif equation_params[:b] != 0 && equation_params[:c] == 0
            x1 = 0
            x2 = -equation_params[:b] / equation_params[:a]
            [x1, x2]
          elsif discriminant > 0
            x1 = (-equation_params[:b] + Math.sqrt(discriminant)) / (2 * equation_params[:a])
            x2 = (-equation_params[:b] - Math.sqrt(discriminant)) / (2 * equation_params[:a])
            [x1, x2]
          else discriminant == 0
            x1 = -equation_params[:b] / (2 * equation_params[:a])
            [x1]
          end
        end
      end
    end
  end
end
