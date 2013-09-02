defmodule Shootout.Mixfile do
  use Mix.Project

  def project do
    [ app: :shootout,
      version: "0.0.1",
      elixir: "> 0.10.0",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      # JSON.encode type API (comment out the ones you're not testing.)
      #{ :json, github: "cblage/elixir-json"},
      { :jazz, github: "meh/jazz"},

      # THEMSELVES.encode type API
      {:exjson, github: "guedes/exjson"},
      {:jsex, github: "talentdeficit/jsex"},
      {:jiffy, github: "davisp/jiffy"},
      {:mochijson2, github: "bjnortier/mochijson2"},
      {:exon, github: "betawaffle/exon"}
    ]
  end
end
# betawaffle/exon guedes/exjson