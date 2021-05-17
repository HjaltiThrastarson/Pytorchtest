# Learning to use Pytorch

This repository is meant to learn pytorch using docker

# Requirements

Currently works with

-Anaconda Python version 3.8.5

# Setup

### Windows

Install Docker

Clone the repository and open a cmd in the host directory
Then run the line below

* ```docker build -t pytorchtest:1.0 . ```

Next start the container using the line

* ``` docker run -v C:/Users/Notandi/Documents/Dropbox/Python/pytorchtest:/code -it --rm -p 8888:8888 pytorchtest:1.0```

You can then run jupyter notebook by using the command line

* ```jupyter notebook --ip=0.0.0.0 --allow-root ```

Alterntively you could have started the container using 

* ``` docker run -v C:/Users/Notandi/Documents/Dropbox/Python/pytorchtest:/code -it --rm -p 8888:8888 pytorchtest:1.0  ./jupyter_run.sh```

Go to your browser and type in http://localhost:8888 and type in the token shown in the console window to login

### Linux 

Install Docker 

Clone the repository

Setup the container by using the following line in the command line in this folder

* ```docker build -t pytorchtest:1.0 . ```

Next start the container using the line

* ``` docker run -it -p 8888:8888 -v `pwd`:/code pytorchtest:1.0```

* ```jupyter notebook --ip=0.0.0.0 --allow-root ```

Alterntively you could have started the container using 

* ``` docker run -it -p 8888:8888 -v `pwd`:/code pytorchtest:1.0 ./jupyter_run.sh```

Go to your browser and type in http://localhost:8888 and type in the token shown in the console window to login