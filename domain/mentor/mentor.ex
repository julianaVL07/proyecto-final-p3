defmodule Mentor do
  @moduledoc """
  Representa un mentor que apoya equipos en la hackathon.
  """

  defstruct nombre: "", id: "", especialidad: "", equipos_asignados: []

  def crear_mentor(nombre, id, especialidad, equipos_asignados) do
    %Mentor{nombre: nombre, id: id, especialidad: especialidad, equipos_asignados: equipos_asignados}
  end
end
