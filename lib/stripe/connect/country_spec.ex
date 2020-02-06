defmodule StripeElixir.CountrySpec do
  use StripeElixir.API, [:retrieve, :list]

  def endpoint do
    "country_specs"
  end
end
