# NOTES

Notes that I find usefull.

----

## Extract audio using FFmpeg

To extract the audio stream without re-encoding:

    ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac

  * -vn is no video.
  * -acodec copy says use the same audio stream that's already in there.

Read the output to see what codec it is, to set the right filename extension.

[Source](https://stackoverflow.com/questions/9913032/how-can-i-extract-audio-from-video-with-ffmpeg)

----

## Encoding HAP videos using FFmpeg
Use the following commands in either CMD or Powershell to encode Hap videos.

#### To encode HAP

    fmpeg -i INPUT_VIDEONAME -vcodec hap -format hap NEW_HAP_VIDEONAME.mov
#### To encode HAP Q

    ffmpeg -i INPUT_VIDEONAME -vcodec hap -format hap_q NEW_HAP_Q_VIDEONAME.mov
#### To encode HAP Alpha
    ffmpeg -i INPUT_VIDEONAME -vcodec hap -format hap_alpha NEW_HAP_ALPHA_VIDEONAME.mov

#### Encode HAP Q using Chunks

When encoding highresolution videos it’s recommended to use the so called chunked encoding mode:

    ffmpeg -i INPUT_VIDEONAME -vcodec hap -format hap_q -chunks 8 NEW_HAP_Q_CHUNKED_VIDEONAME.mov

This will convert the input movie to Hap Q encoded movie using 8 chunks, which means that the Hap plugin can decode the movie using 8 threads  imultaneously, giving a major performance gain, as long as the storage is able to provide needed throughput.
