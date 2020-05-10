# RTTL-Composer

### Recreating Nokia's RTTL (Ring Tone Transfer Language) composer that takes from the user
### musical notes writted in RTTL codes and generates an audio file playing them.


## Routine

The user enteres a string of musical notes, this string is then taken and gets processed to extract
the required information from it. Each note carries three important pieces of info.
1. Duration
2. Octave
3. Tempo (Beat)

Once those three are processed and extracted from each note. They're used to calculate the real time duration
and frequency of each single note. Using the frequency and irl duration, we can construct the required signal.
All note's signals is then added with each other to generate one final signal carrying the audio we want.

Some websites that has RTTL codes for testing.
1. [fodor](http://www.fodor.sk/Spectrum/rttl.htm)
2. [picaxe](http://www.picaxe.com/RTTTL-Ringtones-for-Tune-Command/)


## Building

1. I made the project on Matlab 2016 version so, any latter version would do.
Click "Run" in the Editor's tab.
2. Enter your RTTL code in the command window (You can find them in the links above)
3. <note_name>.wav will be generated in the same directory of the project