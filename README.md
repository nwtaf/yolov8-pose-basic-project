# YOLOv8-pose Basic Project

This repo was created as a basic project structure for getting started with keypoint detection for pose estimation. It has tools for downloading source data, a processor `main.py`, and basic tools for exploring the data.

![https://youtube.com/shorts/G7ZJNaszMrc?si=5_yVEZtlm9l5-pW-](./output/image/example.gif)

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)

## Installation

```bash
git clone https://github.com/nwtaf/yolov8-pose-basic-project.git
cd yolov8-pose-basic-project
pip install -r requirements.txt
```
## Getting Started
The `data/` directory is for source data. Utilities are available for downloading source data, like youtube videos in `src/python/utilities`.

Alternatively, `ffmpeg` and `youtube-dl` are handy from a terminal. It is recommended to use a package manager such as `winget`or `apt-get`, which typically install and set the installed package to the system environment variable PATH automatically.

`main.py` accepts source data, runs YOLOv8n-pose, and automatically stores generated data in the `output` directory. `output/csv/` contains lists of touples: `[('x1', 'y1'), ('1', '2'), ('3', '4'), ('5', '6')]` for each keypoint that is having its coordinates recorded. `output/images/filename` contains an image of the last frame of `ouput/videos/filename`. 

`compare.py` has functions for comparing and displaying node history data. This section needs further development. 

### Tips
When running `main.py` remember to set the `file number` to something new. Otherwise output files will continually be overwritten. 

Changing `scale_factor = 1` in `main.py` to anything other than the original `scale factor` does not agree with the codec of `VideoWriter` object, and the output video will be corrupted. A decision was made on line 42 of `main.py`, to use the `vp09` codec because VSCode can display .mp4 natively. Better codecs exist and provide more flexibility, such as supporting different `scale factors` or formats like .avi.

Speaking of .avi, `main.py` will save a valid .avi (given the proper codec), but VSCode cannot view it natively - which might lead one to think that something went wrong instead of VSCode lacking native .avi support. Attempt to view the video with different software, or install VSCode exstensions that enable viewing different video types before assuming the output video is corrupted.
