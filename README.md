<p align="center">
  <img src="assets/deltarune_x_bingosync_logo.png" title="DELTARUNE x Bingosync">
</p>

# DELTARUNE Bingosync No Hit Mod
<b>NOTE</b>: This mod is only supported on Chapters 1-4 v1.05 (CH1 1.41 / CH2 1.47 / CH3 v0.0.099 / CH4 v0.0.100).

A no hit adaptation of the DELTARUNE Bingosync mod by Chistosito & NERS. Check out the original version [here](https://github.com/ners-xd/DELTARUNE-Bingosync).

This mod connects your game to [Bingosync](https://bingosync.com) and it can automatically mark goals from [this list](https://raw.githubusercontent.com/marti005/DELTARUNE-Bingosync-No-Hit/refs/heads/ch1-4/assets/goal_list.json). You can find a little guide on how to complete each goal [here](https://raw.githubusercontent.com/marti005/DELTARUNE-Bingosync-No-Hit/refs/heads/ch1-4/assets/goal_requirements.txt). You can also chat with other players, see the board update live, star goals and change your name color.

This adaptation removes goals which require taking damage and performing glitches, adds goals oriented to no hits, and displays the number of hits taken in a match, following the definition and exceptions defined by the [UT/DR Challenge Community](https://discord.com/invite/WVFcWXwT6A).

# Changes to the original mod

- Removed the "Die", "See obj_weirdroute_manipulator", "Crash With Noelle Anticheat", and "WW into 7 unique rooms" goals.
- Displays the amount of hits taken in a match. 
  - A hit counts as an avoidable loss of HP in battle or in the overworld, including the arcade minigame in Chapter 2 and the Legend of Tenna and Sword boards in Chapter 3.
  - The following do NOT count as hits and are therefore not counted by the mod:
    - Chapter 1: Hitting the white lights in Checkerboard.
    - Chapter 2: Being ran over by the overworld cars in Cyber City (including the Toby Fox car in the Egg room), HP depletion due to ThornRing.
    - Chapter 3: Getting hit or missing notes in the Cooking and Lightners Live minigames in boards 1 and 2, Susie taking damage from a bomb after she throws one (it DOES count as a hit if any other character takes damage).
    - Chapter 4: Being pushed by water during the climb sections, taking damage from the unavoidable sword attacks in either Knight chase.

# How to install and use
- Download [the latest](https://github.com/marti005/DELTARUNE-Bingosync-No-Hit/releases/latest) version of the mod
- **Extract the archive anywhere**, run "Bingosync Patcher.bat" and follow its instructions
- Create or join a room on Bingosync, open the game and obtain the room ID from the end of the link (bingosync.com/room/XXXXXXXXXXXXXXXXXXXXXX) and the room's password. Choose a nickname and a color (orange, red, blue, green, purple, navy, teal, brown, pink or yellow) and press "Connect to room"
- In this menu you can also reset your goal progress if needed (in case there's a bug or you just want to reset it, for some reason) and change your preferences.
- Having the chat open automatically progresses text if you're in a cutscene!

# Current quirks
- You can't open the chat while holding Control or Shift
- Occasionally, messages might pop up in chat saying you disconnected, but you actually didn't.

# Contributing
How to contribute to the mod:
- Create a fork of the repo and download the files
- Download [the latest](https://github.com/nhaar/ump/releases/latest) version of UMP and place the script in the same folder as the mod
- Use [the latest](https://github.com/UnderminersTeam/UndertaleModTool/releases/latest) version of UndertaleModTool
- Open a chapter's data.win, click on Scripts -> Run other script... -> bingosync_script.csx to import the mod and you can save the file
- You can find a guide on how to use UMP [here](https://github.com/nhaar/ump/blob/main/guide/guide.md)
- If you've made some modifications and you want them to be added in the mod, open a Pull Request and we'll look at it.

# Credits
<b>Original mod:</b>
- Coding: Chistosito, NERS
- Goal list: Tadyman, Chistosito, Trinky44, devek1
- UMP: nhaar

<b>No hit patch:</b>
- Coding: marti005.
