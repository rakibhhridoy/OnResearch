Ț
��
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
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
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
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
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
-
Tanh
x"T
y"T"
Ttype:

2
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
�"serve*2.12.02unknown8��
�
,Adam/simple_rnn_16/simple_rnn_cell_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_16/simple_rnn_cell_16/bias/v
�
@Adam/simple_rnn_16/simple_rnn_cell_16/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_16/simple_rnn_cell_16/bias/v*
_output_shapes
:@*
dtype0
�
8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/v
�
LAdam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
�
.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/v
�
BAdam/simple_rnn_16/simple_rnn_cell_16/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_84/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_84/bias/v
y
(Adam/dense_84/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_84/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_84/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_84/kernel/v
�
*Adam/dense_84/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_84/kernel/v*
_output_shapes

:@*
dtype0
�
,Adam/simple_rnn_16/simple_rnn_cell_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_16/simple_rnn_cell_16/bias/m
�
@Adam/simple_rnn_16/simple_rnn_cell_16/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_16/simple_rnn_cell_16/bias/m*
_output_shapes
:@*
dtype0
�
8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/m
�
LAdam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
�
.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/m
�
BAdam/simple_rnn_16/simple_rnn_cell_16/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_84/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_84/bias/m
y
(Adam/dense_84/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_84/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_84/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_84/kernel/m
�
*Adam/dense_84/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_84/kernel/m*
_output_shapes

:@*
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
%simple_rnn_16/simple_rnn_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%simple_rnn_16/simple_rnn_cell_16/bias
�
9simple_rnn_16/simple_rnn_cell_16/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_16/simple_rnn_cell_16/bias*
_output_shapes
:@*
dtype0
�
1simple_rnn_16/simple_rnn_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*B
shared_name31simple_rnn_16/simple_rnn_cell_16/recurrent_kernel
�
Esimple_rnn_16/simple_rnn_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_16/simple_rnn_cell_16/recurrent_kernel*
_output_shapes

:@@*
dtype0
�
'simple_rnn_16/simple_rnn_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'simple_rnn_16/simple_rnn_cell_16/kernel
�
;simple_rnn_16/simple_rnn_cell_16/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_16/simple_rnn_cell_16/kernel*
_output_shapes

:@*
dtype0
r
dense_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_84/bias
k
!dense_84/bias/Read/ReadVariableOpReadVariableOpdense_84/bias*
_output_shapes
:*
dtype0
z
dense_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_84/kernel
s
#dense_84/kernel/Read/ReadVariableOpReadVariableOpdense_84/kernel*
_output_shapes

:@*
dtype0
�
serving_default_input_19Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_19'simple_rnn_16/simple_rnn_cell_16/kernel%simple_rnn_16/simple_rnn_cell_16/bias1simple_rnn_16/simple_rnn_cell_16/recurrent_kerneldense_84/kerneldense_84/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_3967782

NoOpNoOp
�2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�2
value�2B�2 B�2
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias*
'
$0
%1
&2
"3
#4*
'
$0
%1
&2
"3
#4*
* 
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
,trace_0
-trace_1
.trace_2
/trace_3* 
6
0trace_0
1trace_1
2trace_2
3trace_3* 
* 
�
4iter

5beta_1

6beta_2
	7decay
8learning_rate"mr#ms$mt%mu&mv"vw#vx$vy%vz&v{*

9serving_default* 

$0
%1
&2*

$0
%1
&2*
* 
�

:states
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
@trace_0
Atrace_1
Btrace_2
Ctrace_3* 
6
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_3* 
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator

$kernel
%recurrent_kernel
&bias*
* 
* 
* 
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Ttrace_0
Utrace_1* 

Vtrace_0
Wtrace_1* 
* 

"0
#1*

"0
#1*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
_Y
VARIABLE_VALUEdense_84/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_84/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'simple_rnn_16/simple_rnn_cell_16/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1simple_rnn_16/simple_rnn_cell_16/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_16/simple_rnn_cell_16/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

_0
`1*
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

0*
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
$0
%1
&2*

$0
%1
&2*
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

ftrace_0
gtrace_1* 

htrace_0
itrace_1* 
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
8
j	variables
k	keras_api
	ltotal
	mcount*
8
n	variables
o	keras_api
	ptotal
	qcount*
* 
* 
* 
* 
* 
* 
* 
* 
* 

l0
m1*

j	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

p0
q1*

n	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_84/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_84/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_16/simple_rnn_cell_16/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_84/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_84/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_16/simple_rnn_cell_16/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_84/kerneldense_84/bias'simple_rnn_16/simple_rnn_cell_16/kernel1simple_rnn_16/simple_rnn_cell_16/recurrent_kernel%simple_rnn_16/simple_rnn_cell_16/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_84/kernel/mAdam/dense_84/bias/m.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/m8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/m,Adam/simple_rnn_16/simple_rnn_cell_16/bias/mAdam/dense_84/kernel/vAdam/dense_84/bias/v.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/v8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/v,Adam/simple_rnn_16/simple_rnn_cell_16/bias/vConst*%
Tin
2*
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
 __inference__traced_save_3968812
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_84/kerneldense_84/bias'simple_rnn_16/simple_rnn_cell_16/kernel1simple_rnn_16/simple_rnn_cell_16/recurrent_kernel%simple_rnn_16/simple_rnn_cell_16/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_84/kernel/mAdam/dense_84/bias/m.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/m8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/m,Adam/simple_rnn_16/simple_rnn_cell_16/bias/mAdam/dense_84/kernel/vAdam/dense_84/bias/v.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/v8Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/v,Adam/simple_rnn_16/simple_rnn_cell_16/bias/v*$
Tin
2*
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
#__inference__traced_restore_3968894��
۷
�
 __inference__traced_save_3968812
file_prefix8
&read_disablecopyonread_dense_84_kernel:@4
&read_1_disablecopyonread_dense_84_bias:R
@read_2_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_kernel:@\
Jread_3_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel:@@L
>read_4_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_bias:@,
"read_5_disablecopyonread_adam_iter:	 .
$read_6_disablecopyonread_adam_beta_1: .
$read_7_disablecopyonread_adam_beta_2: -
#read_8_disablecopyonread_adam_decay: 5
+read_9_disablecopyonread_adam_learning_rate: +
!read_10_disablecopyonread_total_1: +
!read_11_disablecopyonread_count_1: )
read_12_disablecopyonread_total: )
read_13_disablecopyonread_count: B
0read_14_disablecopyonread_adam_dense_84_kernel_m:@<
.read_15_disablecopyonread_adam_dense_84_bias_m:Z
Hread_16_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_kernel_m:@d
Rread_17_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_m:@@T
Fread_18_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_bias_m:@B
0read_19_disablecopyonread_adam_dense_84_kernel_v:@<
.read_20_disablecopyonread_adam_dense_84_bias_v:Z
Hread_21_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_kernel_v:@d
Rread_22_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_v:@@T
Fread_23_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_bias_v:@
savev2_const
identity_49��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_84_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_84_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:@z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_84_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_84_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead@read_2_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp@read_2_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_3/DisableCopyOnReadDisableCopyOnReadJread_3_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpJread_3_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:@@�
Read_4/DisableCopyOnReadDisableCopyOnRead>read_4_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp>read_4_disablecopyonread_simple_rnn_16_simple_rnn_cell_16_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:@v
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp"read_5_disablecopyonread_adam_iter^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_adam_beta_1^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_adam_beta_2^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: w
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_adam_decay^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_9/DisableCopyOnReadDisableCopyOnRead+read_9_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp+read_9_disablecopyonread_adam_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_10/DisableCopyOnReadDisableCopyOnRead!read_10_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp!read_10_disablecopyonread_total_1^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_11/DisableCopyOnReadDisableCopyOnRead!read_11_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp!read_11_disablecopyonread_count_1^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_12/DisableCopyOnReadDisableCopyOnReadread_12_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpread_12_disablecopyonread_total^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_13/DisableCopyOnReadDisableCopyOnReadread_13_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpread_13_disablecopyonread_count^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_dense_84_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_dense_84_kernel_m^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_dense_84_bias_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_dense_84_bias_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnReadHread_16_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOpHread_16_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_kernel_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_17/DisableCopyOnReadDisableCopyOnReadRread_17_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpRread_17_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:@@�
Read_18/DisableCopyOnReadDisableCopyOnReadFread_18_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_bias_m"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOpFread_18_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_bias_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_dense_84_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_dense_84_kernel_v^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_dense_84_bias_v"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_dense_84_bias_v^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnReadHread_21_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOpHread_21_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_kernel_v^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_22/DisableCopyOnReadDisableCopyOnReadRread_22_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOpRread_22_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_v^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:@@�
Read_23/DisableCopyOnReadDisableCopyOnReadFread_23_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_bias_v"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpFread_23_disablecopyonread_adam_simple_rnn_16_simple_rnn_cell_16_bias_v^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_48Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_49IdentityIdentity_48:output:0^NoOp*
T0*
_output_shapes
: �

NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_49Identity_49:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
�?
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968317
inputs_0C
1simple_rnn_cell_16_matmul_readvariableop_resource:@@
2simple_rnn_cell_16_biasadd_readvariableop_resource:@E
3simple_rnn_cell_16_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_16/BiasAdd/ReadVariableOp�(simple_rnn_cell_16/MatMul/ReadVariableOp�*simple_rnn_cell_16/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
(simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_16/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_16/BiasAddBiasAdd#simple_rnn_cell_16/MatMul:product:01simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_16/MatMul_1MatMulzeros:output:02simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_16/addAddV2#simple_rnn_cell_16/BiasAdd:output:0%simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_16/TanhTanhsimple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_16_matmul_readvariableop_resource2simple_rnn_cell_16_biasadd_readvariableop_resource3simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3968250*
condR
while_cond_3968249*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_16/BiasAdd/ReadVariableOp)^simple_rnn_cell_16/MatMul/ReadVariableOp+^simple_rnn_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_16/BiasAdd/ReadVariableOp)simple_rnn_cell_16/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_16/MatMul/ReadVariableOp(simple_rnn_cell_16/MatMul/ReadVariableOp2X
*simple_rnn_cell_16/MatMul_1/ReadVariableOp*simple_rnn_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�>
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967601

inputsC
1simple_rnn_cell_16_matmul_readvariableop_resource:@@
2simple_rnn_cell_16_biasadd_readvariableop_resource:@E
3simple_rnn_cell_16_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_16/BiasAdd/ReadVariableOp�(simple_rnn_cell_16/MatMul/ReadVariableOp�*simple_rnn_cell_16/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
(simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_16/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_16/BiasAddBiasAdd#simple_rnn_cell_16/MatMul:product:01simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_16/MatMul_1MatMulzeros:output:02simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_16/addAddV2#simple_rnn_cell_16/BiasAdd:output:0%simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_16/TanhTanhsimple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_16_matmul_readvariableop_resource2simple_rnn_cell_16_biasadd_readvariableop_resource3simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3967534*
condR
while_cond_3967533*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_16/BiasAdd/ReadVariableOp)^simple_rnn_cell_16/MatMul/ReadVariableOp+^simple_rnn_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_16/BiasAdd/ReadVariableOp)simple_rnn_cell_16/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_16/MatMul/ReadVariableOp(simple_rnn_cell_16/MatMul/ReadVariableOp2X
*simple_rnn_cell_16/MatMul_1/ReadVariableOp*simple_rnn_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�.
�
while_body_3967534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_16_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_16/MatMul/ReadVariableOp�0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_16/BiasAddBiasAdd)while/simple_rnn_cell_16/MatMul:product:07while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_16/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_16/addAddV2)while/simple_rnn_cell_16/BiasAdd:output:0+while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_16/TanhTanh while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_16/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_16/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_16/MatMul/ReadVariableOp1^while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_16_matmul_readvariableop_resource9while_simple_rnn_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_16/MatMul/ReadVariableOp.while/simple_rnn_cell_16/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�<
�
 simple_rnn_16_while_body_39678558
4simple_rnn_16_while_simple_rnn_16_while_loop_counter>
:simple_rnn_16_while_simple_rnn_16_while_maximum_iterations#
simple_rnn_16_while_placeholder%
!simple_rnn_16_while_placeholder_1%
!simple_rnn_16_while_placeholder_27
3simple_rnn_16_while_simple_rnn_16_strided_slice_1_0s
osimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@V
Hsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@[
Isimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@ 
simple_rnn_16_while_identity"
simple_rnn_16_while_identity_1"
simple_rnn_16_while_identity_2"
simple_rnn_16_while_identity_3"
simple_rnn_16_while_identity_45
1simple_rnn_16_while_simple_rnn_16_strided_slice_1q
msimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource:@T
Fsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource:@Y
Gsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp�>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
Esimple_rnn_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_16_while_placeholderNsimple_rnn_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
-simple_rnn_16/while/simple_rnn_cell_16/MatMulMatMul>simple_rnn_16/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
.simple_rnn_16/while/simple_rnn_cell_16/BiasAddBiasAdd7simple_rnn_16/while/simple_rnn_cell_16/MatMul:product:0Esimple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1MatMul!simple_rnn_16_while_placeholder_2Fsimple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_16/while/simple_rnn_cell_16/addAddV27simple_rnn_16/while/simple_rnn_cell_16/BiasAdd:output:09simple_rnn_16/while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
+simple_rnn_16/while/simple_rnn_cell_16/TanhTanh.simple_rnn_16/while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_16/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
8simple_rnn_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_16_while_placeholder_1Gsimple_rnn_16/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_16/while/simple_rnn_cell_16/Tanh:y:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_16/while/addAddV2simple_rnn_16_while_placeholder"simple_rnn_16/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_16/while/add_1AddV24simple_rnn_16_while_simple_rnn_16_while_loop_counter$simple_rnn_16/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_16/while/IdentityIdentitysimple_rnn_16/while/add_1:z:0^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_1Identity:simple_rnn_16_while_simple_rnn_16_while_maximum_iterations^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_2Identitysimple_rnn_16/while/add:z:0^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_3IdentityHsimple_rnn_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_4Identity/simple_rnn_16/while/simple_rnn_cell_16/Tanh:y:0^simple_rnn_16/while/NoOp*
T0*'
_output_shapes
:���������@�
simple_rnn_16/while/NoOpNoOp>^simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp=^simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp?^simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_16_while_identity%simple_rnn_16/while/Identity:output:0"I
simple_rnn_16_while_identity_1'simple_rnn_16/while/Identity_1:output:0"I
simple_rnn_16_while_identity_2'simple_rnn_16/while/Identity_2:output:0"I
simple_rnn_16_while_identity_3'simple_rnn_16/while/Identity_3:output:0"I
simple_rnn_16_while_identity_4'simple_rnn_16/while/Identity_4:output:0"h
1simple_rnn_16_while_simple_rnn_16_strided_slice_13simple_rnn_16_while_simple_rnn_16_strided_slice_1_0"�
Fsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resourceHsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"�
Gsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resourceIsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"�
Esimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resourceGsimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0"�
msimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensorosimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2~
=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2|
<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp2�
>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_16/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_16/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�#
�
while_body_3967100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
"while_simple_rnn_cell_16_3967122_0:@0
"while_simple_rnn_cell_16_3967124_0:@4
"while_simple_rnn_cell_16_3967126_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
 while_simple_rnn_cell_16_3967122:@.
 while_simple_rnn_cell_16_3967124:@2
 while_simple_rnn_cell_16_3967126:@@��0while/simple_rnn_cell_16/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_16_3967122_0"while_simple_rnn_cell_16_3967124_0"while_simple_rnn_cell_16_3967126_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967086r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity9while/simple_rnn_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@

while/NoOpNoOp1^while/simple_rnn_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_16_3967122"while_simple_rnn_cell_16_3967122_0"F
 while_simple_rnn_cell_16_3967124"while_simple_rnn_cell_16_3967124_0"F
 while_simple_rnn_cell_16_3967126"while_simple_rnn_cell_16_3967126_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2d
0while/simple_rnn_cell_16/StatefulPartitionedCall0while/simple_rnn_cell_16/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�T
�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3968053

inputsQ
?simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource:@N
@simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resource:@S
Asimple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@9
'dense_84_matmul_readvariableop_resource:@6
(dense_84_biasadd_readvariableop_resource:
identity��dense_84/BiasAdd/ReadVariableOp�dense_84/MatMul/ReadVariableOp�7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp�6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp�8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp�simple_rnn_16/whileW
simple_rnn_16/ShapeShapeinputs*
T0*
_output_shapes
::��k
!simple_rnn_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_sliceStridedSlicesimple_rnn_16/Shape:output:0*simple_rnn_16/strided_slice/stack:output:0,simple_rnn_16/strided_slice/stack_1:output:0,simple_rnn_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
simple_rnn_16/zeros/packedPack$simple_rnn_16/strided_slice:output:0%simple_rnn_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_16/zerosFill#simple_rnn_16/zeros/packed:output:0"simple_rnn_16/zeros/Const:output:0*
T0*'
_output_shapes
:���������@q
simple_rnn_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_16/transpose	Transposeinputs%simple_rnn_16/transpose/perm:output:0*
T0*+
_output_shapes
:���������n
simple_rnn_16/Shape_1Shapesimple_rnn_16/transpose:y:0*
T0*
_output_shapes
::��m
#simple_rnn_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_slice_1StridedSlicesimple_rnn_16/Shape_1:output:0,simple_rnn_16/strided_slice_1/stack:output:0.simple_rnn_16/strided_slice_1/stack_1:output:0.simple_rnn_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_16/TensorArrayV2TensorListReserve2simple_rnn_16/TensorArrayV2/element_shape:output:0&simple_rnn_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_16/transpose:y:0Lsimple_rnn_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_slice_2StridedSlicesimple_rnn_16/transpose:y:0,simple_rnn_16/strided_slice_2/stack:output:0.simple_rnn_16/strided_slice_2/stack_1:output:0.simple_rnn_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp?simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'simple_rnn_16/simple_rnn_cell_16/MatMulMatMul&simple_rnn_16/strided_slice_2:output:0>simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
(simple_rnn_16/simple_rnn_cell_16/BiasAddBiasAdd1simple_rnn_16/simple_rnn_cell_16/MatMul:product:0?simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
)simple_rnn_16/simple_rnn_cell_16/MatMul_1MatMulsimple_rnn_16/zeros:output:0@simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$simple_rnn_16/simple_rnn_cell_16/addAddV21simple_rnn_16/simple_rnn_cell_16/BiasAdd:output:03simple_rnn_16/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
%simple_rnn_16/simple_rnn_cell_16/TanhTanh(simple_rnn_16/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@|
+simple_rnn_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   l
*simple_rnn_16/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_16/TensorArrayV2_1TensorListReserve4simple_rnn_16/TensorArrayV2_1/element_shape:output:03simple_rnn_16/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_16/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_16/whileWhile)simple_rnn_16/while/loop_counter:output:0/simple_rnn_16/while/maximum_iterations:output:0simple_rnn_16/time:output:0&simple_rnn_16/TensorArrayV2_1:handle:0simple_rnn_16/zeros:output:0&simple_rnn_16/strided_slice_1:output:0Esimple_rnn_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource@simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resourceAsimple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_16_while_body_3967979*,
cond$R"
 simple_rnn_16_while_cond_3967978*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
>simple_rnn_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
0simple_rnn_16/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_16/while:output:3Gsimple_rnn_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsv
#simple_rnn_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_slice_3StridedSlice9simple_rnn_16/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_16/strided_slice_3/stack:output:0.simple_rnn_16/strided_slice_3/stack_1:output:0.simple_rnn_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_masks
simple_rnn_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_16/transpose_1	Transpose9simple_rnn_16/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@y
dropout_19/IdentityIdentity&simple_rnn_16/strided_slice_3:output:0*
T0*'
_output_shapes
:���������@�
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_84/MatMulMatMuldropout_19/Identity:output:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_84/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp8^simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp7^simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp9^simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp^simple_rnn_16/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp2r
7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp2p
6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp2t
8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp2*
simple_rnn_16/whilesimple_rnn_16/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�>
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968427

inputsC
1simple_rnn_cell_16_matmul_readvariableop_resource:@@
2simple_rnn_cell_16_biasadd_readvariableop_resource:@E
3simple_rnn_cell_16_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_16/BiasAdd/ReadVariableOp�(simple_rnn_cell_16/MatMul/ReadVariableOp�*simple_rnn_cell_16/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
(simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_16/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_16/BiasAddBiasAdd#simple_rnn_cell_16/MatMul:product:01simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_16/MatMul_1MatMulzeros:output:02simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_16/addAddV2#simple_rnn_cell_16/BiasAdd:output:0%simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_16/TanhTanhsimple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_16_matmul_readvariableop_resource2simple_rnn_cell_16_biasadd_readvariableop_resource3simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3968360*
condR
while_cond_3968359*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_16/BiasAdd/ReadVariableOp)^simple_rnn_cell_16/MatMul/ReadVariableOp+^simple_rnn_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_16/BiasAdd/ReadVariableOp)simple_rnn_cell_16/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_16/MatMul/ReadVariableOp(simple_rnn_cell_16/MatMul/ReadVariableOp2X
*simple_rnn_cell_16/MatMul_1/ReadVariableOp*simple_rnn_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_simple_rnn_16_layer_call_fn_3968097

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
,__inference_dropout_19_layer_call_fn_3968542

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967470o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�.
�
while_body_3968250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_16_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_16/MatMul/ReadVariableOp�0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_16/BiasAddBiasAdd)while/simple_rnn_cell_16/MatMul:product:07while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_16/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_16/addAddV2)while/simple_rnn_cell_16/BiasAdd:output:0+while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_16/TanhTanh while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_16/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_16/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_16/MatMul/ReadVariableOp1^while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_16_matmul_readvariableop_resource9while_simple_rnn_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_16/MatMul/ReadVariableOp.while/simple_rnn_cell_16/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_3967382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3967382___redundant_placeholder05
1while_while_cond_3967382___redundant_placeholder15
1while_while_cond_3967382___redundant_placeholder25
1while_while_cond_3967382___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�	
�
E__inference_dense_84_layer_call_and_return_conditional_losses_3968583

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�.
�
while_body_3968140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_16_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_16/MatMul/ReadVariableOp�0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_16/BiasAddBiasAdd)while/simple_rnn_cell_16/MatMul:product:07while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_16/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_16/addAddV2)while/simple_rnn_cell_16/BiasAdd:output:0+while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_16/TanhTanh while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_16/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_16/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_16/MatMul/ReadVariableOp1^while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_16_matmul_readvariableop_resource9while_simple_rnn_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_16/MatMul/ReadVariableOp.while/simple_rnn_cell_16/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�d
�
"__inference__wrapped_model_3967041
input_19_
Msequential_48_simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource:@\
Nsequential_48_simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resource:@a
Osequential_48_simple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@G
5sequential_48_dense_84_matmul_readvariableop_resource:@D
6sequential_48_dense_84_biasadd_readvariableop_resource:
identity��-sequential_48/dense_84/BiasAdd/ReadVariableOp�,sequential_48/dense_84/MatMul/ReadVariableOp�Esequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp�Dsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp�Fsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp�!sequential_48/simple_rnn_16/whileg
!sequential_48/simple_rnn_16/ShapeShapeinput_19*
T0*
_output_shapes
::��y
/sequential_48/simple_rnn_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_48/simple_rnn_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_48/simple_rnn_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_48/simple_rnn_16/strided_sliceStridedSlice*sequential_48/simple_rnn_16/Shape:output:08sequential_48/simple_rnn_16/strided_slice/stack:output:0:sequential_48/simple_rnn_16/strided_slice/stack_1:output:0:sequential_48/simple_rnn_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_48/simple_rnn_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
(sequential_48/simple_rnn_16/zeros/packedPack2sequential_48/simple_rnn_16/strided_slice:output:03sequential_48/simple_rnn_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_48/simple_rnn_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!sequential_48/simple_rnn_16/zerosFill1sequential_48/simple_rnn_16/zeros/packed:output:00sequential_48/simple_rnn_16/zeros/Const:output:0*
T0*'
_output_shapes
:���������@
*sequential_48/simple_rnn_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_48/simple_rnn_16/transpose	Transposeinput_193sequential_48/simple_rnn_16/transpose/perm:output:0*
T0*+
_output_shapes
:����������
#sequential_48/simple_rnn_16/Shape_1Shape)sequential_48/simple_rnn_16/transpose:y:0*
T0*
_output_shapes
::��{
1sequential_48/simple_rnn_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_48/simple_rnn_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_48/simple_rnn_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_48/simple_rnn_16/strided_slice_1StridedSlice,sequential_48/simple_rnn_16/Shape_1:output:0:sequential_48/simple_rnn_16/strided_slice_1/stack:output:0<sequential_48/simple_rnn_16/strided_slice_1/stack_1:output:0<sequential_48/simple_rnn_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
7sequential_48/simple_rnn_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
)sequential_48/simple_rnn_16/TensorArrayV2TensorListReserve@sequential_48/simple_rnn_16/TensorArrayV2/element_shape:output:04sequential_48/simple_rnn_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Qsequential_48/simple_rnn_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Csequential_48/simple_rnn_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_48/simple_rnn_16/transpose:y:0Zsequential_48/simple_rnn_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���{
1sequential_48/simple_rnn_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_48/simple_rnn_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_48/simple_rnn_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_48/simple_rnn_16/strided_slice_2StridedSlice)sequential_48/simple_rnn_16/transpose:y:0:sequential_48/simple_rnn_16/strided_slice_2/stack:output:0<sequential_48/simple_rnn_16/strided_slice_2/stack_1:output:0<sequential_48/simple_rnn_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Dsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOpMsequential_48_simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
5sequential_48/simple_rnn_16/simple_rnn_cell_16/MatMulMatMul4sequential_48/simple_rnn_16/strided_slice_2:output:0Lsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Esequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOpNsequential_48_simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
6sequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAddBiasAdd?sequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul:product:0Msequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Fsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOpOsequential_48_simple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
7sequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1MatMul*sequential_48/simple_rnn_16/zeros:output:0Nsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2sequential_48/simple_rnn_16/simple_rnn_cell_16/addAddV2?sequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAdd:output:0Asequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
3sequential_48/simple_rnn_16/simple_rnn_cell_16/TanhTanh6sequential_48/simple_rnn_16/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@�
9sequential_48/simple_rnn_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   z
8sequential_48/simple_rnn_16/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_48/simple_rnn_16/TensorArrayV2_1TensorListReserveBsequential_48/simple_rnn_16/TensorArrayV2_1/element_shape:output:0Asequential_48/simple_rnn_16/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���b
 sequential_48/simple_rnn_16/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_48/simple_rnn_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������p
.sequential_48/simple_rnn_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential_48/simple_rnn_16/whileWhile7sequential_48/simple_rnn_16/while/loop_counter:output:0=sequential_48/simple_rnn_16/while/maximum_iterations:output:0)sequential_48/simple_rnn_16/time:output:04sequential_48/simple_rnn_16/TensorArrayV2_1:handle:0*sequential_48/simple_rnn_16/zeros:output:04sequential_48/simple_rnn_16/strided_slice_1:output:0Ssequential_48/simple_rnn_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_48_simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resourceNsequential_48_simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resourceOsequential_48_simple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.sequential_48_simple_rnn_16_while_body_3966967*:
cond2R0
.sequential_48_simple_rnn_16_while_cond_3966966*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
Lsequential_48/simple_rnn_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
>sequential_48/simple_rnn_16/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_48/simple_rnn_16/while:output:3Usequential_48/simple_rnn_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elements�
1sequential_48/simple_rnn_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
3sequential_48/simple_rnn_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_48/simple_rnn_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_48/simple_rnn_16/strided_slice_3StridedSliceGsequential_48/simple_rnn_16/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_48/simple_rnn_16/strided_slice_3/stack:output:0<sequential_48/simple_rnn_16/strided_slice_3/stack_1:output:0<sequential_48/simple_rnn_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
,sequential_48/simple_rnn_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_48/simple_rnn_16/transpose_1	TransposeGsequential_48/simple_rnn_16/TensorArrayV2Stack/TensorListStack:tensor:05sequential_48/simple_rnn_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@�
!sequential_48/dropout_19/IdentityIdentity4sequential_48/simple_rnn_16/strided_slice_3:output:0*
T0*'
_output_shapes
:���������@�
,sequential_48/dense_84/MatMul/ReadVariableOpReadVariableOp5sequential_48_dense_84_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_48/dense_84/MatMulMatMul*sequential_48/dropout_19/Identity:output:04sequential_48/dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_48/dense_84/BiasAdd/ReadVariableOpReadVariableOp6sequential_48_dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_48/dense_84/BiasAddBiasAdd'sequential_48/dense_84/MatMul:product:05sequential_48/dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_48/dense_84/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_48/dense_84/BiasAdd/ReadVariableOp-^sequential_48/dense_84/MatMul/ReadVariableOpF^sequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOpE^sequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOpG^sequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp"^sequential_48/simple_rnn_16/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2^
-sequential_48/dense_84/BiasAdd/ReadVariableOp-sequential_48/dense_84/BiasAdd/ReadVariableOp2\
,sequential_48/dense_84/MatMul/ReadVariableOp,sequential_48/dense_84/MatMul/ReadVariableOp2�
Esequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOpEsequential_48/simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp2�
Dsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOpDsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp2�
Fsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOpFsequential_48/simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp2F
!sequential_48/simple_rnn_16/while!sequential_48/simple_rnn_16/while:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_19
�#
�
while_body_3967221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
"while_simple_rnn_cell_16_3967243_0:@0
"while_simple_rnn_cell_16_3967245_0:@4
"while_simple_rnn_cell_16_3967247_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
 while_simple_rnn_cell_16_3967243:@.
 while_simple_rnn_cell_16_3967245:@2
 while_simple_rnn_cell_16_3967247:@@��0while/simple_rnn_cell_16/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_16_3967243_0"while_simple_rnn_cell_16_3967245_0"while_simple_rnn_cell_16_3967247_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967207r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity9while/simple_rnn_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@

while/NoOpNoOp1^while/simple_rnn_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_16_3967243"while_simple_rnn_cell_16_3967243_0"F
 while_simple_rnn_cell_16_3967245"while_simple_rnn_cell_16_3967245_0"F
 while_simple_rnn_cell_16_3967247"while_simple_rnn_cell_16_3967247_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2d
0while/simple_rnn_cell_16/StatefulPartitionedCall0while/simple_rnn_cell_16/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_simple_rnn_16_layer_call_fn_3968086

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967450o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_48_layer_call_fn_3967686
input_19
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967673o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_19
�
�
while_cond_3968249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3968249___redundant_placeholder05
1while_while_cond_3968249___redundant_placeholder15
1while_while_cond_3968249___redundant_placeholder25
1while_while_cond_3968249___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_dense_84_layer_call_fn_3968573

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_84_layer_call_and_return_conditional_losses_3967482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967470

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�>
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968537

inputsC
1simple_rnn_cell_16_matmul_readvariableop_resource:@@
2simple_rnn_cell_16_biasadd_readvariableop_resource:@E
3simple_rnn_cell_16_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_16/BiasAdd/ReadVariableOp�(simple_rnn_cell_16/MatMul/ReadVariableOp�*simple_rnn_cell_16/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
(simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_16/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_16/BiasAddBiasAdd#simple_rnn_cell_16/MatMul:product:01simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_16/MatMul_1MatMulzeros:output:02simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_16/addAddV2#simple_rnn_cell_16/BiasAdd:output:0%simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_16/TanhTanhsimple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_16_matmul_readvariableop_resource2simple_rnn_cell_16_biasadd_readvariableop_resource3simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3968470*
condR
while_cond_3968469*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_16/BiasAdd/ReadVariableOp)^simple_rnn_cell_16/MatMul/ReadVariableOp+^simple_rnn_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_16/BiasAdd/ReadVariableOp)simple_rnn_cell_16/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_16/MatMul/ReadVariableOp(simple_rnn_cell_16/MatMul/ReadVariableOp2X
*simple_rnn_cell_16/MatMul_1/ReadVariableOp*simple_rnn_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�.
�
while_body_3968470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_16_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_16/MatMul/ReadVariableOp�0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_16/BiasAddBiasAdd)while/simple_rnn_cell_16/MatMul:product:07while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_16/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_16/addAddV2)while/simple_rnn_cell_16/BiasAdd:output:0+while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_16/TanhTanh while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_16/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_16/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_16/MatMul/ReadVariableOp1^while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_16_matmul_readvariableop_resource9while_simple_rnn_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_16/MatMul/ReadVariableOp.while/simple_rnn_cell_16/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�

�
4__inference_simple_rnn_cell_16_layer_call_fn_3968597

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967086o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states_0
�
�
 simple_rnn_16_while_cond_39678548
4simple_rnn_16_while_simple_rnn_16_while_loop_counter>
:simple_rnn_16_while_simple_rnn_16_while_maximum_iterations#
simple_rnn_16_while_placeholder%
!simple_rnn_16_while_placeholder_1%
!simple_rnn_16_while_placeholder_2:
6simple_rnn_16_while_less_simple_rnn_16_strided_slice_1Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967854___redundant_placeholder0Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967854___redundant_placeholder1Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967854___redundant_placeholder2Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967854___redundant_placeholder3 
simple_rnn_16_while_identity
�
simple_rnn_16/while/LessLesssimple_rnn_16_while_placeholder6simple_rnn_16_while_less_simple_rnn_16_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_16/while/IdentityIdentitysimple_rnn_16/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_16_while_identity%simple_rnn_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_16/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_16/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�?
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968207
inputs_0C
1simple_rnn_cell_16_matmul_readvariableop_resource:@@
2simple_rnn_cell_16_biasadd_readvariableop_resource:@E
3simple_rnn_cell_16_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_16/BiasAdd/ReadVariableOp�(simple_rnn_cell_16/MatMul/ReadVariableOp�*simple_rnn_cell_16/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
(simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_16/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_16/BiasAddBiasAdd#simple_rnn_cell_16/MatMul:product:01simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_16/MatMul_1MatMulzeros:output:02simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_16/addAddV2#simple_rnn_cell_16/BiasAdd:output:0%simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_16/TanhTanhsimple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_16_matmul_readvariableop_resource2simple_rnn_cell_16_biasadd_readvariableop_resource3simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3968140*
condR
while_cond_3968139*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_16/BiasAdd/ReadVariableOp)^simple_rnn_cell_16/MatMul/ReadVariableOp+^simple_rnn_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_16/BiasAdd/ReadVariableOp)simple_rnn_cell_16/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_16/MatMul/ReadVariableOp(simple_rnn_cell_16/MatMul/ReadVariableOp2X
*simple_rnn_cell_16/MatMul_1/ReadVariableOp*simple_rnn_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�
�
while_cond_3967099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3967099___redundant_placeholder05
1while_while_cond_3967099___redundant_placeholder15
1while_while_cond_3967099___redundant_placeholder25
1while_while_cond_3967099___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
 simple_rnn_16_while_cond_39679788
4simple_rnn_16_while_simple_rnn_16_while_loop_counter>
:simple_rnn_16_while_simple_rnn_16_while_maximum_iterations#
simple_rnn_16_while_placeholder%
!simple_rnn_16_while_placeholder_1%
!simple_rnn_16_while_placeholder_2:
6simple_rnn_16_while_less_simple_rnn_16_strided_slice_1Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967978___redundant_placeholder0Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967978___redundant_placeholder1Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967978___redundant_placeholder2Q
Msimple_rnn_16_while_simple_rnn_16_while_cond_3967978___redundant_placeholder3 
simple_rnn_16_while_identity
�
simple_rnn_16/while/LessLesssimple_rnn_16_while_placeholder6simple_rnn_16_while_less_simple_rnn_16_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_16/while/IdentityIdentitysimple_rnn_16/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_16_while_identity%simple_rnn_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_16/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_16/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967641

inputs'
simple_rnn_16_3967627:@#
simple_rnn_16_3967629:@'
simple_rnn_16_3967631:@@"
dense_84_3967635:@
dense_84_3967637:
identity�� dense_84/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCall�%simple_rnn_16/StatefulPartitionedCall�
%simple_rnn_16/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_16_3967627simple_rnn_16_3967629simple_rnn_16_3967631*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967450�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967470�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_84_3967635dense_84_3967637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_84_layer_call_and_return_conditional_losses_3967482x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_84/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall&^simple_rnn_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2N
%simple_rnn_16/StatefulPartitionedCall%simple_rnn_16/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�>
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967450

inputsC
1simple_rnn_cell_16_matmul_readvariableop_resource:@@
2simple_rnn_cell_16_biasadd_readvariableop_resource:@E
3simple_rnn_cell_16_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_16/BiasAdd/ReadVariableOp�(simple_rnn_cell_16/MatMul/ReadVariableOp�*simple_rnn_cell_16/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
(simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_16/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_16/BiasAddBiasAdd#simple_rnn_cell_16/MatMul:product:01simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_16/MatMul_1MatMulzeros:output:02simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_16/addAddV2#simple_rnn_cell_16/BiasAdd:output:0%simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_16/TanhTanhsimple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_16_matmul_readvariableop_resource2simple_rnn_cell_16_biasadd_readvariableop_resource3simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3967383*
condR
while_cond_3967382*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_16/BiasAdd/ReadVariableOp)^simple_rnn_cell_16/MatMul/ReadVariableOp+^simple_rnn_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_16/BiasAdd/ReadVariableOp)simple_rnn_cell_16/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_16/MatMul/ReadVariableOp(simple_rnn_cell_16/MatMul/ReadVariableOp2X
*simple_rnn_cell_16/MatMul_1/ReadVariableOp*simple_rnn_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�I
�
.sequential_48_simple_rnn_16_while_body_3966967T
Psequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_loop_counterZ
Vsequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_maximum_iterations1
-sequential_48_simple_rnn_16_while_placeholder3
/sequential_48_simple_rnn_16_while_placeholder_13
/sequential_48_simple_rnn_16_while_placeholder_2S
Osequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_strided_slice_1_0�
�sequential_48_simple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_sequential_48_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@d
Vsequential_48_simple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@i
Wsequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@.
*sequential_48_simple_rnn_16_while_identity0
,sequential_48_simple_rnn_16_while_identity_10
,sequential_48_simple_rnn_16_while_identity_20
,sequential_48_simple_rnn_16_while_identity_30
,sequential_48_simple_rnn_16_while_identity_4Q
Msequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_strided_slice_1�
�sequential_48_simple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_sequential_48_simple_rnn_16_tensorarrayunstack_tensorlistfromtensore
Ssequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource:@b
Tsequential_48_simple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource:@g
Usequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��Ksequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�Jsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp�Lsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
Ssequential_48/simple_rnn_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_48/simple_rnn_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_48_simple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_sequential_48_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0-sequential_48_simple_rnn_16_while_placeholder\sequential_48/simple_rnn_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Jsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOpUsequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
;sequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMulMatMulLsequential_48/simple_rnn_16/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Ksequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOpVsequential_48_simple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
<sequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAddBiasAddEsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul:product:0Ssequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Lsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOpWsequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
=sequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1MatMul/sequential_48_simple_rnn_16_while_placeholder_2Tsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8sequential_48/simple_rnn_16/while/simple_rnn_cell_16/addAddV2Esequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAdd:output:0Gsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
9sequential_48/simple_rnn_16/while/simple_rnn_cell_16/TanhTanh<sequential_48/simple_rnn_16/while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@�
Lsequential_48/simple_rnn_16/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
Fsequential_48/simple_rnn_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_48_simple_rnn_16_while_placeholder_1Usequential_48/simple_rnn_16/while/TensorArrayV2Write/TensorListSetItem/index:output:0=sequential_48/simple_rnn_16/while/simple_rnn_cell_16/Tanh:y:0*
_output_shapes
: *
element_dtype0:���i
'sequential_48/simple_rnn_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_48/simple_rnn_16/while/addAddV2-sequential_48_simple_rnn_16_while_placeholder0sequential_48/simple_rnn_16/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_48/simple_rnn_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_48/simple_rnn_16/while/add_1AddV2Psequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_loop_counter2sequential_48/simple_rnn_16/while/add_1/y:output:0*
T0*
_output_shapes
: �
*sequential_48/simple_rnn_16/while/IdentityIdentity+sequential_48/simple_rnn_16/while/add_1:z:0'^sequential_48/simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
,sequential_48/simple_rnn_16/while/Identity_1IdentityVsequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_maximum_iterations'^sequential_48/simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
,sequential_48/simple_rnn_16/while/Identity_2Identity)sequential_48/simple_rnn_16/while/add:z:0'^sequential_48/simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
,sequential_48/simple_rnn_16/while/Identity_3IdentityVsequential_48/simple_rnn_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_48/simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
,sequential_48/simple_rnn_16/while/Identity_4Identity=sequential_48/simple_rnn_16/while/simple_rnn_cell_16/Tanh:y:0'^sequential_48/simple_rnn_16/while/NoOp*
T0*'
_output_shapes
:���������@�
&sequential_48/simple_rnn_16/while/NoOpNoOpL^sequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpK^sequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOpM^sequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_48_simple_rnn_16_while_identity3sequential_48/simple_rnn_16/while/Identity:output:0"e
,sequential_48_simple_rnn_16_while_identity_15sequential_48/simple_rnn_16/while/Identity_1:output:0"e
,sequential_48_simple_rnn_16_while_identity_25sequential_48/simple_rnn_16/while/Identity_2:output:0"e
,sequential_48_simple_rnn_16_while_identity_35sequential_48/simple_rnn_16/while/Identity_3:output:0"e
,sequential_48_simple_rnn_16_while_identity_45sequential_48/simple_rnn_16/while/Identity_4:output:0"�
Msequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_strided_slice_1Osequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_strided_slice_1_0"�
Tsequential_48_simple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resourceVsequential_48_simple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"�
Usequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resourceWsequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"�
Ssequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resourceUsequential_48_simple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0"�
�sequential_48_simple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_sequential_48_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor�sequential_48_simple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_sequential_48_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2�
Ksequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpKsequential_48/simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2�
Jsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOpJsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp2�
Lsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOpLsequential_48/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:f b

_output_shapes
: 
H
_user_specified_name0.sequential_48/simple_rnn_16/while/loop_counter:lh

_output_shapes
: 
N
_user_specified_name64sequential_48/simple_rnn_16/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�<
�
 simple_rnn_16_while_body_39679798
4simple_rnn_16_while_simple_rnn_16_while_loop_counter>
:simple_rnn_16_while_simple_rnn_16_while_maximum_iterations#
simple_rnn_16_while_placeholder%
!simple_rnn_16_while_placeholder_1%
!simple_rnn_16_while_placeholder_27
3simple_rnn_16_while_simple_rnn_16_strided_slice_1_0s
osimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@V
Hsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@[
Isimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@ 
simple_rnn_16_while_identity"
simple_rnn_16_while_identity_1"
simple_rnn_16_while_identity_2"
simple_rnn_16_while_identity_3"
simple_rnn_16_while_identity_45
1simple_rnn_16_while_simple_rnn_16_strided_slice_1q
msimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource:@T
Fsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource:@Y
Gsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp�>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
Esimple_rnn_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_16_while_placeholderNsimple_rnn_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
-simple_rnn_16/while/simple_rnn_cell_16/MatMulMatMul>simple_rnn_16/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
.simple_rnn_16/while/simple_rnn_cell_16/BiasAddBiasAdd7simple_rnn_16/while/simple_rnn_cell_16/MatMul:product:0Esimple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
/simple_rnn_16/while/simple_rnn_cell_16/MatMul_1MatMul!simple_rnn_16_while_placeholder_2Fsimple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_16/while/simple_rnn_cell_16/addAddV27simple_rnn_16/while/simple_rnn_cell_16/BiasAdd:output:09simple_rnn_16/while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
+simple_rnn_16/while/simple_rnn_cell_16/TanhTanh.simple_rnn_16/while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_16/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
8simple_rnn_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_16_while_placeholder_1Gsimple_rnn_16/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_16/while/simple_rnn_cell_16/Tanh:y:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_16/while/addAddV2simple_rnn_16_while_placeholder"simple_rnn_16/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_16/while/add_1AddV24simple_rnn_16_while_simple_rnn_16_while_loop_counter$simple_rnn_16/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_16/while/IdentityIdentitysimple_rnn_16/while/add_1:z:0^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_1Identity:simple_rnn_16_while_simple_rnn_16_while_maximum_iterations^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_2Identitysimple_rnn_16/while/add:z:0^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_3IdentityHsimple_rnn_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_16/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_16/while/Identity_4Identity/simple_rnn_16/while/simple_rnn_cell_16/Tanh:y:0^simple_rnn_16/while/NoOp*
T0*'
_output_shapes
:���������@�
simple_rnn_16/while/NoOpNoOp>^simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp=^simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp?^simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_16_while_identity%simple_rnn_16/while/Identity:output:0"I
simple_rnn_16_while_identity_1'simple_rnn_16/while/Identity_1:output:0"I
simple_rnn_16_while_identity_2'simple_rnn_16/while/Identity_2:output:0"I
simple_rnn_16_while_identity_3'simple_rnn_16/while/Identity_3:output:0"I
simple_rnn_16_while_identity_4'simple_rnn_16/while/Identity_4:output:0"h
1simple_rnn_16_while_simple_rnn_16_strided_slice_13simple_rnn_16_while_simple_rnn_16_strided_slice_1_0"�
Fsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resourceHsimple_rnn_16_while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"�
Gsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resourceIsimple_rnn_16_while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"�
Esimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resourceGsimple_rnn_16_while_simple_rnn_cell_16_matmul_readvariableop_resource_0"�
msimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensorosimple_rnn_16_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2~
=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp=simple_rnn_16/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2|
<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp<simple_rnn_16/while/simple_rnn_cell_16/MatMul/ReadVariableOp2�
>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp>simple_rnn_16/while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_16/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_16/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967489
input_19'
simple_rnn_16_3967451:@#
simple_rnn_16_3967453:@'
simple_rnn_16_3967455:@@"
dense_84_3967483:@
dense_84_3967485:
identity�� dense_84/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCall�%simple_rnn_16/StatefulPartitionedCall�
%simple_rnn_16/StatefulPartitionedCallStatefulPartitionedCallinput_19simple_rnn_16_3967451simple_rnn_16_3967453simple_rnn_16_3967455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967450�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967470�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_84_3967483dense_84_3967485*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_84_layer_call_and_return_conditional_losses_3967482x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_84/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall&^simple_rnn_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2N
%simple_rnn_16/StatefulPartitionedCall%simple_rnn_16/StatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_19
�
�
while_cond_3968139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3968139___redundant_placeholder05
1while_while_cond_3968139___redundant_placeholder15
1while_while_cond_3968139___redundant_placeholder25
1while_while_cond_3968139___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967086

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968628

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states_0
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968559

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�.
�
while_body_3967383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_16_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_16/MatMul/ReadVariableOp�0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_16/BiasAddBiasAdd)while/simple_rnn_cell_16/MatMul:product:07while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_16/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_16/addAddV2)while/simple_rnn_cell_16/BiasAdd:output:0+while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_16/TanhTanh while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_16/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_16/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_16/MatMul/ReadVariableOp1^while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_16_matmul_readvariableop_resource9while_simple_rnn_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_16/MatMul/ReadVariableOp.while/simple_rnn_cell_16/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967613

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
while_cond_3967533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3967533___redundant_placeholder05
1while_while_cond_3967533___redundant_placeholder15
1while_while_cond_3967533___redundant_placeholder25
1while_while_cond_3967533___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�.
�
while_body_3968360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_16_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_16_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_16/MatMul/ReadVariableOp�0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_16/BiasAddBiasAdd)while/simple_rnn_cell_16/MatMul:product:07while/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_16/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_16/addAddV2)while/simple_rnn_cell_16/BiasAdd:output:0+while/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_16/TanhTanh while/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_16/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_16/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_16/MatMul/ReadVariableOp1^while/simple_rnn_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_16_biasadd_readvariableop_resource:while_simple_rnn_cell_16_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_16_matmul_1_readvariableop_resource;while_simple_rnn_cell_16_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_16_matmul_readvariableop_resource9while_simple_rnn_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp/while/simple_rnn_cell_16/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_16/MatMul/ReadVariableOp.while/simple_rnn_cell_16/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp0while/simple_rnn_cell_16/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
%__inference_signature_wrapper_3967782
input_19
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_3967041o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_19
�5
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967285

inputs,
simple_rnn_cell_16_3967208:@(
simple_rnn_cell_16_3967210:@,
simple_rnn_cell_16_3967212:@@
identity��*simple_rnn_cell_16/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
*simple_rnn_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_16_3967208simple_rnn_cell_16_3967210simple_rnn_cell_16_3967212*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967207n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_16_3967208simple_rnn_cell_16_3967210simple_rnn_cell_16_3967212*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3967221*
condR
while_cond_3967220*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@{
NoOpNoOp+^simple_rnn_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_16/StatefulPartitionedCall*simple_rnn_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
H
,__inference_dropout_19_layer_call_fn_3968547

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967613`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968564

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�5
�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967164

inputs,
simple_rnn_cell_16_3967087:@(
simple_rnn_cell_16_3967089:@,
simple_rnn_cell_16_3967091:@@
identity��*simple_rnn_cell_16/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
*simple_rnn_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_16_3967087simple_rnn_cell_16_3967089simple_rnn_cell_16_3967091*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967086n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_16_3967087simple_rnn_cell_16_3967089simple_rnn_cell_16_3967091*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_3967100*
condR
while_cond_3967099*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
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
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@{
NoOpNoOp+^simple_rnn_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_16/StatefulPartitionedCall*simple_rnn_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967673

inputs'
simple_rnn_16_3967659:@#
simple_rnn_16_3967661:@'
simple_rnn_16_3967663:@@"
dense_84_3967667:@
dense_84_3967669:
identity�� dense_84/StatefulPartitionedCall�%simple_rnn_16/StatefulPartitionedCall�
%simple_rnn_16/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_16_3967659simple_rnn_16_3967661simple_rnn_16_3967663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967601�
dropout_19/PartitionedCallPartitionedCall.simple_rnn_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967613�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_84_3967667dense_84_3967669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_84_layer_call_and_return_conditional_losses_3967482x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_84/StatefulPartitionedCall&^simple_rnn_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2N
%simple_rnn_16/StatefulPartitionedCall%simple_rnn_16/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_simple_rnn_16_layer_call_fn_3968064
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�
�
/__inference_simple_rnn_16_layer_call_fn_3968075
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967285o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�
�
/__inference_sequential_48_layer_call_fn_3967797

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967641o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.sequential_48_simple_rnn_16_while_cond_3966966T
Psequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_loop_counterZ
Vsequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_maximum_iterations1
-sequential_48_simple_rnn_16_while_placeholder3
/sequential_48_simple_rnn_16_while_placeholder_13
/sequential_48_simple_rnn_16_while_placeholder_2V
Rsequential_48_simple_rnn_16_while_less_sequential_48_simple_rnn_16_strided_slice_1m
isequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_cond_3966966___redundant_placeholder0m
isequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_cond_3966966___redundant_placeholder1m
isequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_cond_3966966___redundant_placeholder2m
isequential_48_simple_rnn_16_while_sequential_48_simple_rnn_16_while_cond_3966966___redundant_placeholder3.
*sequential_48_simple_rnn_16_while_identity
�
&sequential_48/simple_rnn_16/while/LessLess-sequential_48_simple_rnn_16_while_placeholderRsequential_48_simple_rnn_16_while_less_sequential_48_simple_rnn_16_strided_slice_1*
T0*
_output_shapes
: �
*sequential_48/simple_rnn_16/while/IdentityIdentity*sequential_48/simple_rnn_16/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_48_simple_rnn_16_while_identity3sequential_48/simple_rnn_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::f b

_output_shapes
: 
H
_user_specified_name0.sequential_48/simple_rnn_16/while/loop_counter:lh

_output_shapes
: 
N
_user_specified_name64sequential_48/simple_rnn_16/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_3967220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3967220___redundant_placeholder05
1while_while_cond_3967220___redundant_placeholder15
1while_while_cond_3967220___redundant_placeholder25
1while_while_cond_3967220___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968645

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states_0
�	
�
E__inference_dense_84_layer_call_and_return_conditional_losses_3967482

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
while_cond_3968359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3968359___redundant_placeholder05
1while_while_cond_3968359___redundant_placeholder15
1while_while_cond_3968359___redundant_placeholder25
1while_while_cond_3968359___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967621
input_19'
simple_rnn_16_3967602:@#
simple_rnn_16_3967604:@'
simple_rnn_16_3967606:@@"
dense_84_3967615:@
dense_84_3967617:
identity�� dense_84/StatefulPartitionedCall�%simple_rnn_16/StatefulPartitionedCall�
%simple_rnn_16/StatefulPartitionedCallStatefulPartitionedCallinput_19simple_rnn_16_3967602simple_rnn_16_3967604simple_rnn_16_3967606*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3967601�
dropout_19/PartitionedCallPartitionedCall.simple_rnn_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_3967613�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_84_3967615dense_84_3967617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_84_layer_call_and_return_conditional_losses_3967482x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_84/StatefulPartitionedCall&^simple_rnn_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall2N
%simple_rnn_16/StatefulPartitionedCall%simple_rnn_16/StatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_19
�\
�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967936

inputsQ
?simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource:@N
@simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resource:@S
Asimple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource:@@9
'dense_84_matmul_readvariableop_resource:@6
(dense_84_biasadd_readvariableop_resource:
identity��dense_84/BiasAdd/ReadVariableOp�dense_84/MatMul/ReadVariableOp�7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp�6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp�8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp�simple_rnn_16/whileW
simple_rnn_16/ShapeShapeinputs*
T0*
_output_shapes
::��k
!simple_rnn_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_sliceStridedSlicesimple_rnn_16/Shape:output:0*simple_rnn_16/strided_slice/stack:output:0,simple_rnn_16/strided_slice/stack_1:output:0,simple_rnn_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
simple_rnn_16/zeros/packedPack$simple_rnn_16/strided_slice:output:0%simple_rnn_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_16/zerosFill#simple_rnn_16/zeros/packed:output:0"simple_rnn_16/zeros/Const:output:0*
T0*'
_output_shapes
:���������@q
simple_rnn_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_16/transpose	Transposeinputs%simple_rnn_16/transpose/perm:output:0*
T0*+
_output_shapes
:���������n
simple_rnn_16/Shape_1Shapesimple_rnn_16/transpose:y:0*
T0*
_output_shapes
::��m
#simple_rnn_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_slice_1StridedSlicesimple_rnn_16/Shape_1:output:0,simple_rnn_16/strided_slice_1/stack:output:0.simple_rnn_16/strided_slice_1/stack_1:output:0.simple_rnn_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_16/TensorArrayV2TensorListReserve2simple_rnn_16/TensorArrayV2/element_shape:output:0&simple_rnn_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_16/transpose:y:0Lsimple_rnn_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_slice_2StridedSlicesimple_rnn_16/transpose:y:0,simple_rnn_16/strided_slice_2/stack:output:0.simple_rnn_16/strided_slice_2/stack_1:output:0.simple_rnn_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOpReadVariableOp?simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'simple_rnn_16/simple_rnn_cell_16/MatMulMatMul&simple_rnn_16/strided_slice_2:output:0>simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
(simple_rnn_16/simple_rnn_cell_16/BiasAddBiasAdd1simple_rnn_16/simple_rnn_cell_16/MatMul:product:0?simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
)simple_rnn_16/simple_rnn_cell_16/MatMul_1MatMulsimple_rnn_16/zeros:output:0@simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$simple_rnn_16/simple_rnn_cell_16/addAddV21simple_rnn_16/simple_rnn_cell_16/BiasAdd:output:03simple_rnn_16/simple_rnn_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
%simple_rnn_16/simple_rnn_cell_16/TanhTanh(simple_rnn_16/simple_rnn_cell_16/add:z:0*
T0*'
_output_shapes
:���������@|
+simple_rnn_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   l
*simple_rnn_16/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_16/TensorArrayV2_1TensorListReserve4simple_rnn_16/TensorArrayV2_1/element_shape:output:03simple_rnn_16/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_16/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_16/whileWhile)simple_rnn_16/while/loop_counter:output:0/simple_rnn_16/while/maximum_iterations:output:0simple_rnn_16/time:output:0&simple_rnn_16/TensorArrayV2_1:handle:0simple_rnn_16/zeros:output:0&simple_rnn_16/strided_slice_1:output:0Esimple_rnn_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_16_simple_rnn_cell_16_matmul_readvariableop_resource@simple_rnn_16_simple_rnn_cell_16_biasadd_readvariableop_resourceAsimple_rnn_16_simple_rnn_cell_16_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_16_while_body_3967855*,
cond$R"
 simple_rnn_16_while_cond_3967854*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
>simple_rnn_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
0simple_rnn_16/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_16/while:output:3Gsimple_rnn_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsv
#simple_rnn_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_16/strided_slice_3StridedSlice9simple_rnn_16/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_16/strided_slice_3/stack:output:0.simple_rnn_16/strided_slice_3/stack_1:output:0.simple_rnn_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_masks
simple_rnn_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_16/transpose_1	Transpose9simple_rnn_16/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?�
dropout_19/dropout/MulMul&simple_rnn_16/strided_slice_3:output:0!dropout_19/dropout/Const:output:0*
T0*'
_output_shapes
:���������@|
dropout_19/dropout/ShapeShape&simple_rnn_16/strided_slice_3:output:0*
T0*
_output_shapes
::���
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@_
dropout_19/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_19/dropout/SelectV2SelectV2#dropout_19/dropout/GreaterEqual:z:0dropout_19/dropout/Mul:z:0#dropout_19/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_84/MatMulMatMul$dropout_19/dropout/SelectV2:output:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_84/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp8^simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp7^simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp9^simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp^simple_rnn_16/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp2r
7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp7simple_rnn_16/simple_rnn_cell_16/BiasAdd/ReadVariableOp2p
6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp6simple_rnn_16/simple_rnn_cell_16/MatMul/ReadVariableOp2t
8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp8simple_rnn_16/simple_rnn_cell_16/MatMul_1/ReadVariableOp2*
simple_rnn_16/whilesimple_rnn_16/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_3968469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3968469___redundant_placeholder05
1while_while_cond_3968469___redundant_placeholder15
1while_while_cond_3968469___redundant_placeholder25
1while_while_cond_3968469___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�k
�
#__inference__traced_restore_3968894
file_prefix2
 assignvariableop_dense_84_kernel:@.
 assignvariableop_1_dense_84_bias:L
:assignvariableop_2_simple_rnn_16_simple_rnn_cell_16_kernel:@V
Dassignvariableop_3_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel:@@F
8assignvariableop_4_simple_rnn_16_simple_rnn_cell_16_bias:@&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: #
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_84_kernel_m:@6
(assignvariableop_15_adam_dense_84_bias_m:T
Bassignvariableop_16_adam_simple_rnn_16_simple_rnn_cell_16_kernel_m:@^
Lassignvariableop_17_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_m:@@N
@assignvariableop_18_adam_simple_rnn_16_simple_rnn_cell_16_bias_m:@<
*assignvariableop_19_adam_dense_84_kernel_v:@6
(assignvariableop_20_adam_dense_84_bias_v:T
Bassignvariableop_21_adam_simple_rnn_16_simple_rnn_cell_16_kernel_v:@^
Lassignvariableop_22_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_v:@@N
@assignvariableop_23_adam_simple_rnn_16_simple_rnn_cell_16_bias_v:@
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_84_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_84_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp:assignvariableop_2_simple_rnn_16_simple_rnn_cell_16_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpDassignvariableop_3_simple_rnn_16_simple_rnn_cell_16_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp8assignvariableop_4_simple_rnn_16_simple_rnn_cell_16_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_84_kernel_mIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_84_bias_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpBassignvariableop_16_adam_simple_rnn_16_simple_rnn_cell_16_kernel_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpLassignvariableop_17_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adam_simple_rnn_16_simple_rnn_cell_16_bias_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_84_kernel_vIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_84_bias_vIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_simple_rnn_16_simple_rnn_cell_16_kernel_vIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpLassignvariableop_22_adam_simple_rnn_16_simple_rnn_cell_16_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp@assignvariableop_23_adam_simple_rnn_16_simple_rnn_cell_16_bias_vIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
�
�
/__inference_sequential_48_layer_call_fn_3967812

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967673o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_48_layer_call_fn_3967654
input_19
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967641o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_19
�
�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967207

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�

�
4__inference_simple_rnn_cell_16_layer_call_fn_3968611

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3967207o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states_0"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
A
input_195
serving_default_input_19:0���������<
dense_840
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
C
$0
%1
&2
"3
#4"
trackable_list_wrapper
C
$0
%1
&2
"3
#4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
,trace_0
-trace_1
.trace_2
/trace_32�
/__inference_sequential_48_layer_call_fn_3967654
/__inference_sequential_48_layer_call_fn_3967686
/__inference_sequential_48_layer_call_fn_3967797
/__inference_sequential_48_layer_call_fn_3967812�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z,trace_0z-trace_1z.trace_2z/trace_3
�
0trace_0
1trace_1
2trace_2
3trace_32�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967489
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967621
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967936
J__inference_sequential_48_layer_call_and_return_conditional_losses_3968053�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z0trace_0z1trace_1z2trace_2z3trace_3
�B�
"__inference__wrapped_model_3967041input_19"�
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
4iter

5beta_1

6beta_2
	7decay
8learning_rate"mr#ms$mt%mu&mv"vw#vx$vy%vz&v{"
	optimizer
,
9serving_default"
signature_map
5
$0
%1
&2"
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

:states
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
@trace_0
Atrace_1
Btrace_2
Ctrace_32�
/__inference_simple_rnn_16_layer_call_fn_3968064
/__inference_simple_rnn_16_layer_call_fn_3968075
/__inference_simple_rnn_16_layer_call_fn_3968086
/__inference_simple_rnn_16_layer_call_fn_3968097�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z@trace_0zAtrace_1zBtrace_2zCtrace_3
�
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968207
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968317
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968427
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968537�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator

$kernel
%recurrent_kernel
&bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_0
Utrace_12�
,__inference_dropout_19_layer_call_fn_3968542
,__inference_dropout_19_layer_call_fn_3968547�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0zUtrace_1
�
Vtrace_0
Wtrace_12�
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968559
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968564�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zVtrace_0zWtrace_1
"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
]trace_02�
*__inference_dense_84_layer_call_fn_3968573�
���
FullArgSpec
args�

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
annotations� *
 z]trace_0
�
^trace_02�
E__inference_dense_84_layer_call_and_return_conditional_losses_3968583�
���
FullArgSpec
args�

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
annotations� *
 z^trace_0
!:@2dense_84/kernel
:2dense_84/bias
9:7@2'simple_rnn_16/simple_rnn_cell_16/kernel
C:A@@21simple_rnn_16/simple_rnn_cell_16/recurrent_kernel
3:1@2%simple_rnn_16/simple_rnn_cell_16/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_sequential_48_layer_call_fn_3967654input_19"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_48_layer_call_fn_3967686input_19"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_48_layer_call_fn_3967797inputs"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_48_layer_call_fn_3967812inputs"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967489input_19"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967621input_19"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967936inputs"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3968053inputs"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
%__inference_signature_wrapper_3967782input_19"�
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
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_simple_rnn_16_layer_call_fn_3968064inputs_0"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_simple_rnn_16_layer_call_fn_3968075inputs_0"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_simple_rnn_16_layer_call_fn_3968086inputs"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_simple_rnn_16_layer_call_fn_3968097inputs"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968207inputs_0"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968317inputs_0"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968427inputs"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968537inputs"�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
$0
%1
&2"
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
ftrace_0
gtrace_12�
4__inference_simple_rnn_cell_16_layer_call_fn_3968597
4__inference_simple_rnn_cell_16_layer_call_fn_3968611�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0zgtrace_1
�
htrace_0
itrace_12�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968628
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968645�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zhtrace_0zitrace_1
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
,__inference_dropout_19_layer_call_fn_3968542inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_19_layer_call_fn_3968547inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968559inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968564inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
*__inference_dense_84_layer_call_fn_3968573inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_dense_84_layer_call_and_return_conditional_losses_3968583inputs"�
���
FullArgSpec
args�

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
annotations� *
 
N
j	variables
k	keras_api
	ltotal
	mcount"
_tf_keras_metric
N
n	variables
o	keras_api
	ptotal
	qcount"
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
4__inference_simple_rnn_cell_16_layer_call_fn_3968597inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
4__inference_simple_rnn_cell_16_layer_call_fn_3968611inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968628inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968645inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
.
p0
q1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2count
&:$@2Adam/dense_84/kernel/m
 :2Adam/dense_84/bias/m
>:<@2.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/m
H:F@@28Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/m
8:6@2,Adam/simple_rnn_16/simple_rnn_cell_16/bias/m
&:$@2Adam/dense_84/kernel/v
 :2Adam/dense_84/bias/v
>:<@2.Adam/simple_rnn_16/simple_rnn_cell_16/kernel/v
H:F@@28Adam/simple_rnn_16/simple_rnn_cell_16/recurrent_kernel/v
8:6@2,Adam/simple_rnn_16/simple_rnn_cell_16/bias/v�
"__inference__wrapped_model_3967041s$&%"#5�2
+�(
&�#
input_19���������
� "3�0
.
dense_84"�
dense_84����������
E__inference_dense_84_layer_call_and_return_conditional_losses_3968583c"#/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
*__inference_dense_84_layer_call_fn_3968573X"#/�,
%�"
 �
inputs���������@
� "!�
unknown����������
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968559c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
G__inference_dropout_19_layer_call_and_return_conditional_losses_3968564c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
,__inference_dropout_19_layer_call_fn_3968542X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
,__inference_dropout_19_layer_call_fn_3968547X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967489t$&%"#=�:
3�0
&�#
input_19���������
p

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967621t$&%"#=�:
3�0
&�#
input_19���������
p 

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_48_layer_call_and_return_conditional_losses_3967936r$&%"#;�8
1�.
$�!
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_48_layer_call_and_return_conditional_losses_3968053r$&%"#;�8
1�.
$�!
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
/__inference_sequential_48_layer_call_fn_3967654i$&%"#=�:
3�0
&�#
input_19���������
p

 
� "!�
unknown����������
/__inference_sequential_48_layer_call_fn_3967686i$&%"#=�:
3�0
&�#
input_19���������
p 

 
� "!�
unknown����������
/__inference_sequential_48_layer_call_fn_3967797g$&%"#;�8
1�.
$�!
inputs���������
p

 
� "!�
unknown����������
/__inference_sequential_48_layer_call_fn_3967812g$&%"#;�8
1�.
$�!
inputs���������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_3967782$&%"#A�>
� 
7�4
2
input_19&�#
input_19���������"3�0
.
dense_84"�
dense_84����������
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968207�$&%O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� ",�)
"�
tensor_0���������@
� �
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968317�$&%O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� ",�)
"�
tensor_0���������@
� �
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968427t$&%?�<
5�2
$�!
inputs���������

 
p

 
� ",�)
"�
tensor_0���������@
� �
J__inference_simple_rnn_16_layer_call_and_return_conditional_losses_3968537t$&%?�<
5�2
$�!
inputs���������

 
p 

 
� ",�)
"�
tensor_0���������@
� �
/__inference_simple_rnn_16_layer_call_fn_3968064y$&%O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� "!�
unknown���������@�
/__inference_simple_rnn_16_layer_call_fn_3968075y$&%O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� "!�
unknown���������@�
/__inference_simple_rnn_16_layer_call_fn_3968086i$&%?�<
5�2
$�!
inputs���������

 
p

 
� "!�
unknown���������@�
/__inference_simple_rnn_16_layer_call_fn_3968097i$&%?�<
5�2
$�!
inputs���������

 
p 

 
� "!�
unknown���������@�
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968628�$&%\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������@
p
� "`�]
V�S
$�!

tensor_0_0���������@
+�(
&�#
tensor_0_1_0���������@
� �
O__inference_simple_rnn_cell_16_layer_call_and_return_conditional_losses_3968645�$&%\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������@
p 
� "`�]
V�S
$�!

tensor_0_0���������@
+�(
&�#
tensor_0_1_0���������@
� �
4__inference_simple_rnn_cell_16_layer_call_fn_3968597�$&%\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������@
p
� "R�O
"�
tensor_0���������@
)�&
$�!

tensor_1_0���������@�
4__inference_simple_rnn_cell_16_layer_call_fn_3968611�$&%\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������@
p 
� "R�O
"�
tensor_0���������@
)�&
$�!

tensor_1_0���������@