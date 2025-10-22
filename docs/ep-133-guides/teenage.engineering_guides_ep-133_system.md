---
url: "https://teenage.engineering/guides/ep-133/system"
title: "EP–133 guide: system - teenage engineering"
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

[((14))\\
\\
system](https://teenage.engineering/guides/ep-133/system)

[return to index](https://teenage.engineering/guides/ep-133#index)

SYSTEM lets you configure stuff like pad-velocity or how your midi and sync ports behave. for quick access, you can learn the numbers, like typing 301 and ENTER to turn velocity on. now you’re in expert mode!

SYSTEM SETTINGS

to customize the behavior of your K.O.II press (SHIFT) and (ERASE) to access system settings.

navigate

press (minus) or (plus) to navigate through the settings, and then ENTER to select.

enter

to navigate back to the previous page you can press (SHIFT) and ENTER.

alternatively you can also use the following codes to directly access the setting once in system settings.

code

path

setting

100

mid

clk

off

MIDI Clock Off (default)

101

mid

clk

in

MIDI Clock in (receive only)

102

mid

clk

out

MIDI Clock Out (send only)

110

mid

chn

all

Receive all channels, send on MIDI channel 1.

111

mid

chn

ch.1

Receive and send on MIDI Channel 1

112

mid

chn

ch.2

Receive and send on MIDI Channel 2

113

mid

chn

ch.3

Receive and send on MIDI Channel 3

114

mid

chn

ch.4

Receive and send on MIDI Channel 4

115

mid

chn

ch.5

Receive and send on MIDI Channel 5

116

mid

chn

ch.6

Receive and send on MIDI Channel 6

117

mid

chn

ch.7

Receive and send on MIDI Channel 7

118

mid

chn

ch.8

Receive and send on MIDI Channel 8

119

mid

chn

ch.9

Receive and send on MIDI Channel 9

120

mid

chn

ch10

Receive and send on MIDI Channel 10

121

mid

chn

ch.11

Receive and send on MIDI Channel 11

122

mid

chn

ch.12

Receive and send on MIDI Channel 12

123

mid

chn

ch.13

Receive and send on MIDI Channel 13

124

mid

chn

ch.14

Receive and send on MIDI Channel 14

125

mid

chn

ch.15

Receive and send on MIDI Channel 15

126

mid

chn

ch.16

Receive and send on MIDI Channel 16

127

mid

chn

off

only send midi if midi channel assigned in sound edit

130

mid

thr

off

disable MIDI thru

131

mid

thr

on

enable midi thru (Forwards MIDI signals, in→ out)

140

mid

rst

off

do not reset midi controllers at stop (default)

141

mid

rst

on

reset midi controllers at stop

200

syn

in

8

Sync In Rate 1/8th Note

201

syn

in

16

Sync In Rate 1/16th Note (default)

202

syn

in

24

SYNC IN RATE 24 PULSES PER QUARTER NOTE

210

syn

out

8

SYNC OUT RATE 1/8TH NOTE

211

syn

out

16

Sync Out Rate 1/16th Note (default)

212

syn

out

24

Sync Out Rate 24 Pulses per Quarter Note

300

pad

vel

off

PAD VELOCITY OFF (DEFAULT)

301

pad

vel

hi

PAD VELOCITY HIGH. PLAY WITH A SOFT TOUCH

302

pad

vel

lo

PAD VELOCITY LOW. FOR VIGOROUS PLAY STYLES

310

pad

sca

12t

12 TONE EQUAL TEMPERAMENT (DEFAULT)

311

pad

sca

maj

MAJOR (IONIAN MODE)

312

pad

sca

min

MINOR (AEOLIAN MODE)

313

pad

sca

dor

DORIAN MODE

314

pad

sca

phr

PHR PHRYGIAN MODE

315

pad

sca

lyd

LYD LYDIAN MODE

316

pad

sca

mix

MIX MIXOLYDIAN MODE

317

pad

sca

loc

LOCRIAN MODE

318

pad

sca

ma.p

MAJOR PENTATONIC

319

pad

sca

mi.p

MINOR PENTATONIC

320

pad

key

c

SCALE KEY C (DEFAULT)

321

pad

key

c#

SCALE KEY c#

322

pad

key

d

SCALE KEY D

323

pad

key

d#

SCALE KEY d#

324

pad

key

e

SCALE KEY e

325

pad

key

f

SCALE KEY f

326

pad

key

f#

SCALE KEY f#

327

pad

key

g

SCALE KEY g

328

pad

key

g#

SCALE KEY g#

329

pad

key

a

SCALE KEY a

330

pad

key

A#

SCALE KEY a#

331

pad

key

b

SCALE KEY b

340

pad

aud

on

enable sample auditioning when tweaking values

341

pad

aud

off

disable sample auditioning when tweaking values

400

seq

met

on

Enable metronome at record+play (default)

401

seq

met

rec

Enable metronome at record only

402

seq

met

cnt

enable metronome at count-in only

410

seq

scn

tic

Change scene immediately (default)

411

seq

scn

bar

Sync scene changes with bar end

412

seq

scn

ptn

Sync scene changes with pattern end

[14.1](https://teenage.engineering/guides/ep-133/system#14.1-midi-refrence)

[midi implementation chart](https://teenage.engineering/guides/ep-133/system#14.1-midi-refrence)

[return to index](https://teenage.engineering/guides/ep-133#index)

function

transmitted

recognised

notes

basic channel

mode

mode

velocity

aftertouch

pitch bend

controlchange

program change

system exclusive

systemcommon

systemrealtime

aux messages

default

changed

default

messages

altered

true voice

note on

note off

keys

channels

CC#0,32

CC#1

song position

song select

tune request

clock

commands

all sound off

reset all controllers

local on/off

all notes off

active sensing

system reset

1

1–16

mode 1

x

-

36-47 (group a)

48-59 (group b)

60-71 (group c)

72-83 (group d)

keys mode: 0-127

-

x

x

x

x

x

(0-127)

x

x

x

x

x

x

1

1–16

mode 1

x

-

36-47 (group a)

48-59 (group b)

60-71 (group c)

72-83 (group d)

keys mode: 0-127

-

x

x

x

(0-127)

x

x

x

x

x

x

x

x

memorized

bank select

mod wheel

use bank select to reach all sounds 1-999

identity request+reply, proprietary messages

Mode 1: OMNI ON, POLYMode 2: OMNI ON, MONOMode 3: OMNI OFF, POLYMode 4: OMNI OFF, MONO

[14.2](https://teenage.engineering/guides/ep-133/functions#10.1-sample)

[midi note map](https://teenage.engineering/guides/ep-133/system#14.2-midi-note-map)

[return to index](https://teenage.engineering/guides/ep-133#index)

when using an external midi device such as a keyboard or drum pad, you can use the table below as a midi note reference for triggering specific pads on each group. if you are in keys mode, this will change to a chromatic keyboard.

make sure that you are addressing the correct midi channel, this can be set in sound edit’s midi page as well as the system settings.

MIDI note number

note name

group

pad

36

c2

a

.

37

c#2

a

0

38

d2

a

enter

39

d#2

a

1

40

e2

a

2

41

f2

a

3

42

f#2

a

4

43

g2

a

5

44

g#2

a

6

45

a2

a

7

46

a#2

a

8

47

b2

a

9

48

c3

b

.

49

c#3

b

0

50

d3

b

enter

51

d#3

b

1

52

e3

b

2

53

f3

b

3

54

f#3

b

4

55

g3

b

5

56

g#3

b

6

57

a3

b

7

58

a#3

b

8

59

b3

b

9

60

c4

c

.

61

c#4

c

0

62

d4

c

enter

63

d#4

c

1

64

e4

c

2

65

f4

c

3

66

f#4

c

4

67

g4

c

5

68

g#4

c

6

69

a4

c

7

70

a#4

c

8

71

b4

c

9

72

c5

d

.

73

c#5

d

0

74

d5

d

enter

75

d#5

d

1

76

e5

d

2

77

f5

d

3

78

f#5

d

4

79

g5

d

5

80

g#5

d

6

81

a5

d

7

82

a#5

d

8

83

b5

d

9

14.3

[lock mode](https://teenage.engineering/guides/ep-133/system#14.2-lock-mode)

[return to index](https://teenage.engineering/guides/ep-133#index)

lock mode

to prevent any changes to projects, patterns, scenes, pads and settings you can use lock mode.

hold (main) on start up to lock the device.

lock mode

lok will display on the screen for about 1 second.

any changes made on the device will reset when the device is restarted.

[14.4](https://teenage.engineering/guides/ep-133/system#14.3-error-codes)

[error codes](https://teenage.engineering/guides/ep-133/system#14.3-error-codes)

[return to index](https://teenage.engineering/guides/ep-133#index)

error code

meaning

solution

E.01

sram error

your unit needs to be repaired

E.02

flash error

your unit needs to be repaired

E.03

codec error

your unit needs to be repaired

E.04

lfs mount error

file-system error, [flash needs to be formatted](https://teenage.engineering/guides/ep-133/erase-drive)

E.05

sample\_fs error

file-system error, [flash needs to be formatted](https://teenage.engineering/guides/ep-133/erase-drive)

if your segment display shows a file-system error code it means the file-system needs to be formatted.

to do this, power the device off, then hold (shift) \+ (erase) and turn it on.

this will format the drive erasing all sounds and help your device to boot up again by removing any files that were causing issues.

make sure to [update the OS](https://teenage.engineering/apps/update) to our latest release as we are constantly fixing bugs that may cause such issues.

albania   andorra   armenia   australia   austria   bahrain   belgium   bolivia   bosnia and herzegovi...   brazil   canada   chile   colombia   croatia   czech republic   denmark   egypt   estonia   finland   france   georgia   germany   greece   guyana   hong kong   hungary   iceland   india   ireland   israel   italy   jamaica   japan   jersey   kazakstan   korea, republic of   kuwait   latvia   lithuania   luxembourg   macau   malaysia   malta   mexico   monaco   netherlands   new zealand   norway   peru   philippines   poland   portugal   puerto rico   qatar   romania   saudi arabia   serbia   singapore   slovakia   slovenia   south africa   spain   sweden   switzerland   taiwan   thailand   türkiye   united arab emirates   united kingdom   united states   uruguay

[newsletter](https://teenage.engineering/newsletter)[retailers](https://teenage.engineering/retailers)[store](https://teenage.engineering/store)[terms](https://teenage.engineering/terms-and-conditions)[press](https://teenage.engineering/press)[contact](https://teenage.engineering/contact)

©2025 teenage engineering

5​