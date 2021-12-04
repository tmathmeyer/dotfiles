load("//dotfiles/target_definitions.py")

ConfigSet (
  name = "custom_fonts",
  deps = [
  ],
  files = [
    ("FantasqueSans.ttf", "{HOME}/.fonts/FantasqueSans.ttf"),
    ("FantasqueSansMono-Bold.ttf", "{HOME}/.fonts/FantasqueSansMono-Bold.ttf"),
    (
      "FantasqueSansMono-BoldItalic.ttf",
      "{HOME}/.fonts/FantasqueSansMono-BoldItalic.ttf",
    ),
    ("FantasqueSansMono-Italic.ttf", "{HOME}/.fonts/FantasqueSansMono-Italic.ttf"),
    (
      "FantasqueSansMono-Regular.ttf",
      "{HOME}/.fonts/FantasqueSansMono-Regular.ttf",
    ),
  ],
)

ExecuteTool (
  name = "fonts_install",
  deps = [ ":custom_fonts" ],
  execute = "fc-cache -vf",
)