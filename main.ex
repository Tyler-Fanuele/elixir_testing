defmodule Fib do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)
end

defmodule Output do
  def output(x) do
    case x do
      {:error, reason} -> IO.puts reason
      {:ok, value} -> IO.puts value
    end
  end
end

defmodule SafeFunction do
  def safeFunction(func, expr, x, y) do
    require Monad.Maybe, as: Maybe
    import Maybe

    Maybe.m do
      result <- case expr do
                  true  -> fail "division by zero"
                  false -> return func x, y
                end
    end
  end
end

Fib.fib(4) |> IO.puts

map = %{"one" => :two, 3 => "four"}
map["one"] |> IO.puts

Output.output {:ok, "o"}
