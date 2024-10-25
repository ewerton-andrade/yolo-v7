#Face mask training for windows
# python train.py --workers 0 --batch-size 4 --device 0 --data data\face_mask.yaml --img 640 640 --cfg cfg\training\yolov7-face_mask.yaml --weights yolov7_training.pt --name yolov7-face-mask --hyp data\hyp.scratch.custom.yaml --epochs 300

#Face mask validation for windows (After training is finished)
# python test.py --weights runs\train\yolov7-face-mask\weights\best.pt --batch-size 2 --device 0 --data data\face_mask.yaml --img 640 --conf-thres 0.01 --iou 0.5 --name yolov7-face-mask-val --task val

#Face mask detection for windows
# python .\detect.py --weights .\runs\train\yolov7-face-mask\weights\best.pt --source 0

#COCO detection for windows (camera)
# python .\detect.py --weights .\yolov7.pt --conf-thres 0.5 --img-size 640 --source 0

#COCO detection for windows (other source)
# python .\detect.py --weights .\yolov7.pt --conf-thres 0.5 --img-size 640 --source dataset\images_path

#EPI training for windows
# python train.py --workers 0 --batch-size 4 --device 0 --data data\epi.yaml --img 640 640 --cfg cfg\training\yolov7-epi.yaml --weights yolov7_training.pt --name yolov7-epi --hyp data\hyp.scratch.custom.yaml --epochs 300

#INSP Quality for windows 
# python train.py --workers 0 --batch-size 16 --device 0 --data data\\insp_quality.yaml --img 640 640 --cfg cfg\\training\\yolov7-insp_quality.yaml --weights yolov7_training.pt --name yolov7-epi --hyp data\\hyp.scratch.custom.yaml --epochs 300

#Using tensorboard to see perform accuracy graph using Tensorboard
# tensorboard --logdir runs\train