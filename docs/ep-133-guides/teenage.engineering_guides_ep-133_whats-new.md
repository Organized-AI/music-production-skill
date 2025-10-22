---
url: "https://teenage.engineering/guides/ep-133/whats-new"
title: "EP–133 guide: what's new - teenage engineering"
---

[teenage](https://teenage.engineering/)[engineering](https://teenage.engineering/)

2025 october

[products](https://teenage.engineering/products)

[audio & synthesizers](https://teenage.engineering/products/audio-and-synthesizers)[wireless speakers](https://teenage.engineering/products/wireless-speakers)[designs](https://teenage.engineering/designs)

[00​](https://teenage.engineering/store/checkout) [​](https://teenage.engineering/store)

[store](https://teenage.engineering/store)

[visit store](https://teenage.engineering/store)[checkout](https://teenage.engineering/store/checkout)

[​](https://teenage.engineering/now)

[now](https://teenage.engineering/now)

[newsletter](https://teenage.engineering/newsletter)[instagram](http://instagram.com/teenageengineering)[blog](https://teenage.engineering/now)

[​​](https://teenage.engineering/guides) [​​](https://teenage.engineering/guides)

[support](https://teenage.engineering/guides)

[guides](https://teenage.engineering/guides)[downloads](https://teenage.engineering/downloads)[support portal](https://support.teenage.engineering/)

10代工学は未来の製品とコミュニケーションを生み出すスタジオです。私たちのミッションは先端工学を用いて上質で機能的なデザインの製品を作り出すことです。是非、新たなスタイルで音楽をお楽しみください。

[​](https://teenage.engineering/25-the-flipped-out-year)

[0](https://teenage.engineering/store)

what's new

[return to index](https://teenage.engineering/guides/ep-133#index)

new features!

- added: Show "disk low" warning message when pressing SAMPLE and there is not enough disk space to record 20 seconds.

- added: midi reset all controllers on sequencer stop. this is now system setting 140 (on) and 141 (off).

project management

- fix: project erase did not reset scenes

- fix: Project erase did not reset some pad settings (e.g. MIDI channel).

- fix: Swing was not updated when loading a new project.

- fix: After loading a project, erasing notes would not enable the undo umbrella.

sound editing

- fix: With a perfectly timed stop, the sequencer could stop past pattern end. (E.g. 5.1.1 for a 4-bar pattern.)

- fix: Only record note repeats for the currently selected group.

- fix: For some notes, LEDs were not lit for the full duration. This caused misleading blinks at note-off.

- fix: Stuck notes when using punch in fx pad 0.

sampling

- added: Show "disk low" warning message when pressing SAMPLE and there is not enough disk space to record 20 seconds.

- fix: When hands-free sampling 20 seconds of stereo, the device would incorrectly display "FUL" and discard the recording.

- fix: Newly recorded samples would inherit settings (like pan or pitch) from the pad's previous state.

- fix: faster storage cleanup after deleting samples.

- fix: When fixed-length resampling a pattern, start recording instantly, also  capturing any initial silence. This preserves the timing relative to pattern start.

sound editing

- fix: Trim in would not always move to sample start.

- fix: Small trims would not enable the scissors icon.

- fix: The UI did not refresh after pasting a pad.

- fix: Keep pad settings when browsing sounds with +/- and returning to original sound. Numpad selection acts as a fresh load.

- fix: Pads would leave mute groups when changing sound.

- fix: Improved initial BPM and bar length detection for samples imported via EP SAMPLE TOOL, especially those with custom sample rates.

midi and sync

- removed: midi program change support. program change can still be recorded and relayed but is no longer mapped on the device.

- added: midi reset all controllers on sequencer stop. this is now system setting 140 (on) and 141 (off).

- fix: Recording fast external MIDI aftertouch/pitch bend messages no longer causes audio stutter on playback.

- fix: Stuck notes when changing pads while playing on MIDI controller.

- fix: Sync icon blinked with wrong rate.

- fix: Do not record MIDI Channel Mode messages

- fix: TRS midi out could sometimes fail. (running status wasn't reset)

misc

- fix: System settings did not show navigation after punching in a number.

- fix: A rare issue where some machines would display a garbled error message on startup.

- fix: Allow switching scenes by MAIN+single digit.

scenes

- Erase Scene ((ERASE)+(mAIN)) Update:



Hold for 2s:



If the current scene is empty and not part of the song, it is deleted (displays “DEL”).



Otherwise, its contents are cleared (displays “CLR”).

SONG MODE

- changed: stop the song when it reaches end.

- changed: when stopping a song, go back to the position where the song was started.

- fix: undo while recording could restore the wrong pattern.

- fix: pause song progression when LOOP mode is active.

- fix: when recording, notes sometimes got quantised to the wrong pattern.

- fix: stay in active scene when leaving song mode.

- fix: Improved song mode cut/paste visual feedback.

sampling

- new: allow chopping a sample from one group to another.



(Example: Press (groupa), select a sound by pressing pad, press (groupB), CHOP!)

- fix: hands-free sampling was allowed on already recorded pads, causing a weird state

- fix: hands-free sampling did not stop automatically after 20 seconds.

- fix: lag when retaking a sample.

- fix: the sequencer sometimes did not stop after fixed-length pattern recording.

- fix: in hands-free sampling, prevent changing the fixed recording length using (plus) / (minus) after recording has started.

connectivity

- new: added system setting MID -> CHN -> OFF (127). When selected, pads only send and receive MIDI voice messages if a MIDI channel is assigned in SOUND EDIT.

- new: reduced latency by enabling running status on TRS MIDI OUT.

- fix: weird behaviours when recording with external clock.

- sync in start did not exit record arm mode.

- in some cases, stop did not stop recording and metronome.

- fix: Program Change and Channel Pressure messages on TRS MIDI OUT.

- fix: OMNI/basic channel MIDI notes were forwarded even if MIDI THRU was OFF.

- fix: SYNC24 OUT did not work well with some devices (e.g. MC-202).

- fix: Improved USB reliability when connecting to Windows PCs.

- fix: handle unsupported characters when uploading sounds with EP SAMPLE TOOL.

sound edit

- fix: SOUND EDIT trim out audition was broken if trim in was greater than 0.

- fix: sound pitch could get stuck at 0.00 when finetuning.

- fix: AMP could be displayed instead of PTC when changing sound pitch with Y knob.

- fix: timestretch did not work with external clock.

- fix: Sound timestretch BAR setting did not save and load correctly.

- fix: Holding SHIFT+SOUND to save a sound now works during playback.

projects

- fix: sidechain settings were not loaded correctly.

- fix: project erase did not reset pattern length.

- fix: Project load did not reset pattern position.

punch-in FX

- fix: Weird behaviour of punch-in FX when sequencer is stopped.

- fix: punch-in FX ENTER could sometimes cut out very long notes.

- fix: out of sync time-stretched samples when using tape-stop-punch in FX.

misc

- fix: punch-in FX ENTER could sometimes cut out very long notes.

- fix: display BAT when powering down due to critically low battery

- fix: Improved handling of disk full when saving settings and pattern data.

- fix: loop mode sample start position was off when using external clock or tape-stop punch in fx.

crashes

- fix: crash when playing song with external clock.

- fix: crash when switching project with a queued scene change.

- fix: crash when pressing (shift) + (groupA) in song mode while the song is playing.

- fix: error 'pattern 30' when loading a pattern.

os 2.o

stack effects, make a beat from a beat or combine samples, all using the new resampler.

just hit (sample) then press (plus) until RSP shows on screen. you can then hold (shift), press a pad then press (play) to sample the length of the currently selected pattern. you can even switch groups after you’ve engaged hands free sampling to sample sounds from another group.

learn more about resampling [here](https://teenage.engineering/guides/ep-133/functions#10.1-sample)

use song mode to chain scenes together.

hold main then press (enter) to open the song list editor, you can then view and edit the current song position as well as add up to 99 different song positions. combining that with a maximum pattern length of 99 bars that means you can create songs as long as 9,801 bars! this fight might just need some wraps...

learn more about song mode [here](https://teenage.engineering/guides/ep-133/modes#8.3.1-song-mode)

sometimes you need both hands to play an instrument, and you want to sample it. use hands free sampling and let ko2 hold the buttons for you.

when sampling hold (shift) and press a pad to engage hands free sampling. you can then sing, play, shout and strum, ko2 will take care of the rest. once you are done just press sample and ko2 will stop sampling. remember to adjust your threshold and gain and combine hands free sampling with the new resampling feature send your beat back into the ring.

learn more about hands free sampling [here](https://teenage.engineering/guides/ep-133/functions#10.1-sample)

kick and bass not getting along? sidechain will duck the volume of the bass when the kick comes in.

press (shift) and (fx) to open output, then (plus) to switch to sidechain. select the sidechain source by holding a group pad and selecting a sound on the pads, then select the destination groups by holding (shift) and pressing the group pads. dial in how hard they punch by adjusting the length and shape with (knobx) and (knoby) respectively.

learn more about midi sidechain [here](https://teenage.engineering/guides/ep-133/effects#11.9.1-sidechain)

with increased polyphony, ko2 goes from 12 mono/6 stereo sounds to up to 16 mono and 12 stereo sounds.

no need to pull your punches anymore but watch out for time stretched, stereo and high pitched samples as they may reduce the polyphony.

struggling to land your kicks on time? what about adding one bar loops? try out the new larger note intervals, now you can hit your target every time and record perfect four on the floors.

ko2 now supports 1/1, 1/2 and 1/4 timing intervals!

bonus! hold (shift) while in timing to latch the note repeat so ko2 can hit the hats for you while you focus on the kick and snare.

learn more about larger note intervals [here](https://teenage.engineering/guides/ep-133/functions#10.4-timing)

ko2 now supports midi thru so it can pass notes along to other machines.

hold (shift) and press (erase) to open the system settings then press (plus) to go to mid, then (enter), press (plus) twice to go to thr, then (enter) again and then set it to on with (plus) and (enter) once more. boom! now any incoming midi messages will be passed along to midi out and usb.

ko2 also features a bunch of midi improvements such as:a system setting for midi in and out channelssending and receiving program change messagesa new midi note map so you can play any sound on any pad with an external controllerincoming pitch bend and mod wheel messages now affect sample playbackPads now by default send midi notes to the system midi channelthe sound edit midi channel now changes the midi in channel for that pad too

learn about all the midi changes [here](https://teenage.engineering/guides/ep-133/modes#8.2.5-midi)

as well as all the huge features we have added there are also smaller ones,here is a comprehensive list of the rest.

- (main) + numpad can now always switch to any scene 1-99.
- hold (SHIFT) \+ (SOUND) two seconds to save sound edits.
- changes are now saved to disk also during sample playback. this means we no longer need the brain icon to show unsaved changes.
- in MAIN mode, (minus) and (plus) now moves by steps even after bar 10. Since a position like 10.1.2 will not fit on the display, steps are shown with the TIC display.
- sound pitch setting is now step-less.
- snap to zero crossing when changing TRIM IN on mono sounds.
- sync live project switch to bar end.
- made swing a project setting instead of a global setting.
- system setting 412: SEQ/SCN/PTN. Sync scene changes with pattern end.

update your device [here](https://teenage.engineering/apps/update)

K.O. II champions update OS 2.0 - YouTube

[Photo image of teenage engineering](https://www.youtube.com/channel/UCJaEGe7IYRz4_f42DyeUU1w?embeds_referring_euri=https%3A%2F%2Fteenage.engineering%2F)

teenage engineering

93.3K subscribers

[K.O. II champions update OS 2.0](https://www.youtube.com/watch?v=_QKr06470xU)

teenage engineering

Search

Watch later

Share

Copy link

Info

Shopping

Tap to unmute

If playback doesn't begin shortly, try restarting your device.

More videos

## More videos

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

CancelConfirm

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

[Why am I seeing this?](https://support.google.com/youtube/answer/9004474?hl=en)

[Watch on](https://www.youtube.com/watch?v=_QKr06470xU&embeds_referring_euri=https%3A%2F%2Fteenage.engineering%2F)

0:00

0:00 / 4:28
•Live

•

![](https://img.youtube.com/vi/_QKr06470xU/maxresdefault.jpg)

albania   andorra   armenia   australia   austria   bahrain   belgium   bolivia   bosnia and herzegovi...   brazil   canada   chile   colombia   croatia   czech republic   denmark   egypt   estonia   finland   france   georgia   germany   greece   guyana   hong kong   hungary   iceland   india   ireland   israel   italy   jamaica   japan   jersey   kazakstan   korea, republic of   kuwait   latvia   lithuania   luxembourg   macau   malaysia   malta   mexico   monaco   netherlands   new zealand   norway   peru   philippines   poland   portugal   puerto rico   qatar   romania   saudi arabia   serbia   singapore   slovakia   slovenia   south africa   spain   sweden   switzerland   taiwan   thailand   türkiye   united arab emirates   united kingdom   united states   uruguay

[newsletter](https://teenage.engineering/newsletter)[retailers](https://teenage.engineering/retailers)[store](https://teenage.engineering/store)[terms](https://teenage.engineering/terms-and-conditions)[press](https://teenage.engineering/press)[contact](https://teenage.engineering/contact)

©2025 teenage engineering

5​