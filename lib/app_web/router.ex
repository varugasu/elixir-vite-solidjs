defmodule AppWeb.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    content = EEx.eval_file("lib/app_web/html/index.html.heex")
    send_resp(conn, 200, content)
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
