module Services
  module Calculations
    class Equation
      class << self
        def call(equation_params)
          return quadratic_equation(equation_params) if equation_params[:type] == 'quadratic'
          return linear_equation(equation_params) if equation_params[:type] == 'linear'
        end

        private

        def quadratic_equation(equation_params)
          discriminant = (equation_params[:b]).to_f ** 2 - 4 * (equation_params[:a]).to_f * (equation_params[:c]).to_f
          no_solutions_error = 'No solutions'
          coefficient_error = "Coefficient a can't be 0"

          return coefficient_error if equation_params[:a] == 0
          return no_solutions_error if equation_params[:b] == 0 && equation_params[:c] != 0 && (-equation_params[:c] / equation_params[:a]) < 0
          return no_solutions_error if discriminant < 0

          if equation_params[:b] == 0 && equation_params[:c] == 0
            x1 = 0.to_f
            [x1]
          elsif equation_params[:b] == 0 && equation_params[:c] != 0 && (-equation_params[:c] / equation_params[:a]) > 0
            x1 = Math.sqrt((-equation_params[:c]).to_f / (equation_params[:a]).to_f)
            x2 = -Math.sqrt((-equation_params[:c]).to_f / (equation_params[:a]).to_f)
            [x1, x2]
          elsif equation_params[:b] != 0 && equation_params[:c] == 0
            x1 = 0.to_f
            x2 = (-equation_params[:b]).to_f / (equation_params[:a]).to_f
            [x1, x2]
          elsif discriminant > 0
            x1 = ((-equation_params[:b]).to_f + Math.sqrt(discriminant)) / (2 * (equation_params[:a]).to_f)
            x2 = ((-equation_params[:b]).to_f - Math.sqrt(discriminant)) / (2 * (equation_params[:a]).to_f)
            [x1, x2]
          else discriminant == 0
            x1 = (-equation_params[:b]).to_f / (2 * equation_params[:a])
            [x1]
          end
        end

        def linear_equation(equation_params)
          if equation_params[:a] == 0 && equation_params[:b] == 0
            'Infinite'
          elsif equation_params[:a] == 0 && equation_params[:b] != 0
            'No solutions'
          else
            x1 = (-equation_params[:b]).to_f / (equation_params[:a]).to_f
            [x1]
          end
        end
      end
    end
  end
end
