INCLUDE config.ink

VAR library_note = ""
~ library_note = getStoryVar("library_note")

there's something laying underneath one of the bookshelves
* [pick it up]
    it's a page torn from a book.
    in blue ink: "somehow locked my key to the library back room inside the office."
    "i think the password was holiday related?"
    ~ timeloop()
    ~ setStoryVar("library_note", true)
* {library_note} [skip it]
    ~ setStoryVar("library_note", true)
-
->END