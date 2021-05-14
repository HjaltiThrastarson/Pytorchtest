FROM continuumio/miniconda3

ENV LANG=C.UTF-8 \ L_ALL=C.UTF-8

RUN export CMAKE_PREFIX_PATH="$(dirname $(which conda))/../"


#INSTALL DEPENDENCIES
RUN conda install -y numpy pyyaml mkl setuptools cmake cffi
RUN conda install -y pytorch torchvision -c pytorch
RUN conda install -y jupyter matplotlib scikit-learn nltk bokeh scikit-image
RUN conda install -y pandas

RUN apt-get update -y && \
		apt-get install -y --no-install-recommends \
			git \
      wget \
      build-essential \
		&& \
		apt-get clean && \
		rm -rf /var/lib/apt/lists/*


WORKDIR /code
CMD ["bash"]