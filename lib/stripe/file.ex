defmodule StripeElixir.File do
  use StripeElixir.API, [:create, :retrieve, :list]

  def endpoint do
    "files"
  end
end
