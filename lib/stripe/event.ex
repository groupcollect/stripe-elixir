defmodule StripeElixir.Event do
  use StripeElixir.API, [:retrieve, :list]

  def endpoint do
    "events"
  end
end
