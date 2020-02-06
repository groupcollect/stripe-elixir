defmodule StripeElixir.InvoiceItem do
  use StripeElixir.API, [:create, :retrieve, :update, :delete, :list]

  def endpoint do
    "invoiceitems"
  end
end
