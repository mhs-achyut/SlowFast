# Installation

## Activate a new conda environment with the following commands
	```
	conda create --name slow_fast --clone base
	conda activate slow_fast
	```

## Proceed to install all the dependencies once inside the active env
	```
	conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch-lts
	conda install av -c conda-forge
	conda install -c iopath iopath
	conda install -c conda-forge moviepy

	python3 -m pip install 'git+https://github.com/facebookresearch/fvcore'
	python3 -m pip install psutil opencv-python tensorboard pytorchvideo cython
	python3 -m pip install 'git+https://github.com/facebookresearch/fairscale'
	python3 -m pip install 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'
	python3 -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu102/torch1.8/index.html
  ```
## Add the slowfast video understanding repo to the PYTHONPATH

  * Either using PYTHONPATH env variable or the following conda command
  ```
  cd <path to your SlowFast root repo>
	conda develop slowfast
	```

## Build PySlowFast

After having the above dependencies, run:
```
cd <path to your SlowFast root repo>
python3 setup.py build develop
```

## Now the installation is finished, run the pipeline with:
```
python3 tools/run_net.py --cfg configs/Kinetics/C2D_8x8_R50.yaml NUM_GPUS 1 TRAIN.BATCH_SIZE 8 SOLVER.BASE_LR 0.0125 DATA.PATH_TO_DATA_DIR path_to_your_data_folder
```
