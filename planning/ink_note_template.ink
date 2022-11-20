INCLUDE config.ink

VAR library_note = ""
~ library_note = getStoryVar("library_note")

there's something laying underneath one of the bookshelves
* [pick it up]

    ~ timeloop()
    ~ setStoryVar("library_note", true)
* {library_note} [skip it]
    ~ setStoryVar("library_note", true)
-
->END
