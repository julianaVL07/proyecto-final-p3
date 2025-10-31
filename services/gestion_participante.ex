defmodule GestionParticipantes do
  @moduledoc """
  Módulo que gestiona las operaciones CRUD sobre los participantes.
  """

  @doc """
  Crea un nuevo participante y lo agrega a la lista existente.
  Retorna la lista actualizada.
  """
  def agregar_participante(participantes, nombre, id, rol, equipo) do
    nuevo = Participante.crear_participante(nombre, id, rol, equipo)
    participantes ++ [nuevo]
  end

  @doc """
  Muestra en consola la lista de participantes.
  """
  def listar_participantes(participantes) do
    IO.puts("\nLista de participantes:")
    Enum.each(participantes, fn participante ->
      IO.puts("nombre:#{participante.nombre},id: #{participante.id}, rol:#{participante.rol}, Equipo: #{participante.equipo}")
    end)
  end

  @doc """
  Busca un participante por su ID.
  Retorna el struct del participante o nil si no se encuentra.
  """
  def buscar_participante_por_id(participantes, id) do
    Enum.filter(participantes, fn participante -> participante.id == id end)
  end

  @doc """
  Actualiza los datos de un participante existente.
  Recibe la lista, el ID del participante y un mapa con los nuevos datos.
  """
  def actualizar(participantes, id, nuevos_datos) do
    Enum.map(participantes, fn participante ->
      if participante.id == id do
        %{participante |nombre: nuevos_datos[:nombre] || participante.nombre,
          rol: nuevos_datos[:rol] || participante.rol,
          equipo: nuevos_datos[:equipo] || participante.equipo
        }
      else
        participante
      end
    end)
  end

  @doc """
  Elimina un participante de la lista según su ID.
  Retorna la lista actualizada.
  """
  def eliminar_participante(participantes, id) do
    Enum.reject(participantes, fn participante -> participante.id == id end)
  end
end
