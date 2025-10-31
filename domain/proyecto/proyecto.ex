defmodule Proyecto do
  @moduledoc """
  Información del proyecto que desarrolla un equipo.
  """

  defstruct nombre: "", codigo: "", descripcion: "", categoria: "", avances: [], retroalimentacion: []

  def crear_proyecto(nombre, codigo, descripcion, categoria, avances, retroalimentacion) do
    %Proyecto{nombre: nombre, codigo: codigo, descripcion: descripcion, categoria: categoria, avances: avances, retroalimentacion: retroalimentacion}
  end

end
