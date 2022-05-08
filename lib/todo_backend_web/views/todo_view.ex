defmodule TodoBackendWeb.TodoView do
  use TodoBackendWeb, :view
  alias TodoBackendWeb.TodoView
  alias TodoBackendWeb.Endpoint

  def render("index.json", %{todos: todos}) do
    render_many(todos, TodoView, "todo.json")
  end

  def render("show.json", %{todo: todo}) do
    render_one(todo, TodoView, "todo.json")
  end

  def render("todo.json", %{todo: todo}) do
    %{
      id: todo.id,
      title: todo.title,
      completed: todo.completed,
      url: Routes.todo_url(Endpoint, :show, todo.id)
    }
  end
end
