defmodule Gutenex.PDF.Graphics do

  def save_state do
    "q\n"
  end

  def restore_state do
    "Q\n"
  end

  def with_state(fun) do
    Enum.join [
      save_state(),
      fun.(),
      restore_state()
    ]
  end

end
