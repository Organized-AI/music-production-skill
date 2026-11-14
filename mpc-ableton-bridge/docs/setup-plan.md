# MPC One+ and Ableton on Windows: setup plan

Last updated: 2026-11-14

## Assumptions to confirm first

- **"MCP One" means the Akai MPC One+.** If it's the MPC One G2, the plan changes (the G2 can act as a USB audio interface; the One+ can't). If you meant MCP as in Model Context Protocol, that's covered in Phase 7.
- **The MPC runs current MPC 3.x firmware.** The MPC 3.10.1 release notes list the One+ as supported.
- **The Windows PC has an audio interface with at least two line inputs.** Whether it also has 5-pin MIDI ports decides whether you need a separate USB MIDI interface.
- **Ableton Live is Standard, Suite or Intro.** The External Instrument device isn't in Live Lite. In Lite, use one MIDI track plus one audio track instead.
- **The One+ has 5-pin DIN MIDI In and Out, like the MPC One.** Akai's MPC One FAQ lists 5-pin ports. I couldn't find the One+ rear panel spelled out, so check yours.
- **Not relied on:** whether the One+'s USB-B port shows up as a MIDI device on Windows in standalone mode. Akai's pages only describe that port for Controller Mode, so the plan uses DIN cables or the network driver instead.

## Recommended setup

**The MPC One+ stays standalone and Ableton is the clock master and the recorder. One pair of MIDI cables carries notes and clock, and the MPC's stereo outs go into your audio interface.**

Why this one:

- **No mode switching.** The MPC keeps its own projects, programs and pads. Controller Mode would need the MPC 2.15.1 desktop software, which can't open projects made on MPC 3 firmware.
- **Ableton keeps time** because that's where everything gets recorded and arranged. Its clock plus song position keeps the MPC on the same bar when you start mid-song.
- **Wired MIDI is predictable.** It doesn't depend on Wi-Fi, and the same cable pair carries clock, notes in both directions and transport.
- **The One+ has no USB audio mode**, so its audio comes back through the interface's analog inputs. Akai's comparison guide lists USB-C audio for the One G2 only.

## Signal and clock flow

```
                    WINDOWS PC
  +---------------------------------------------------+
  |  ABLETON LIVE (clock master, recorder)            |
  |                                                   |
  |  [MIDI track: External Instrument] --notes--+     |
  |  [Clock + Song Position out] ----clock------+     |
  |                                             |     |
  |  [MIDI track: Live instruments] <--notes--+ |     |
  |  [Audio tracks: MPC In 1/2] <---audio--+  | |     |
  |                                        |  | |     |
  |  [AbletonMCP control surface] <--TCP-- Claude     |
  +----------------------------------------|--|-|-----+
                 AUDIO INTERFACE (ASIO)    |  | |
                 In 1/2 <------------------+  | |
                 USB MIDI In <----------------+ |
                 USB MIDI Out ------------------+
                     ^            |
          5-pin MIDI |            | 5-pin MIDI
                     |            v
  +---------------------------------------------------+
  |  MPC ONE+ (standalone, clock follower)            |
  |  MIDI Out: MPC tracks -> Ableton instruments      |
  |  MIDI In : clock, transport, Ableton notes        |
  |  Main Out L/R (1/4") -> interface In 1/2          |
  +---------------------------------------------------+

  Optional wireless path (Phase 6):
  MPC Wi-Fi <-> home network <-> PC
     Ableton Link (tempo, phase, start/stop)
     Akai Network MIDI driver ("Akai Network - MIDI" port)
```

## Phase 0: Inventory

- Note the MPC firmware version (Menu > Preferences shows it). Update to the current MPC 3 release if it's behind.
- Note the audio interface model and whether it has MIDI In/Out.
- Gather two 1/4" TRS cables (MPC main outs to interface inputs) and two 5-pin MIDI cables. You also need a USB MIDI interface if the audio interface has no MIDI ports.

## Phase 1: Windows audio foundation

- Install the ASIO driver from your audio interface's maker. Use ASIO4ALL or FlexASIO only if the interface has no ASIO driver of its own. Ableton advises against ASIO4ALL with Focusrite Scarlett units.
- In Live, go to Settings > Audio and set Driver Type to ASIO, then pick the interface. Set a buffer low enough to play pads against without crackles.
- Run the Audio I/O lesson in Live's Help View to calibrate Driver Error Compensation, so recorded audio lands where you heard it. Recheck it whenever you change the buffer size or sample rate.

## Phase 2: Wiring

- Connect MPC Main Out L/R to interface Inputs 1 and 2 (line level).
- Connect the MPC's MIDI Out to the PC's MIDI In, and the PC's MIDI Out to the MPC's MIDI In.
- Windows should list the MIDI interface without extra drivers if it's class-compliant. Most are; if yours isn't, check its maker's page.

## Phase 3: Clock and transport (Ableton is master)

**In Live**, go to Settings > Link, Tempo & MIDI:

- On the MIDI interface's **output** row, turn on Sync (sends clock) and Track (sends notes).
- On its **input** row, turn on Track (receives notes). Leave input Sync off, so Live never tries to follow the MPC.
- Set MIDI Sync Type to MIDI Clock.

**On the MPC**, go to Menu > Preferences > MIDI / Sync:

- Set Sync Receive to MIDI Clock.
- On input port "MPC", enable Sync. Enable Track too, for the notes in Phase 4.
- Turn on Receive MMC only if you want MMC transport as well. MIDI Clock start and stop already starts and stops the MPC.

**Calibrate:** put a short percussive pattern on both, play them together, and adjust that port's Sync Delay in Live until the hits line up.

**Test:** start Live from bar 5. The MPC should also start at bar 5 (song position). Tempo changes in Live should carry over to the MPC.

## Phase 4: MIDI both ways

**Ableton plays the MPC (Ableton writes the notes, the MPC makes the sound):**

- On the MPC, create a track for a Drum or Keygroup program that receives MIDI. Set its MIDI input to port "MPC" on its own channel, for example channel 10 for drums.
- In Live, add a MIDI track with the External Instrument device. Set MIDI To to the MIDI interface, channel 10, and Audio From to interface inputs 1/2.
- Adjust External Instrument's Hardware Latency until the MPC's audio sits in time with Live's own sounds.
- Any MIDI clip on that track now plays your MPC kit, and you hear and mix it inside Live.

**The MPC plays Ableton (the MPC writes the notes, Live makes the sound):**

- On the MPC, create a MIDI track with MIDI Output Port set to "MPC" and its own channel, for example channel 2.
- In Live, arm a MIDI track with an instrument (Drift, Wavetable, Simpler or a VST). Set MIDI From to the MIDI interface, channel 2, and monitor to In.
- MPC pads and sequences now play Live instruments. That's handy for long atmospheric pads and resampled textures while the MPC holds the breaks.

**Keep it loop-free:** give each direction its own channels, and don't send the MPC's incoming notes straight back out. Watch any MIDI thru options on the MPC tracks.

## Phase 5: Capture and arrange

- The One+ has only two outputs. For separate stems, record one MPC program at a time into its own Live audio track, with the other programs muted on the MPC. Because Ableton drives the clock, every pass lines up.
- For a quick single pass, record the full stereo mix into one audio track.
- Ableton's advice for hardware is to record into an audio track whose Audio From is the External Instrument track, set to Pre FX with monitor Off. That captures the dry sound so you can process it later.
- Save an Ableton template with the External Instrument track, the MPC return tracks and your MIDI settings. Save an MPC template project with matching channels.

## Phase 6 (optional): Go wireless

- **Ableton Link instead of MIDI clock.** The One+ has Wi-Fi and supports Link.
  - On the MPC, join your network under Preferences > Wi-Fi, then set Sync Receive to Ableton Link (Menu > Preferences > MIDI / Sync).
  - In Live, turn on Show Link Toggle and Start Stop Sync, then press Link in the control bar. It should show "1 Link".
  - Akai's article says Windows needs ASIO4ALL for this. My inference is that Link isn't tied to a driver, so try your interface's own ASIO driver first.
  - MPC 3.10's experimental Advanced Audio settings include a latency adjustment that shifts MIDI and Link timing.
- **Akai Network MIDI driver instead of DIN cables.**
  - Install the driver from inMusic Software Center and join the MPC to your network.
  - Add the unit in the Akai Network Driver app by its IP address. Live then gets an "Akai Network - MIDI" port.
  - On MPC 3, set a track's MIDI Output Port to Remote.
  - My inference is that timing wobbles a little more than over a cable on a busy Wi-Fi network.

## Phase 7 (optional): Let Claude drive Ableton

AbletonMCP (the open-source ahujasid/ableton-mcp project) adds a Live control surface that Claude talks to over a local socket.

**Setup on the Windows PC:**

- Install uv.
- Add the server to Claude Desktop under Settings > Developer > Edit Config, with command `uvx` and argument `ableton-mcp`. For Claude Code, run `claude mcp add AbletonMCP uvx ableton-mcp`.
- Install the Live Remote Script with `uvx --from ableton-mcp ableton-mcp-install-script`. It lands in `Documents\Ableton\User Library\Remote Scripts\AbletonMCP`.
- In Live, go to Settings > Link, Tempo & MIDI and pick AbletonMCP as a Control Surface, with Input and Output set to None. Your MIDI interface rows stay as set in Phase 3.
- Run only one client with it at a time.
- Telemetry is on by default. Set `ABLETON_MCP_DISABLE_TELEMETRY=true` to turn it off.
- Re-run the script installer after each package upgrade.
- It has to run on the same machine as Live, so use Claude on the Windows PC itself. Driving it from your Macs over Tailscale would need extra work, because the socket is local.

**What Claude can do:** read the set, create MIDI and audio tracks, create and fire clips, write notes into MIDI clips, change tempo, start and stop playback, load Live's own devices from the browser, and build arrangements.

**What it reaches on the MPC:** only what Live sends. Live is the clock master and the External Instrument track points at the MPC. So a clip Claude writes on that track plays your MPC kit, and a tempo change Claude makes moves the MPC too.

**What it can't touch:** MPC programs, samples, pad assignments, effects, mixer, projects or settings. It also can't hear audio, and it can't reliably browse third-party plugins, because it's built for Live's default devices. Save before long sessions.

## Alternatives in brief

- **Controller Mode with the MPC plugin inside Ableton.** The pads and screen drive the MPC software as a plugin in Live, so audio stays in the computer and no audio cables are needed.
  - The catch: the One+ works in Controller Mode with the MPC 2.15.1 desktop software, which can't open MPC 3 standalone projects.
  - MPC 3's desktop controller mode currently covers only G2 units.
  - Akai has a guide for mapping Live's play and stop in this setup.
- **MPC as master.** Reverse Phase 3: the MPC sends MIDI Clock, and in Live you turn on input Sync and the EXT button. This suits MPC-first jam sessions but is worse for arranging in Live.
- **All-wireless.** Use Link plus the Akai Network MIDI driver, with only audio cables. That means a tidy desk and more timing variance.

## Windows package

Nothing here has been downloaded or installed. Get each item from its maker's own site.

### Required

| Item | What it does | Cost | Where |
|---|---|---|---|
| Your audio interface's ASIO driver | Low-latency audio between Live and the interface | Free | The interface maker's support site |
| Ableton Live 12 (Intro, Standard or Suite) | Host, recorder and clock master; includes External Instrument | Already owned | Ableton account |
| External Instrument device | Sends notes to the MPC and returns its audio with latency compensation | Included in Live | Live's browser, under Instruments |
| MPC 3 firmware (current) | The supported OS for the One+, with MIDI / Sync and Link settings | Free | On the MPC, or Akai Pro's MPC 3 release notes page |
| USB MIDI interface driver | Usually not needed (class-compliant); only if your interface's maker provides one | Free | The interface maker's site |

### Optional

| Item | What it does | Cost | Where |
|---|---|---|---|
| ASIO4ALL or FlexASIO | Generic ASIO when the interface has no driver of its own | Free | asio4all.org; FlexASIO via Ableton's ASIO help article |
| Akai Network MIDI driver | Wireless MIDI between the MPC and Live | Free | inMusic Software Center (My Hardware) |
| MPC 2.15.1 desktop software and Akai driver | Controller Mode and the MPC plugin inside Live | Free with the hardware | Your inMusic account, Software Downloads |
| loopMIDI | Virtual MIDI cables between Live and other Windows apps, such as a MIDI monitor or your own scripts | Download from the author's site; licence terms not confirmed | Tobias Erichsen's site |
| uv | Runs the AbletonMCP server | Free | Astral's uv docs |
| AbletonMCP server and Remote Script | Lets Claude drive Live (Phase 7) | Free, open source | ahujasid/ableton-mcp on GitHub, ableton-mcp on PyPI |
| Claude Desktop for Windows (or Claude Code) | The client that talks to AbletonMCP | Free download; needs your Claude plan | Claude's download page |

**Not needed:** the recommended setup requires no Max for Live device, no rtpMIDI and no extra Akai USB driver. The Akai USB driver only matters for Controller Mode.

## Sources

Each source is named so you can find it on the publisher's own site.

- Ableton Reference Manual 12, "Synchronizing with Link, Tempo Follower, and MIDI"
- Ableton Help: "Using hardware synthesizers with Live", "Driver Error Compensation FAQ" and "Using an ASIO audio driver on Windows"
- Akai Pro support: "MPC Series: Connecting the MPC to External Gear", "MPC Series & Force: Ableton Link Setup and Tutorial", "MPC Series: Wireless Remote MIDI Control in a DAW", "MPC Series: MPC Plugin Transport Setup in Ableton", "MPC Series Comparison Guide", "MPC One+ FAQ", "MPC One FAQ" and "MPC3 FAQ"
- Akai Pro: MPC 3.9 and MPC 3.10.1 release notes, and the MPC Software User Guide v3.10
- The ahujasid/ableton-mcp README on GitHub
- Tobias Erichsen's loopMIDI page
