��
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
�"serve*2.12.02unknown8ƍ
�
,Adam/simple_rnn_14/simple_rnn_cell_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*=
shared_name.,Adam/simple_rnn_14/simple_rnn_cell_14/bias/v
�
@Adam/simple_rnn_14/simple_rnn_cell_14/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_14/simple_rnn_cell_14/bias/v*
_output_shapes
:2*
dtype0
�
8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*I
shared_name:8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/v
�
LAdam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/v*
_output_shapes

:22*
dtype0
�
.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*?
shared_name0.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/v
�
BAdam/simple_rnn_14/simple_rnn_cell_14/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/v*
_output_shapes

:2*
dtype0
�
Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/v
y
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_62/kernel/v
�
*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*
_output_shapes

:2*
dtype0
�
,Adam/simple_rnn_14/simple_rnn_cell_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*=
shared_name.,Adam/simple_rnn_14/simple_rnn_cell_14/bias/m
�
@Adam/simple_rnn_14/simple_rnn_cell_14/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_14/simple_rnn_cell_14/bias/m*
_output_shapes
:2*
dtype0
�
8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*I
shared_name:8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/m
�
LAdam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/m*
_output_shapes

:22*
dtype0
�
.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*?
shared_name0.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/m
�
BAdam/simple_rnn_14/simple_rnn_cell_14/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/m*
_output_shapes

:2*
dtype0
�
Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/m
y
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_62/kernel/m
�
*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*
_output_shapes

:2*
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
%simple_rnn_14/simple_rnn_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*6
shared_name'%simple_rnn_14/simple_rnn_cell_14/bias
�
9simple_rnn_14/simple_rnn_cell_14/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_14/simple_rnn_cell_14/bias*
_output_shapes
:2*
dtype0
�
1simple_rnn_14/simple_rnn_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*B
shared_name31simple_rnn_14/simple_rnn_cell_14/recurrent_kernel
�
Esimple_rnn_14/simple_rnn_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_14/simple_rnn_cell_14/recurrent_kernel*
_output_shapes

:22*
dtype0
�
'simple_rnn_14/simple_rnn_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*8
shared_name)'simple_rnn_14/simple_rnn_cell_14/kernel
�
;simple_rnn_14/simple_rnn_cell_14/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_14/simple_rnn_cell_14/kernel*
_output_shapes

:2*
dtype0
r
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_62/bias
k
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes
:*
dtype0
z
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_62/kernel
s
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*
_output_shapes

:2*
dtype0
�
#serving_default_simple_rnn_14_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_14_input'simple_rnn_14/simple_rnn_cell_14/kernel%simple_rnn_14/simple_rnn_cell_14/bias1simple_rnn_14/simple_rnn_cell_14/recurrent_kerneldense_62/kerneldense_62/bias*
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
%__inference_signature_wrapper_2705079

NoOpNoOp
�.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�-
value�-B�- B�-
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
$trace_0
%trace_1
&trace_2
'trace_3* 
6
(trace_0
)trace_1
*trace_2
+trace_3* 
* 
�
,iter

-beta_1

.beta_2
	/decay
0learning_ratemambmcmdmevfvgvhvivj*

1serving_default* 

0
1
2*

0
1
2*
* 
�

2states
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
8trace_0
9trace_1
:trace_2
;trace_3* 
6
<trace_0
=trace_1
>trace_2
?trace_3* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 
_Y
VARIABLE_VALUEdense_62/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_62/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'simple_rnn_14/simple_rnn_cell_14/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1simple_rnn_14/simple_rnn_cell_14/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_14/simple_rnn_cell_14/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

N0
O1*
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

0*
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
0
1
2*

0
1
2*
* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

Utrace_0
Vtrace_1* 

Wtrace_0
Xtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
8
Y	variables
Z	keras_api
	[total
	\count*
8
]	variables
^	keras_api
	_total
	`count*
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
[0
\1*

Y	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

_0
`1*

]	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_62/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_62/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_14/simple_rnn_cell_14/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_62/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_62/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_14/simple_rnn_cell_14/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_62/kerneldense_62/bias'simple_rnn_14/simple_rnn_cell_14/kernel1simple_rnn_14/simple_rnn_cell_14/recurrent_kernel%simple_rnn_14/simple_rnn_cell_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_62/kernel/mAdam/dense_62/bias/m.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/m8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/m,Adam/simple_rnn_14/simple_rnn_cell_14/bias/mAdam/dense_62/kernel/vAdam/dense_62/bias/v.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/v8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/v,Adam/simple_rnn_14/simple_rnn_cell_14/bias/vConst*%
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
 __inference__traced_save_2706073
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_62/kerneldense_62/bias'simple_rnn_14/simple_rnn_cell_14/kernel1simple_rnn_14/simple_rnn_cell_14/recurrent_kernel%simple_rnn_14/simple_rnn_cell_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_62/kernel/mAdam/dense_62/bias/m.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/m8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/m,Adam/simple_rnn_14/simple_rnn_cell_14/bias/mAdam/dense_62/kernel/vAdam/dense_62/bias/v.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/v8Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/v,Adam/simple_rnn_14/simple_rnn_cell_14/bias/v*$
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
#__inference__traced_restore_2706155Ö
�
�
while_cond_2704849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2704849___redundant_placeholder05
1while_while_cond_2704849___redundant_placeholder15
1while_while_cond_2704849___redundant_placeholder25
1while_while_cond_2704849___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_2705427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2705427___redundant_placeholder05
1while_while_cond_2705427___redundant_placeholder15
1while_while_cond_2705427___redundant_placeholder25
1while_while_cond_2705427___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_2704429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2704429___redundant_placeholder05
1while_while_cond_2704429___redundant_placeholder15
1while_while_cond_2704429___redundant_placeholder25
1while_while_cond_2704429___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�?
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705605
inputs_0C
1simple_rnn_cell_14_matmul_readvariableop_resource:2@
2simple_rnn_cell_14_biasadd_readvariableop_resource:2E
3simple_rnn_cell_14_matmul_1_readvariableop_resource:22
identity��)simple_rnn_cell_14/BiasAdd/ReadVariableOp�(simple_rnn_cell_14/MatMul/ReadVariableOp�*simple_rnn_cell_14/MatMul_1/ReadVariableOp�whileK
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
value	B :2s
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
:���������2c
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
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2m
simple_rnn_cell_14/ReluRelusimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2705538*
condR
while_cond_2705537*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�
�
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704537

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�5
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704494

inputs,
simple_rnn_cell_14_2704417:2(
simple_rnn_cell_14_2704419:2,
simple_rnn_cell_14_2704421:22
identity��*simple_rnn_cell_14/StatefulPartitionedCall�whileI
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
value	B :2s
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
:���������2c
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
*simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_14_2704417simple_rnn_cell_14_2704419simple_rnn_cell_14_2704421*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704416n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_14_2704417simple_rnn_cell_14_2704419simple_rnn_cell_14_2704421*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2704430*
condR
while_cond_2704429*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2{
NoOpNoOp+^simple_rnn_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_14/StatefulPartitionedCall*simple_rnn_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
.sequential_37_simple_rnn_14_while_cond_2704297T
Psequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_loop_counterZ
Vsequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_maximum_iterations1
-sequential_37_simple_rnn_14_while_placeholder3
/sequential_37_simple_rnn_14_while_placeholder_13
/sequential_37_simple_rnn_14_while_placeholder_2V
Rsequential_37_simple_rnn_14_while_less_sequential_37_simple_rnn_14_strided_slice_1m
isequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_cond_2704297___redundant_placeholder0m
isequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_cond_2704297___redundant_placeholder1m
isequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_cond_2704297___redundant_placeholder2m
isequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_cond_2704297___redundant_placeholder3.
*sequential_37_simple_rnn_14_while_identity
�
&sequential_37/simple_rnn_14/while/LessLess-sequential_37_simple_rnn_14_while_placeholderRsequential_37_simple_rnn_14_while_less_sequential_37_simple_rnn_14_strided_slice_1*
T0*
_output_shapes
: �
*sequential_37/simple_rnn_14/while/IdentityIdentity*sequential_37/simple_rnn_14/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_37_simple_rnn_14_while_identity3sequential_37/simple_rnn_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: :::::f b

_output_shapes
: 
H
_user_specified_name0.sequential_37/simple_rnn_14/while/loop_counter:lh

_output_shapes
: 
N
_user_specified_name64sequential_37/simple_rnn_14/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�	
�
E__inference_dense_62_layer_call_and_return_conditional_losses_2704798

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
 simple_rnn_14_while_cond_27051518
4simple_rnn_14_while_simple_rnn_14_while_loop_counter>
:simple_rnn_14_while_simple_rnn_14_while_maximum_iterations#
simple_rnn_14_while_placeholder%
!simple_rnn_14_while_placeholder_1%
!simple_rnn_14_while_placeholder_2:
6simple_rnn_14_while_less_simple_rnn_14_strided_slice_1Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705151___redundant_placeholder0Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705151___redundant_placeholder1Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705151___redundant_placeholder2Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705151___redundant_placeholder3 
simple_rnn_14_while_identity
�
simple_rnn_14/while/LessLesssimple_rnn_14_while_placeholder6simple_rnn_14_while_less_simple_rnn_14_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_14/while/IdentityIdentitysimple_rnn_14/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_14_while_identity%simple_rnn_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: :::::X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_14/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_14/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_simple_rnn_14_layer_call_fn_2705374

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704780o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
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
�
�
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704416

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�
�
/__inference_sequential_37_layer_call_fn_2705109

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704981o
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
�
�
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705889

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states_0
�>
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705715

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2@
2simple_rnn_cell_14_biasadd_readvariableop_resource:2E
3simple_rnn_cell_14_matmul_1_readvariableop_resource:22
identity��)simple_rnn_cell_14/BiasAdd/ReadVariableOp�(simple_rnn_cell_14/MatMul/ReadVariableOp�*simple_rnn_cell_14/MatMul_1/ReadVariableOp�whileI
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
value	B :2s
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
:���������2c
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
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2m
simple_rnn_cell_14/ReluRelusimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2705648*
condR
while_cond_2705647*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
while_body_2704430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
"while_simple_rnn_cell_14_2704452_0:20
"while_simple_rnn_cell_14_2704454_0:24
"while_simple_rnn_cell_14_2704456_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
 while_simple_rnn_cell_14_2704452:2.
 while_simple_rnn_cell_14_2704454:22
 while_simple_rnn_cell_14_2704456:22��0while/simple_rnn_cell_14/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_14_2704452_0"while_simple_rnn_cell_14_2704454_0"while_simple_rnn_cell_14_2704456_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704416r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_14/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity9while/simple_rnn_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2

while/NoOpNoOp1^while/simple_rnn_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_14_2704452"while_simple_rnn_cell_14_2704452_0"F
 while_simple_rnn_cell_14_2704454"while_simple_rnn_cell_14_2704454_0"F
 while_simple_rnn_cell_14_2704456"while_simple_rnn_cell_14_2704456_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2d
0while/simple_rnn_cell_14/StatefulPartitionedCall0while/simple_rnn_cell_14/StatefulPartitionedCall:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: 
�>
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704780

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2@
2simple_rnn_cell_14_biasadd_readvariableop_resource:2E
3simple_rnn_cell_14_matmul_1_readvariableop_resource:22
identity��)simple_rnn_cell_14/BiasAdd/ReadVariableOp�(simple_rnn_cell_14/MatMul/ReadVariableOp�*simple_rnn_cell_14/MatMul_1/ReadVariableOp�whileI
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
value	B :2s
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
:���������2c
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
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2m
simple_rnn_cell_14/ReluRelusimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2704713*
condR
while_cond_2704712*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
۷
�
 __inference__traced_save_2706073
file_prefix8
&read_disablecopyonread_dense_62_kernel:24
&read_1_disablecopyonread_dense_62_bias:R
@read_2_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_kernel:2\
Jread_3_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel:22L
>read_4_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_bias:2,
"read_5_disablecopyonread_adam_iter:	 .
$read_6_disablecopyonread_adam_beta_1: .
$read_7_disablecopyonread_adam_beta_2: -
#read_8_disablecopyonread_adam_decay: 5
+read_9_disablecopyonread_adam_learning_rate: +
!read_10_disablecopyonread_total_1: +
!read_11_disablecopyonread_count_1: )
read_12_disablecopyonread_total: )
read_13_disablecopyonread_count: B
0read_14_disablecopyonread_adam_dense_62_kernel_m:2<
.read_15_disablecopyonread_adam_dense_62_bias_m:Z
Hread_16_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_kernel_m:2d
Rread_17_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_m:22T
Fread_18_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_bias_m:2B
0read_19_disablecopyonread_adam_dense_62_kernel_v:2<
.read_20_disablecopyonread_adam_dense_62_bias_v:Z
Hread_21_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_kernel_v:2d
Rread_22_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_v:22T
Fread_23_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_bias_v:2
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
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_62_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_62_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:2z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_62_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_62_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnRead@read_2_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp@read_2_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_3/DisableCopyOnReadDisableCopyOnReadJread_3_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpJread_3_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:22�
Read_4/DisableCopyOnReadDisableCopyOnRead>read_4_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp>read_4_disablecopyonread_simple_rnn_14_simple_rnn_cell_14_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:2v
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
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_dense_62_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_dense_62_kernel_m^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_dense_62_bias_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_dense_62_bias_m^Read_15/DisableCopyOnRead"/device:CPU:0*
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
Read_16/DisableCopyOnReadDisableCopyOnReadHread_16_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOpHread_16_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_kernel_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_17/DisableCopyOnReadDisableCopyOnReadRread_17_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpRread_17_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:22�
Read_18/DisableCopyOnReadDisableCopyOnReadFread_18_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_bias_m"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOpFread_18_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_bias_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_dense_62_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_dense_62_kernel_v^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_dense_62_bias_v"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_dense_62_bias_v^Read_20/DisableCopyOnRead"/device:CPU:0*
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
Read_21/DisableCopyOnReadDisableCopyOnReadHread_21_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOpHread_21_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_kernel_v^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_22/DisableCopyOnReadDisableCopyOnReadRread_22_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOpRread_22_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_v^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:22�
Read_23/DisableCopyOnReadDisableCopyOnReadFread_23_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_bias_v"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpFread_23_disablecopyonread_adam_simple_rnn_14_simple_rnn_cell_14_bias_v^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
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
�c
�
"__inference__wrapped_model_2704371
simple_rnn_14_input_
Msequential_37_simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource:2\
Nsequential_37_simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resource:2a
Osequential_37_simple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource:22G
5sequential_37_dense_62_matmul_readvariableop_resource:2D
6sequential_37_dense_62_biasadd_readvariableop_resource:
identity��-sequential_37/dense_62/BiasAdd/ReadVariableOp�,sequential_37/dense_62/MatMul/ReadVariableOp�Esequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp�Dsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp�Fsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp�!sequential_37/simple_rnn_14/whiler
!sequential_37/simple_rnn_14/ShapeShapesimple_rnn_14_input*
T0*
_output_shapes
::��y
/sequential_37/simple_rnn_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_37/simple_rnn_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_37/simple_rnn_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_37/simple_rnn_14/strided_sliceStridedSlice*sequential_37/simple_rnn_14/Shape:output:08sequential_37/simple_rnn_14/strided_slice/stack:output:0:sequential_37/simple_rnn_14/strided_slice/stack_1:output:0:sequential_37/simple_rnn_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_37/simple_rnn_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
(sequential_37/simple_rnn_14/zeros/packedPack2sequential_37/simple_rnn_14/strided_slice:output:03sequential_37/simple_rnn_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_37/simple_rnn_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!sequential_37/simple_rnn_14/zerosFill1sequential_37/simple_rnn_14/zeros/packed:output:00sequential_37/simple_rnn_14/zeros/Const:output:0*
T0*'
_output_shapes
:���������2
*sequential_37/simple_rnn_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_37/simple_rnn_14/transpose	Transposesimple_rnn_14_input3sequential_37/simple_rnn_14/transpose/perm:output:0*
T0*+
_output_shapes
:����������
#sequential_37/simple_rnn_14/Shape_1Shape)sequential_37/simple_rnn_14/transpose:y:0*
T0*
_output_shapes
::��{
1sequential_37/simple_rnn_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_37/simple_rnn_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_37/simple_rnn_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_37/simple_rnn_14/strided_slice_1StridedSlice,sequential_37/simple_rnn_14/Shape_1:output:0:sequential_37/simple_rnn_14/strided_slice_1/stack:output:0<sequential_37/simple_rnn_14/strided_slice_1/stack_1:output:0<sequential_37/simple_rnn_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
7sequential_37/simple_rnn_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
)sequential_37/simple_rnn_14/TensorArrayV2TensorListReserve@sequential_37/simple_rnn_14/TensorArrayV2/element_shape:output:04sequential_37/simple_rnn_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Qsequential_37/simple_rnn_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Csequential_37/simple_rnn_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_37/simple_rnn_14/transpose:y:0Zsequential_37/simple_rnn_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���{
1sequential_37/simple_rnn_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_37/simple_rnn_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_37/simple_rnn_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_37/simple_rnn_14/strided_slice_2StridedSlice)sequential_37/simple_rnn_14/transpose:y:0:sequential_37/simple_rnn_14/strided_slice_2/stack:output:0<sequential_37/simple_rnn_14/strided_slice_2/stack_1:output:0<sequential_37/simple_rnn_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Dsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpMsequential_37_simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
5sequential_37/simple_rnn_14/simple_rnn_cell_14/MatMulMatMul4sequential_37/simple_rnn_14/strided_slice_2:output:0Lsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Esequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpNsequential_37_simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
6sequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAddBiasAdd?sequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul:product:0Msequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Fsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpOsequential_37_simple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
7sequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1MatMul*sequential_37/simple_rnn_14/zeros:output:0Nsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
2sequential_37/simple_rnn_14/simple_rnn_cell_14/addAddV2?sequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAdd:output:0Asequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
3sequential_37/simple_rnn_14/simple_rnn_cell_14/ReluRelu6sequential_37/simple_rnn_14/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2�
9sequential_37/simple_rnn_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   z
8sequential_37/simple_rnn_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_37/simple_rnn_14/TensorArrayV2_1TensorListReserveBsequential_37/simple_rnn_14/TensorArrayV2_1/element_shape:output:0Asequential_37/simple_rnn_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���b
 sequential_37/simple_rnn_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_37/simple_rnn_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������p
.sequential_37/simple_rnn_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential_37/simple_rnn_14/whileWhile7sequential_37/simple_rnn_14/while/loop_counter:output:0=sequential_37/simple_rnn_14/while/maximum_iterations:output:0)sequential_37/simple_rnn_14/time:output:04sequential_37/simple_rnn_14/TensorArrayV2_1:handle:0*sequential_37/simple_rnn_14/zeros:output:04sequential_37/simple_rnn_14/strided_slice_1:output:0Ssequential_37/simple_rnn_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_37_simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resourceNsequential_37_simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resourceOsequential_37_simple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.sequential_37_simple_rnn_14_while_body_2704298*:
cond2R0
.sequential_37_simple_rnn_14_while_cond_2704297*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
Lsequential_37/simple_rnn_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
>sequential_37/simple_rnn_14/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_37/simple_rnn_14/while:output:3Usequential_37/simple_rnn_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0*
num_elements�
1sequential_37/simple_rnn_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
3sequential_37/simple_rnn_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_37/simple_rnn_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_37/simple_rnn_14/strided_slice_3StridedSliceGsequential_37/simple_rnn_14/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_37/simple_rnn_14/strided_slice_3/stack:output:0<sequential_37/simple_rnn_14/strided_slice_3/stack_1:output:0<sequential_37/simple_rnn_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
,sequential_37/simple_rnn_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_37/simple_rnn_14/transpose_1	TransposeGsequential_37/simple_rnn_14/TensorArrayV2Stack/TensorListStack:tensor:05sequential_37/simple_rnn_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2�
,sequential_37/dense_62/MatMul/ReadVariableOpReadVariableOp5sequential_37_dense_62_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential_37/dense_62/MatMulMatMul4sequential_37/simple_rnn_14/strided_slice_3:output:04sequential_37/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_37/dense_62/BiasAdd/ReadVariableOpReadVariableOp6sequential_37_dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_37/dense_62/BiasAddBiasAdd'sequential_37/dense_62/MatMul:product:05sequential_37/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_37/dense_62/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_37/dense_62/BiasAdd/ReadVariableOp-^sequential_37/dense_62/MatMul/ReadVariableOpF^sequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOpE^sequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOpG^sequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp"^sequential_37/simple_rnn_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2^
-sequential_37/dense_62/BiasAdd/ReadVariableOp-sequential_37/dense_62/BiasAdd/ReadVariableOp2\
,sequential_37/dense_62/MatMul/ReadVariableOp,sequential_37/dense_62/MatMul/ReadVariableOp2�
Esequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOpEsequential_37/simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp2�
Dsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOpDsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp2�
Fsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOpFsequential_37/simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp2F
!sequential_37/simple_rnn_14/while!sequential_37/simple_rnn_14/while:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_14_input
�
�
/__inference_simple_rnn_14_layer_call_fn_2705385

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704917o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
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
�.
�
while_body_2705538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2H
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2M
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2F
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:2K
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_14/MatMul/ReadVariableOp�0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2y
while/simple_rnn_cell_14/ReluRelu while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0+while/simple_rnn_cell_14/Relu:activations:0*
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
while/Identity_4Identity+while/simple_rnn_cell_14/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: 
�.
�
while_body_2704713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2H
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2M
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2F
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:2K
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_14/MatMul/ReadVariableOp�0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2y
while/simple_rnn_cell_14/ReluRelu while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0+while/simple_rnn_cell_14/Relu:activations:0*
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
while/Identity_4Identity+while/simple_rnn_cell_14/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: 
�.
�
while_body_2705428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2H
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2M
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2F
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:2K
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_14/MatMul/ReadVariableOp�0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2y
while/simple_rnn_cell_14/ReluRelu while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0+while/simple_rnn_cell_14/Relu:activations:0*
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
while/Identity_4Identity+while/simple_rnn_cell_14/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: 
�>
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704917

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2@
2simple_rnn_cell_14_biasadd_readvariableop_resource:2E
3simple_rnn_cell_14_matmul_1_readvariableop_resource:22
identity��)simple_rnn_cell_14/BiasAdd/ReadVariableOp�(simple_rnn_cell_14/MatMul/ReadVariableOp�*simple_rnn_cell_14/MatMul_1/ReadVariableOp�whileI
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
value	B :2s
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
:���������2c
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
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2m
simple_rnn_cell_14/ReluRelusimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2704850*
condR
while_cond_2704849*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
4__inference_simple_rnn_cell_14_layer_call_fn_2705858

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
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
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states_0
�
�
while_cond_2705537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2705537___redundant_placeholder05
1while_while_cond_2705537___redundant_placeholder15
1while_while_cond_2705537___redundant_placeholder25
1while_while_cond_2705537___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
%__inference_signature_wrapper_2705079
simple_rnn_14_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
"__inference__wrapped_model_2704371o
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
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_14_input
�?
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705495
inputs_0C
1simple_rnn_cell_14_matmul_readvariableop_resource:2@
2simple_rnn_cell_14_biasadd_readvariableop_resource:2E
3simple_rnn_cell_14_matmul_1_readvariableop_resource:22
identity��)simple_rnn_cell_14/BiasAdd/ReadVariableOp�(simple_rnn_cell_14/MatMul/ReadVariableOp�*simple_rnn_cell_14/MatMul_1/ReadVariableOp�whileK
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
value	B :2s
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
:���������2c
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
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2m
simple_rnn_cell_14/ReluRelusimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2705428*
condR
while_cond_2705427*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�
�
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704981

inputs'
simple_rnn_14_2704968:2#
simple_rnn_14_2704970:2'
simple_rnn_14_2704972:22"
dense_62_2704975:2
dense_62_2704977:
identity�� dense_62/StatefulPartitionedCall�%simple_rnn_14/StatefulPartitionedCall�
%simple_rnn_14/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_14_2704968simple_rnn_14_2704970simple_rnn_14_2704972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704917�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_14/StatefulPartitionedCall:output:0dense_62_2704975dense_62_2704977*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_2704798x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_62/StatefulPartitionedCall&^simple_rnn_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2N
%simple_rnn_14/StatefulPartitionedCall%simple_rnn_14/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_37_layer_call_fn_2704963
simple_rnn_14_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704950o
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
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_14_input
�
�
while_cond_2705647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2705647___redundant_placeholder05
1while_while_cond_2705647___redundant_placeholder15
1while_while_cond_2705647___redundant_placeholder25
1while_while_cond_2705647___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705906

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������2G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states_0
�.
�
while_body_2705758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2H
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2M
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2F
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:2K
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_14/MatMul/ReadVariableOp�0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2y
while/simple_rnn_cell_14/ReluRelu while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0+while/simple_rnn_cell_14/Relu:activations:0*
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
while/Identity_4Identity+while/simple_rnn_cell_14/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: 
�>
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705825

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2@
2simple_rnn_cell_14_biasadd_readvariableop_resource:2E
3simple_rnn_cell_14_matmul_1_readvariableop_resource:22
identity��)simple_rnn_cell_14/BiasAdd/ReadVariableOp�(simple_rnn_cell_14/MatMul/ReadVariableOp�*simple_rnn_cell_14/MatMul_1/ReadVariableOp�whileI
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
value	B :2s
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
:���������2c
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
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2m
simple_rnn_cell_14/ReluRelusimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2705758*
condR
while_cond_2705757*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
 simple_rnn_14_while_cond_27052678
4simple_rnn_14_while_simple_rnn_14_while_loop_counter>
:simple_rnn_14_while_simple_rnn_14_while_maximum_iterations#
simple_rnn_14_while_placeholder%
!simple_rnn_14_while_placeholder_1%
!simple_rnn_14_while_placeholder_2:
6simple_rnn_14_while_less_simple_rnn_14_strided_slice_1Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705267___redundant_placeholder0Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705267___redundant_placeholder1Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705267___redundant_placeholder2Q
Msimple_rnn_14_while_simple_rnn_14_while_cond_2705267___redundant_placeholder3 
simple_rnn_14_while_identity
�
simple_rnn_14/while/LessLesssimple_rnn_14_while_placeholder6simple_rnn_14_while_less_simple_rnn_14_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_14/while/IdentityIdentitysimple_rnn_14/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_14_while_identity%simple_rnn_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������2: :::::X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_14/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_14/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_2705757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2705757___redundant_placeholder05
1while_while_cond_2705757___redundant_placeholder15
1while_while_cond_2705757___redundant_placeholder25
1while_while_cond_2705757___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�

�
4__inference_simple_rnn_cell_14_layer_call_fn_2705872

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
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
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704537o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states_0
�<
�
 simple_rnn_14_while_body_27051528
4simple_rnn_14_while_simple_rnn_14_while_loop_counter>
:simple_rnn_14_while_simple_rnn_14_while_maximum_iterations#
simple_rnn_14_while_placeholder%
!simple_rnn_14_while_placeholder_1%
!simple_rnn_14_while_placeholder_27
3simple_rnn_14_while_simple_rnn_14_strided_slice_1_0s
osimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2V
Hsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2[
Isimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22 
simple_rnn_14_while_identity"
simple_rnn_14_while_identity_1"
simple_rnn_14_while_identity_2"
simple_rnn_14_while_identity_3"
simple_rnn_14_while_identity_45
1simple_rnn_14_while_simple_rnn_14_strided_slice_1q
msimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource:2T
Fsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource:2Y
Gsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp�>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
Esimple_rnn_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_14_while_placeholderNsimple_rnn_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
-simple_rnn_14/while/simple_rnn_cell_14/MatMulMatMul>simple_rnn_14/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
.simple_rnn_14/while/simple_rnn_cell_14/BiasAddBiasAdd7simple_rnn_14/while/simple_rnn_cell_14/MatMul:product:0Esimple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1MatMul!simple_rnn_14_while_placeholder_2Fsimple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_14/while/simple_rnn_cell_14/addAddV27simple_rnn_14/while/simple_rnn_cell_14/BiasAdd:output:09simple_rnn_14/while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
+simple_rnn_14/while/simple_rnn_cell_14/ReluRelu.simple_rnn_14/while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2�
>simple_rnn_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
8simple_rnn_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_14_while_placeholder_1Gsimple_rnn_14/while/TensorArrayV2Write/TensorListSetItem/index:output:09simple_rnn_14/while/simple_rnn_cell_14/Relu:activations:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_14/while/addAddV2simple_rnn_14_while_placeholder"simple_rnn_14/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_14/while/add_1AddV24simple_rnn_14_while_simple_rnn_14_while_loop_counter$simple_rnn_14/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_14/while/IdentityIdentitysimple_rnn_14/while/add_1:z:0^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_1Identity:simple_rnn_14_while_simple_rnn_14_while_maximum_iterations^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_2Identitysimple_rnn_14/while/add:z:0^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_3IdentityHsimple_rnn_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_4Identity9simple_rnn_14/while/simple_rnn_cell_14/Relu:activations:0^simple_rnn_14/while/NoOp*
T0*'
_output_shapes
:���������2�
simple_rnn_14/while/NoOpNoOp>^simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=^simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp?^simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_14_while_identity%simple_rnn_14/while/Identity:output:0"I
simple_rnn_14_while_identity_1'simple_rnn_14/while/Identity_1:output:0"I
simple_rnn_14_while_identity_2'simple_rnn_14/while/Identity_2:output:0"I
simple_rnn_14_while_identity_3'simple_rnn_14/while/Identity_3:output:0"I
simple_rnn_14_while_identity_4'simple_rnn_14/while/Identity_4:output:0"h
1simple_rnn_14_while_simple_rnn_14_strided_slice_13simple_rnn_14_while_simple_rnn_14_strided_slice_1_0"�
Fsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resourceHsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"�
Gsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resourceIsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"�
Esimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resourceGsimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0"�
msimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensorosimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2~
=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2|
<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp2�
>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_14/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_14/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_2704550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2704550___redundant_placeholder05
1while_while_cond_2704550___redundant_placeholder15
1while_while_cond_2704550___redundant_placeholder25
1while_while_cond_2704550___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_simple_rnn_14_layer_call_fn_2705363
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704615o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
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
/__inference_simple_rnn_14_layer_call_fn_2705352
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704494o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
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
/__inference_sequential_37_layer_call_fn_2705094

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704950o
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
�	
�
E__inference_dense_62_layer_call_and_return_conditional_losses_2705844

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_2704712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2704712___redundant_placeholder05
1while_while_cond_2704712___redundant_placeholder15
1while_while_cond_2704712___redundant_placeholder25
1while_while_cond_2704712___redundant_placeholder3
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
-: : : : :���������2: :::::J F
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
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704931
simple_rnn_14_input'
simple_rnn_14_2704918:2#
simple_rnn_14_2704920:2'
simple_rnn_14_2704922:22"
dense_62_2704925:2
dense_62_2704927:
identity�� dense_62/StatefulPartitionedCall�%simple_rnn_14/StatefulPartitionedCall�
%simple_rnn_14/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_14_inputsimple_rnn_14_2704918simple_rnn_14_2704920simple_rnn_14_2704922*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704917�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_14/StatefulPartitionedCall:output:0dense_62_2704925dense_62_2704927*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_2704798x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_62/StatefulPartitionedCall&^simple_rnn_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2N
%simple_rnn_14/StatefulPartitionedCall%simple_rnn_14/StatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_14_input
�<
�
 simple_rnn_14_while_body_27052688
4simple_rnn_14_while_simple_rnn_14_while_loop_counter>
:simple_rnn_14_while_simple_rnn_14_while_maximum_iterations#
simple_rnn_14_while_placeholder%
!simple_rnn_14_while_placeholder_1%
!simple_rnn_14_while_placeholder_27
3simple_rnn_14_while_simple_rnn_14_strided_slice_1_0s
osimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2V
Hsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2[
Isimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22 
simple_rnn_14_while_identity"
simple_rnn_14_while_identity_1"
simple_rnn_14_while_identity_2"
simple_rnn_14_while_identity_3"
simple_rnn_14_while_identity_45
1simple_rnn_14_while_simple_rnn_14_strided_slice_1q
msimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource:2T
Fsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource:2Y
Gsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp�>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
Esimple_rnn_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_14_while_placeholderNsimple_rnn_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
-simple_rnn_14/while/simple_rnn_cell_14/MatMulMatMul>simple_rnn_14/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
.simple_rnn_14/while/simple_rnn_cell_14/BiasAddBiasAdd7simple_rnn_14/while/simple_rnn_cell_14/MatMul:product:0Esimple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1MatMul!simple_rnn_14_while_placeholder_2Fsimple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
*simple_rnn_14/while/simple_rnn_cell_14/addAddV27simple_rnn_14/while/simple_rnn_cell_14/BiasAdd:output:09simple_rnn_14/while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
+simple_rnn_14/while/simple_rnn_cell_14/ReluRelu.simple_rnn_14/while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2�
>simple_rnn_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
8simple_rnn_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_14_while_placeholder_1Gsimple_rnn_14/while/TensorArrayV2Write/TensorListSetItem/index:output:09simple_rnn_14/while/simple_rnn_cell_14/Relu:activations:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_14/while/addAddV2simple_rnn_14_while_placeholder"simple_rnn_14/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_14/while/add_1AddV24simple_rnn_14_while_simple_rnn_14_while_loop_counter$simple_rnn_14/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_14/while/IdentityIdentitysimple_rnn_14/while/add_1:z:0^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_1Identity:simple_rnn_14_while_simple_rnn_14_while_maximum_iterations^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_2Identitysimple_rnn_14/while/add:z:0^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_3IdentityHsimple_rnn_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_14/while/Identity_4Identity9simple_rnn_14/while/simple_rnn_cell_14/Relu:activations:0^simple_rnn_14/while/NoOp*
T0*'
_output_shapes
:���������2�
simple_rnn_14/while/NoOpNoOp>^simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=^simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp?^simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_14_while_identity%simple_rnn_14/while/Identity:output:0"I
simple_rnn_14_while_identity_1'simple_rnn_14/while/Identity_1:output:0"I
simple_rnn_14_while_identity_2'simple_rnn_14/while/Identity_2:output:0"I
simple_rnn_14_while_identity_3'simple_rnn_14/while/Identity_3:output:0"I
simple_rnn_14_while_identity_4'simple_rnn_14/while/Identity_4:output:0"h
1simple_rnn_14_while_simple_rnn_14_strided_slice_13simple_rnn_14_while_simple_rnn_14_strided_slice_1_0"�
Fsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resourceHsimple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"�
Gsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resourceIsimple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"�
Esimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resourceGsimple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0"�
msimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensorosimple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2~
=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2|
<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp<simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp2�
>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp>simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:X T

_output_shapes
: 
:
_user_specified_name" simple_rnn_14/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&simple_rnn_14/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�S
�
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705225

inputsQ
?simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource:2N
@simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resource:2S
Asimple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource:229
'dense_62_matmul_readvariableop_resource:26
(dense_62_biasadd_readvariableop_resource:
identity��dense_62/BiasAdd/ReadVariableOp�dense_62/MatMul/ReadVariableOp�7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp�6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp�8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp�simple_rnn_14/whileW
simple_rnn_14/ShapeShapeinputs*
T0*
_output_shapes
::��k
!simple_rnn_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_sliceStridedSlicesimple_rnn_14/Shape:output:0*simple_rnn_14/strided_slice/stack:output:0,simple_rnn_14/strided_slice/stack_1:output:0,simple_rnn_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
simple_rnn_14/zeros/packedPack$simple_rnn_14/strided_slice:output:0%simple_rnn_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_14/zerosFill#simple_rnn_14/zeros/packed:output:0"simple_rnn_14/zeros/Const:output:0*
T0*'
_output_shapes
:���������2q
simple_rnn_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_14/transpose	Transposeinputs%simple_rnn_14/transpose/perm:output:0*
T0*+
_output_shapes
:���������n
simple_rnn_14/Shape_1Shapesimple_rnn_14/transpose:y:0*
T0*
_output_shapes
::��m
#simple_rnn_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_slice_1StridedSlicesimple_rnn_14/Shape_1:output:0,simple_rnn_14/strided_slice_1/stack:output:0.simple_rnn_14/strided_slice_1/stack_1:output:0.simple_rnn_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_14/TensorArrayV2TensorListReserve2simple_rnn_14/TensorArrayV2/element_shape:output:0&simple_rnn_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_14/transpose:y:0Lsimple_rnn_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_slice_2StridedSlicesimple_rnn_14/transpose:y:0,simple_rnn_14/strided_slice_2/stack:output:0.simple_rnn_14/strided_slice_2/stack_1:output:0.simple_rnn_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp?simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
'simple_rnn_14/simple_rnn_cell_14/MatMulMatMul&simple_rnn_14/strided_slice_2:output:0>simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
(simple_rnn_14/simple_rnn_cell_14/BiasAddBiasAdd1simple_rnn_14/simple_rnn_cell_14/MatMul:product:0?simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
)simple_rnn_14/simple_rnn_cell_14/MatMul_1MatMulsimple_rnn_14/zeros:output:0@simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
$simple_rnn_14/simple_rnn_cell_14/addAddV21simple_rnn_14/simple_rnn_cell_14/BiasAdd:output:03simple_rnn_14/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
%simple_rnn_14/simple_rnn_cell_14/ReluRelu(simple_rnn_14/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2|
+simple_rnn_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   l
*simple_rnn_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_14/TensorArrayV2_1TensorListReserve4simple_rnn_14/TensorArrayV2_1/element_shape:output:03simple_rnn_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_14/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_14/whileWhile)simple_rnn_14/while/loop_counter:output:0/simple_rnn_14/while/maximum_iterations:output:0simple_rnn_14/time:output:0&simple_rnn_14/TensorArrayV2_1:handle:0simple_rnn_14/zeros:output:0&simple_rnn_14/strided_slice_1:output:0Esimple_rnn_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource@simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resourceAsimple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_14_while_body_2705152*,
cond$R"
 simple_rnn_14_while_cond_2705151*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
>simple_rnn_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0simple_rnn_14/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_14/while:output:3Gsimple_rnn_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0*
num_elementsv
#simple_rnn_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_slice_3StridedSlice9simple_rnn_14/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_14/strided_slice_3/stack:output:0.simple_rnn_14/strided_slice_3/stack_1:output:0.simple_rnn_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_masks
simple_rnn_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_14/transpose_1	Transpose9simple_rnn_14/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2�
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_62/MatMulMatMul&simple_rnn_14/strided_slice_3:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_62/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp8^simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp7^simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp9^simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp^simple_rnn_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2r
7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp2p
6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp2t
8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp2*
simple_rnn_14/whilesimple_rnn_14/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704950

inputs'
simple_rnn_14_2704937:2#
simple_rnn_14_2704939:2'
simple_rnn_14_2704941:22"
dense_62_2704944:2
dense_62_2704946:
identity�� dense_62/StatefulPartitionedCall�%simple_rnn_14/StatefulPartitionedCall�
%simple_rnn_14/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_14_2704937simple_rnn_14_2704939simple_rnn_14_2704941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704780�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_14/StatefulPartitionedCall:output:0dense_62_2704944dense_62_2704946*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_2704798x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_62/StatefulPartitionedCall&^simple_rnn_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2N
%simple_rnn_14/StatefulPartitionedCall%simple_rnn_14/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�S
�
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705341

inputsQ
?simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource:2N
@simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resource:2S
Asimple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource:229
'dense_62_matmul_readvariableop_resource:26
(dense_62_biasadd_readvariableop_resource:
identity��dense_62/BiasAdd/ReadVariableOp�dense_62/MatMul/ReadVariableOp�7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp�6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp�8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp�simple_rnn_14/whileW
simple_rnn_14/ShapeShapeinputs*
T0*
_output_shapes
::��k
!simple_rnn_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_sliceStridedSlicesimple_rnn_14/Shape:output:0*simple_rnn_14/strided_slice/stack:output:0,simple_rnn_14/strided_slice/stack_1:output:0,simple_rnn_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
simple_rnn_14/zeros/packedPack$simple_rnn_14/strided_slice:output:0%simple_rnn_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_14/zerosFill#simple_rnn_14/zeros/packed:output:0"simple_rnn_14/zeros/Const:output:0*
T0*'
_output_shapes
:���������2q
simple_rnn_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_14/transpose	Transposeinputs%simple_rnn_14/transpose/perm:output:0*
T0*+
_output_shapes
:���������n
simple_rnn_14/Shape_1Shapesimple_rnn_14/transpose:y:0*
T0*
_output_shapes
::��m
#simple_rnn_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_slice_1StridedSlicesimple_rnn_14/Shape_1:output:0,simple_rnn_14/strided_slice_1/stack:output:0.simple_rnn_14/strided_slice_1/stack_1:output:0.simple_rnn_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_14/TensorArrayV2TensorListReserve2simple_rnn_14/TensorArrayV2/element_shape:output:0&simple_rnn_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_14/transpose:y:0Lsimple_rnn_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_slice_2StridedSlicesimple_rnn_14/transpose:y:0,simple_rnn_14/strided_slice_2/stack:output:0.simple_rnn_14/strided_slice_2/stack_1:output:0.simple_rnn_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp?simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
'simple_rnn_14/simple_rnn_cell_14/MatMulMatMul&simple_rnn_14/strided_slice_2:output:0>simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
(simple_rnn_14/simple_rnn_cell_14/BiasAddBiasAdd1simple_rnn_14/simple_rnn_cell_14/MatMul:product:0?simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
)simple_rnn_14/simple_rnn_cell_14/MatMul_1MatMulsimple_rnn_14/zeros:output:0@simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
$simple_rnn_14/simple_rnn_cell_14/addAddV21simple_rnn_14/simple_rnn_cell_14/BiasAdd:output:03simple_rnn_14/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
%simple_rnn_14/simple_rnn_cell_14/ReluRelu(simple_rnn_14/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2|
+simple_rnn_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   l
*simple_rnn_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_14/TensorArrayV2_1TensorListReserve4simple_rnn_14/TensorArrayV2_1/element_shape:output:03simple_rnn_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_14/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_14/whileWhile)simple_rnn_14/while/loop_counter:output:0/simple_rnn_14/while/maximum_iterations:output:0simple_rnn_14/time:output:0&simple_rnn_14/TensorArrayV2_1:handle:0simple_rnn_14/zeros:output:0&simple_rnn_14/strided_slice_1:output:0Esimple_rnn_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_14_simple_rnn_cell_14_matmul_readvariableop_resource@simple_rnn_14_simple_rnn_cell_14_biasadd_readvariableop_resourceAsimple_rnn_14_simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_14_while_body_2705268*,
cond$R"
 simple_rnn_14_while_cond_2705267*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
>simple_rnn_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
0simple_rnn_14/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_14/while:output:3Gsimple_rnn_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0*
num_elementsv
#simple_rnn_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_14/strided_slice_3StridedSlice9simple_rnn_14/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_14/strided_slice_3/stack:output:0.simple_rnn_14/strided_slice_3/stack_1:output:0.simple_rnn_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_masks
simple_rnn_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_14/transpose_1	Transpose9simple_rnn_14/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2�
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_62/MatMulMatMul&simple_rnn_14/strided_slice_3:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_62/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp8^simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp7^simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp9^simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp^simple_rnn_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2r
7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp7simple_rnn_14/simple_rnn_cell_14/BiasAdd/ReadVariableOp2p
6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp6simple_rnn_14/simple_rnn_cell_14/MatMul/ReadVariableOp2t
8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp8simple_rnn_14/simple_rnn_cell_14/MatMul_1/ReadVariableOp2*
simple_rnn_14/whilesimple_rnn_14/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704615

inputs,
simple_rnn_cell_14_2704538:2(
simple_rnn_cell_14_2704540:2,
simple_rnn_cell_14_2704542:22
identity��*simple_rnn_cell_14/StatefulPartitionedCall�whileI
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
value	B :2s
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
:���������2c
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
*simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_14_2704538simple_rnn_cell_14_2704540simple_rnn_cell_14_2704542*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704537n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_14_2704538simple_rnn_cell_14_2704540simple_rnn_cell_14_2704542*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2704551*
condR
while_cond_2704550*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
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
:���������2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������2{
NoOpNoOp+^simple_rnn_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_14/StatefulPartitionedCall*simple_rnn_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�I
�
.sequential_37_simple_rnn_14_while_body_2704298T
Psequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_loop_counterZ
Vsequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_maximum_iterations1
-sequential_37_simple_rnn_14_while_placeholder3
/sequential_37_simple_rnn_14_while_placeholder_13
/sequential_37_simple_rnn_14_while_placeholder_2S
Osequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_strided_slice_1_0�
�sequential_37_simple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_sequential_37_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2d
Vsequential_37_simple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2i
Wsequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22.
*sequential_37_simple_rnn_14_while_identity0
,sequential_37_simple_rnn_14_while_identity_10
,sequential_37_simple_rnn_14_while_identity_20
,sequential_37_simple_rnn_14_while_identity_30
,sequential_37_simple_rnn_14_while_identity_4Q
Msequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_strided_slice_1�
�sequential_37_simple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_sequential_37_simple_rnn_14_tensorarrayunstack_tensorlistfromtensore
Ssequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource:2b
Tsequential_37_simple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource:2g
Usequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��Ksequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�Jsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp�Lsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
Ssequential_37/simple_rnn_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_37/simple_rnn_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_37_simple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_sequential_37_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0-sequential_37_simple_rnn_14_while_placeholder\sequential_37/simple_rnn_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Jsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpUsequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
;sequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMulMatMulLsequential_37/simple_rnn_14/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Ksequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpVsequential_37_simple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
<sequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAddBiasAddEsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul:product:0Ssequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Lsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpWsequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
=sequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1MatMul/sequential_37_simple_rnn_14_while_placeholder_2Tsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
8sequential_37/simple_rnn_14/while/simple_rnn_cell_14/addAddV2Esequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAdd:output:0Gsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
9sequential_37/simple_rnn_14/while/simple_rnn_cell_14/ReluRelu<sequential_37/simple_rnn_14/while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2�
Lsequential_37/simple_rnn_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
Fsequential_37/simple_rnn_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_37_simple_rnn_14_while_placeholder_1Usequential_37/simple_rnn_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0Gsequential_37/simple_rnn_14/while/simple_rnn_cell_14/Relu:activations:0*
_output_shapes
: *
element_dtype0:���i
'sequential_37/simple_rnn_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_37/simple_rnn_14/while/addAddV2-sequential_37_simple_rnn_14_while_placeholder0sequential_37/simple_rnn_14/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_37/simple_rnn_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_37/simple_rnn_14/while/add_1AddV2Psequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_loop_counter2sequential_37/simple_rnn_14/while/add_1/y:output:0*
T0*
_output_shapes
: �
*sequential_37/simple_rnn_14/while/IdentityIdentity+sequential_37/simple_rnn_14/while/add_1:z:0'^sequential_37/simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
,sequential_37/simple_rnn_14/while/Identity_1IdentityVsequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_while_maximum_iterations'^sequential_37/simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
,sequential_37/simple_rnn_14/while/Identity_2Identity)sequential_37/simple_rnn_14/while/add:z:0'^sequential_37/simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
,sequential_37/simple_rnn_14/while/Identity_3IdentityVsequential_37/simple_rnn_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_37/simple_rnn_14/while/NoOp*
T0*
_output_shapes
: �
,sequential_37/simple_rnn_14/while/Identity_4IdentityGsequential_37/simple_rnn_14/while/simple_rnn_cell_14/Relu:activations:0'^sequential_37/simple_rnn_14/while/NoOp*
T0*'
_output_shapes
:���������2�
&sequential_37/simple_rnn_14/while/NoOpNoOpL^sequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpK^sequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOpM^sequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_37_simple_rnn_14_while_identity3sequential_37/simple_rnn_14/while/Identity:output:0"e
,sequential_37_simple_rnn_14_while_identity_15sequential_37/simple_rnn_14/while/Identity_1:output:0"e
,sequential_37_simple_rnn_14_while_identity_25sequential_37/simple_rnn_14/while/Identity_2:output:0"e
,sequential_37_simple_rnn_14_while_identity_35sequential_37/simple_rnn_14/while/Identity_3:output:0"e
,sequential_37_simple_rnn_14_while_identity_45sequential_37/simple_rnn_14/while/Identity_4:output:0"�
Msequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_strided_slice_1Osequential_37_simple_rnn_14_while_sequential_37_simple_rnn_14_strided_slice_1_0"�
Tsequential_37_simple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resourceVsequential_37_simple_rnn_14_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"�
Usequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resourceWsequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"�
Ssequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resourceUsequential_37_simple_rnn_14_while_simple_rnn_cell_14_matmul_readvariableop_resource_0"�
�sequential_37_simple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_sequential_37_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor�sequential_37_simple_rnn_14_while_tensorarrayv2read_tensorlistgetitem_sequential_37_simple_rnn_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2�
Ksequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpKsequential_37/simple_rnn_14/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2�
Jsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOpJsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul/ReadVariableOp2�
Lsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpLsequential_37/simple_rnn_14/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:f b

_output_shapes
: 
H
_user_specified_name0.sequential_37/simple_rnn_14/while/loop_counter:lh

_output_shapes
: 
N
_user_specified_name64sequential_37/simple_rnn_14/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704805
simple_rnn_14_input'
simple_rnn_14_2704781:2#
simple_rnn_14_2704783:2'
simple_rnn_14_2704785:22"
dense_62_2704799:2
dense_62_2704801:
identity�� dense_62/StatefulPartitionedCall�%simple_rnn_14/StatefulPartitionedCall�
%simple_rnn_14/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_14_inputsimple_rnn_14_2704781simple_rnn_14_2704783simple_rnn_14_2704785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2704780�
 dense_62/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_14/StatefulPartitionedCall:output:0dense_62_2704799dense_62_2704801*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_2704798x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_62/StatefulPartitionedCall&^simple_rnn_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������: : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2N
%simple_rnn_14/StatefulPartitionedCall%simple_rnn_14/StatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_14_input
�#
�
while_body_2704551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
"while_simple_rnn_cell_14_2704573_0:20
"while_simple_rnn_cell_14_2704575_0:24
"while_simple_rnn_cell_14_2704577_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
 while_simple_rnn_cell_14_2704573:2.
 while_simple_rnn_cell_14_2704575:22
 while_simple_rnn_cell_14_2704577:22��0while/simple_rnn_cell_14/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_14_2704573_0"while_simple_rnn_cell_14_2704575_0"while_simple_rnn_cell_14_2704577_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2704537r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_14/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity9while/simple_rnn_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������2

while/NoOpNoOp1^while/simple_rnn_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_14_2704573"while_simple_rnn_cell_14_2704573_0"F
 while_simple_rnn_cell_14_2704575"while_simple_rnn_cell_14_2704575_0"F
 while_simple_rnn_cell_14_2704577"while_simple_rnn_cell_14_2704577_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2d
0while/simple_rnn_cell_14/StatefulPartitionedCall0while/simple_rnn_cell_14/StatefulPartitionedCall:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: 
�.
�
while_body_2705648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2H
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2M
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2F
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:2K
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_14/MatMul/ReadVariableOp�0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2y
while/simple_rnn_cell_14/ReluRelu while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0+while/simple_rnn_cell_14/Relu:activations:0*
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
while/Identity_4Identity+while/simple_rnn_cell_14/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_sequential_37_layer_call_fn_2704994
simple_rnn_14_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704981o
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
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_14_input
�k
�
#__inference__traced_restore_2706155
file_prefix2
 assignvariableop_dense_62_kernel:2.
 assignvariableop_1_dense_62_bias:L
:assignvariableop_2_simple_rnn_14_simple_rnn_cell_14_kernel:2V
Dassignvariableop_3_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel:22F
8assignvariableop_4_simple_rnn_14_simple_rnn_cell_14_bias:2&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: #
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_62_kernel_m:26
(assignvariableop_15_adam_dense_62_bias_m:T
Bassignvariableop_16_adam_simple_rnn_14_simple_rnn_cell_14_kernel_m:2^
Lassignvariableop_17_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_m:22N
@assignvariableop_18_adam_simple_rnn_14_simple_rnn_cell_14_bias_m:2<
*assignvariableop_19_adam_dense_62_kernel_v:26
(assignvariableop_20_adam_dense_62_bias_v:T
Bassignvariableop_21_adam_simple_rnn_14_simple_rnn_cell_14_kernel_v:2^
Lassignvariableop_22_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_v:22N
@assignvariableop_23_adam_simple_rnn_14_simple_rnn_cell_14_bias_v:2
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
AssignVariableOpAssignVariableOp assignvariableop_dense_62_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_62_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp:assignvariableop_2_simple_rnn_14_simple_rnn_cell_14_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpDassignvariableop_3_simple_rnn_14_simple_rnn_cell_14_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp8assignvariableop_4_simple_rnn_14_simple_rnn_cell_14_biasIdentity_4:output:0"/device:CPU:0*&
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_62_kernel_mIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_62_bias_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpBassignvariableop_16_adam_simple_rnn_14_simple_rnn_cell_14_kernel_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpLassignvariableop_17_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adam_simple_rnn_14_simple_rnn_cell_14_bias_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_62_kernel_vIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_62_bias_vIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_simple_rnn_14_simple_rnn_cell_14_kernel_vIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpLassignvariableop_22_adam_simple_rnn_14_simple_rnn_cell_14_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp@assignvariableop_23_adam_simple_rnn_14_simple_rnn_cell_14_bias_vIdentity_23:output:0"/device:CPU:0*&
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
�
�
*__inference_dense_62_layer_call_fn_2705834

inputs
unknown:2
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
E__inference_dense_62_layer_call_and_return_conditional_losses_2704798o
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
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�.
�
while_body_2704850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2H
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:2M
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2F
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:2K
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:22��/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_14/MatMul/ReadVariableOp�0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:���������2y
while/simple_rnn_cell_14/ReluRelu while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:���������2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0+while/simple_rnn_cell_14/Relu:activations:0*
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
while/Identity_4Identity+while/simple_rnn_cell_14/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:���������2�

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������2: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:J F
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
:���������2:

_output_shapes
: :

_output_shapes
: "�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
W
simple_rnn_14_input@
%serving_default_simple_rnn_14_input:0���������<
dense_620
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
$trace_0
%trace_1
&trace_2
'trace_32�
/__inference_sequential_37_layer_call_fn_2704963
/__inference_sequential_37_layer_call_fn_2704994
/__inference_sequential_37_layer_call_fn_2705094
/__inference_sequential_37_layer_call_fn_2705109�
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
 z$trace_0z%trace_1z&trace_2z'trace_3
�
(trace_0
)trace_1
*trace_2
+trace_32�
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704805
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704931
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705225
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705341�
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
 z(trace_0z)trace_1z*trace_2z+trace_3
�B�
"__inference__wrapped_model_2704371simple_rnn_14_input"�
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
,iter

-beta_1

.beta_2
	/decay
0learning_ratemambmcmdmevfvgvhvivj"
	optimizer
,
1serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

2states
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
8trace_0
9trace_1
:trace_2
;trace_32�
/__inference_simple_rnn_14_layer_call_fn_2705352
/__inference_simple_rnn_14_layer_call_fn_2705363
/__inference_simple_rnn_14_layer_call_fn_2705374
/__inference_simple_rnn_14_layer_call_fn_2705385�
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
 z8trace_0z9trace_1z:trace_2z;trace_3
�
<trace_0
=trace_1
>trace_2
?trace_32�
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705495
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705605
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705715
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705825�
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
 z<trace_0z=trace_1z>trace_2z?trace_3
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ltrace_02�
*__inference_dense_62_layer_call_fn_2705834�
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
 zLtrace_0
�
Mtrace_02�
E__inference_dense_62_layer_call_and_return_conditional_losses_2705844�
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
 zMtrace_0
!:22dense_62/kernel
:2dense_62/bias
9:722'simple_rnn_14/simple_rnn_cell_14/kernel
C:A2221simple_rnn_14/simple_rnn_cell_14/recurrent_kernel
3:122%simple_rnn_14/simple_rnn_cell_14/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_sequential_37_layer_call_fn_2704963simple_rnn_14_input"�
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
/__inference_sequential_37_layer_call_fn_2704994simple_rnn_14_input"�
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
/__inference_sequential_37_layer_call_fn_2705094inputs"�
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
/__inference_sequential_37_layer_call_fn_2705109inputs"�
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704805simple_rnn_14_input"�
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704931simple_rnn_14_input"�
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705225inputs"�
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705341inputs"�
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
%__inference_signature_wrapper_2705079simple_rnn_14_input"�
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
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_simple_rnn_14_layer_call_fn_2705352inputs_0"�
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
/__inference_simple_rnn_14_layer_call_fn_2705363inputs_0"�
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
/__inference_simple_rnn_14_layer_call_fn_2705374inputs"�
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
/__inference_simple_rnn_14_layer_call_fn_2705385inputs"�
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
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705495inputs_0"�
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
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705605inputs_0"�
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
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705715inputs"�
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
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705825inputs"�
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
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
Utrace_0
Vtrace_12�
4__inference_simple_rnn_cell_14_layer_call_fn_2705858
4__inference_simple_rnn_cell_14_layer_call_fn_2705872�
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
 zUtrace_0zVtrace_1
�
Wtrace_0
Xtrace_12�
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705889
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705906�
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
 zWtrace_0zXtrace_1
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
*__inference_dense_62_layer_call_fn_2705834inputs"�
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
E__inference_dense_62_layer_call_and_return_conditional_losses_2705844inputs"�
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
Y	variables
Z	keras_api
	[total
	\count"
_tf_keras_metric
N
]	variables
^	keras_api
	_total
	`count"
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
4__inference_simple_rnn_cell_14_layer_call_fn_2705858inputsstates_0"�
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
4__inference_simple_rnn_cell_14_layer_call_fn_2705872inputsstates_0"�
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
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705889inputsstates_0"�
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
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705906inputsstates_0"�
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
[0
\1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
.
_0
`1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
:  (2total
:  (2count
&:$22Adam/dense_62/kernel/m
 :2Adam/dense_62/bias/m
>:<22.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/m
H:F2228Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/m
8:622,Adam/simple_rnn_14/simple_rnn_cell_14/bias/m
&:$22Adam/dense_62/kernel/v
 :2Adam/dense_62/bias/v
>:<22.Adam/simple_rnn_14/simple_rnn_cell_14/kernel/v
H:F2228Adam/simple_rnn_14/simple_rnn_cell_14/recurrent_kernel/v
8:622,Adam/simple_rnn_14/simple_rnn_cell_14/bias/v�
"__inference__wrapped_model_2704371~@�=
6�3
1�.
simple_rnn_14_input���������
� "3�0
.
dense_62"�
dense_62����������
E__inference_dense_62_layer_call_and_return_conditional_losses_2705844c/�,
%�"
 �
inputs���������2
� ",�)
"�
tensor_0���������
� �
*__inference_dense_62_layer_call_fn_2705834X/�,
%�"
 �
inputs���������2
� "!�
unknown����������
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704805H�E
>�;
1�.
simple_rnn_14_input���������
p

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_37_layer_call_and_return_conditional_losses_2704931H�E
>�;
1�.
simple_rnn_14_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705225r;�8
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2705341r;�8
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
/__inference_sequential_37_layer_call_fn_2704963tH�E
>�;
1�.
simple_rnn_14_input���������
p

 
� "!�
unknown����������
/__inference_sequential_37_layer_call_fn_2704994tH�E
>�;
1�.
simple_rnn_14_input���������
p 

 
� "!�
unknown����������
/__inference_sequential_37_layer_call_fn_2705094g;�8
1�.
$�!
inputs���������
p

 
� "!�
unknown����������
/__inference_sequential_37_layer_call_fn_2705109g;�8
1�.
$�!
inputs���������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_2705079�W�T
� 
M�J
H
simple_rnn_14_input1�.
simple_rnn_14_input���������"3�0
.
dense_62"�
dense_62����������
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705495�O�L
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
tensor_0���������2
� �
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705605�O�L
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
tensor_0���������2
� �
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705715t?�<
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
tensor_0���������2
� �
J__inference_simple_rnn_14_layer_call_and_return_conditional_losses_2705825t?�<
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
tensor_0���������2
� �
/__inference_simple_rnn_14_layer_call_fn_2705352yO�L
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
unknown���������2�
/__inference_simple_rnn_14_layer_call_fn_2705363yO�L
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
unknown���������2�
/__inference_simple_rnn_14_layer_call_fn_2705374i?�<
5�2
$�!
inputs���������

 
p

 
� "!�
unknown���������2�
/__inference_simple_rnn_14_layer_call_fn_2705385i?�<
5�2
$�!
inputs���������

 
p 

 
� "!�
unknown���������2�
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705889�\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������2
p
� "`�]
V�S
$�!

tensor_0_0���������2
+�(
&�#
tensor_0_1_0���������2
� �
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2705906�\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������2
p 
� "`�]
V�S
$�!

tensor_0_0���������2
+�(
&�#
tensor_0_1_0���������2
� �
4__inference_simple_rnn_cell_14_layer_call_fn_2705858�\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������2
p
� "R�O
"�
tensor_0���������2
)�&
$�!

tensor_1_0���������2�
4__inference_simple_rnn_cell_14_layer_call_fn_2705872�\�Y
R�O
 �
inputs���������
'�$
"�
states_0���������2
p 
� "R�O
"�
tensor_0���������2
)�&
$�!

tensor_1_0���������2