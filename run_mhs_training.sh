time python3 tools/run_net.py \
  --cfg configs/Mhs_video_data/mhs_C2D_8x8_R50.yaml \
  DATA.PATH_TO_DATA_DIR /home/achbogga/projects/SlowFast/data/Mhs_video_data \
  NUM_GPUS 1 \
  TRAIN.BATCH_SIZE 16 | tee /home/achbogga/Desktop/video_classification_training.log