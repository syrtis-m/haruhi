=== time_machine_manual ===


~ machine_manual = getStoryVar("machine_manual")


~ time_machine_computer_on = getStoryVar("time_machine_computer_on")

there's a thick spiral-bound manual laying on top of a computer server.
{not time_machine_computer_on:the computer is quiet, off.}
+ [pick up the manual]
    -> menu
    
+ {machine_manual} [skip it]
    -> done

= menu
"GREENFIELD-SCHWARTZ TIME LOOP DEVICE USER MANUAL<br>Thank you for purchasing a Greenfield-Schwartz time loop device.<br>FAQ: page 12<br>Troubleshooting: page 323<br>"
+ [FAQ: page 12]
    "Q: Can the device be exposed to liquid?<br>A: No. Exposing the device to liquid may cause uncontrollable looping and temporary loss of memory. For information on solving this, please visit page 323."
    There's a puddle on the floor.
    -> menu
+ [Troubleshooting: page 323]
    "If you do not remember your past actions, you may be experiencing temporary loss of memory as a result of a critical failure in the device."
    "To repair the device, you must reconfigure the computer server, resupply power to the device, and fix the transmitter."
    There's a note in the margins: "zapper spare parts in the storage room, library has..." 
    The remaining text is smudged and illegible.
    -> menu
+ [put down the manual]
    ~timeloop()
    -> done

= done
~setStoryVar("machine_manual", true)
->DONE