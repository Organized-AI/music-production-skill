# Desk checklist: MPC One+ and Ableton on Windows

Tick these off at the desk. The full reasoning is in [setup-plan.md](setup-plan.md).

## Before you start

- [ ] MPC firmware is on the current MPC 3 release.
- [ ] Interface ASIO driver is installed and selected in Live (Settings > Audio > Driver Type = ASIO).
- [ ] Driver Error Compensation is calibrated (Help View > Audio I/O lesson).
- [ ] MPC Main Out L/R is connected to interface In 1/2.
- [ ] The MIDI cables are crossed: MPC MIDI Out to PC MIDI In, and PC MIDI Out to MPC MIDI In.

## Clock (Ableton is master)

- [ ] In Live, under Settings > Link, Tempo & MIDI, the MIDI interface **output** row has Sync and Track on.
- [ ] The MIDI interface **input** row has Track on and Sync off.
- [ ] MIDI Sync Type is MIDI Clock.
- [ ] On the MPC, under Menu > Preferences > MIDI / Sync, Sync Receive is MIDI Clock.
- [ ] On the MPC, input port "MPC" has Sync and Track on.
- [ ] Press Play in Live: the MPC starts and its BPM matches Live's.
- [ ] Start Live from bar 5: the MPC also starts at bar 5.
- [ ] Change the tempo in Live: the MPC follows.
- [ ] Play a percussive pattern on both and nudge Sync Delay on the output port until the hits line up.

## Ableton plays the MPC

- [ ] An MPC drum track receives MIDI on port "MPC", channel 10.
- [ ] A Live MIDI track has External Instrument with MIDI To set to the interface, channel 10, and Audio From set to In 1/2.
- [ ] A test clip in Live plays the MPC kit, and you hear it through Live.
- [ ] Hardware Latency is set so the MPC sits in time with Live's own drums.

## The MPC plays Ableton

- [ ] An MPC MIDI track has MIDI Output Port set to "MPC", channel 2.
- [ ] A Live MIDI track is armed with an instrument, MIDI From set to the interface, channel 2, and monitor set to In.
- [ ] MPC pads play the Live instrument.
- [ ] Nothing loops back: each direction has its own channels, and no notes double.

## Capture

- [ ] Record one MPC program per pass into its own Live audio track (Audio From = External Instrument track, Pre FX, monitor Off).
- [ ] Save the Ableton template and the MPC template project.

## Optional extras

- [ ] Ableton Link over Wi-Fi in place of MIDI clock (Phase 6).
- [ ] Akai Network MIDI driver in place of DIN cables (Phase 6).
- [ ] AbletonMCP installed so Claude can drive Live (Phase 7).
