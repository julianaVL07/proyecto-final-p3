defmodule Participante do
  @moduledoc """
  Representa a un participante dentro de la hackathon.
  """

  defstruct nombre: "", id: "", rol: "integrante", equipo: nil

  def crear_participante(nombre, id, rol, equipo) do
    %Participante{nombre: nombre, id: id, rol: rol, equipo: equipo}
  end
end
