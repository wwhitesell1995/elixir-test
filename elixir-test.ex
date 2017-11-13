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
    def area(a) do
      area(a,a)
    end

    def area(a, b) do
      Calc.prod(a,b)
    end

    def perimiter(a) do
      perimiter(a,a)
    end

    def perimiter(a, b) do
      2|>Calc.prod(a)|>Calc.sum(2|>Calc.prod(b))
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
