��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
�
,Adam/simple_rnn_11/simple_rnn_cell_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,Adam/simple_rnn_11/simple_rnn_cell_12/bias/v
�
@Adam/simple_rnn_11/simple_rnn_cell_12/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_11/simple_rnn_cell_12/bias/v*
_output_shapes	
:�*
dtype0
�
8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*I
shared_name:8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/v
�
LAdam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/v* 
_output_shapes
:
��*
dtype0
�
.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*?
shared_name0.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/v
�
BAdam/simple_rnn_11/simple_rnn_cell_12/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/v*
_output_shapes
:	�*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:`*
dtype0
�
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�)`*&
shared_nameAdam/dense_4/kernel/v
�
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	�)`*
dtype0
�
Adam/conv1d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_8/bias/v
y
(Adam/conv1d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv1d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv1d_8/kernel/v
�
*Adam/conv1d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/v*#
_output_shapes
:�@*
dtype0
�
,Adam/simple_rnn_11/simple_rnn_cell_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,Adam/simple_rnn_11/simple_rnn_cell_12/bias/m
�
@Adam/simple_rnn_11/simple_rnn_cell_12/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_11/simple_rnn_cell_12/bias/m*
_output_shapes	
:�*
dtype0
�
8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*I
shared_name:8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/m
�
LAdam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/m* 
_output_shapes
:
��*
dtype0
�
.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*?
shared_name0.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/m
�
BAdam/simple_rnn_11/simple_rnn_cell_12/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/m*
_output_shapes
:	�*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:`*
dtype0
�
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�)`*&
shared_nameAdam/dense_4/kernel/m
�
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	�)`*
dtype0
�
Adam/conv1d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_8/bias/m
y
(Adam/conv1d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv1d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv1d_8/kernel/m
�
*Adam/conv1d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/m*#
_output_shapes
:�@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
%simple_rnn_11/simple_rnn_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%simple_rnn_11/simple_rnn_cell_12/bias
�
9simple_rnn_11/simple_rnn_cell_12/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_11/simple_rnn_cell_12/bias*
_output_shapes	
:�*
dtype0
�
1simple_rnn_11/simple_rnn_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*B
shared_name31simple_rnn_11/simple_rnn_cell_12/recurrent_kernel
�
Esimple_rnn_11/simple_rnn_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_11/simple_rnn_cell_12/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
'simple_rnn_11/simple_rnn_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*8
shared_name)'simple_rnn_11/simple_rnn_cell_12/kernel
�
;simple_rnn_11/simple_rnn_cell_12/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_11/simple_rnn_cell_12/kernel*
_output_shapes
:	�*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:`*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�)`*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	�)`*
dtype0
r
conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_8/bias
k
!conv1d_8/bias/Read/ReadVariableOpReadVariableOpconv1d_8/bias*
_output_shapes
:@*
dtype0

conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@* 
shared_nameconv1d_8/kernel
x
#conv1d_8/kernel/Read/ReadVariableOpReadVariableOpconv1d_8/kernel*#
_output_shapes
:�@*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�A
value�AB�A B�A
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
5
40
51
62
3
4
25
36*
5
40
51
62
3
4
25
36*
* 
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
<trace_0
=trace_1
>trace_2
?trace_3* 
6
@trace_0
Atrace_1
Btrace_2
Ctrace_3* 
* 
�
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_ratem�m�2m�3m�4m�5m�6m�v�v�2v�3v�4v�5v�6v�*

Iserving_default* 

40
51
62*

40
51
62*
* 
�

Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ptrace_0
Qtrace_1
Rtrace_2
Strace_3* 
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator

4kernel
5recurrent_kernel
6bias*
* 

0
1*

0
1*
* 
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
_Y
VARIABLE_VALUEconv1d_8/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_8/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

ktrace_0* 

ltrace_0* 
* 
* 
* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

rtrace_0* 

strace_0* 

20
31*

20
31*
* 
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

ytrace_0* 

ztrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'simple_rnn_11/simple_rnn_cell_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1simple_rnn_11/simple_rnn_cell_12/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_11/simple_rnn_cell_12/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

{0
|1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

40
51
62*

40
51
62*
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�|
VARIABLE_VALUEAdam/conv1d_8/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_8/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_11/simple_rnn_cell_12/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv1d_8/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_8/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_11/simple_rnn_cell_12/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
#serving_default_simple_rnn_11_inputPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_11_input'simple_rnn_11/simple_rnn_cell_12/kernel%simple_rnn_11/simple_rnn_cell_12/bias1simple_rnn_11/simple_rnn_cell_12/recurrent_kernelconv1d_8/kernelconv1d_8/biasdense_4/kerneldense_4/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1782664
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_8/kernel/Read/ReadVariableOp!conv1d_8/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp;simple_rnn_11/simple_rnn_cell_12/kernel/Read/ReadVariableOpEsimple_rnn_11/simple_rnn_cell_12/recurrent_kernel/Read/ReadVariableOp9simple_rnn_11/simple_rnn_cell_12/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_8/kernel/m/Read/ReadVariableOp(Adam/conv1d_8/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOpBAdam/simple_rnn_11/simple_rnn_cell_12/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_11/simple_rnn_cell_12/bias/m/Read/ReadVariableOp*Adam/conv1d_8/kernel/v/Read/ReadVariableOp(Adam/conv1d_8/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpBAdam/simple_rnn_11/simple_rnn_cell_12/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_11/simple_rnn_cell_12/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_1783685
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_8/kernelconv1d_8/biasdense_4/kerneldense_4/bias'simple_rnn_11/simple_rnn_cell_12/kernel1simple_rnn_11/simple_rnn_cell_12/recurrent_kernel%simple_rnn_11/simple_rnn_cell_12/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv1d_8/kernel/mAdam/conv1d_8/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/m.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/m8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/m,Adam/simple_rnn_11/simple_rnn_cell_12/bias/mAdam/conv1d_8/kernel/vAdam/conv1d_8/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/v8Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/v,Adam/simple_rnn_11/simple_rnn_cell_12/bias/v**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_1783785��
�
�
while_cond_1783375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1783375___redundant_placeholder05
1while_while_cond_1783375___redundant_placeholder15
1while_while_cond_1783375___redundant_placeholder25
1while_while_cond_1783375___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�>
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783226
inputs_0D
1simple_rnn_cell_12_matmul_readvariableop_resource:	�A
2simple_rnn_cell_12_biasadd_readvariableop_resource:	�G
3simple_rnn_cell_12_matmul_1_readvariableop_resource:
��
identity��)simple_rnn_cell_12/BiasAdd/ReadVariableOp�(simple_rnn_cell_12/MatMul/ReadVariableOp�*simple_rnn_cell_12/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������n
simple_rnn_cell_12/ReluRelusimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1783160*
condR
while_cond_1783159*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
G
+__inference_flatten_2_layer_call_fn_1783485

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1782319a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������)"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������S@:S O
+
_output_shapes
:���������S@
 
_user_specified_nameinputs
�:
�
 simple_rnn_11_while_body_17828768
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_27
3simple_rnn_11_while_simple_rnn_11_strided_slice_1_0s
osimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0Z
Gsimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�W
Hsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�]
Isimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
�� 
simple_rnn_11_while_identity"
simple_rnn_11_while_identity_1"
simple_rnn_11_while_identity_2"
simple_rnn_11_while_identity_3"
simple_rnn_11_while_identity_45
1simple_rnn_11_while_simple_rnn_11_strided_slice_1q
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorX
Esimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource:	�U
Fsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�[
Gsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp�>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_11_while_placeholderNsimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
-simple_rnn_11/while/simple_rnn_cell_12/MatMulMatMul>simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
.simple_rnn_11/while/simple_rnn_cell_12/BiasAddBiasAdd7simple_rnn_11/while/simple_rnn_cell_12/MatMul:product:0Esimple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1MatMul!simple_rnn_11_while_placeholder_2Fsimple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_11/while/simple_rnn_cell_12/addAddV27simple_rnn_11/while/simple_rnn_cell_12/BiasAdd:output:09simple_rnn_11/while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+simple_rnn_11/while/simple_rnn_cell_12/ReluRelu.simple_rnn_11/while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_11_while_placeholder_1simple_rnn_11_while_placeholder9simple_rnn_11/while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_11/while/addAddV2simple_rnn_11_while_placeholder"simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_11/while/add_1AddV24simple_rnn_11_while_simple_rnn_11_while_loop_counter$simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/add_1:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_1Identity:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_2Identitysimple_rnn_11/while/add:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_3IdentityHsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_4Identity9simple_rnn_11/while/simple_rnn_cell_12/Relu:activations:0^simple_rnn_11/while/NoOp*
T0*(
_output_shapes
:�����������
simple_rnn_11/while/NoOpNoOp>^simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0"I
simple_rnn_11_while_identity_1'simple_rnn_11/while/Identity_1:output:0"I
simple_rnn_11_while_identity_2'simple_rnn_11/while/Identity_2:output:0"I
simple_rnn_11_while_identity_3'simple_rnn_11/while/Identity_3:output:0"I
simple_rnn_11_while_identity_4'simple_rnn_11/while/Identity_4:output:0"h
1simple_rnn_11_while_simple_rnn_11_strided_slice_13simple_rnn_11_while_simple_rnn_11_strided_slice_1_0"�
Fsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resourceHsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"�
Gsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resourceIsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"�
Esimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resourceGsimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0"�
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2~
=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2|
<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp2�
>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
/__inference_sequential_10_layer_call_fn_1782683

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
�� 
	unknown_2:�@
	unknown_3:@
	unknown_4:	�)`
	unknown_5:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�=
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783334

inputsD
1simple_rnn_cell_12_matmul_readvariableop_resource:	�A
2simple_rnn_cell_12_biasadd_readvariableop_resource:	�G
3simple_rnn_cell_12_matmul_1_readvariableop_resource:
��
identity��)simple_rnn_cell_12/BiasAdd/ReadVariableOp�(simple_rnn_cell_12/MatMul/ReadVariableOp�*simple_rnn_cell_12/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������n
simple_rnn_cell_12/ReluRelusimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1783268*
condR
while_cond_1783267*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:�����������d
IdentityIdentitytranspose_1:y:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782555

inputs(
simple_rnn_11_1782535:	�$
simple_rnn_11_1782537:	�)
simple_rnn_11_1782539:
��'
conv1d_8_1782542:�@
conv1d_8_1782544:@"
dense_4_1782549:	�)`
dense_4_1782551:`
identity�� conv1d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�%simple_rnn_11/StatefulPartitionedCall�
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_11_1782535simple_rnn_11_1782537simple_rnn_11_1782539*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782502�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0conv1d_8_1782542conv1d_8_1782544*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1782306�
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1782165�
flatten_2/PartitionedCallPartitionedCall(max_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1782319�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_1782549dense_4_1782551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1782331w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`�
NoOpNoOp!^conv1d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�|
�
"__inference__wrapped_model_1781861
simple_rnn_11_input`
Msequential_10_simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource:	�]
Nsequential_10_simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resource:	�c
Osequential_10_simple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource:
��Y
Bsequential_10_conv1d_8_conv1d_expanddims_1_readvariableop_resource:�@D
6sequential_10_conv1d_8_biasadd_readvariableop_resource:@G
4sequential_10_dense_4_matmul_readvariableop_resource:	�)`C
5sequential_10_dense_4_biasadd_readvariableop_resource:`
identity��-sequential_10/conv1d_8/BiasAdd/ReadVariableOp�9sequential_10/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp�,sequential_10/dense_4/BiasAdd/ReadVariableOp�+sequential_10/dense_4/MatMul/ReadVariableOp�Esequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp�Dsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp�Fsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp�!sequential_10/simple_rnn_11/whiled
!sequential_10/simple_rnn_11/ShapeShapesimple_rnn_11_input*
T0*
_output_shapes
:y
/sequential_10/simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_10/simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_10/simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_10/simple_rnn_11/strided_sliceStridedSlice*sequential_10/simple_rnn_11/Shape:output:08sequential_10/simple_rnn_11/strided_slice/stack:output:0:sequential_10/simple_rnn_11/strided_slice/stack_1:output:0:sequential_10/simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
*sequential_10/simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
(sequential_10/simple_rnn_11/zeros/packedPack2sequential_10/simple_rnn_11/strided_slice:output:03sequential_10/simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_10/simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!sequential_10/simple_rnn_11/zerosFill1sequential_10/simple_rnn_11/zeros/packed:output:00sequential_10/simple_rnn_11/zeros/Const:output:0*
T0*(
_output_shapes
:����������
*sequential_10/simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_10/simple_rnn_11/transpose	Transposesimple_rnn_11_input3sequential_10/simple_rnn_11/transpose/perm:output:0*
T0*,
_output_shapes
:����������|
#sequential_10/simple_rnn_11/Shape_1Shape)sequential_10/simple_rnn_11/transpose:y:0*
T0*
_output_shapes
:{
1sequential_10/simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_10/simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_10/simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_10/simple_rnn_11/strided_slice_1StridedSlice,sequential_10/simple_rnn_11/Shape_1:output:0:sequential_10/simple_rnn_11/strided_slice_1/stack:output:0<sequential_10/simple_rnn_11/strided_slice_1/stack_1:output:0<sequential_10/simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
7sequential_10/simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
)sequential_10/simple_rnn_11/TensorArrayV2TensorListReserve@sequential_10/simple_rnn_11/TensorArrayV2/element_shape:output:04sequential_10/simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Qsequential_10/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Csequential_10/simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_10/simple_rnn_11/transpose:y:0Zsequential_10/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���{
1sequential_10/simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_10/simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_10/simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_10/simple_rnn_11/strided_slice_2StridedSlice)sequential_10/simple_rnn_11/transpose:y:0:sequential_10/simple_rnn_11/strided_slice_2/stack:output:0<sequential_10/simple_rnn_11/strided_slice_2/stack_1:output:0<sequential_10/simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Dsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpMsequential_10_simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
5sequential_10/simple_rnn_11/simple_rnn_cell_12/MatMulMatMul4sequential_10/simple_rnn_11/strided_slice_2:output:0Lsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Esequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpNsequential_10_simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6sequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAddBiasAdd?sequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul:product:0Msequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Fsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpOsequential_10_simple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
7sequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1MatMul*sequential_10/simple_rnn_11/zeros:output:0Nsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2sequential_10/simple_rnn_11/simple_rnn_cell_12/addAddV2?sequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAdd:output:0Asequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3sequential_10/simple_rnn_11/simple_rnn_cell_12/ReluRelu6sequential_10/simple_rnn_11/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
9sequential_10/simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
+sequential_10/simple_rnn_11/TensorArrayV2_1TensorListReserveBsequential_10/simple_rnn_11/TensorArrayV2_1/element_shape:output:04sequential_10/simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���b
 sequential_10/simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_10/simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������p
.sequential_10/simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential_10/simple_rnn_11/whileWhile7sequential_10/simple_rnn_11/while/loop_counter:output:0=sequential_10/simple_rnn_11/while/maximum_iterations:output:0)sequential_10/simple_rnn_11/time:output:04sequential_10/simple_rnn_11/TensorArrayV2_1:handle:0*sequential_10/simple_rnn_11/zeros:output:04sequential_10/simple_rnn_11/strided_slice_1:output:0Ssequential_10/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_10_simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resourceNsequential_10_simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resourceOsequential_10_simple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.sequential_10_simple_rnn_11_while_body_1781771*:
cond2R0
.sequential_10_simple_rnn_11_while_cond_1781770*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
Lsequential_10/simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
>sequential_10/simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_10/simple_rnn_11/while:output:3Usequential_10/simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�����������*
element_dtype0�
1sequential_10/simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
3sequential_10/simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_10/simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_10/simple_rnn_11/strided_slice_3StridedSliceGsequential_10/simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_10/simple_rnn_11/strided_slice_3/stack:output:0<sequential_10/simple_rnn_11/strided_slice_3/stack_1:output:0<sequential_10/simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask�
,sequential_10/simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_10/simple_rnn_11/transpose_1	TransposeGsequential_10/simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:05sequential_10/simple_rnn_11/transpose_1/perm:output:0*
T0*-
_output_shapes
:�����������w
,sequential_10/conv1d_8/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
(sequential_10/conv1d_8/Conv1D/ExpandDims
ExpandDims+sequential_10/simple_rnn_11/transpose_1:y:05sequential_10/conv1d_8/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
9sequential_10/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_10_conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�@*
dtype0p
.sequential_10/conv1d_8/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
*sequential_10/conv1d_8/Conv1D/ExpandDims_1
ExpandDimsAsequential_10/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp:value:07sequential_10/conv1d_8/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�@�
sequential_10/conv1d_8/Conv1DConv2D1sequential_10/conv1d_8/Conv1D/ExpandDims:output:03sequential_10/conv1d_8/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
%sequential_10/conv1d_8/Conv1D/SqueezeSqueeze&sequential_10/conv1d_8/Conv1D:output:0*
T0*,
_output_shapes
:����������@*
squeeze_dims

����������
-sequential_10/conv1d_8/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_conv1d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_10/conv1d_8/BiasAddBiasAdd.sequential_10/conv1d_8/Conv1D/Squeeze:output:05sequential_10/conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@�
sequential_10/conv1d_8/ReluRelu'sequential_10/conv1d_8/BiasAdd:output:0*
T0*,
_output_shapes
:����������@n
,sequential_10/max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
(sequential_10/max_pooling1d_4/ExpandDims
ExpandDims)sequential_10/conv1d_8/Relu:activations:05sequential_10/max_pooling1d_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������@�
%sequential_10/max_pooling1d_4/MaxPoolMaxPool1sequential_10/max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:���������S@*
ksize
*
paddingVALID*
strides
�
%sequential_10/max_pooling1d_4/SqueezeSqueeze.sequential_10/max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:���������S@*
squeeze_dims
n
sequential_10/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
sequential_10/flatten_2/ReshapeReshape.sequential_10/max_pooling1d_4/Squeeze:output:0&sequential_10/flatten_2/Const:output:0*
T0*(
_output_shapes
:����������)�
+sequential_10/dense_4/MatMul/ReadVariableOpReadVariableOp4sequential_10_dense_4_matmul_readvariableop_resource*
_output_shapes
:	�)`*
dtype0�
sequential_10/dense_4/MatMulMatMul(sequential_10/flatten_2/Reshape:output:03sequential_10/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`�
,sequential_10/dense_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_10_dense_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0�
sequential_10/dense_4/BiasAddBiasAdd&sequential_10/dense_4/MatMul:product:04sequential_10/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`u
IdentityIdentity&sequential_10/dense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������`�
NoOpNoOp.^sequential_10/conv1d_8/BiasAdd/ReadVariableOp:^sequential_10/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp-^sequential_10/dense_4/BiasAdd/ReadVariableOp,^sequential_10/dense_4/MatMul/ReadVariableOpF^sequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOpE^sequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOpG^sequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp"^sequential_10/simple_rnn_11/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 2^
-sequential_10/conv1d_8/BiasAdd/ReadVariableOp-sequential_10/conv1d_8/BiasAdd/ReadVariableOp2v
9sequential_10/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp9sequential_10/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp2\
,sequential_10/dense_4/BiasAdd/ReadVariableOp,sequential_10/dense_4/BiasAdd/ReadVariableOp2Z
+sequential_10/dense_4/MatMul/ReadVariableOp+sequential_10/dense_4/MatMul/ReadVariableOp2�
Esequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOpEsequential_10/simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp2�
Dsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOpDsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp2�
Fsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOpFsequential_10/simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp2F
!sequential_10/simple_rnn_11/while!sequential_10/simple_rnn_11/while:a ]
,
_output_shapes
:����������
-
_user_specified_namesimple_rnn_11_input
�
�
while_cond_1782435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1782435___redundant_placeholder05
1while_while_cond_1782435___redundant_placeholder15
1while_while_cond_1782435___redundant_placeholder25
1while_while_cond_1782435___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1781921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1781921___redundant_placeholder05
1while_while_cond_1781921___redundant_placeholder15
1while_while_cond_1781921___redundant_placeholder25
1while_while_cond_1781921___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�=
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782282

inputsD
1simple_rnn_cell_12_matmul_readvariableop_resource:	�A
2simple_rnn_cell_12_biasadd_readvariableop_resource:	�G
3simple_rnn_cell_12_matmul_1_readvariableop_resource:
��
identity��)simple_rnn_cell_12/BiasAdd/ReadVariableOp�(simple_rnn_cell_12/MatMul/ReadVariableOp�*simple_rnn_cell_12/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������n
simple_rnn_cell_12/ReluRelusimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1782216*
condR
while_cond_1782215*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:�����������d
IdentityIdentitytranspose_1:y:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_simple_rnn_11_layer_call_fn_1782988
inputs_0
unknown:	�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782144}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�{
�
#__inference__traced_restore_1783785
file_prefix7
 assignvariableop_conv1d_8_kernel:�@.
 assignvariableop_1_conv1d_8_bias:@4
!assignvariableop_2_dense_4_kernel:	�)`-
assignvariableop_3_dense_4_bias:`M
:assignvariableop_4_simple_rnn_11_simple_rnn_cell_12_kernel:	�X
Dassignvariableop_5_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel:
��G
8assignvariableop_6_simple_rnn_11_simple_rnn_cell_12_bias:	�&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: #
assignvariableop_14_total: #
assignvariableop_15_count: A
*assignvariableop_16_adam_conv1d_8_kernel_m:�@6
(assignvariableop_17_adam_conv1d_8_bias_m:@<
)assignvariableop_18_adam_dense_4_kernel_m:	�)`5
'assignvariableop_19_adam_dense_4_bias_m:`U
Bassignvariableop_20_adam_simple_rnn_11_simple_rnn_cell_12_kernel_m:	�`
Lassignvariableop_21_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_m:
��O
@assignvariableop_22_adam_simple_rnn_11_simple_rnn_cell_12_bias_m:	�A
*assignvariableop_23_adam_conv1d_8_kernel_v:�@6
(assignvariableop_24_adam_conv1d_8_bias_v:@<
)assignvariableop_25_adam_dense_4_kernel_v:	�)`5
'assignvariableop_26_adam_dense_4_bias_v:`U
Bassignvariableop_27_adam_simple_rnn_11_simple_rnn_cell_12_kernel_v:	�`
Lassignvariableop_28_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_v:
��O
@assignvariableop_29_adam_simple_rnn_11_simple_rnn_cell_12_bias_v:	�
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv1d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp:assignvariableop_4_simple_rnn_11_simple_rnn_cell_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpDassignvariableop_5_simple_rnn_11_simple_rnn_cell_12_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp8assignvariableop_6_simple_rnn_11_simple_rnn_cell_12_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_conv1d_8_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_conv1d_8_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_4_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_4_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpBassignvariableop_20_adam_simple_rnn_11_simple_rnn_cell_12_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpLassignvariableop_21_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_simple_rnn_11_simple_rnn_cell_12_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv1d_8_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv1d_8_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_4_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_4_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_simple_rnn_11_simple_rnn_cell_12_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpLassignvariableop_28_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_simple_rnn_11_simple_rnn_cell_12_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�h
�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782966

inputsR
?simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource:	�O
@simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resource:	�U
Asimple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource:
��K
4conv1d_8_conv1d_expanddims_1_readvariableop_resource:�@6
(conv1d_8_biasadd_readvariableop_resource:@9
&dense_4_matmul_readvariableop_resource:	�)`5
'dense_4_biasadd_readvariableop_resource:`
identity��conv1d_8/BiasAdd/ReadVariableOp�+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp�6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp�8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp�simple_rnn_11/whileI
simple_rnn_11/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_sliceStridedSlicesimple_rnn_11/Shape:output:0*simple_rnn_11/strided_slice/stack:output:0,simple_rnn_11/strided_slice/stack_1:output:0,simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
simple_rnn_11/zeros/packedPack$simple_rnn_11/strided_slice:output:0%simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_11/zerosFill#simple_rnn_11/zeros/packed:output:0"simple_rnn_11/zeros/Const:output:0*
T0*(
_output_shapes
:����������q
simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_11/transpose	Transposeinputs%simple_rnn_11/transpose/perm:output:0*
T0*,
_output_shapes
:����������`
simple_rnn_11/Shape_1Shapesimple_rnn_11/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_slice_1StridedSlicesimple_rnn_11/Shape_1:output:0,simple_rnn_11/strided_slice_1/stack:output:0.simple_rnn_11/strided_slice_1/stack_1:output:0.simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_11/TensorArrayV2TensorListReserve2simple_rnn_11/TensorArrayV2/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_11/transpose:y:0Lsimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_slice_2StridedSlicesimple_rnn_11/transpose:y:0,simple_rnn_11/strided_slice_2/stack:output:0.simple_rnn_11/strided_slice_2/stack_1:output:0.simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp?simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
'simple_rnn_11/simple_rnn_cell_12/MatMulMatMul&simple_rnn_11/strided_slice_2:output:0>simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(simple_rnn_11/simple_rnn_cell_12/BiasAddBiasAdd1simple_rnn_11/simple_rnn_cell_12/MatMul:product:0?simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)simple_rnn_11/simple_rnn_cell_12/MatMul_1MatMulsimple_rnn_11/zeros:output:0@simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$simple_rnn_11/simple_rnn_cell_12/addAddV21simple_rnn_11/simple_rnn_cell_12/BiasAdd:output:03simple_rnn_11/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
%simple_rnn_11/simple_rnn_cell_12/ReluRelu(simple_rnn_11/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������|
+simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
simple_rnn_11/TensorArrayV2_1TensorListReserve4simple_rnn_11/TensorArrayV2_1/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_11/whileWhile)simple_rnn_11/while/loop_counter:output:0/simple_rnn_11/while/maximum_iterations:output:0simple_rnn_11/time:output:0&simple_rnn_11/TensorArrayV2_1:handle:0simple_rnn_11/zeros:output:0&simple_rnn_11/strided_slice_1:output:0Esimple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource@simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resourceAsimple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_11_while_body_1782876*,
cond$R"
 simple_rnn_11_while_cond_1782875*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
0simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_11/while:output:3Gsimple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�����������*
element_dtype0v
#simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_slice_3StridedSlice9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_11/strided_slice_3/stack:output:0.simple_rnn_11/strided_slice_3/stack_1:output:0.simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masks
simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_11/transpose_1	Transpose9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_11/transpose_1/perm:output:0*
T0*-
_output_shapes
:�����������i
conv1d_8/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_8/Conv1D/ExpandDims
ExpandDimssimple_rnn_11/transpose_1:y:0'conv1d_8/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�@*
dtype0b
 conv1d_8/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_8/Conv1D/ExpandDims_1
ExpandDims3conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�@�
conv1d_8/Conv1DConv2D#conv1d_8/Conv1D/ExpandDims:output:0%conv1d_8/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
conv1d_8/Conv1D/SqueezeSqueezeconv1d_8/Conv1D:output:0*
T0*,
_output_shapes
:����������@*
squeeze_dims

����������
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv1d_8/BiasAddBiasAdd conv1d_8/Conv1D/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@g
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*,
_output_shapes
:����������@`
max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
max_pooling1d_4/ExpandDims
ExpandDimsconv1d_8/Relu:activations:0'max_pooling1d_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������@�
max_pooling1d_4/MaxPoolMaxPool#max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:���������S@*
ksize
*
paddingVALID*
strides
�
max_pooling1d_4/SqueezeSqueeze max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:���������S@*
squeeze_dims
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_2/ReshapeReshape max_pooling1d_4/Squeeze:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:����������)�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�)`*
dtype0�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`g
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������`�
NoOpNoOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp8^simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp7^simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp9^simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp^simple_rnn_11/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2r
7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp2p
6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp2t
8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp2*
simple_rnn_11/whilesimple_rnn_11/while:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
.sequential_10_simple_rnn_11_while_cond_1781770T
Psequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_loop_counterZ
Vsequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_maximum_iterations1
-sequential_10_simple_rnn_11_while_placeholder3
/sequential_10_simple_rnn_11_while_placeholder_13
/sequential_10_simple_rnn_11_while_placeholder_2V
Rsequential_10_simple_rnn_11_while_less_sequential_10_simple_rnn_11_strided_slice_1m
isequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_cond_1781770___redundant_placeholder0m
isequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_cond_1781770___redundant_placeholder1m
isequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_cond_1781770___redundant_placeholder2m
isequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_cond_1781770___redundant_placeholder3.
*sequential_10_simple_rnn_11_while_identity
�
&sequential_10/simple_rnn_11/while/LessLess-sequential_10_simple_rnn_11_while_placeholderRsequential_10_simple_rnn_11_while_less_sequential_10_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: �
*sequential_10/simple_rnn_11/while/IdentityIdentity*sequential_10/simple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_10_simple_rnn_11_while_identity3sequential_10/simple_rnn_11/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1782215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1782215___redundant_placeholder05
1while_while_cond_1782215___redundant_placeholder15
1while_while_cond_1782215___redundant_placeholder25
1while_while_cond_1782215___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782614
simple_rnn_11_input(
simple_rnn_11_1782594:	�$
simple_rnn_11_1782596:	�)
simple_rnn_11_1782598:
��'
conv1d_8_1782601:�@
conv1d_8_1782603:@"
dense_4_1782608:	�)`
dense_4_1782610:`
identity�� conv1d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�%simple_rnn_11/StatefulPartitionedCall�
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputsimple_rnn_11_1782594simple_rnn_11_1782596simple_rnn_11_1782598*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782282�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0conv1d_8_1782601conv1d_8_1782603*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1782306�
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1782165�
flatten_2/PartitionedCallPartitionedCall(max_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1782319�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_1782608dense_4_1782610*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1782331w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`�
NoOpNoOp!^conv1d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:a ]
,
_output_shapes
:����������
-
_user_specified_namesimple_rnn_11_input
�4
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782144

inputs-
simple_rnn_cell_12_1782069:	�)
simple_rnn_cell_12_1782071:	�.
simple_rnn_cell_12_1782073:
��
identity��*simple_rnn_cell_12/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_12_1782069simple_rnn_cell_12_1782071simple_rnn_cell_12_1782073*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1782029n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_12_1782069simple_rnn_cell_12_1782071simple_rnn_cell_12_1782073*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1782081*
condR
while_cond_1782080*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:�������������������{
NoOpNoOp+^simple_rnn_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_12/StatefulPartitionedCall*simple_rnn_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782338

inputs(
simple_rnn_11_1782283:	�$
simple_rnn_11_1782285:	�)
simple_rnn_11_1782287:
��'
conv1d_8_1782307:�@
conv1d_8_1782309:@"
dense_4_1782332:	�)`
dense_4_1782334:`
identity�� conv1d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�%simple_rnn_11/StatefulPartitionedCall�
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_11_1782283simple_rnn_11_1782285simple_rnn_11_1782287*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782282�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0conv1d_8_1782307conv1d_8_1782309*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1782306�
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1782165�
flatten_2/PartitionedCallPartitionedCall(max_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1782319�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_1782332dense_4_1782334*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1782331w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`�
NoOpNoOp!^conv1d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling1d_4_layer_call_fn_1783472

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1782165v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�	
�
/__inference_sequential_10_layer_call_fn_1782591
simple_rnn_11_input
unknown:	�
	unknown_0:	�
	unknown_1:
�� 
	unknown_2:�@
	unknown_3:@
	unknown_4:	�)`
	unknown_5:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782555o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:����������
-
_user_specified_namesimple_rnn_11_input
�
�
while_cond_1782080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1782080___redundant_placeholder05
1while_while_cond_1782080___redundant_placeholder15
1while_while_cond_1782080___redundant_placeholder25
1while_while_cond_1782080___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_1783491

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������)Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������)"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������S@:S O
+
_output_shapes
:���������S@
 
_user_specified_nameinputs
�-
�
while_body_1783376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�I
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�O
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_12_matmul_readvariableop_resource:	�G
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�M
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_12/MatMul/ReadVariableOp�0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������z
while/simple_rnn_cell_12/ReluRelu while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity+while/simple_rnn_cell_12/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�:
�
 simple_rnn_11_while_body_17827448
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_27
3simple_rnn_11_while_simple_rnn_11_strided_slice_1_0s
osimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0Z
Gsimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�W
Hsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�]
Isimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
�� 
simple_rnn_11_while_identity"
simple_rnn_11_while_identity_1"
simple_rnn_11_while_identity_2"
simple_rnn_11_while_identity_3"
simple_rnn_11_while_identity_45
1simple_rnn_11_while_simple_rnn_11_strided_slice_1q
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorX
Esimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource:	�U
Fsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�[
Gsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp�>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_11_while_placeholderNsimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
-simple_rnn_11/while/simple_rnn_cell_12/MatMulMatMul>simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
.simple_rnn_11/while/simple_rnn_cell_12/BiasAddBiasAdd7simple_rnn_11/while/simple_rnn_cell_12/MatMul:product:0Esimple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1MatMul!simple_rnn_11_while_placeholder_2Fsimple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_11/while/simple_rnn_cell_12/addAddV27simple_rnn_11/while/simple_rnn_cell_12/BiasAdd:output:09simple_rnn_11/while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+simple_rnn_11/while/simple_rnn_cell_12/ReluRelu.simple_rnn_11/while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_11_while_placeholder_1simple_rnn_11_while_placeholder9simple_rnn_11/while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_11/while/addAddV2simple_rnn_11_while_placeholder"simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_11/while/add_1AddV24simple_rnn_11_while_simple_rnn_11_while_loop_counter$simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/add_1:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_1Identity:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_2Identitysimple_rnn_11/while/add:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_3IdentityHsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_11/while/Identity_4Identity9simple_rnn_11/while/simple_rnn_cell_12/Relu:activations:0^simple_rnn_11/while/NoOp*
T0*(
_output_shapes
:�����������
simple_rnn_11/while/NoOpNoOp>^simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0"I
simple_rnn_11_while_identity_1'simple_rnn_11/while/Identity_1:output:0"I
simple_rnn_11_while_identity_2'simple_rnn_11/while/Identity_2:output:0"I
simple_rnn_11_while_identity_3'simple_rnn_11/while/Identity_3:output:0"I
simple_rnn_11_while_identity_4'simple_rnn_11/while/Identity_4:output:0"h
1simple_rnn_11_while_simple_rnn_11_strided_slice_13simple_rnn_11_while_simple_rnn_11_strided_slice_1_0"�
Fsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resourceHsimple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"�
Gsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resourceIsimple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"�
Esimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resourceGsimple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0"�
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2~
=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp=simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2|
<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp<simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp2�
>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp>simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
%__inference_signature_wrapper_1782664
simple_rnn_11_input
unknown:	�
	unknown_0:	�
	unknown_1:
�� 
	unknown_2:�@
	unknown_3:@
	unknown_4:	�)`
	unknown_5:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1781861o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:����������
-
_user_specified_namesimple_rnn_11_input
�-
�
while_body_1782216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�I
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�O
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_12_matmul_readvariableop_resource:	�G
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�M
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_12/MatMul/ReadVariableOp�0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������z
while/simple_rnn_cell_12/ReluRelu while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity+while/simple_rnn_cell_12/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�G
�
.sequential_10_simple_rnn_11_while_body_1781771T
Psequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_loop_counterZ
Vsequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_maximum_iterations1
-sequential_10_simple_rnn_11_while_placeholder3
/sequential_10_simple_rnn_11_while_placeholder_13
/sequential_10_simple_rnn_11_while_placeholder_2S
Osequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_strided_slice_1_0�
�sequential_10_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_10_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0h
Usequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�e
Vsequential_10_simple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�k
Wsequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
��.
*sequential_10_simple_rnn_11_while_identity0
,sequential_10_simple_rnn_11_while_identity_10
,sequential_10_simple_rnn_11_while_identity_20
,sequential_10_simple_rnn_11_while_identity_30
,sequential_10_simple_rnn_11_while_identity_4Q
Msequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_strided_slice_1�
�sequential_10_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_10_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorf
Ssequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource:	�c
Tsequential_10_simple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�i
Usequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����Ksequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�Jsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp�Lsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
Ssequential_10/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_10/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_10_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_10_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0-sequential_10_simple_rnn_11_while_placeholder\sequential_10/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Jsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOpUsequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
;sequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMulMatMulLsequential_10/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOpVsequential_10_simple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
<sequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAddBiasAddEsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul:product:0Ssequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Lsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpWsequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
=sequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1MatMul/sequential_10_simple_rnn_11_while_placeholder_2Tsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8sequential_10/simple_rnn_11/while/simple_rnn_cell_12/addAddV2Esequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAdd:output:0Gsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
9sequential_10/simple_rnn_11/while/simple_rnn_cell_12/ReluRelu<sequential_10/simple_rnn_11/while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
Fsequential_10/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_10_simple_rnn_11_while_placeholder_1-sequential_10_simple_rnn_11_while_placeholderGsequential_10/simple_rnn_11/while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���i
'sequential_10/simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_10/simple_rnn_11/while/addAddV2-sequential_10_simple_rnn_11_while_placeholder0sequential_10/simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_10/simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_10/simple_rnn_11/while/add_1AddV2Psequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_loop_counter2sequential_10/simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: �
*sequential_10/simple_rnn_11/while/IdentityIdentity+sequential_10/simple_rnn_11/while/add_1:z:0'^sequential_10/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
,sequential_10/simple_rnn_11/while/Identity_1IdentityVsequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_while_maximum_iterations'^sequential_10/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
,sequential_10/simple_rnn_11/while/Identity_2Identity)sequential_10/simple_rnn_11/while/add:z:0'^sequential_10/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
,sequential_10/simple_rnn_11/while/Identity_3IdentityVsequential_10/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_10/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: �
,sequential_10/simple_rnn_11/while/Identity_4IdentityGsequential_10/simple_rnn_11/while/simple_rnn_cell_12/Relu:activations:0'^sequential_10/simple_rnn_11/while/NoOp*
T0*(
_output_shapes
:�����������
&sequential_10/simple_rnn_11/while/NoOpNoOpL^sequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpK^sequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOpM^sequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_10_simple_rnn_11_while_identity3sequential_10/simple_rnn_11/while/Identity:output:0"e
,sequential_10_simple_rnn_11_while_identity_15sequential_10/simple_rnn_11/while/Identity_1:output:0"e
,sequential_10_simple_rnn_11_while_identity_25sequential_10/simple_rnn_11/while/Identity_2:output:0"e
,sequential_10_simple_rnn_11_while_identity_35sequential_10/simple_rnn_11/while/Identity_3:output:0"e
,sequential_10_simple_rnn_11_while_identity_45sequential_10/simple_rnn_11/while/Identity_4:output:0"�
Msequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_strided_slice_1Osequential_10_simple_rnn_11_while_sequential_10_simple_rnn_11_strided_slice_1_0"�
Tsequential_10_simple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resourceVsequential_10_simple_rnn_11_while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"�
Usequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resourceWsequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"�
Ssequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resourceUsequential_10_simple_rnn_11_while_simple_rnn_cell_12_matmul_readvariableop_resource_0"�
�sequential_10_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_10_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor�sequential_10_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_10_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2�
Ksequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpKsequential_10/simple_rnn_11/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2�
Jsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOpJsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul/ReadVariableOp2�
Lsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOpLsequential_10/simple_rnn_11/while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_simple_rnn_11_layer_call_fn_1783010

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782502u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1781909

inputs

states1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
ReluReluadd:z:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�
�
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1782306

inputsB
+conv1d_expanddims_1_readvariableop_resource:�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�@�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������@*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������@f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������@�
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_conv1d_8_layer_call_fn_1783451

inputs
unknown:�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1782306t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�D
�
 __inference__traced_save_1783685
file_prefix.
*savev2_conv1d_8_kernel_read_readvariableop,
(savev2_conv1d_8_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableopF
Bsavev2_simple_rnn_11_simple_rnn_cell_12_kernel_read_readvariableopP
Lsavev2_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_11_simple_rnn_cell_12_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_8_kernel_m_read_readvariableop3
/savev2_adam_conv1d_8_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_11_simple_rnn_cell_12_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_11_simple_rnn_cell_12_bias_m_read_readvariableop5
1savev2_adam_conv1d_8_kernel_v_read_readvariableop3
/savev2_adam_conv1d_8_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_11_simple_rnn_cell_12_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_11_simple_rnn_cell_12_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_8_kernel_read_readvariableop(savev2_conv1d_8_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableopBsavev2_simple_rnn_11_simple_rnn_cell_12_kernel_read_readvariableopLsavev2_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_read_readvariableop@savev2_simple_rnn_11_simple_rnn_cell_12_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_8_kernel_m_read_readvariableop/savev2_adam_conv1d_8_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableopIsavev2_adam_simple_rnn_11_simple_rnn_cell_12_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_11_simple_rnn_cell_12_bias_m_read_readvariableop1savev2_adam_conv1d_8_kernel_v_read_readvariableop/savev2_adam_conv1d_8_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopIsavev2_adam_simple_rnn_11_simple_rnn_cell_12_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_11_simple_rnn_cell_12_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_11_simple_rnn_cell_12_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :�@:@:	�)`:`:	�:
��:�: : : : : : : : : :�@:@:	�)`:`:	�:
��:�:�@:@:	�)`:`:	�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
:�@: 

_output_shapes
:@:%!

_output_shapes
:	�)`: 

_output_shapes
:`:%!

_output_shapes
:	�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
:�@: 

_output_shapes
:@:%!

_output_shapes
:	�)`: 

_output_shapes
:`:%!

_output_shapes
:	�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:)%
#
_output_shapes
:�@: 

_output_shapes
:@:%!

_output_shapes
:	�)`: 

_output_shapes
:`:%!

_output_shapes
:	�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: 
�

�
 simple_rnn_11_while_cond_17828758
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_2:
6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782875___redundant_placeholder0Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782875___redundant_placeholder1Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782875___redundant_placeholder2Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782875___redundant_placeholder3 
simple_rnn_11_while_identity
�
simple_rnn_11/while/LessLesssimple_rnn_11_while_placeholder6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1782029

inputs

states1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
ReluReluadd:z:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�
�
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783572

inputs
states_01
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
ReluReluadd:z:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
/__inference_simple_rnn_11_layer_call_fn_1782999

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782282u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
4__inference_simple_rnn_cell_12_layer_call_fn_1783538

inputs
states_0
unknown:	�
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1782029p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�	
�
/__inference_sequential_10_layer_call_fn_1782355
simple_rnn_11_input
unknown:	�
	unknown_0:	�
	unknown_1:
�� 
	unknown_2:�@
	unknown_3:@
	unknown_4:	�)`
	unknown_5:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:����������
-
_user_specified_namesimple_rnn_11_input
�	
�
/__inference_sequential_10_layer_call_fn_1782702

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
�� 
	unknown_2:�@
	unknown_3:@
	unknown_4:	�)`
	unknown_5:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782555o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_1782331

inputs1
matmul_readvariableop_resource:	�)`-
biasadd_readvariableop_resource:`
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�)`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������`w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������)
 
_user_specified_nameinputs
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_1783510

inputs1
matmul_readvariableop_resource:	�)`-
biasadd_readvariableop_resource:`
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�)`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������`w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������)
 
_user_specified_nameinputs
�h
�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782834

inputsR
?simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource:	�O
@simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resource:	�U
Asimple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource:
��K
4conv1d_8_conv1d_expanddims_1_readvariableop_resource:�@6
(conv1d_8_biasadd_readvariableop_resource:@9
&dense_4_matmul_readvariableop_resource:	�)`5
'dense_4_biasadd_readvariableop_resource:`
identity��conv1d_8/BiasAdd/ReadVariableOp�+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp�6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp�8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp�simple_rnn_11/whileI
simple_rnn_11/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_sliceStridedSlicesimple_rnn_11/Shape:output:0*simple_rnn_11/strided_slice/stack:output:0,simple_rnn_11/strided_slice/stack_1:output:0,simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
simple_rnn_11/zeros/packedPack$simple_rnn_11/strided_slice:output:0%simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_11/zerosFill#simple_rnn_11/zeros/packed:output:0"simple_rnn_11/zeros/Const:output:0*
T0*(
_output_shapes
:����������q
simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_11/transpose	Transposeinputs%simple_rnn_11/transpose/perm:output:0*
T0*,
_output_shapes
:����������`
simple_rnn_11/Shape_1Shapesimple_rnn_11/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_slice_1StridedSlicesimple_rnn_11/Shape_1:output:0,simple_rnn_11/strided_slice_1/stack:output:0.simple_rnn_11/strided_slice_1/stack_1:output:0.simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_11/TensorArrayV2TensorListReserve2simple_rnn_11/TensorArrayV2/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_11/transpose:y:0Lsimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_slice_2StridedSlicesimple_rnn_11/transpose:y:0,simple_rnn_11/strided_slice_2/stack:output:0.simple_rnn_11/strided_slice_2/stack_1:output:0.simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp?simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
'simple_rnn_11/simple_rnn_cell_12/MatMulMatMul&simple_rnn_11/strided_slice_2:output:0>simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(simple_rnn_11/simple_rnn_cell_12/BiasAddBiasAdd1simple_rnn_11/simple_rnn_cell_12/MatMul:product:0?simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)simple_rnn_11/simple_rnn_cell_12/MatMul_1MatMulsimple_rnn_11/zeros:output:0@simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$simple_rnn_11/simple_rnn_cell_12/addAddV21simple_rnn_11/simple_rnn_cell_12/BiasAdd:output:03simple_rnn_11/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
%simple_rnn_11/simple_rnn_cell_12/ReluRelu(simple_rnn_11/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������|
+simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
simple_rnn_11/TensorArrayV2_1TensorListReserve4simple_rnn_11/TensorArrayV2_1/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_11/whileWhile)simple_rnn_11/while/loop_counter:output:0/simple_rnn_11/while/maximum_iterations:output:0simple_rnn_11/time:output:0&simple_rnn_11/TensorArrayV2_1:handle:0simple_rnn_11/zeros:output:0&simple_rnn_11/strided_slice_1:output:0Esimple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_11_simple_rnn_cell_12_matmul_readvariableop_resource@simple_rnn_11_simple_rnn_cell_12_biasadd_readvariableop_resourceAsimple_rnn_11_simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_11_while_body_1782744*,
cond$R"
 simple_rnn_11_while_cond_1782743*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
0simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_11/while:output:3Gsimple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�����������*
element_dtype0v
#simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_11/strided_slice_3StridedSlice9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_11/strided_slice_3/stack:output:0.simple_rnn_11/strided_slice_3/stack_1:output:0.simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masks
simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_11/transpose_1	Transpose9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_11/transpose_1/perm:output:0*
T0*-
_output_shapes
:�����������i
conv1d_8/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_8/Conv1D/ExpandDims
ExpandDimssimple_rnn_11/transpose_1:y:0'conv1d_8/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�@*
dtype0b
 conv1d_8/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_8/Conv1D/ExpandDims_1
ExpandDims3conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�@�
conv1d_8/Conv1DConv2D#conv1d_8/Conv1D/ExpandDims:output:0%conv1d_8/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
conv1d_8/Conv1D/SqueezeSqueezeconv1d_8/Conv1D:output:0*
T0*,
_output_shapes
:����������@*
squeeze_dims

����������
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv1d_8/BiasAddBiasAdd conv1d_8/Conv1D/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@g
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*,
_output_shapes
:����������@`
max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
max_pooling1d_4/ExpandDims
ExpandDimsconv1d_8/Relu:activations:0'max_pooling1d_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������@�
max_pooling1d_4/MaxPoolMaxPool#max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:���������S@*
ksize
*
paddingVALID*
strides
�
max_pooling1d_4/SqueezeSqueeze max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:���������S@*
squeeze_dims
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_2/ReshapeReshape max_pooling1d_4/Squeeze:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:����������)�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�)`*
dtype0�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`g
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������`�
NoOpNoOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp8^simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp7^simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp9^simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp^simple_rnn_11/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2r
7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp7simple_rnn_11/simple_rnn_cell_12/BiasAdd/ReadVariableOp2p
6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp6simple_rnn_11/simple_rnn_cell_12/MatMul/ReadVariableOp2t
8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp8simple_rnn_11/simple_rnn_cell_12/MatMul_1/ReadVariableOp2*
simple_rnn_11/whilesimple_rnn_11/while:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�4
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1781985

inputs-
simple_rnn_cell_12_1781910:	�)
simple_rnn_cell_12_1781912:	�.
simple_rnn_cell_12_1781914:
��
identity��*simple_rnn_cell_12/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_12_1781910simple_rnn_cell_12_1781912simple_rnn_cell_12_1781914*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1781909n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_12_1781910simple_rnn_cell_12_1781912simple_rnn_cell_12_1781914*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1781922*
condR
while_cond_1781921*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:�������������������{
NoOpNoOp+^simple_rnn_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_12/StatefulPartitionedCall*simple_rnn_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_1783267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1783267___redundant_placeholder05
1while_while_cond_1783267___redundant_placeholder15
1while_while_cond_1783267___redundant_placeholder25
1while_while_cond_1783267___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
h
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1782165

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+����������������������������
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+���������������������������*
ksize
*
paddingVALID*
strides
�
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'���������������������������*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_1782319

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������)Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������)"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������S@:S O
+
_output_shapes
:���������S@
 
_user_specified_nameinputs
�=
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782502

inputsD
1simple_rnn_cell_12_matmul_readvariableop_resource:	�A
2simple_rnn_cell_12_biasadd_readvariableop_resource:	�G
3simple_rnn_cell_12_matmul_1_readvariableop_resource:
��
identity��)simple_rnn_cell_12/BiasAdd/ReadVariableOp�(simple_rnn_cell_12/MatMul/ReadVariableOp�*simple_rnn_cell_12/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������n
simple_rnn_cell_12/ReluRelusimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1782436*
condR
while_cond_1782435*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:�����������d
IdentityIdentitytranspose_1:y:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1783467

inputsB
+conv1d_expanddims_1_readvariableop_resource:�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�@�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������@*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������@U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������@f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������@�
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�!
�
while_body_1781922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
"while_simple_rnn_cell_12_1781944_0:	�1
"while_simple_rnn_cell_12_1781946_0:	�6
"while_simple_rnn_cell_12_1781948_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
 while_simple_rnn_cell_12_1781944:	�/
 while_simple_rnn_cell_12_1781946:	�4
 while_simple_rnn_cell_12_1781948:
����0while/simple_rnn_cell_12/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_12_1781944_0"while_simple_rnn_cell_12_1781946_0"while_simple_rnn_cell_12_1781948_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1781909�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity9while/simple_rnn_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������

while/NoOpNoOp1^while/simple_rnn_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_12_1781944"while_simple_rnn_cell_12_1781944_0"F
 while_simple_rnn_cell_12_1781946"while_simple_rnn_cell_12_1781946_0"F
 while_simple_rnn_cell_12_1781948"while_simple_rnn_cell_12_1781948_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2d
0while/simple_rnn_cell_12/StatefulPartitionedCall0while/simple_rnn_cell_12/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_dense_4_layer_call_fn_1783500

inputs
unknown:	�)`
	unknown_0:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1782331o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������): : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������)
 
_user_specified_nameinputs
�
�
while_cond_1783051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1783051___redundant_placeholder05
1while_while_cond_1783051___redundant_placeholder15
1while_while_cond_1783051___redundant_placeholder25
1while_while_cond_1783051___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�>
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783118
inputs_0D
1simple_rnn_cell_12_matmul_readvariableop_resource:	�A
2simple_rnn_cell_12_biasadd_readvariableop_resource:	�G
3simple_rnn_cell_12_matmul_1_readvariableop_resource:
��
identity��)simple_rnn_cell_12/BiasAdd/ReadVariableOp�(simple_rnn_cell_12/MatMul/ReadVariableOp�*simple_rnn_cell_12/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������n
simple_rnn_cell_12/ReluRelusimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1783052*
condR
while_cond_1783051*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�-
�
while_body_1783268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�I
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�O
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_12_matmul_readvariableop_resource:	�G
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�M
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_12/MatMul/ReadVariableOp�0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������z
while/simple_rnn_cell_12/ReluRelu while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity+while/simple_rnn_cell_12/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�-
�
while_body_1783160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�I
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�O
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_12_matmul_readvariableop_resource:	�G
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�M
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_12/MatMul/ReadVariableOp�0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������z
while/simple_rnn_cell_12/ReluRelu while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity+while/simple_rnn_cell_12/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�-
�
while_body_1782436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�I
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�O
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_12_matmul_readvariableop_resource:	�G
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�M
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_12/MatMul/ReadVariableOp�0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������z
while/simple_rnn_cell_12/ReluRelu while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity+while/simple_rnn_cell_12/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�!
�
while_body_1782081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
"while_simple_rnn_cell_12_1782103_0:	�1
"while_simple_rnn_cell_12_1782105_0:	�6
"while_simple_rnn_cell_12_1782107_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
 while_simple_rnn_cell_12_1782103:	�/
 while_simple_rnn_cell_12_1782105:	�4
 while_simple_rnn_cell_12_1782107:
����0while/simple_rnn_cell_12/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_12_1782103_0"while_simple_rnn_cell_12_1782105_0"while_simple_rnn_cell_12_1782107_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1782029�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity9while/simple_rnn_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������

while/NoOpNoOp1^while/simple_rnn_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_12_1782103"while_simple_rnn_cell_12_1782103_0"F
 while_simple_rnn_cell_12_1782105"while_simple_rnn_cell_12_1782105_0"F
 while_simple_rnn_cell_12_1782107"while_simple_rnn_cell_12_1782107_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2d
0while/simple_rnn_cell_12/StatefulPartitionedCall0while/simple_rnn_cell_12/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782637
simple_rnn_11_input(
simple_rnn_11_1782617:	�$
simple_rnn_11_1782619:	�)
simple_rnn_11_1782621:
��'
conv1d_8_1782624:�@
conv1d_8_1782626:@"
dense_4_1782631:	�)`
dense_4_1782633:`
identity�� conv1d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�%simple_rnn_11/StatefulPartitionedCall�
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputsimple_rnn_11_1782617simple_rnn_11_1782619simple_rnn_11_1782621*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1782502�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0conv1d_8_1782624conv1d_8_1782626*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1782306�
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1782165�
flatten_2/PartitionedCallPartitionedCall(max_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������)* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1782319�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_1782631dense_4_1782633*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1782331w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`�
NoOpNoOp!^conv1d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:a ]
,
_output_shapes
:����������
-
_user_specified_namesimple_rnn_11_input
�
h
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1783480

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+����������������������������
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+���������������������������*
ksize
*
paddingVALID*
strides
�
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'���������������������������*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783555

inputs
states_01
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
ReluReluadd:z:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
while_cond_1783159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1783159___redundant_placeholder05
1while_while_cond_1783159___redundant_placeholder15
1while_while_cond_1783159___redundant_placeholder25
1while_while_cond_1783159___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�-
�
while_body_1783052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
9while_simple_rnn_cell_12_matmul_readvariableop_resource_0:	�I
:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0:	�O
;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
7while_simple_rnn_cell_12_matmul_readvariableop_resource:	�G
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:	�M
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource:
����/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_12/MatMul/ReadVariableOp�0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/simple_rnn_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
 while/simple_rnn_cell_12/BiasAddBiasAdd)while/simple_rnn_cell_12/MatMul:product:07while/simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
!while/simple_rnn_cell_12/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_12/addAddV2)while/simple_rnn_cell_12/BiasAdd:output:0+while/simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������z
while/simple_rnn_cell_12/ReluRelu while/simple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder+while/simple_rnn_cell_12/Relu:activations:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity+while/simple_rnn_cell_12/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp0^while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_12/MatMul/ReadVariableOp1^while/simple_rnn_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_12_biasadd_readvariableop_resource:while_simple_rnn_cell_12_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_12_matmul_1_readvariableop_resource;while_simple_rnn_cell_12_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_12_matmul_readvariableop_resource9while_simple_rnn_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp/while/simple_rnn_cell_12/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_12/MatMul/ReadVariableOp.while/simple_rnn_cell_12/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp0while/simple_rnn_cell_12/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_simple_rnn_11_layer_call_fn_1782977
inputs_0
unknown:	�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1781985}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�

�
 simple_rnn_11_while_cond_17827438
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_2:
6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782743___redundant_placeholder0Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782743___redundant_placeholder1Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782743___redundant_placeholder2Q
Msimple_rnn_11_while_simple_rnn_11_while_cond_1782743___redundant_placeholder3 
simple_rnn_11_while_identity
�
simple_rnn_11/while/LessLesssimple_rnn_11_while_placeholder6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�=
�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783442

inputsD
1simple_rnn_cell_12_matmul_readvariableop_resource:	�A
2simple_rnn_cell_12_biasadd_readvariableop_resource:	�G
3simple_rnn_cell_12_matmul_1_readvariableop_resource:
��
identity��)simple_rnn_cell_12/BiasAdd/ReadVariableOp�(simple_rnn_cell_12/MatMul/ReadVariableOp�*simple_rnn_cell_12/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_12/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_12_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
simple_rnn_cell_12/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_12/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_12/BiasAddBiasAdd#simple_rnn_cell_12/MatMul:product:01simple_rnn_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*simple_rnn_cell_12/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_12_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_12/MatMul_1MatMulzeros:output:02simple_rnn_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_12/addAddV2#simple_rnn_cell_12/BiasAdd:output:0%simple_rnn_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:����������n
simple_rnn_cell_12/ReluRelusimple_rnn_cell_12/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_12_matmul_readvariableop_resource2simple_rnn_cell_12_biasadd_readvariableop_resource3simple_rnn_cell_12_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1783376*
condR
while_cond_1783375*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:�����������d
IdentityIdentitytranspose_1:y:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp*^simple_rnn_cell_12/BiasAdd/ReadVariableOp)^simple_rnn_cell_12/MatMul/ReadVariableOp+^simple_rnn_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2V
)simple_rnn_cell_12/BiasAdd/ReadVariableOp)simple_rnn_cell_12/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_12/MatMul/ReadVariableOp(simple_rnn_cell_12/MatMul/ReadVariableOp2X
*simple_rnn_cell_12/MatMul_1/ReadVariableOp*simple_rnn_cell_12/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
4__inference_simple_rnn_cell_12_layer_call_fn_1783524

inputs
states_0
unknown:	�
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1781909p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
X
simple_rnn_11_inputA
%serving_default_simple_rnn_11_input:0����������;
dense_40
StatefulPartitionedCall:0���������`tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
Q
40
51
62
3
4
25
36"
trackable_list_wrapper
Q
40
51
62
3
4
25
36"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
<trace_0
=trace_1
>trace_2
?trace_32�
/__inference_sequential_10_layer_call_fn_1782355
/__inference_sequential_10_layer_call_fn_1782683
/__inference_sequential_10_layer_call_fn_1782702
/__inference_sequential_10_layer_call_fn_1782591�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z<trace_0z=trace_1z>trace_2z?trace_3
�
@trace_0
Atrace_1
Btrace_2
Ctrace_32�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782834
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782966
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782614
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782637�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z@trace_0zAtrace_1zBtrace_2zCtrace_3
�B�
"__inference__wrapped_model_1781861simple_rnn_11_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_ratem�m�2m�3m�4m�5m�6m�v�v�2v�3v�4v�5v�6v�"
	optimizer
,
Iserving_default"
signature_map
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ptrace_0
Qtrace_1
Rtrace_2
Strace_32�
/__inference_simple_rnn_11_layer_call_fn_1782977
/__inference_simple_rnn_11_layer_call_fn_1782988
/__inference_simple_rnn_11_layer_call_fn_1782999
/__inference_simple_rnn_11_layer_call_fn_1783010�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zPtrace_0zQtrace_1zRtrace_2zStrace_3
�
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783118
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783226
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783334
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783442�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator

4kernel
5recurrent_kernel
6bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
dtrace_02�
*__inference_conv1d_8_layer_call_fn_1783451�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zdtrace_0
�
etrace_02�
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1783467�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zetrace_0
&:$�@2conv1d_8/kernel
:@2conv1d_8/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
ktrace_02�
1__inference_max_pooling1d_4_layer_call_fn_1783472�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0
�
ltrace_02�
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1783480�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
rtrace_02�
+__inference_flatten_2_layer_call_fn_1783485�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
�
strace_02�
F__inference_flatten_2_layer_call_and_return_conditional_losses_1783491�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
ytrace_02�
)__inference_dense_4_layer_call_fn_1783500�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0
�
ztrace_02�
D__inference_dense_4_layer_call_and_return_conditional_losses_1783510�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zztrace_0
!:	�)`2dense_4/kernel
:`2dense_4/bias
::8	�2'simple_rnn_11/simple_rnn_cell_12/kernel
E:C
��21simple_rnn_11/simple_rnn_cell_12/recurrent_kernel
4:2�2%simple_rnn_11/simple_rnn_cell_12/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_sequential_10_layer_call_fn_1782355simple_rnn_11_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
/__inference_sequential_10_layer_call_fn_1782683inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
/__inference_sequential_10_layer_call_fn_1782702inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
/__inference_sequential_10_layer_call_fn_1782591simple_rnn_11_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782834inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782966inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782614simple_rnn_11_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782637simple_rnn_11_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
%__inference_signature_wrapper_1782664simple_rnn_11_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_simple_rnn_11_layer_call_fn_1782977inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
/__inference_simple_rnn_11_layer_call_fn_1782988inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
/__inference_simple_rnn_11_layer_call_fn_1782999inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
/__inference_simple_rnn_11_layer_call_fn_1783010inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783118inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783226inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783334inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783442inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_simple_rnn_cell_12_layer_call_fn_1783524
4__inference_simple_rnn_cell_12_layer_call_fn_1783538�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783555
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783572�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv1d_8_layer_call_fn_1783451inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1783467inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling1d_4_layer_call_fn_1783472inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1783480inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_flatten_2_layer_call_fn_1783485inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_2_layer_call_and_return_conditional_losses_1783491inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_4_layer_call_fn_1783500inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_4_layer_call_and_return_conditional_losses_1783510inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_simple_rnn_cell_12_layer_call_fn_1783524inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
4__inference_simple_rnn_cell_12_layer_call_fn_1783538inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783555inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783572inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
+:)�@2Adam/conv1d_8/kernel/m
 :@2Adam/conv1d_8/bias/m
&:$	�)`2Adam/dense_4/kernel/m
:`2Adam/dense_4/bias/m
?:=	�2.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/m
J:H
��28Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/m
9:7�2,Adam/simple_rnn_11/simple_rnn_cell_12/bias/m
+:)�@2Adam/conv1d_8/kernel/v
 :@2Adam/conv1d_8/bias/v
&:$	�)`2Adam/dense_4/kernel/v
:`2Adam/dense_4/bias/v
?:=	�2.Adam/simple_rnn_11/simple_rnn_cell_12/kernel/v
J:H
��28Adam/simple_rnn_11/simple_rnn_cell_12/recurrent_kernel/v
9:7�2,Adam/simple_rnn_11/simple_rnn_cell_12/bias/v�
"__inference__wrapped_model_178186146523A�>
7�4
2�/
simple_rnn_11_input����������
� "1�.
,
dense_4!�
dense_4���������`�
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1783467g5�2
+�(
&�#
inputs�����������
� "*�'
 �
0����������@
� �
*__inference_conv1d_8_layer_call_fn_1783451Z5�2
+�(
&�#
inputs�����������
� "�����������@�
D__inference_dense_4_layer_call_and_return_conditional_losses_1783510]230�-
&�#
!�
inputs����������)
� "%�"
�
0���������`
� }
)__inference_dense_4_layer_call_fn_1783500P230�-
&�#
!�
inputs����������)
� "����������`�
F__inference_flatten_2_layer_call_and_return_conditional_losses_1783491]3�0
)�&
$�!
inputs���������S@
� "&�#
�
0����������)
� 
+__inference_flatten_2_layer_call_fn_1783485P3�0
)�&
$�!
inputs���������S@
� "�����������)�
L__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_1783480�E�B
;�8
6�3
inputs'���������������������������
� ";�8
1�.
0'���������������������������
� �
1__inference_max_pooling1d_4_layer_call_fn_1783472wE�B
;�8
6�3
inputs'���������������������������
� ".�+'����������������������������
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782614{46523I�F
?�<
2�/
simple_rnn_11_input����������
p 

 
� "%�"
�
0���������`
� �
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782637{46523I�F
?�<
2�/
simple_rnn_11_input����������
p

 
� "%�"
�
0���������`
� �
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782834n46523<�9
2�/
%�"
inputs����������
p 

 
� "%�"
�
0���������`
� �
J__inference_sequential_10_layer_call_and_return_conditional_losses_1782966n46523<�9
2�/
%�"
inputs����������
p

 
� "%�"
�
0���������`
� �
/__inference_sequential_10_layer_call_fn_1782355n46523I�F
?�<
2�/
simple_rnn_11_input����������
p 

 
� "����������`�
/__inference_sequential_10_layer_call_fn_1782591n46523I�F
?�<
2�/
simple_rnn_11_input����������
p

 
� "����������`�
/__inference_sequential_10_layer_call_fn_1782683a46523<�9
2�/
%�"
inputs����������
p 

 
� "����������`�
/__inference_sequential_10_layer_call_fn_1782702a46523<�9
2�/
%�"
inputs����������
p

 
� "����������`�
%__inference_signature_wrapper_1782664�46523X�U
� 
N�K
I
simple_rnn_11_input2�/
simple_rnn_11_input����������"1�.
,
dense_4!�
dense_4���������`�
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783118�465O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "3�0
)�&
0�������������������
� �
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783226�465O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "3�0
)�&
0�������������������
� �
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783334t465@�=
6�3
%�"
inputs����������

 
p 

 
� "+�(
!�
0�����������
� �
J__inference_simple_rnn_11_layer_call_and_return_conditional_losses_1783442t465@�=
6�3
%�"
inputs����������

 
p

 
� "+�(
!�
0�����������
� �
/__inference_simple_rnn_11_layer_call_fn_1782977~465O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "&�#��������������������
/__inference_simple_rnn_11_layer_call_fn_1782988~465O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "&�#��������������������
/__inference_simple_rnn_11_layer_call_fn_1782999g465@�=
6�3
%�"
inputs����������

 
p 

 
� "�������������
/__inference_simple_rnn_11_layer_call_fn_1783010g465@�=
6�3
%�"
inputs����������

 
p

 
� "�������������
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783555�465]�Z
S�P
 �
inputs���������
(�%
#� 
states/0����������
p 
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
O__inference_simple_rnn_cell_12_layer_call_and_return_conditional_losses_1783572�465]�Z
S�P
 �
inputs���������
(�%
#� 
states/0����������
p
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
4__inference_simple_rnn_cell_12_layer_call_fn_1783524�465]�Z
S�P
 �
inputs���������
(�%
#� 
states/0����������
p 
� "F�C
�
0����������
#� 
�
1/0�����������
4__inference_simple_rnn_cell_12_layer_call_fn_1783538�465]�Z
S�P
 �
inputs���������
(�%
#� 
states/0����������
p
� "F�C
�
0����������
#� 
�
1/0����������