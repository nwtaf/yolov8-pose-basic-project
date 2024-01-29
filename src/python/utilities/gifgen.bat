@echo off
ffmpeg -i "\yolov8-pose-basic-project\output\video\output_video_1.mp4" -vf "scale=420:-1" "outputpath\example.gif"
pause
exit