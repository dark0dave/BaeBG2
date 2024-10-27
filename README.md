# Baeloth's Deal

[![main](https://github.com/dark0dave/BaeBG2/actions/workflows/main.yaml/badge.svg)](https://github.com/dark0dave/BaeBG2/actions/workflows/main.yaml)

This mod provides continuation for our lovable Baeloth in BG2EE and EET.

![All right... but NOT because you TOLD me to.](0DBAE/portraits/BAELOTHL.BMP)

> OBVIOUSLY, this was going to happen, but the amount of TIME it took borders on insanity! How do you function on a day-to-day basis?

## Introduction

Baeloth has been captured by the red wizards and is willing to make a deal in exchange for his freedom.

### Collaboration

I must say a big thank you to [Endarire](https://www.gibberlings3.net/profile/5772-endarire/), who has provided dialog and ideas for this mod. Without them, this mod would not be possible. A personal shout out to @morpheus562[G3](https://www.gibberlings3.net/profile/11591-morpheus562/), @CamDawg[G3](https://www.gibberlings3.net/profile/8-camdawg/), @K4thos[G3](https://www.gibberlings3.net/profile/6804-k4thos/) for EET, and the rest of the G3 community.

## Installation

We don't include an exe, you'll need use weidu to install:

### Move files

Copy 0DBAE subfolder to your game directory:

#### Linux/Macos:

```sh
cp -r BaeBG2/0DBAE <GAME DIRECTORY>
```

#### Windows:

Copy files via explorer.exe

Then run weidu against the .tp2 file, in the game directory

#### Linux/Macos:
```sh
weidu 0DBAE/BaeBG2.tp2
```

#### Windows:
```sh
weidu.exe 0DBAE\BaeBG2.tp2
```

Should get something like this:

```sh
Using Language [English]
[English] has 1 top-level TRA files
[baebg2/tra/english/setup.tra] has 61 translation strings

Using ./lang/en_us/dialog.tlk

Install Component [Baeloth BG2]?
[I]nstall, or [N]ot Install or [Q]uit?
```

Enter I, then press enter and that's it!

```sh
SUCCESSFULLY INSTALLED      Baeloth BG2

Press ENTER to exit.
```

## Technical Notes

Baeloth files come from BGEE and SOD files:

- BAELOTH.CRE
- BAELOT7.CRE
