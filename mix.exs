defmodule ScenicSnake.MixProject do
  use Mix.Project

  def project do
    [
      app: :scenic_snake,
      version: "0.1.0",
      elixir: "~> 1.7",
      build_embedded: true,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ScenicSnake, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scenic, "~> 0.8.0"},
      {:scenic_driver_glfw, "~> 0.8"}
    ]
  end
end
