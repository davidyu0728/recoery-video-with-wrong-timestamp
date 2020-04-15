# recoery video with wrong timestamp
##### sometimes download the live stream video may cause the timestamp issue. With ffmpeg can solve this problem.
### recovery the Video with following step
#### 0.ffmpeg
##### You can download ffmpeg at https://ffmpeg.zeranoe.com/builds/
#### 1.extract video
`ffmpeg -i soucevideo.mp4 -map 0:v -vcodec copy -bsf:v h264_mp4toannexb video.h264`


`ffmpeg -fflags +genpts -r 30.05 -i video.h264 -vcodec copy video.mp4`
#### 2.extract audio
`ffmpeg -i 1.ts -vn audio.wav`
`ffmpeg -i audio.wav -ab 130k audio.m4a`
#### 3.mux the audio and video files
`ffmpeg -i video.mp4 -i audio.m4a -c copy 1.ts`
