for i in 0 1 2 3 4
do
docker run --rm \
    -v $PWD/:/root/ \
    -v $PWD/../../../intermediate_output/:/root/intermediate_output/ \
    -v $PWD/../../../input/:/root/input/ \
    -v $HOME/.cache/:/root/.cache \
    --runtime=nvidia \
    --ipc=host \
    kaggle/rsna \
    python main.py --fold $i --test --yaml ./yamls/002_seresnext_label_smooth.yaml
done
