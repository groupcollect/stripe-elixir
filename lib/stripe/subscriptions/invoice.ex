defmodule StripeElixir.Invoice do
  use StripeElixir.API, [:create, :retrieve, :update, :list]

  def endpoint do
    "invoices"
  end

  def line_items(%{"id" => invoice_id}) do
    line_items(invoice_id)
  end

  def line_items(invoice_id, pagination_opts \\ [], opts \\ []) do
    StripeElixir.request(:get, "#{endpoint()}/#{invoice_id}/lines", pagination_opts, opts)
  end

  def upcoming(data, opts \\ []) do
    StripeElixir.request(:get, "#{endpoint()}/upcoming", data, opts)
  end

  def pay(invoice_id, opts \\ []) do
    StripeElixir.request(:post, "#{endpoint()}/#{invoice_id}/pay", [], opts)
  end
end
