defmodule Calculator do

  def sum(a,b\\0) do
    a+b
  end

  def diff(a,b\\0) do
    a-b
  end

  def prod(a,b\\1) do
    a*b
  end

  @spec quot(number, number) :: number
  def quot(a,b\\1) do
    a/b
  end
end

#For the Geometry
defmodule Geometry do
  alias Calculator, as: Calc

  defmodule Rectangle do

    def area({a, b}) do
      Calc.prod(a,b)
    end

    def area(a) do
      area({a,a})
    end

    def perimiter({a, b}) do
      2|>Calc.prod(a)|>Calc.sum(2|>Calc.prod(b))
    end

    def perimiter(a) do
      perimiter({a,a})
    end
  end

  defmodule Square do
    def area(a) do
      Calc.prod(a,a)
    end

    def perimiter(a, a) do
      Calc.prod(4,a)
    end
  end

  defmodule Circle do
    @moduledoc "Implementation for circle application"
    @pi 3.14159

    @doc "Computes area of circle"
    @spec area(number) :: number
    def area(r) do
      r|>Calc.prod(r)|>Calc.prod(@pi)
    end

    @doc "Computes circumference of circle"
    @spec circumference(number) :: number
    def circumference(r) do
      2|>Calc.prod(r)|>Calc.prod(@pi)
    end
  end
end

defmodule Factorial do
   def factorial(factorial_no) do
     do_factorial(factorial_no,factorial_no-1)
   end

   def do_factorial(factorial_no, 1) do
     factorial_no
   end

   def do_factorial(factorial_no, curr_no) do
     factorial_no*curr_no|>do_factorial(curr_no-1)
   end
end
