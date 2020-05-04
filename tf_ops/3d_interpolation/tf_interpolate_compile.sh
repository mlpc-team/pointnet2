# TF1.2
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.4
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.8
#g++ -I$TF_INC/external/nsync/public -L$TF_LIB -ltensorflow_framework -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /home/zhaiyu/.conda/envs/pointnet2_tf/lib/python3.5/site-packages/tensorflow/include -I /usr/local/cuda/include -lcudart -L /usr/local/cuda/lib64/ -O2


#/bin/bash
CUDA_ROOT=/usr/local/cuda-10.1
TF_ROOT=/home/zhaiyu/.conda/envs/pointnet2_tf/lib/python3.5/site-packages/tensorflow
#/usr/local/cuda-10.1/bin/nvcc -std=c++11 -c -o tf_grouping_g.cu.o tf_grouping_g.cu -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
#TF 1.8
g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I ${TF_ROOT}/include -I ${CUDA_ROOT}/include -I ${TF_ROOT}/include/external/nsync/public -lcudart -L ${CUDA_ROOT}/lib64/ -L ${TF_ROOT} -ltensorflow_framework -O2 #-D_GLIBCXX_USE_CXX11_ABI=0