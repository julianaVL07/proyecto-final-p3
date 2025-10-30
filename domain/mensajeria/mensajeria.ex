defmodule Mensaje do
  @moduledoc """
  Representa un mensaje dentro del sistema de chat de la hackathon.
  """

  defstruct codigo: "", remitente: "", destinatario: "", contenido: "", fecha: nil, tipo: :texto

  @doc """
  Crea un nuevo mensaje con la información proporcionada.
  """
  def crear_mensaje(codigo, remitente, destinatario, contenido, tipo) do
    %Mensaje{codigo: codigo, remitente: remitente, destinatario: destinatario, contenido: contenido, fecha: DateTime.utc_now(), tipo: tipo}
  end
end
