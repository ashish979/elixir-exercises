defmodule FileIo do
  def read_file(path) do
    IO.puts(File.read!(path))
  end

  def open_file(path) do
    File.open!(path, [:read, :utf8, :write])
  end

  def write_to_file(path, text) do
    file = open_file(path)
    IO.write(file, text)
  end
end

FileIo.read_file("/Users/ashish.agrawal/payu_projects/files/sample.txt")
FileIo.write_to_file("/Users/ashish.agrawal/payu_projects/files/sample.txt", "hola")
FileIo.read_file("/Users/ashish.agrawal/payu_projects/files/sample.txt")