# NOTES

Here I keep some notes that are practical.

## Extract audio using FFmpeg

To extract the audio stream without re-encoding:

    ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac

  * -vn is no video.
  * -acodec copy says use the same audio stream that's already in there.

Read the output to see what codec it is, to set the right filename extension.

## Encoding HAP videos

The Upcoming video player will only play HAP files, for this we need to use FFmpeg. The video engine is [The Demolition Media HAP player](https://vvvv.org/contribution/demolition-media-hap-player)

### Adobe CC plugins
 for Adobe CC products these plugins are made for both mac and windows.

#### Disguise One _Free OSS_
[Disguise-One plugin](https://github.com/disguise-one/hap-encoder-adobe-cc)

####  Jokyo HAP encoder _Commercial_

Jokyo also have plugins for Adobe CC, but they cost money, they are supposed to be better than other existing solutions and are recommended by Demolition media who make the vvvv HAP player.

[Jokyo HAP Encoder](https://jokyohapencoder.com/)  
### FFmpeg _Free OSS_

If you for whatever reason can't use the Adobe CC plugins, you can use FFmpeg.
Use the install script to download, and install FFmpeg.

    \install\install_FFmpeg.bat

#### Using FFmpeg
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
