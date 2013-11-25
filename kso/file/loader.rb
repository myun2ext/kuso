module Kso::File
end
class Kso::File::Loader
  def at(name, *opts)
    File.read(name)
  end
end
