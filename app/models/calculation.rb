class Calculation < ActiveRecord::Base
  def self.evaluate input
    calc = Calculation.new
    @securecalc ||= Dentaku::Calculator.new

    calc.input = input
    calc.output = @securecalc.evaluate(input) rescue nil
    calc
  end
end
