# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT license.

# Have a look at README.md and README_PROTONN_OSS.md for details on how to setup the data directory to run this script.


########################################################
# Input-output parameters
########################################################

predefined_model="-P 0"
problem_format="-C 1"
input_dir="-I usps10"
input_format="-F 0"



########################################################
# Data-dependent parameters
########################################################

ntrain="-r 7291"
ntest="-e 2007"
original_dimension="-D 256"
num_labels="-l 10" 



########################################################
# ProtoNN hyper-parameters (required)
########################################################

projection_dimension="-d 15"
#prototypes="-k 20"
prototypes="-m 200"



########################################################
# ProtoNN hyper-parameters (optional)
########################################################

lambda_W="-W 1.0"
lambda_Z="-Z 1.0"
lambda_B="-B 1.0"
gammaNumerator="-g 1.0"
normalization="-N 0"
seed="-R 42"



########################################################
# ProtoNN optimization hyper-parameters (optional)
########################################################

batch_size="-b 1024"
iters="-T 20"
epochs="-E 20"



########################################################
# execute ProtoNN
########################################################

#gdb=" gdb --args" 
executable="./ProtoNN"
command=$gdb" "$executable" "$predefined_model" "$seed" "$problem_format" "$input_dir" "$input_format" "$ntrain" "$ntest" "$original_dimension" "$projection_dimension" "$num_labels" "$prototypes" "$lambda_W" "$lambda_Z" "$lambda_B" "$gammaNumerator" "$batch_size" "$iters" "$epochs" "$normalization
echo "Running ProtoNN with following command: "
echo $command
echo ""
exec $command
