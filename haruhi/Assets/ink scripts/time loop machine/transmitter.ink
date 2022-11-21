=== time_machine_transmitter ===
~ transmitter_fixable = getStoryVar("transmitter_fixable")
~ endgame_transmitter = getStoryVar("endgame_transmitter")

this transmitter is what actually puts something in a time loop. {not endgame_transmitter: it's broken right now.}
{
- endgame_transmitter:
    ->already_fixed
- transmitter_fixable:
    ->info
- else:
    ->no_info
}


=info
you can probably troubleshoot this, get it working again
...
a little green light turns on; the transmitter is working again.
~ setStoryVar("endgame_transmitter",true)
~setStoryVar("transmitter_toggle",true)
->check_end

=no_info
you aren't quite sure how to fix this...
-> done

=already_fixed
the transmitter seems to be working fine
->done

= check_end
~endgame_power = getStoryVar("endgame_power")
~endgame_computer = getStoryVar("endgame_computer")
~endgame_transmitter = getStoryVar("endgame_transmitter")
{
- endgame_power && endgame_computer && endgame_transmitter:
    -> endgame
- else:
    -> done_loop
}


=done_loop
~timeloop()
->DONE

=done
->DONE
