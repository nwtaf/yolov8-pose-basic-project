# YOLOv8-pose Basic Project

This repo was created as a basic project structure for getting started with keypoint detection for pose estimation. It has tools for downloading source data, a processor `main.py`, and basic tools for exploring the data.

![Example GIF](./output/video/output1.gif)

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)

## Installation

```bash
git clone https://github.com/nwtaf/yolov8-pose-basic-project.git
cd yolov8-pose-basic-project
pip install -r requirements.txt
```
## Useage
The `data/` directory is for source data. Utilities are available for downloading source data, like youtube videos. 
Alternatively, `ffmpeg` and `youtube-dl` are handy from a terminal. It is recommended to use a package manager such as `winget`or `apt-get`, which typically install and set the installed package to the system environment variable PATH.

`main.py` accepts source data, runs YOLOv8n-pose, and automatically stores generated data in the `output` directory. `output/csv` contains lists of touples: `[('x1', 'y1'), ('1', '2'), ('3', '4'), ('5', '6')]`. 

`compare.py` has functions for comparing and displaying node history data. This section could use the most development. 
