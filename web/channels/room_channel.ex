defmodule Spymates.RoomChannel do
  use Phoenix.Channel
  require Logger

  def join("group:lobby", _message, socket) do
    {:ok, socket}
  end
  def join("group:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("position", coords, socket) do
    IO.inspect coords
    # broadcast! socket, "new_msg", %{position: coords}
    {:noreply, socket}
  end
end
