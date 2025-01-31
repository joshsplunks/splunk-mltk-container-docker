#!/bin/sh
echo "Build and push all 5.0.0 images"

./build.sh rapids phdrieger/ 5.0.0
docker push phdrieger/mltk-container-rapids:5.0.0
# built and pushed successfully

./build.sh template-cpu phdrieger/ 5.0.0
docker push phdrieger/mltk-container-template-cpu:5.0.0
# built and pushed successfully

./build.sh golden-image-cpu phdrieger/ 5.0.0
docker push phdrieger/mltk-container-golden-image-cpu:5.0.0
# built and pushed successfully

./build.sh template-gpu phdrieger/ 5.0.0
docker push phdrieger/mltk-container-template-gpu:5.0.0
# built and pushed successfully

./build.sh golden-image-gpu phdrieger/ 5.0.0
docker push phdrieger/mltk-container-golden-image-gpu:5.0.0
# built and pushed successfully

./build.sh spark phdrieger/ 5.0.0
docker push phdrieger/mltk-container-spark:5.0.0
# built and pushed successfully

