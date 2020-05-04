#/bin/bash
CUDA_ROOT=/usr/local/cuda-10.1
TF_ROOT=/home/zhaiyu/.conda/envs/pointnet2_tf/lib/python3.5/site-packages/tensorflow
/usr/local/cuda-10.1/bin/nvcc -std=c++11 -c -o tf_sampling_g.cu.o tf_sampling_g.cu -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
#TF 1.8
g++ -std=c++11 tf_sampling.cpp tf_sampling_g.cu.o -o tf_sampling_so.so -shared -fPIC -I ${TF_ROOT}/include -I ${CUDA_ROOT}/include -I ${TF_ROOT}/include/external/nsync/public -lcudart -L ${CUDA_ROOT}/lib64/ -L ${TF_ROOT} -ltensorflow_framework -O2 #-D_GLIBCXX_USE_CXX11_ABI=0