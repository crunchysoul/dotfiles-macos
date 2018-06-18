IEx.configure(
  colors: [
    syntax_colors: [
      number: :blue,
      atom: :cyan,
      string: :blue,
      boolean: :red,
      nil: [:magenta, :bright]
    ],
    ls_directory: :cyan,
    ls_device: :yellow,
    doc_code: :green,
    doc_inline_code: :magenta,
    doc_headings: [:cyan, :underline],
    doc_title: [:cyan, :bright, :underline]
  ]
)

dwarves = [
  "Fili",
  "Kili",
  "Oin",
  "Gloin",
  "Thorin",
  "Dwalin",
  "Balin",
  "Bifur",
  "Bofur",
  "Bombur",
  "Dori",
  "Nori",
  "Ori"
]

fellowship = %{
  hobbits: ["Frodo", "Samwise", "Merry", "Pippin"],
  humans: ["Aragorn", "Boromir"],
  dwarves: ["Gimli"],
  elves: ["Legolas"],
  wizards: ["Gandolf"]
}
