defmodule Request do
  defp getRequest(url) do
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        "[ERROR] - 404 Not found"
      {:error, %HTTPoison.Error{reason: reason}} ->
        "[ERROR] - #{reason}"
    end
  end

  def start(_type, _args) do
    IO.puts getRequest(Application.fetch_env!(:request, :webUrl))
  end
end
