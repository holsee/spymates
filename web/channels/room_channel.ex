defmodule Spymates.RoomChannel do
  use Phoenix.Channel

  def join("group:lobby", _message, socket) do
    {:ok, socket}
  end
  def join("group:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end
end
