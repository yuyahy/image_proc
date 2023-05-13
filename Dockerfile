# 開発環境用のDockerfile
# 初回のBuildに2時間ほどかかったので注意
FROM python:3.6

RUN pip install --upgrade pip

# opencv-devのインストール
RUN apt-get update -y && apt-get install -y libopencv-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# TensorflowとOpencvのインストール
RUN pip3 install numpy tensorflow opencv-python

ENV APP_NAME tensor-docker
WORKDIR /home/$APP_NAME
