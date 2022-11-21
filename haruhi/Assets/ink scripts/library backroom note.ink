=== library_backroom_note ===
//info needed to be able to fix computer

//storing config info for time loop servers on hardcopy in backroom
there's a thin folder laying on one of the bookshelves
+ [flip through it]
    "timeloop computer server config info:"
    you think you can probably configure the time loop machine computer server now
    ~ setStoryVar("computer_fixable",true)
    ->done_loop
+ [leave it]
    ->done

=done_loop
~ timeloop()
-> DONE

= done
-> DONE