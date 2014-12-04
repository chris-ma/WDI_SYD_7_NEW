class Calculator

  def self.run(equations)
  equation_parts = equation.split(" ")  
  a = equation_parts.shift
  b = equation_parts.pop
  operation = equation_parts.join(" ")


      case operation

      when 'add'
        result = a.to_i + b.to_i
      when 'minus'
        result = a.to_i - b.to_i
      when 'times'
        result = a.to_i * b.to_i
      when 'divided by'
        result = a.to_i / b.to_i  
        
      end

      puts "#{a} #{operation} #{b} equals #{result}"
  end

end
