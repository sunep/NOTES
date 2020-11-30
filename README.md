# NOTES

Here I keep some notes that are practical.

## Extract audio using FFmpeg

To extract the audio stream without re-encoding:

    ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac

  * -vn is no video.
  * -acodec copy says use the same audio stream that's already in there.

Read the output to see what codec it is, to set the right filename extension.
