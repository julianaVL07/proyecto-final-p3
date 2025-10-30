defmodule Equipo do
  @moduledoc """
  Representa un equipo participante en la hackathon.
  """

  defstruct nombre: "", codigo: "", categoria: "", miembros: [], proyecto: nil

  def crear_equipo(nombre, codigo, categoria, miembros, proyecto) do
    %Equipo{nombre: nombre, codigo: codigo, categoria: categoria, miembros: miembros, proyecto: proyecto}
  end

  def agregar_miembro(equipo, participante) do
    %{equipo | miembros: equipo.miembros ++ [participante]}
  end
end
