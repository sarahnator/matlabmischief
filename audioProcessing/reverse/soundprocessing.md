# sound processing in matlab
sound = wave of air particles
- not a sine wave (transverse wave) but a longitudinal wave (sound travels through air and compresses out eardrums)
- sound in processing is a transverse wave when in reality it is a longitudinal wave
- sound data stored in an array of samples
- - sampling = discretization of data points along x-axis(time) or y-axis
- - - stored in 32 / 64 bit so you can't have a super precise value but it's impreceptible

# .wav
- raw digital sound data quantized into an array
- func wavread is  deprecated
- size(wavdata) returns {numsamples     numchannels}

# channels
- recording in stereo : 2 channels
    - size(d) =  8500 <span style="background-color: #FFFF00">2</span>

# play back
```matlab
sampling rate = fs, data = d
[d, fs] = waveread('nameofwav.wav')
            or
[d, fs] = audioread('nameofwav.wav')
sound(d, fs) //play the file
```

# flip sample
```matlab
//ex sound file size(d) = 85000 2
d2 = flipud(d); //reverse the sound
d3 = fliplr(d); //flip channels
```

# test
![ ](reverse.jpg)
