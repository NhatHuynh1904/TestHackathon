??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??
?
first_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_namefirst_layer/kernel
y
&first_layer/kernel/Read/ReadVariableOpReadVariableOpfirst_layer/kernel*
_output_shapes

:*
dtype0
x
first_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namefirst_layer/bias
q
$first_layer/bias/Read/ReadVariableOpReadVariableOpfirst_layer/bias*
_output_shapes
:*
dtype0
?
second_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_namesecond_layer/kernel
{
'second_layer/kernel/Read/ReadVariableOpReadVariableOpsecond_layer/kernel*
_output_shapes

:
*
dtype0
z
second_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_namesecond_layer/bias
s
%second_layer/bias/Read/ReadVariableOpReadVariableOpsecond_layer/bias*
_output_shapes
:
*
dtype0
~
last_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*"
shared_namelast_layer/kernel
w
%last_layer/kernel/Read/ReadVariableOpReadVariableOplast_layer/kernel*
_output_shapes

:
*
dtype0
v
last_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namelast_layer/bias
o
#last_layer/bias/Read/ReadVariableOpReadVariableOplast_layer/bias*
_output_shapes
:*
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
?
Adam/first_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nameAdam/first_layer/kernel/m
?
-Adam/first_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/first_layer/kernel/m*
_output_shapes

:*
dtype0
?
Adam/first_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/first_layer/bias/m

+Adam/first_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/first_layer/bias/m*
_output_shapes
:*
dtype0
?
Adam/second_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/second_layer/kernel/m
?
.Adam/second_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/second_layer/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/second_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_nameAdam/second_layer/bias/m
?
,Adam/second_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/second_layer/bias/m*
_output_shapes
:
*
dtype0
?
Adam/last_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*)
shared_nameAdam/last_layer/kernel/m
?
,Adam/last_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/last_layer/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/last_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/last_layer/bias/m
}
*Adam/last_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/last_layer/bias/m*
_output_shapes
:*
dtype0
?
Adam/first_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nameAdam/first_layer/kernel/v
?
-Adam/first_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/first_layer/kernel/v*
_output_shapes

:*
dtype0
?
Adam/first_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/first_layer/bias/v

+Adam/first_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/first_layer/bias/v*
_output_shapes
:*
dtype0
?
Adam/second_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/second_layer/kernel/v
?
.Adam/second_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/second_layer/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/second_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_nameAdam/second_layer/bias/v
?
,Adam/second_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/second_layer/bias/v*
_output_shapes
:
*
dtype0
?
Adam/last_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*)
shared_nameAdam/last_layer/kernel/v
?
,Adam/last_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/last_layer/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/last_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/last_layer/bias/v
}
*Adam/last_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/last_layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?%
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
h


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK
*

0
1
2
3
4
5
 
*

0
1
2
3
4
5
?

!layers
"layer_metrics
	variables
regularization_losses
trainable_variables
#non_trainable_variables
$layer_regularization_losses
%metrics
 
^\
VARIABLE_VALUEfirst_layer/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEfirst_layer/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1
 


0
1
?

&layers
'layer_regularization_losses
(layer_metrics
	variables
regularization_losses
trainable_variables
)non_trainable_variables
*metrics
_]
VARIABLE_VALUEsecond_layer/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEsecond_layer/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

+layers
,layer_regularization_losses
-layer_metrics
	variables
regularization_losses
trainable_variables
.non_trainable_variables
/metrics
][
VARIABLE_VALUElast_layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElast_layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

0layers
1layer_regularization_losses
2layer_metrics
	variables
regularization_losses
trainable_variables
3non_trainable_variables
4metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 
 
 

50
61
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	7total
	8count
9	variables
:	keras_api
D
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

70
81

9	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

>	variables
?
VARIABLE_VALUEAdam/first_layer/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/first_layer/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/second_layer/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/second_layer/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/last_layer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/last_layer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/first_layer/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/first_layer/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/second_layer/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/second_layer/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/last_layer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/last_layer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_first_layer_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_first_layer_inputfirst_layer/kernelfirst_layer/biassecond_layer/kernelsecond_layer/biaslast_layer/kernellast_layer/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_624371
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&first_layer/kernel/Read/ReadVariableOp$first_layer/bias/Read/ReadVariableOp'second_layer/kernel/Read/ReadVariableOp%second_layer/bias/Read/ReadVariableOp%last_layer/kernel/Read/ReadVariableOp#last_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/first_layer/kernel/m/Read/ReadVariableOp+Adam/first_layer/bias/m/Read/ReadVariableOp.Adam/second_layer/kernel/m/Read/ReadVariableOp,Adam/second_layer/bias/m/Read/ReadVariableOp,Adam/last_layer/kernel/m/Read/ReadVariableOp*Adam/last_layer/bias/m/Read/ReadVariableOp-Adam/first_layer/kernel/v/Read/ReadVariableOp+Adam/first_layer/bias/v/Read/ReadVariableOp.Adam/second_layer/kernel/v/Read/ReadVariableOp,Adam/second_layer/bias/v/Read/ReadVariableOp,Adam/last_layer/kernel/v/Read/ReadVariableOp*Adam/last_layer/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_624619
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefirst_layer/kernelfirst_layer/biassecond_layer/kernelsecond_layer/biaslast_layer/kernellast_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/first_layer/kernel/mAdam/first_layer/bias/mAdam/second_layer/kernel/mAdam/second_layer/bias/mAdam/last_layer/kernel/mAdam/last_layer/bias/mAdam/first_layer/kernel/vAdam/first_layer/bias/vAdam/second_layer/kernel/vAdam/second_layer/bias/vAdam/last_layer/kernel/vAdam/last_layer/bias/v*'
Tin 
2*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_624710??
?
?
-__inference_second_layer_layer_call_fn_624495

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_second_layer_layer_call_and_return_conditional_losses_6242082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
H__inference_second_layer_layer_call_and_return_conditional_losses_624486

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Selu?
IdentityIdentitySelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624271
first_layer_input
first_layer_624255
first_layer_624257
second_layer_624260
second_layer_624262
last_layer_624265
last_layer_624267
identity??#first_layer/StatefulPartitionedCall?"last_layer/StatefulPartitionedCall?$second_layer/StatefulPartitionedCall?
#first_layer/StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputfirst_layer_624255first_layer_624257*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_first_layer_layer_call_and_return_conditional_losses_6241812%
#first_layer/StatefulPartitionedCall?
$second_layer/StatefulPartitionedCallStatefulPartitionedCall,first_layer/StatefulPartitionedCall:output:0second_layer_624260second_layer_624262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_second_layer_layer_call_and_return_conditional_losses_6242082&
$second_layer/StatefulPartitionedCall?
"last_layer/StatefulPartitionedCallStatefulPartitionedCall-second_layer/StatefulPartitionedCall:output:0last_layer_624265last_layer_624267*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_last_layer_layer_call_and_return_conditional_losses_6242352$
"last_layer/StatefulPartitionedCall?
IdentityIdentity+last_layer/StatefulPartitionedCall:output:0$^first_layer/StatefulPartitionedCall#^last_layer/StatefulPartitionedCall%^second_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall2H
"last_layer/StatefulPartitionedCall"last_layer/StatefulPartitionedCall2L
$second_layer/StatefulPartitionedCall$second_layer/StatefulPartitionedCall:Z V
'
_output_shapes
:?????????
+
_user_specified_namefirst_layer_input
?s
?
"__inference__traced_restore_624710
file_prefix'
#assignvariableop_first_layer_kernel'
#assignvariableop_1_first_layer_bias*
&assignvariableop_2_second_layer_kernel(
$assignvariableop_3_second_layer_bias(
$assignvariableop_4_last_layer_kernel&
"assignvariableop_5_last_layer_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_11
-assignvariableop_15_adam_first_layer_kernel_m/
+assignvariableop_16_adam_first_layer_bias_m2
.assignvariableop_17_adam_second_layer_kernel_m0
,assignvariableop_18_adam_second_layer_bias_m0
,assignvariableop_19_adam_last_layer_kernel_m.
*assignvariableop_20_adam_last_layer_bias_m1
-assignvariableop_21_adam_first_layer_kernel_v/
+assignvariableop_22_adam_first_layer_bias_v2
.assignvariableop_23_adam_second_layer_kernel_v0
,assignvariableop_24_adam_second_layer_bias_v0
,assignvariableop_25_adam_last_layer_kernel_v.
*assignvariableop_26_adam_last_layer_bias_v
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp#assignvariableop_first_layer_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_first_layer_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp&assignvariableop_2_second_layer_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp$assignvariableop_3_second_layer_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_last_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_last_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_adam_first_layer_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_first_layer_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp.assignvariableop_17_adam_second_layer_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp,assignvariableop_18_adam_second_layer_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_last_layer_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_last_layer_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_first_layer_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_first_layer_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_second_layer_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_second_layer_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_last_layer_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_last_layer_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*?
_input_shapesp
n: :::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262(
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
?>
?
__inference__traced_save_624619
file_prefix1
-savev2_first_layer_kernel_read_readvariableop/
+savev2_first_layer_bias_read_readvariableop2
.savev2_second_layer_kernel_read_readvariableop0
,savev2_second_layer_bias_read_readvariableop0
,savev2_last_layer_kernel_read_readvariableop.
*savev2_last_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_first_layer_kernel_m_read_readvariableop6
2savev2_adam_first_layer_bias_m_read_readvariableop9
5savev2_adam_second_layer_kernel_m_read_readvariableop7
3savev2_adam_second_layer_bias_m_read_readvariableop7
3savev2_adam_last_layer_kernel_m_read_readvariableop5
1savev2_adam_last_layer_bias_m_read_readvariableop8
4savev2_adam_first_layer_kernel_v_read_readvariableop6
2savev2_adam_first_layer_bias_v_read_readvariableop9
5savev2_adam_second_layer_kernel_v_read_readvariableop7
3savev2_adam_second_layer_bias_v_read_readvariableop7
3savev2_adam_last_layer_kernel_v_read_readvariableop5
1savev2_adam_last_layer_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_first_layer_kernel_read_readvariableop+savev2_first_layer_bias_read_readvariableop.savev2_second_layer_kernel_read_readvariableop,savev2_second_layer_bias_read_readvariableop,savev2_last_layer_kernel_read_readvariableop*savev2_last_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_first_layer_kernel_m_read_readvariableop2savev2_adam_first_layer_bias_m_read_readvariableop5savev2_adam_second_layer_kernel_m_read_readvariableop3savev2_adam_second_layer_bias_m_read_readvariableop3savev2_adam_last_layer_kernel_m_read_readvariableop1savev2_adam_last_layer_bias_m_read_readvariableop4savev2_adam_first_layer_kernel_v_read_readvariableop2savev2_adam_first_layer_bias_v_read_readvariableop5savev2_adam_second_layer_kernel_v_read_readvariableop3savev2_adam_second_layer_bias_v_read_readvariableop3savev2_adam_last_layer_kernel_v_read_readvariableop1savev2_adam_last_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::
:
:
:: : : : : : : : : :::
:
:
::::
:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :
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
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: 
?	
?
F__inference_last_layer_layer_call_and_return_conditional_losses_624506

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_624371
first_layer_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_6241662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:?????????
+
_user_specified_namefirst_layer_input
?	
?
F__inference_last_layer_layer_call_and_return_conditional_losses_624235

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624396

inputs.
*first_layer_matmul_readvariableop_resource/
+first_layer_biasadd_readvariableop_resource/
+second_layer_matmul_readvariableop_resource0
,second_layer_biasadd_readvariableop_resource-
)last_layer_matmul_readvariableop_resource.
*last_layer_biasadd_readvariableop_resource
identity??"first_layer/BiasAdd/ReadVariableOp?!first_layer/MatMul/ReadVariableOp?!last_layer/BiasAdd/ReadVariableOp? last_layer/MatMul/ReadVariableOp?#second_layer/BiasAdd/ReadVariableOp?"second_layer/MatMul/ReadVariableOp?
!first_layer/MatMul/ReadVariableOpReadVariableOp*first_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02#
!first_layer/MatMul/ReadVariableOp?
first_layer/MatMulMatMulinputs)first_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
first_layer/MatMul?
"first_layer/BiasAdd/ReadVariableOpReadVariableOp+first_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"first_layer/BiasAdd/ReadVariableOp?
first_layer/BiasAddBiasAddfirst_layer/MatMul:product:0*first_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
first_layer/BiasAdd|
first_layer/ReluRelufirst_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
first_layer/Relu?
"second_layer/MatMul/ReadVariableOpReadVariableOp+second_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02$
"second_layer/MatMul/ReadVariableOp?
second_layer/MatMulMatMulfirst_layer/Relu:activations:0*second_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
second_layer/MatMul?
#second_layer/BiasAdd/ReadVariableOpReadVariableOp,second_layer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#second_layer/BiasAdd/ReadVariableOp?
second_layer/BiasAddBiasAddsecond_layer/MatMul:product:0+second_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
second_layer/BiasAdd
second_layer/SeluSelusecond_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
second_layer/Selu?
 last_layer/MatMul/ReadVariableOpReadVariableOp)last_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02"
 last_layer/MatMul/ReadVariableOp?
last_layer/MatMulMatMulsecond_layer/Selu:activations:0(last_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
last_layer/MatMul?
!last_layer/BiasAdd/ReadVariableOpReadVariableOp*last_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!last_layer/BiasAdd/ReadVariableOp?
last_layer/BiasAddBiasAddlast_layer/MatMul:product:0)last_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
last_layer/BiasAdd?
last_layer/SoftmaxSoftmaxlast_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
last_layer/Softmax?
IdentityIdentitylast_layer/Softmax:softmax:0#^first_layer/BiasAdd/ReadVariableOp"^first_layer/MatMul/ReadVariableOp"^last_layer/BiasAdd/ReadVariableOp!^last_layer/MatMul/ReadVariableOp$^second_layer/BiasAdd/ReadVariableOp#^second_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2H
"first_layer/BiasAdd/ReadVariableOp"first_layer/BiasAdd/ReadVariableOp2F
!first_layer/MatMul/ReadVariableOp!first_layer/MatMul/ReadVariableOp2F
!last_layer/BiasAdd/ReadVariableOp!last_layer/BiasAdd/ReadVariableOp2D
 last_layer/MatMul/ReadVariableOp last_layer/MatMul/ReadVariableOp2J
#second_layer/BiasAdd/ReadVariableOp#second_layer/BiasAdd/ReadVariableOp2H
"second_layer/MatMul/ReadVariableOp"second_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
H__inference_second_layer_layer_call_and_return_conditional_losses_624208

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Selu?
IdentityIdentitySelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_last_layer_layer_call_fn_624515

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_last_layer_layer_call_and_return_conditional_losses_6242352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624329

inputs
first_layer_624313
first_layer_624315
second_layer_624318
second_layer_624320
last_layer_624323
last_layer_624325
identity??#first_layer/StatefulPartitionedCall?"last_layer/StatefulPartitionedCall?$second_layer/StatefulPartitionedCall?
#first_layer/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_layer_624313first_layer_624315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_first_layer_layer_call_and_return_conditional_losses_6241812%
#first_layer/StatefulPartitionedCall?
$second_layer/StatefulPartitionedCallStatefulPartitionedCall,first_layer/StatefulPartitionedCall:output:0second_layer_624318second_layer_624320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_second_layer_layer_call_and_return_conditional_losses_6242082&
$second_layer/StatefulPartitionedCall?
"last_layer/StatefulPartitionedCallStatefulPartitionedCall-second_layer/StatefulPartitionedCall:output:0last_layer_624323last_layer_624325*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_last_layer_layer_call_and_return_conditional_losses_6242352$
"last_layer/StatefulPartitionedCall?
IdentityIdentity+last_layer/StatefulPartitionedCall:output:0$^first_layer/StatefulPartitionedCall#^last_layer/StatefulPartitionedCall%^second_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall2H
"last_layer/StatefulPartitionedCall"last_layer/StatefulPartitionedCall2L
$second_layer/StatefulPartitionedCall$second_layer/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
G__inference_first_layer_layer_call_and_return_conditional_losses_624181

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
G__inference_first_layer_layer_call_and_return_conditional_losses_624466

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624252
first_layer_input
first_layer_624192
first_layer_624194
second_layer_624219
second_layer_624221
last_layer_624246
last_layer_624248
identity??#first_layer/StatefulPartitionedCall?"last_layer/StatefulPartitionedCall?$second_layer/StatefulPartitionedCall?
#first_layer/StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputfirst_layer_624192first_layer_624194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_first_layer_layer_call_and_return_conditional_losses_6241812%
#first_layer/StatefulPartitionedCall?
$second_layer/StatefulPartitionedCallStatefulPartitionedCall,first_layer/StatefulPartitionedCall:output:0second_layer_624219second_layer_624221*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_second_layer_layer_call_and_return_conditional_losses_6242082&
$second_layer/StatefulPartitionedCall?
"last_layer/StatefulPartitionedCallStatefulPartitionedCall-second_layer/StatefulPartitionedCall:output:0last_layer_624246last_layer_624248*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_last_layer_layer_call_and_return_conditional_losses_6242352$
"last_layer/StatefulPartitionedCall?
IdentityIdentity+last_layer/StatefulPartitionedCall:output:0$^first_layer/StatefulPartitionedCall#^last_layer/StatefulPartitionedCall%^second_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall2H
"last_layer/StatefulPartitionedCall"last_layer/StatefulPartitionedCall2L
$second_layer/StatefulPartitionedCall$second_layer/StatefulPartitionedCall:Z V
'
_output_shapes
:?????????
+
_user_specified_namefirst_layer_input
?
?
.__inference_sequential_24_layer_call_fn_624438

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_6242932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_first_layer_layer_call_fn_624475

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_first_layer_layer_call_and_return_conditional_losses_6241812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?(
?
!__inference__wrapped_model_624166
first_layer_input<
8sequential_24_first_layer_matmul_readvariableop_resource=
9sequential_24_first_layer_biasadd_readvariableop_resource=
9sequential_24_second_layer_matmul_readvariableop_resource>
:sequential_24_second_layer_biasadd_readvariableop_resource;
7sequential_24_last_layer_matmul_readvariableop_resource<
8sequential_24_last_layer_biasadd_readvariableop_resource
identity??0sequential_24/first_layer/BiasAdd/ReadVariableOp?/sequential_24/first_layer/MatMul/ReadVariableOp?/sequential_24/last_layer/BiasAdd/ReadVariableOp?.sequential_24/last_layer/MatMul/ReadVariableOp?1sequential_24/second_layer/BiasAdd/ReadVariableOp?0sequential_24/second_layer/MatMul/ReadVariableOp?
/sequential_24/first_layer/MatMul/ReadVariableOpReadVariableOp8sequential_24_first_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype021
/sequential_24/first_layer/MatMul/ReadVariableOp?
 sequential_24/first_layer/MatMulMatMulfirst_layer_input7sequential_24/first_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_24/first_layer/MatMul?
0sequential_24/first_layer/BiasAdd/ReadVariableOpReadVariableOp9sequential_24_first_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0sequential_24/first_layer/BiasAdd/ReadVariableOp?
!sequential_24/first_layer/BiasAddBiasAdd*sequential_24/first_layer/MatMul:product:08sequential_24/first_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!sequential_24/first_layer/BiasAdd?
sequential_24/first_layer/ReluRelu*sequential_24/first_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_24/first_layer/Relu?
0sequential_24/second_layer/MatMul/ReadVariableOpReadVariableOp9sequential_24_second_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype022
0sequential_24/second_layer/MatMul/ReadVariableOp?
!sequential_24/second_layer/MatMulMatMul,sequential_24/first_layer/Relu:activations:08sequential_24/second_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2#
!sequential_24/second_layer/MatMul?
1sequential_24/second_layer/BiasAdd/ReadVariableOpReadVariableOp:sequential_24_second_layer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype023
1sequential_24/second_layer/BiasAdd/ReadVariableOp?
"sequential_24/second_layer/BiasAddBiasAdd+sequential_24/second_layer/MatMul:product:09sequential_24/second_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2$
"sequential_24/second_layer/BiasAdd?
sequential_24/second_layer/SeluSelu+sequential_24/second_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2!
sequential_24/second_layer/Selu?
.sequential_24/last_layer/MatMul/ReadVariableOpReadVariableOp7sequential_24_last_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype020
.sequential_24/last_layer/MatMul/ReadVariableOp?
sequential_24/last_layer/MatMulMatMul-sequential_24/second_layer/Selu:activations:06sequential_24/last_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_24/last_layer/MatMul?
/sequential_24/last_layer/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_last_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_24/last_layer/BiasAdd/ReadVariableOp?
 sequential_24/last_layer/BiasAddBiasAdd)sequential_24/last_layer/MatMul:product:07sequential_24/last_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_24/last_layer/BiasAdd?
 sequential_24/last_layer/SoftmaxSoftmax)sequential_24/last_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_24/last_layer/Softmax?
IdentityIdentity*sequential_24/last_layer/Softmax:softmax:01^sequential_24/first_layer/BiasAdd/ReadVariableOp0^sequential_24/first_layer/MatMul/ReadVariableOp0^sequential_24/last_layer/BiasAdd/ReadVariableOp/^sequential_24/last_layer/MatMul/ReadVariableOp2^sequential_24/second_layer/BiasAdd/ReadVariableOp1^sequential_24/second_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2d
0sequential_24/first_layer/BiasAdd/ReadVariableOp0sequential_24/first_layer/BiasAdd/ReadVariableOp2b
/sequential_24/first_layer/MatMul/ReadVariableOp/sequential_24/first_layer/MatMul/ReadVariableOp2b
/sequential_24/last_layer/BiasAdd/ReadVariableOp/sequential_24/last_layer/BiasAdd/ReadVariableOp2`
.sequential_24/last_layer/MatMul/ReadVariableOp.sequential_24/last_layer/MatMul/ReadVariableOp2f
1sequential_24/second_layer/BiasAdd/ReadVariableOp1sequential_24/second_layer/BiasAdd/ReadVariableOp2d
0sequential_24/second_layer/MatMul/ReadVariableOp0sequential_24/second_layer/MatMul/ReadVariableOp:Z V
'
_output_shapes
:?????????
+
_user_specified_namefirst_layer_input
?
?
.__inference_sequential_24_layer_call_fn_624308
first_layer_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_6242932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:?????????
+
_user_specified_namefirst_layer_input
?
?
.__inference_sequential_24_layer_call_fn_624344
first_layer_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_6243292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:?????????
+
_user_specified_namefirst_layer_input
?
?
.__inference_sequential_24_layer_call_fn_624455

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_6243292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624293

inputs
first_layer_624277
first_layer_624279
second_layer_624282
second_layer_624284
last_layer_624287
last_layer_624289
identity??#first_layer/StatefulPartitionedCall?"last_layer/StatefulPartitionedCall?$second_layer/StatefulPartitionedCall?
#first_layer/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_layer_624277first_layer_624279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_first_layer_layer_call_and_return_conditional_losses_6241812%
#first_layer/StatefulPartitionedCall?
$second_layer/StatefulPartitionedCallStatefulPartitionedCall,first_layer/StatefulPartitionedCall:output:0second_layer_624282second_layer_624284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_second_layer_layer_call_and_return_conditional_losses_6242082&
$second_layer/StatefulPartitionedCall?
"last_layer/StatefulPartitionedCallStatefulPartitionedCall-second_layer/StatefulPartitionedCall:output:0last_layer_624287last_layer_624289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_last_layer_layer_call_and_return_conditional_losses_6242352$
"last_layer/StatefulPartitionedCall?
IdentityIdentity+last_layer/StatefulPartitionedCall:output:0$^first_layer/StatefulPartitionedCall#^last_layer/StatefulPartitionedCall%^second_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall2H
"last_layer/StatefulPartitionedCall"last_layer/StatefulPartitionedCall2L
$second_layer/StatefulPartitionedCall$second_layer/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624421

inputs.
*first_layer_matmul_readvariableop_resource/
+first_layer_biasadd_readvariableop_resource/
+second_layer_matmul_readvariableop_resource0
,second_layer_biasadd_readvariableop_resource-
)last_layer_matmul_readvariableop_resource.
*last_layer_biasadd_readvariableop_resource
identity??"first_layer/BiasAdd/ReadVariableOp?!first_layer/MatMul/ReadVariableOp?!last_layer/BiasAdd/ReadVariableOp? last_layer/MatMul/ReadVariableOp?#second_layer/BiasAdd/ReadVariableOp?"second_layer/MatMul/ReadVariableOp?
!first_layer/MatMul/ReadVariableOpReadVariableOp*first_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02#
!first_layer/MatMul/ReadVariableOp?
first_layer/MatMulMatMulinputs)first_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
first_layer/MatMul?
"first_layer/BiasAdd/ReadVariableOpReadVariableOp+first_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"first_layer/BiasAdd/ReadVariableOp?
first_layer/BiasAddBiasAddfirst_layer/MatMul:product:0*first_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
first_layer/BiasAdd|
first_layer/ReluRelufirst_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
first_layer/Relu?
"second_layer/MatMul/ReadVariableOpReadVariableOp+second_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02$
"second_layer/MatMul/ReadVariableOp?
second_layer/MatMulMatMulfirst_layer/Relu:activations:0*second_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
second_layer/MatMul?
#second_layer/BiasAdd/ReadVariableOpReadVariableOp,second_layer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#second_layer/BiasAdd/ReadVariableOp?
second_layer/BiasAddBiasAddsecond_layer/MatMul:product:0+second_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
second_layer/BiasAdd
second_layer/SeluSelusecond_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
second_layer/Selu?
 last_layer/MatMul/ReadVariableOpReadVariableOp)last_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02"
 last_layer/MatMul/ReadVariableOp?
last_layer/MatMulMatMulsecond_layer/Selu:activations:0(last_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
last_layer/MatMul?
!last_layer/BiasAdd/ReadVariableOpReadVariableOp*last_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!last_layer/BiasAdd/ReadVariableOp?
last_layer/BiasAddBiasAddlast_layer/MatMul:product:0)last_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
last_layer/BiasAdd?
last_layer/SoftmaxSoftmaxlast_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
last_layer/Softmax?
IdentityIdentitylast_layer/Softmax:softmax:0#^first_layer/BiasAdd/ReadVariableOp"^first_layer/MatMul/ReadVariableOp"^last_layer/BiasAdd/ReadVariableOp!^last_layer/MatMul/ReadVariableOp$^second_layer/BiasAdd/ReadVariableOp#^second_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2H
"first_layer/BiasAdd/ReadVariableOp"first_layer/BiasAdd/ReadVariableOp2F
!first_layer/MatMul/ReadVariableOp!first_layer/MatMul/ReadVariableOp2F
!last_layer/BiasAdd/ReadVariableOp!last_layer/BiasAdd/ReadVariableOp2D
 last_layer/MatMul/ReadVariableOp last_layer/MatMul/ReadVariableOp2J
#second_layer/BiasAdd/ReadVariableOp#second_layer/BiasAdd/ReadVariableOp2H
"second_layer/MatMul/ReadVariableOp"second_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
O
first_layer_input:
#serving_default_first_layer_input:0?????????>

last_layer0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?#
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
L_default_save_signature
M__call__
*N&call_and_return_all_conditional_losses"? 
_tf_keras_sequential? {"class_name": "Sequential", "name": "sequential_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "first_layer_input"}}, {"class_name": "Dense", "config": {"name": "first_layer", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "second_layer", "trainable": true, "dtype": "float32", "units": 10, "activation": "selu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "last_layer", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "first_layer_input"}}, {"class_name": "Dense", "config": {"name": "first_layer", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "second_layer", "trainable": true, "dtype": "float32", "units": 10, "activation": "selu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "last_layer", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.4000000059604645, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "first_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "first_layer", "trainable": true, "dtype": "float32", "units": 20, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "second_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "second_layer", "trainable": true, "dtype": "float32", "units": 10, "activation": "selu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
S__call__
*T&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "last_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "last_layer", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK"
	optimizer
J

0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
?

!layers
"layer_metrics
	variables
regularization_losses
trainable_variables
#non_trainable_variables
$layer_regularization_losses
%metrics
M__call__
L_default_save_signature
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
$:"2first_layer/kernel
:2first_layer/bias
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
?

&layers
'layer_regularization_losses
(layer_metrics
	variables
regularization_losses
trainable_variables
)non_trainable_variables
*metrics
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
%:#
2second_layer/kernel
:
2second_layer/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

+layers
,layer_regularization_losses
-layer_metrics
	variables
regularization_losses
trainable_variables
.non_trainable_variables
/metrics
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
#:!
2last_layer/kernel
:2last_layer/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

0layers
1layer_regularization_losses
2layer_metrics
	variables
regularization_losses
trainable_variables
3non_trainable_variables
4metrics
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	7total
	8count
9	variables
:	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
):'2Adam/first_layer/kernel/m
#:!2Adam/first_layer/bias/m
*:(
2Adam/second_layer/kernel/m
$:"
2Adam/second_layer/bias/m
(:&
2Adam/last_layer/kernel/m
": 2Adam/last_layer/bias/m
):'2Adam/first_layer/kernel/v
#:!2Adam/first_layer/bias/v
*:(
2Adam/second_layer/kernel/v
$:"
2Adam/second_layer/bias/v
(:&
2Adam/last_layer/kernel/v
": 2Adam/last_layer/bias/v
?2?
!__inference__wrapped_model_624166?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
first_layer_input?????????
?2?
.__inference_sequential_24_layer_call_fn_624455
.__inference_sequential_24_layer_call_fn_624438
.__inference_sequential_24_layer_call_fn_624308
.__inference_sequential_24_layer_call_fn_624344?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624396
I__inference_sequential_24_layer_call_and_return_conditional_losses_624252
I__inference_sequential_24_layer_call_and_return_conditional_losses_624421
I__inference_sequential_24_layer_call_and_return_conditional_losses_624271?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_first_layer_layer_call_fn_624475?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_first_layer_layer_call_and_return_conditional_losses_624466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_second_layer_layer_call_fn_624495?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_second_layer_layer_call_and_return_conditional_losses_624486?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_last_layer_layer_call_fn_624515?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_last_layer_layer_call_and_return_conditional_losses_624506?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_624371first_layer_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_624166}
:?7
0?-
+?(
first_layer_input?????????
? "7?4
2

last_layer$?!

last_layer??????????
G__inference_first_layer_layer_call_and_return_conditional_losses_624466\
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
,__inference_first_layer_layer_call_fn_624475O
/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_last_layer_layer_call_and_return_conditional_losses_624506\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_last_layer_layer_call_fn_624515O/?,
%?"
 ?
inputs?????????

? "???????????
H__inference_second_layer_layer_call_and_return_conditional_losses_624486\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????

? ?
-__inference_second_layer_layer_call_fn_624495O/?,
%?"
 ?
inputs?????????
? "??????????
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624252s
B??
8?5
+?(
first_layer_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624271s
B??
8?5
+?(
first_layer_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624396h
7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_24_layer_call_and_return_conditional_losses_624421h
7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
.__inference_sequential_24_layer_call_fn_624308f
B??
8?5
+?(
first_layer_input?????????
p

 
? "???????????
.__inference_sequential_24_layer_call_fn_624344f
B??
8?5
+?(
first_layer_input?????????
p 

 
? "???????????
.__inference_sequential_24_layer_call_fn_624438[
7?4
-?*
 ?
inputs?????????
p

 
? "???????????
.__inference_sequential_24_layer_call_fn_624455[
7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
$__inference_signature_wrapper_624371?
O?L
? 
E?B
@
first_layer_input+?(
first_layer_input?????????"7?4
2

last_layer$?!

last_layer?????????