require 'sass'

module Sass::Script::Functions

  def list_files(path)
    STDOUT.write 'Hello, World!'
    return Sass::Script::List.new(
      Dir.glob(path.value).map! { |x| Sass::Script::String.new(x) },
      :comma
    )
  end

end
