ffmpeg -i 1.ts -map 0:v -vcodec copy -bsf:v h264_mp4toannexb video.h264
pause