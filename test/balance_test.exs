defmodule StripeElixir.BalanceTest do
  use ExUnit.Case, async: true

  alias StripeElixir.Balance

  test "retrieve balance" do
    assert {:ok, %{"object" => "balance"}} = Balance.retrieve()
  end
end
