defmodule RLE do
  def encode(list), do: _encode(list, [])

  defp _encode([], result), do: Enum.reverse(result)

  defp _encode([a, a | tail], result) do
    _encode([{a, 2} | tail], result)
  end
  defp _encode([{a,n}, a| tail], result) do
    _encode([{a, n+1} | tail], result)
  end
  defp _encode([a | tail], result) do
    _encode(tail, [a | result])
  end
end