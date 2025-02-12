��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
DepthToSpace

input"T
output"T"	
Ttype"

block_sizeint(0":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
s
FakeQuantWithMinMaxVars

inputs
min
max
outputs"
num_bitsint"
narrow_rangebool( 
}
!FakeQuantWithMinMaxVarsPerChannel

inputs
min
max
outputs"
num_bitsint"
narrow_rangebool( 
.
Identity

input"T
output"T"	
Ttype
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
:
Minimum
x"T
y"T
z"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ٮ
�
!quantize_layer/quantize_layer_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quantize_layer/quantize_layer_min
�
5quantize_layer/quantize_layer_min/Read/ReadVariableOpReadVariableOp!quantize_layer/quantize_layer_min*
_output_shapes
: *
dtype0
�
!quantize_layer/quantize_layer_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quantize_layer/quantize_layer_max
�
5quantize_layer/quantize_layer_max/Read/ReadVariableOpReadVariableOp!quantize_layer/quantize_layer_max*
_output_shapes
: *
dtype0
�
quantize_layer/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequantize_layer/optimizer_step
�
1quantize_layer/optimizer_step/Read/ReadVariableOpReadVariableOpquantize_layer/optimizer_step*
_output_shapes
: *
dtype0
�
quant_conv2d/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namequant_conv2d/optimizer_step
�
/quant_conv2d/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d/optimizer_step*
_output_shapes
: *
dtype0
�
quant_conv2d/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*(
shared_namequant_conv2d/kernel_min

+quant_conv2d/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d/kernel_min*
_output_shapes
:#*
dtype0
�
quant_conv2d/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*(
shared_namequant_conv2d/kernel_max

+quant_conv2d/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d/kernel_max*
_output_shapes
:#*
dtype0
�
 quant_conv2d/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_conv2d/post_activation_min
�
4quant_conv2d/post_activation_min/Read/ReadVariableOpReadVariableOp quant_conv2d/post_activation_min*
_output_shapes
: *
dtype0
�
 quant_conv2d/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_conv2d/post_activation_max
�
4quant_conv2d/post_activation_max/Read/ReadVariableOpReadVariableOp quant_conv2d/post_activation_max*
_output_shapes
: *
dtype0
�
quant_conv2d_1/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_1/optimizer_step
�
1quant_conv2d_1/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_1/optimizer_step*
_output_shapes
: *
dtype0
�
quant_conv2d_1/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape:#**
shared_namequant_conv2d_1/kernel_min
�
-quant_conv2d_1/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_1/kernel_min*
_output_shapes
:#*
dtype0
�
quant_conv2d_1/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape:#**
shared_namequant_conv2d_1/kernel_max
�
-quant_conv2d_1/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_1/kernel_max*
_output_shapes
:#*
dtype0
�
"quant_conv2d_1/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_1/post_activation_min
�
6quant_conv2d_1/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_1/post_activation_min*
_output_shapes
: *
dtype0
�
"quant_conv2d_1/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_1/post_activation_max
�
6quant_conv2d_1/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_1/post_activation_max*
_output_shapes
: *
dtype0
�
quant_conv2d_2/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_2/optimizer_step
�
1quant_conv2d_2/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_2/optimizer_step*
_output_shapes
: *
dtype0
�
quant_conv2d_2/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape:#**
shared_namequant_conv2d_2/kernel_min
�
-quant_conv2d_2/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_2/kernel_min*
_output_shapes
:#*
dtype0
�
quant_conv2d_2/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape:#**
shared_namequant_conv2d_2/kernel_max
�
-quant_conv2d_2/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_2/kernel_max*
_output_shapes
:#*
dtype0
�
"quant_conv2d_2/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_2/post_activation_min
�
6quant_conv2d_2/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_2/post_activation_min*
_output_shapes
: *
dtype0
�
"quant_conv2d_2/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_2/post_activation_max
�
6quant_conv2d_2/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_2/post_activation_max*
_output_shapes
: *
dtype0
�
quant_conv2d_3/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_3/optimizer_step
�
1quant_conv2d_3/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_3/optimizer_step*
_output_shapes
: *
dtype0
�
quant_conv2d_3/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_3/kernel_min
�
-quant_conv2d_3/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_3/kernel_min*
_output_shapes
:*
dtype0
�
quant_conv2d_3/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_3/kernel_max
�
-quant_conv2d_3/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_3/kernel_max*
_output_shapes
:*
dtype0
�
"quant_conv2d_3/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_3/post_activation_min
�
6quant_conv2d_3/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_3/post_activation_min*
_output_shapes
: *
dtype0
�
"quant_conv2d_3/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_3/post_activation_max
�
6quant_conv2d_3/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_3/post_activation_max*
_output_shapes
: *
dtype0
�
quant_lambda/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namequant_lambda/optimizer_step
�
/quant_lambda/optimizer_step/Read/ReadVariableOpReadVariableOpquant_lambda/optimizer_step*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:#*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:#*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:##* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:##*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:#*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:##* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:##*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:#*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:#* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:#*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
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

NoOpNoOp
�Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�P
value�PB�P B�P
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	
signatures
#
_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
%
#_self_saveable_object_factories
�
quantize_layer_min
quantize_layer_max
quantizer_vars
optimizer_step
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
�
	layer
optimizer_step
_weight_vars

kernel_min

kernel_max
_quantize_activations
post_activation_min
 post_activation_max
!_output_quantizers
#"_self_saveable_object_factories
#trainable_variables
$	variables
%regularization_losses
&	keras_api
�
	'layer
(optimizer_step
)_weight_vars
*
kernel_min
+
kernel_max
,_quantize_activations
-post_activation_min
.post_activation_max
/_output_quantizers
#0_self_saveable_object_factories
1trainable_variables
2	variables
3regularization_losses
4	keras_api
�
	5layer
6optimizer_step
7_weight_vars
8
kernel_min
9
kernel_max
:_quantize_activations
;post_activation_min
<post_activation_max
=_output_quantizers
#>_self_saveable_object_factories
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
�
	Clayer
Doptimizer_step
E_weight_vars
F
kernel_min
G
kernel_max
H_quantize_activations
Ipost_activation_min
Jpost_activation_max
K_output_quantizers
#L_self_saveable_object_factories
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
�
	Qlayer
Roptimizer_step
S_weight_vars
T_quantize_activations
U_output_quantizers
#V_self_saveable_object_factories
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
 
 
 
8
[0
\1
]2
^3
_4
`5
a6
b7
�
0
1
2
[3
\4
5
6
7
8
 9
]10
^11
(12
*13
+14
-15
.16
_17
`18
619
820
921
;22
<23
a24
b25
D26
F27
G28
I29
J30
R31
 
�

clayers
dmetrics
enon_trainable_variables
trainable_variables
	variables
flayer_regularization_losses
glayer_metrics
regularization_losses
 
yw
VARIABLE_VALUE!quantize_layer/quantize_layer_minBlayer_with_weights-0/quantize_layer_min/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!quantize_layer/quantize_layer_maxBlayer_with_weights-0/quantize_layer_max/.ATTRIBUTES/VARIABLE_VALUE

min_var
max_var
qo
VARIABLE_VALUEquantize_layer/optimizer_step>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
 
�

hlayers
imetrics
jnon_trainable_variables
trainable_variables
	variables
klayer_regularization_losses
llayer_metrics
regularization_losses
�

[kernel
\bias
#m_self_saveable_object_factories
ntrainable_variables
o	variables
pregularization_losses
q	keras_api
om
VARIABLE_VALUEquant_conv2d/optimizer_step>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

r0
ge
VARIABLE_VALUEquant_conv2d/kernel_min:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEquant_conv2d/kernel_max:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
yw
VARIABLE_VALUE quant_conv2d/post_activation_minClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE quant_conv2d/post_activation_maxClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

[0
\1
1
[0
\1
2
3
4
5
 6
 
�

slayers
tmetrics
unon_trainable_variables
#trainable_variables
$	variables
vlayer_regularization_losses
wlayer_metrics
%regularization_losses
�

]kernel
^bias
#x_self_saveable_object_factories
ytrainable_variables
z	variables
{regularization_losses
|	keras_api
qo
VARIABLE_VALUEquant_conv2d_1/optimizer_step>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

}0
ig
VARIABLE_VALUEquant_conv2d_1/kernel_min:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEquant_conv2d_1/kernel_max:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
{y
VARIABLE_VALUE"quant_conv2d_1/post_activation_minClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"quant_conv2d_1/post_activation_maxClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

]0
^1
1
]0
^1
(2
*3
+4
-5
.6
 
�

~layers
metrics
�non_trainable_variables
1trainable_variables
2	variables
 �layer_regularization_losses
�layer_metrics
3regularization_losses
�

_kernel
`bias
$�_self_saveable_object_factories
�trainable_variables
�	variables
�regularization_losses
�	keras_api
qo
VARIABLE_VALUEquant_conv2d_2/optimizer_step>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

�0
ig
VARIABLE_VALUEquant_conv2d_2/kernel_min:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEquant_conv2d_2/kernel_max:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
{y
VARIABLE_VALUE"quant_conv2d_2/post_activation_minClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"quant_conv2d_2/post_activation_maxClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

_0
`1
1
_0
`1
62
83
94
;5
<6
 
�
�layers
�metrics
�non_trainable_variables
?trainable_variables
@	variables
 �layer_regularization_losses
�layer_metrics
Aregularization_losses
�

akernel
bbias
$�_self_saveable_object_factories
�trainable_variables
�	variables
�regularization_losses
�	keras_api
qo
VARIABLE_VALUEquant_conv2d_3/optimizer_step>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

�0
ig
VARIABLE_VALUEquant_conv2d_3/kernel_min:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEquant_conv2d_3/kernel_max:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
{y
VARIABLE_VALUE"quant_conv2d_3/post_activation_minClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"quant_conv2d_3/post_activation_maxClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 

a0
b1
1
a0
b1
D2
F3
G4
I5
J6
 
�
�layers
�metrics
�non_trainable_variables
Mtrainable_variables
N	variables
 �layer_regularization_losses
�layer_metrics
Oregularization_losses
|
$�_self_saveable_object_factories
�trainable_variables
�	variables
�regularization_losses
�	keras_api
om
VARIABLE_VALUEquant_lambda/optimizer_step>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 

R0
 
�
�layers
�metrics
�non_trainable_variables
Wtrainable_variables
X	variables
 �layer_regularization_losses
�layer_metrics
Yregularization_losses
SQ
VARIABLE_VALUEconv2d/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEconv2d/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_3/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_3/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6

�0
�
0
1
2
3
4
5
6
 7
(8
*9
+10
-11
.12
613
814
915
;16
<17
D18
F19
G20
I21
J22
R23
 
 
 
 

0
1
2
 
 
 

[0
\1

[0
\1
 
�
�layers
�metrics
�non_trainable_variables
ntrainable_variables
o	variables
 �layer_regularization_losses
�layer_metrics
pregularization_losses

[0
�2

0
 
#
0
1
2
3
 4
 
 
 

]0
^1

]0
^1
 
�
�layers
�metrics
�non_trainable_variables
ytrainable_variables
z	variables
 �layer_regularization_losses
�layer_metrics
{regularization_losses

]0
�2

'0
 
#
(0
*1
+2
-3
.4
 
 
 

_0
`1

_0
`1
 
�
�layers
�metrics
�non_trainable_variables
�trainable_variables
�	variables
 �layer_regularization_losses
�layer_metrics
�regularization_losses

_0
�2

50
 
#
60
81
92
;3
<4
 
 
 

a0
b1

a0
b1
 
�
�layers
�metrics
�non_trainable_variables
�trainable_variables
�	variables
 �layer_regularization_losses
�layer_metrics
�regularization_losses

a0
�2

C0
 
#
D0
F1
G2
I3
J4
 
 
 
 
 
 
�
�layers
�metrics
�non_trainable_variables
�trainable_variables
�	variables
 �layer_regularization_losses
�layer_metrics
�regularization_losses

Q0
 

R0
 
 
8

�total

�count
�	variables
�	keras_api
 
 
 
 
 

min_var
max_var
 
 
 
 
 

*min_var
+max_var
 
 
 
 
 

8min_var
9max_var
 
 
 
 
 

Fmin_var
Gmax_var
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
�
serving_default_input_1Placeholder*A
_output_shapes/
-:+���������������������������*
dtype0*6
shape-:+���������������������������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!quantize_layer/quantize_layer_min!quantize_layer/quantize_layer_maxconv2d/kernelquant_conv2d/kernel_minquant_conv2d/kernel_maxconv2d/bias quant_conv2d/post_activation_min quant_conv2d/post_activation_maxconv2d_1/kernelquant_conv2d_1/kernel_minquant_conv2d_1/kernel_maxconv2d_1/bias"quant_conv2d_1/post_activation_min"quant_conv2d_1/post_activation_maxconv2d_2/kernelquant_conv2d_2/kernel_minquant_conv2d_2/kernel_maxconv2d_2/bias"quant_conv2d_2/post_activation_min"quant_conv2d_2/post_activation_maxconv2d_3/kernelquant_conv2d_3/kernel_minquant_conv2d_3/kernel_maxconv2d_3/bias"quant_conv2d_3/post_activation_min"quant_conv2d_3/post_activation_max*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_signature_wrapper_7595566
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5quantize_layer/quantize_layer_min/Read/ReadVariableOp5quantize_layer/quantize_layer_max/Read/ReadVariableOp1quantize_layer/optimizer_step/Read/ReadVariableOp/quant_conv2d/optimizer_step/Read/ReadVariableOp+quant_conv2d/kernel_min/Read/ReadVariableOp+quant_conv2d/kernel_max/Read/ReadVariableOp4quant_conv2d/post_activation_min/Read/ReadVariableOp4quant_conv2d/post_activation_max/Read/ReadVariableOp1quant_conv2d_1/optimizer_step/Read/ReadVariableOp-quant_conv2d_1/kernel_min/Read/ReadVariableOp-quant_conv2d_1/kernel_max/Read/ReadVariableOp6quant_conv2d_1/post_activation_min/Read/ReadVariableOp6quant_conv2d_1/post_activation_max/Read/ReadVariableOp1quant_conv2d_2/optimizer_step/Read/ReadVariableOp-quant_conv2d_2/kernel_min/Read/ReadVariableOp-quant_conv2d_2/kernel_max/Read/ReadVariableOp6quant_conv2d_2/post_activation_min/Read/ReadVariableOp6quant_conv2d_2/post_activation_max/Read/ReadVariableOp1quant_conv2d_3/optimizer_step/Read/ReadVariableOp-quant_conv2d_3/kernel_min/Read/ReadVariableOp-quant_conv2d_3/kernel_max/Read/ReadVariableOp6quant_conv2d_3/post_activation_min/Read/ReadVariableOp6quant_conv2d_3/post_activation_max/Read/ReadVariableOp/quant_lambda/optimizer_step/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *)
f$R"
 __inference__traced_save_7595929
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!quantize_layer/quantize_layer_min!quantize_layer/quantize_layer_maxquantize_layer/optimizer_stepquant_conv2d/optimizer_stepquant_conv2d/kernel_minquant_conv2d/kernel_max quant_conv2d/post_activation_min quant_conv2d/post_activation_maxquant_conv2d_1/optimizer_stepquant_conv2d_1/kernel_minquant_conv2d_1/kernel_max"quant_conv2d_1/post_activation_min"quant_conv2d_1/post_activation_maxquant_conv2d_2/optimizer_stepquant_conv2d_2/kernel_minquant_conv2d_2/kernel_max"quant_conv2d_2/post_activation_min"quant_conv2d_2/post_activation_maxquant_conv2d_3/optimizer_stepquant_conv2d_3/kernel_minquant_conv2d_3/kernel_max"quant_conv2d_3/post_activation_min"quant_conv2d_3/post_activation_maxquant_lambda/optimizer_stepconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biastotalcount*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *,
f'R%
#__inference__traced_restore_7596041��
�]
�	
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590809

inputsI
/lastvaluequant_batchmin_readvariableop_resource:#3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������2	
BiasAdd�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�&
�
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590344

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������2	
BiasAdd�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�^
�	
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7589708

inputsI
/lastvaluequant_batchmin_readvariableop_resource:#3
%lastvaluequant_assignminlast_resource:#3
%lastvaluequant_assignmaxlast_resource:#-
biasadd_readvariableop_resource:#@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7590850

inputs
identity�
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+���������������������������*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�.
�
"__inference__wrapped_model_7594947
input_1&
model_quantize_layer_7594815: &
model_quantize_layer_7594817: 4
model_quant_conv2d_7594837:#(
model_quant_conv2d_7594839:#(
model_quant_conv2d_7594841:#(
model_quant_conv2d_7594843:#$
model_quant_conv2d_7594845: $
model_quant_conv2d_7594847: 6
model_quant_conv2d_1_7594867:##*
model_quant_conv2d_1_7594869:#*
model_quant_conv2d_1_7594871:#*
model_quant_conv2d_1_7594873:#&
model_quant_conv2d_1_7594875: &
model_quant_conv2d_1_7594877: 6
model_quant_conv2d_2_7594897:##*
model_quant_conv2d_2_7594899:#*
model_quant_conv2d_2_7594901:#*
model_quant_conv2d_2_7594903:#&
model_quant_conv2d_2_7594905: &
model_quant_conv2d_2_7594907: 6
model_quant_conv2d_3_7594927:#*
model_quant_conv2d_3_7594929:*
model_quant_conv2d_3_7594931:*
model_quant_conv2d_3_7594933:&
model_quant_conv2d_3_7594935: &
model_quant_conv2d_3_7594937: 
identity��*model/quant_conv2d/StatefulPartitionedCall�,model/quant_conv2d_1/StatefulPartitionedCall�,model/quant_conv2d_2/StatefulPartitionedCall�,model/quant_conv2d_3/StatefulPartitionedCall�,model/quantize_layer/StatefulPartitionedCall�
,model/quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1model_quantize_layer_7594815model_quantize_layer_7594817*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948142.
,model/quantize_layer/StatefulPartitionedCall�
*model/quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall5model/quantize_layer/StatefulPartitionedCall:output:0model_quant_conv2d_7594837model_quant_conv2d_7594839model_quant_conv2d_7594841model_quant_conv2d_7594843model_quant_conv2d_7594845model_quant_conv2d_7594847*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948362,
*model/quant_conv2d/StatefulPartitionedCall�
,model/quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall3model/quant_conv2d/StatefulPartitionedCall:output:0model_quant_conv2d_1_7594867model_quant_conv2d_1_7594869model_quant_conv2d_1_7594871model_quant_conv2d_1_7594873model_quant_conv2d_1_7594875model_quant_conv2d_1_7594877*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948662.
,model/quant_conv2d_1/StatefulPartitionedCall�
,model/quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall5model/quant_conv2d_1/StatefulPartitionedCall:output:0model_quant_conv2d_2_7594897model_quant_conv2d_2_7594899model_quant_conv2d_2_7594901model_quant_conv2d_2_7594903model_quant_conv2d_2_7594905model_quant_conv2d_2_7594907*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948962.
,model/quant_conv2d_2/StatefulPartitionedCall�
,model/quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall5model/quant_conv2d_2/StatefulPartitionedCall:output:0model_quant_conv2d_3_7594927model_quant_conv2d_3_7594929model_quant_conv2d_3_7594931model_quant_conv2d_3_7594933model_quant_conv2d_3_7594935model_quant_conv2d_3_7594937*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949262.
,model/quant_conv2d_3/StatefulPartitionedCall�
"model/quant_lambda/PartitionedCallPartitionedCall5model/quant_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949442$
"model/quant_lambda/PartitionedCall�
IdentityIdentity+model/quant_lambda/PartitionedCall:output:0+^model/quant_conv2d/StatefulPartitionedCall-^model/quant_conv2d_1/StatefulPartitionedCall-^model/quant_conv2d_2/StatefulPartitionedCall-^model/quant_conv2d_3/StatefulPartitionedCall-^model/quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*model/quant_conv2d/StatefulPartitionedCall*model/quant_conv2d/StatefulPartitionedCall2\
,model/quant_conv2d_1/StatefulPartitionedCall,model/quant_conv2d_1/StatefulPartitionedCall2\
,model/quant_conv2d_2/StatefulPartitionedCall,model/quant_conv2d_2/StatefulPartitionedCall2\
,model/quant_conv2d_3/StatefulPartitionedCall,model/quant_conv2d_3/StatefulPartitionedCall2\
,model/quantize_layer/StatefulPartitionedCall,model/quantize_layer/StatefulPartitionedCall:j f
A
_output_shapes/
-:+���������������������������
!
_user_specified_name	input_1
�*
�

B__inference_model_layer_call_and_return_conditional_losses_7595690

inputs 
quantize_layer_7595631:  
quantize_layer_7595633: .
quant_conv2d_7595636:#"
quant_conv2d_7595638:#"
quant_conv2d_7595640:#"
quant_conv2d_7595642:#
quant_conv2d_7595644: 
quant_conv2d_7595646: 0
quant_conv2d_1_7595649:##$
quant_conv2d_1_7595651:#$
quant_conv2d_1_7595653:#$
quant_conv2d_1_7595655:# 
quant_conv2d_1_7595657:  
quant_conv2d_1_7595659: 0
quant_conv2d_2_7595662:##$
quant_conv2d_2_7595664:#$
quant_conv2d_2_7595666:#$
quant_conv2d_2_7595668:# 
quant_conv2d_2_7595670:  
quant_conv2d_2_7595672: 0
quant_conv2d_3_7595675:#$
quant_conv2d_3_7595677:$
quant_conv2d_3_7595679:$
quant_conv2d_3_7595681: 
quant_conv2d_3_7595683:  
quant_conv2d_3_7595685: 
identity��$quant_conv2d/StatefulPartitionedCall�&quant_conv2d_1/StatefulPartitionedCall�&quant_conv2d_2/StatefulPartitionedCall�&quant_conv2d_3/StatefulPartitionedCall�&quantize_layer/StatefulPartitionedCall�
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_7595631quantize_layer_7595633*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951382(
&quantize_layer/StatefulPartitionedCall�
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_7595636quant_conv2d_7595638quant_conv2d_7595640quant_conv2d_7595642quant_conv2d_7595644quant_conv2d_7595646*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951602&
$quant_conv2d/StatefulPartitionedCall�
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_7595649quant_conv2d_1_7595651quant_conv2d_1_7595653quant_conv2d_1_7595655quant_conv2d_1_7595657quant_conv2d_1_7595659*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951902(
&quant_conv2d_1/StatefulPartitionedCall�
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_7595662quant_conv2d_2_7595664quant_conv2d_2_7595666quant_conv2d_2_7595668quant_conv2d_2_7595670quant_conv2d_2_7595672*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952202(
&quant_conv2d_2/StatefulPartitionedCall�
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_7595675quant_conv2d_3_7595677quant_conv2d_3_7595679quant_conv2d_3_7595681quant_conv2d_3_7595683quant_conv2d_3_7595685*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952502(
&quant_conv2d_3/StatefulPartitionedCall�
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952682
quant_lambda/PartitionedCall�
IdentityIdentity%quant_lambda/PartitionedCall:output:0%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�'
�
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7590568

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:##X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:#-
biasadd_readvariableop_resource:#K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�	
�
0__inference_quant_conv2d_1_layer_call_fn_7590579

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_75905682
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_7595068
input_1
unknown: 
	unknown_0: #
	unknown_1:#
	unknown_2:#
	unknown_3:#
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:##
	unknown_8:#
	unknown_9:#

unknown_10:#

unknown_11: 

unknown_12: $

unknown_13:##

unknown_14:#

unknown_15:#

unknown_16:#

unknown_17: 

unknown_18: $

unknown_19:#

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_75950132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+���������������������������
!
_user_specified_name	input_1
�*
�

B__inference_model_layer_call_and_return_conditional_losses_7595628

inputs 
quantize_layer_7595569:  
quantize_layer_7595571: .
quant_conv2d_7595574:#"
quant_conv2d_7595576:#"
quant_conv2d_7595578:#"
quant_conv2d_7595580:#
quant_conv2d_7595582: 
quant_conv2d_7595584: 0
quant_conv2d_1_7595587:##$
quant_conv2d_1_7595589:#$
quant_conv2d_1_7595591:#$
quant_conv2d_1_7595593:# 
quant_conv2d_1_7595595:  
quant_conv2d_1_7595597: 0
quant_conv2d_2_7595600:##$
quant_conv2d_2_7595602:#$
quant_conv2d_2_7595604:#$
quant_conv2d_2_7595606:# 
quant_conv2d_2_7595608:  
quant_conv2d_2_7595610: 0
quant_conv2d_3_7595613:#$
quant_conv2d_3_7595615:$
quant_conv2d_3_7595617:$
quant_conv2d_3_7595619: 
quant_conv2d_3_7595621:  
quant_conv2d_3_7595623: 
identity��$quant_conv2d/StatefulPartitionedCall�&quant_conv2d_1/StatefulPartitionedCall�&quant_conv2d_2/StatefulPartitionedCall�&quant_conv2d_3/StatefulPartitionedCall�&quantize_layer/StatefulPartitionedCall�
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_7595569quantize_layer_7595571*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948142(
&quantize_layer/StatefulPartitionedCall�
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_7595574quant_conv2d_7595576quant_conv2d_7595578quant_conv2d_7595580quant_conv2d_7595582quant_conv2d_7595584*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948362&
$quant_conv2d/StatefulPartitionedCall�
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_7595587quant_conv2d_1_7595589quant_conv2d_1_7595591quant_conv2d_1_7595593quant_conv2d_1_7595595quant_conv2d_1_7595597*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948662(
&quant_conv2d_1/StatefulPartitionedCall�
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_7595600quant_conv2d_2_7595602quant_conv2d_2_7595604quant_conv2d_2_7595606quant_conv2d_2_7595608quant_conv2d_2_7595610*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948962(
&quant_conv2d_2/StatefulPartitionedCall�
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_7595613quant_conv2d_3_7595615quant_conv2d_3_7595617quant_conv2d_3_7595619quant_conv2d_3_7595621quant_conv2d_3_7595623*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949262(
&quant_conv2d_3/StatefulPartitionedCall�
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949442
quant_lambda/PartitionedCall�
IdentityIdentity%quant_lambda/PartitionedCall:output:0%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_7595383
input_1
unknown: 
	unknown_0: #
	unknown_1:#
	unknown_2:#
	unknown_3:#
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:##
	unknown_8:#
	unknown_9:#

unknown_10:#

unknown_11: 

unknown_12: $

unknown_13:##

unknown_14:#

unknown_15:#

unknown_16:#

unknown_17: 

unknown_18: $

unknown_19:#

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������**
_read_only_resource_inputs

	*2
config_proto" 

CPU

GPU2 *0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_75952712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+���������������������������
!
_user_specified_name	input_1
�	
�
0__inference_quant_conv2d_3_layer_call_fn_7590355

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_75903442
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
�
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7589997

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)AllValuesQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
0__inference_quant_conv2d_3_layer_call_fn_7590820

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_75908092
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
�
*__inference_restored_function_body_7594814

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_75907612
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7595250

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_75905472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�*
�

B__inference_model_layer_call_and_return_conditional_losses_7595507
input_1 
quantize_layer_7595448:  
quantize_layer_7595450: .
quant_conv2d_7595453:#"
quant_conv2d_7595455:#"
quant_conv2d_7595457:#"
quant_conv2d_7595459:#
quant_conv2d_7595461: 
quant_conv2d_7595463: 0
quant_conv2d_1_7595466:##$
quant_conv2d_1_7595468:#$
quant_conv2d_1_7595470:#$
quant_conv2d_1_7595472:# 
quant_conv2d_1_7595474:  
quant_conv2d_1_7595476: 0
quant_conv2d_2_7595479:##$
quant_conv2d_2_7595481:#$
quant_conv2d_2_7595483:#$
quant_conv2d_2_7595485:# 
quant_conv2d_2_7595487:  
quant_conv2d_2_7595489: 0
quant_conv2d_3_7595492:#$
quant_conv2d_3_7595494:$
quant_conv2d_3_7595496:$
quant_conv2d_3_7595498: 
quant_conv2d_3_7595500:  
quant_conv2d_3_7595502: 
identity��$quant_conv2d/StatefulPartitionedCall�&quant_conv2d_1/StatefulPartitionedCall�&quant_conv2d_2/StatefulPartitionedCall�&quant_conv2d_3/StatefulPartitionedCall�&quantize_layer/StatefulPartitionedCall�
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1quantize_layer_7595448quantize_layer_7595450*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951382(
&quantize_layer/StatefulPartitionedCall�
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_7595453quant_conv2d_7595455quant_conv2d_7595457quant_conv2d_7595459quant_conv2d_7595461quant_conv2d_7595463*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951602&
$quant_conv2d/StatefulPartitionedCall�
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_7595466quant_conv2d_1_7595468quant_conv2d_1_7595470quant_conv2d_1_7595472quant_conv2d_1_7595474quant_conv2d_1_7595476*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951902(
&quant_conv2d_1/StatefulPartitionedCall�
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_7595479quant_conv2d_2_7595481quant_conv2d_2_7595483quant_conv2d_2_7595485quant_conv2d_2_7595487quant_conv2d_2_7595489*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952202(
&quant_conv2d_2/StatefulPartitionedCall�
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_7595492quant_conv2d_3_7595494quant_conv2d_3_7595496quant_conv2d_3_7595498quant_conv2d_3_7595500quant_conv2d_3_7595502*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952502(
&quant_conv2d_3/StatefulPartitionedCall�
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952682
quant_lambda/PartitionedCall�
IdentityIdentity%quant_lambda/PartitionedCall:output:0%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:j f
A
_output_shapes/
-:+���������������������������
!
_user_specified_name	input_1
�	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7590859

inputs
identity�
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+���������������������������*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�&
�
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590045

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������2	
BiasAdd�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7594866

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_75908412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_7595747

inputs
unknown: 
	unknown_0: #
	unknown_1:#
	unknown_2:#
	unknown_3:#
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:##
	unknown_8:#
	unknown_9:#

unknown_10:#

unknown_11: 

unknown_12: $

unknown_13:##

unknown_14:#

unknown_15:#

unknown_16:#

unknown_17: 

unknown_18: $

unknown_19:#

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_75950132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�]
�	
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590547

inputsI
/lastvaluequant_batchmin_readvariableop_resource:#3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������2	
BiasAdd�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
�
*__inference_restored_function_body_7595138

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_75900252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7594926

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_75900452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
F
*__inference_restored_function_body_7594944

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_75897172
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�K
�
 __inference__traced_save_7595929
file_prefix@
<savev2_quantize_layer_quantize_layer_min_read_readvariableop@
<savev2_quantize_layer_quantize_layer_max_read_readvariableop<
8savev2_quantize_layer_optimizer_step_read_readvariableop:
6savev2_quant_conv2d_optimizer_step_read_readvariableop6
2savev2_quant_conv2d_kernel_min_read_readvariableop6
2savev2_quant_conv2d_kernel_max_read_readvariableop?
;savev2_quant_conv2d_post_activation_min_read_readvariableop?
;savev2_quant_conv2d_post_activation_max_read_readvariableop<
8savev2_quant_conv2d_1_optimizer_step_read_readvariableop8
4savev2_quant_conv2d_1_kernel_min_read_readvariableop8
4savev2_quant_conv2d_1_kernel_max_read_readvariableopA
=savev2_quant_conv2d_1_post_activation_min_read_readvariableopA
=savev2_quant_conv2d_1_post_activation_max_read_readvariableop<
8savev2_quant_conv2d_2_optimizer_step_read_readvariableop8
4savev2_quant_conv2d_2_kernel_min_read_readvariableop8
4savev2_quant_conv2d_2_kernel_max_read_readvariableopA
=savev2_quant_conv2d_2_post_activation_min_read_readvariableopA
=savev2_quant_conv2d_2_post_activation_max_read_readvariableop<
8savev2_quant_conv2d_3_optimizer_step_read_readvariableop8
4savev2_quant_conv2d_3_kernel_min_read_readvariableop8
4savev2_quant_conv2d_3_kernel_max_read_readvariableopA
=savev2_quant_conv2d_3_post_activation_min_read_readvariableopA
=savev2_quant_conv2d_3_post_activation_max_read_readvariableop:
6savev2_quant_lambda_optimizer_step_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#BBlayer_with_weights-0/quantize_layer_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/quantize_layer_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_quantize_layer_quantize_layer_min_read_readvariableop<savev2_quantize_layer_quantize_layer_max_read_readvariableop8savev2_quantize_layer_optimizer_step_read_readvariableop6savev2_quant_conv2d_optimizer_step_read_readvariableop2savev2_quant_conv2d_kernel_min_read_readvariableop2savev2_quant_conv2d_kernel_max_read_readvariableop;savev2_quant_conv2d_post_activation_min_read_readvariableop;savev2_quant_conv2d_post_activation_max_read_readvariableop8savev2_quant_conv2d_1_optimizer_step_read_readvariableop4savev2_quant_conv2d_1_kernel_min_read_readvariableop4savev2_quant_conv2d_1_kernel_max_read_readvariableop=savev2_quant_conv2d_1_post_activation_min_read_readvariableop=savev2_quant_conv2d_1_post_activation_max_read_readvariableop8savev2_quant_conv2d_2_optimizer_step_read_readvariableop4savev2_quant_conv2d_2_kernel_min_read_readvariableop4savev2_quant_conv2d_2_kernel_max_read_readvariableop=savev2_quant_conv2d_2_post_activation_min_read_readvariableop=savev2_quant_conv2d_2_post_activation_max_read_readvariableop8savev2_quant_conv2d_3_optimizer_step_read_readvariableop4savev2_quant_conv2d_3_kernel_min_read_readvariableop4savev2_quant_conv2d_3_kernel_max_read_readvariableop=savev2_quant_conv2d_3_post_activation_min_read_readvariableop=savev2_quant_conv2d_3_post_activation_max_read_readvariableop6savev2_quant_lambda_optimizer_step_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : :#:#: : : :#:#: : : :#:#: : : ::: : : :#:#:##:#:##:#:#:: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:#: 

_output_shapes
:#:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: : 


_output_shapes
:#: 

_output_shapes
:#:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:#: 

_output_shapes
:#:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:#: 

_output_shapes
:#:,(
&
_output_shapes
:##: 

_output_shapes
:#:,(
&
_output_shapes
:##: 

_output_shapes
:#:,(
&
_output_shapes
:#:  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: 
�
�
%__inference_signature_wrapper_7595566
input_1
unknown: 
	unknown_0: #
	unknown_1:#
	unknown_2:#
	unknown_3:#
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:##
	unknown_8:#
	unknown_9:#

unknown_10:#

unknown_11: 

unknown_12: $

unknown_13:##

unknown_14:#

unknown_15:#

unknown_16:#

unknown_17: 

unknown_18: $

unknown_19:#

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8� *+
f&R$
"__inference__wrapped_model_75949472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+���������������������������
!
_user_specified_name	input_1
�'
�
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589627

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:##X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:#-
biasadd_readvariableop_resource:#K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
J
.__inference_quant_lambda_layer_call_fn_7590900

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_75908592
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�^
�	
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7591281

inputsI
/lastvaluequant_batchmin_readvariableop_resource:##3
%lastvaluequant_assignminlast_resource:#3
%lastvaluequant_assignmaxlast_resource:#-
biasadd_readvariableop_resource:#@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
J
.__inference_quant_lambda_layer_call_fn_7590059

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_75900542
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�'
�
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7591091

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity��#AllValuesQuantize/AssignMaxAllValue�#AllValuesQuantize/AssignMinAllValue�8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�(AllValuesQuantize/Maximum/ReadVariableOp�(AllValuesQuantize/Minimum/ReadVariableOp�
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const�
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin�
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const_1�
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMax�
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOp�
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum�
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y�
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1�
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOp�
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum�
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y�
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1�
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue�
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue�
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)AllValuesQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
.__inference_quant_conv2d_layer_call_fn_7590387

inputs!
unknown:#
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_75903762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�^
�	
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589787

inputsI
/lastvaluequant_batchmin_readvariableop_resource:##3
%lastvaluequant_assignminlast_resource:#3
%lastvaluequant_assignmaxlast_resource:#-
biasadd_readvariableop_resource:#@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�'
�
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7589738

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:#-
biasadd_readvariableop_resource:#K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
.__inference_quant_conv2d_layer_call_fn_7589939

inputs!
unknown:#
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_75899282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�'
�
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7590841

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:##X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:#-
biasadd_readvariableop_resource:#K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�	
�
0__inference_quant_conv2d_2_layer_call_fn_7589798

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_75897872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7594896

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_75896272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_7596041
file_prefix<
2assignvariableop_quantize_layer_quantize_layer_min: >
4assignvariableop_1_quantize_layer_quantize_layer_max: :
0assignvariableop_2_quantize_layer_optimizer_step: 8
.assignvariableop_3_quant_conv2d_optimizer_step: 8
*assignvariableop_4_quant_conv2d_kernel_min:#8
*assignvariableop_5_quant_conv2d_kernel_max:#=
3assignvariableop_6_quant_conv2d_post_activation_min: =
3assignvariableop_7_quant_conv2d_post_activation_max: :
0assignvariableop_8_quant_conv2d_1_optimizer_step: :
,assignvariableop_9_quant_conv2d_1_kernel_min:#;
-assignvariableop_10_quant_conv2d_1_kernel_max:#@
6assignvariableop_11_quant_conv2d_1_post_activation_min: @
6assignvariableop_12_quant_conv2d_1_post_activation_max: ;
1assignvariableop_13_quant_conv2d_2_optimizer_step: ;
-assignvariableop_14_quant_conv2d_2_kernel_min:#;
-assignvariableop_15_quant_conv2d_2_kernel_max:#@
6assignvariableop_16_quant_conv2d_2_post_activation_min: @
6assignvariableop_17_quant_conv2d_2_post_activation_max: ;
1assignvariableop_18_quant_conv2d_3_optimizer_step: ;
-assignvariableop_19_quant_conv2d_3_kernel_min:;
-assignvariableop_20_quant_conv2d_3_kernel_max:@
6assignvariableop_21_quant_conv2d_3_post_activation_min: @
6assignvariableop_22_quant_conv2d_3_post_activation_max: 9
/assignvariableop_23_quant_lambda_optimizer_step: ;
!assignvariableop_24_conv2d_kernel:#-
assignvariableop_25_conv2d_bias:#=
#assignvariableop_26_conv2d_1_kernel:##/
!assignvariableop_27_conv2d_1_bias:#=
#assignvariableop_28_conv2d_2_kernel:##/
!assignvariableop_29_conv2d_2_bias:#=
#assignvariableop_30_conv2d_3_kernel:#/
!assignvariableop_31_conv2d_3_bias:#
assignvariableop_32_total: #
assignvariableop_33_count: 
identity_35��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#BBlayer_with_weights-0/quantize_layer_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/quantize_layer_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp2assignvariableop_quantize_layer_quantize_layer_minIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp4assignvariableop_1_quantize_layer_quantize_layer_maxIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp0assignvariableop_2_quantize_layer_optimizer_stepIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_quant_conv2d_optimizer_stepIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp*assignvariableop_4_quant_conv2d_kernel_minIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp*assignvariableop_5_quant_conv2d_kernel_maxIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp3assignvariableop_6_quant_conv2d_post_activation_minIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp3assignvariableop_7_quant_conv2d_post_activation_maxIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp0assignvariableop_8_quant_conv2d_1_optimizer_stepIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_quant_conv2d_1_kernel_minIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp-assignvariableop_10_quant_conv2d_1_kernel_maxIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp6assignvariableop_11_quant_conv2d_1_post_activation_minIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp6assignvariableop_12_quant_conv2d_1_post_activation_maxIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_quant_conv2d_2_optimizer_stepIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_quant_conv2d_2_kernel_minIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_quant_conv2d_2_kernel_maxIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_quant_conv2d_2_post_activation_minIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp6assignvariableop_17_quant_conv2d_2_post_activation_maxIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp1assignvariableop_18_quant_conv2d_3_optimizer_stepIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp-assignvariableop_19_quant_conv2d_3_kernel_minIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp-assignvariableop_20_quant_conv2d_3_kernel_maxIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp6assignvariableop_21_quant_conv2d_3_post_activation_minIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_quant_conv2d_3_post_activation_maxIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_quant_lambda_optimizer_stepIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp!assignvariableop_24_conv2d_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpassignvariableop_25_conv2d_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp#assignvariableop_26_conv2d_1_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp!assignvariableop_27_conv2d_1_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_2_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_2_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_3_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_3_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_339
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_34�
Identity_35IdentityIdentity_34:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_35"#
identity_35Identity_35:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332(
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
�	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7590054

inputs
identity�
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+���������������������������*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
0__inference_quant_conv2d_1_layer_call_fn_7590324

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_75903132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
�
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7590761

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)AllValuesQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�*
�

B__inference_model_layer_call_and_return_conditional_losses_7595271

inputs 
quantize_layer_7595139:  
quantize_layer_7595141: .
quant_conv2d_7595161:#"
quant_conv2d_7595163:#"
quant_conv2d_7595165:#"
quant_conv2d_7595167:#
quant_conv2d_7595169: 
quant_conv2d_7595171: 0
quant_conv2d_1_7595191:##$
quant_conv2d_1_7595193:#$
quant_conv2d_1_7595195:#$
quant_conv2d_1_7595197:# 
quant_conv2d_1_7595199:  
quant_conv2d_1_7595201: 0
quant_conv2d_2_7595221:##$
quant_conv2d_2_7595223:#$
quant_conv2d_2_7595225:#$
quant_conv2d_2_7595227:# 
quant_conv2d_2_7595229:  
quant_conv2d_2_7595231: 0
quant_conv2d_3_7595251:#$
quant_conv2d_3_7595253:$
quant_conv2d_3_7595255:$
quant_conv2d_3_7595257: 
quant_conv2d_3_7595259:  
quant_conv2d_3_7595261: 
identity��$quant_conv2d/StatefulPartitionedCall�&quant_conv2d_1/StatefulPartitionedCall�&quant_conv2d_2/StatefulPartitionedCall�&quant_conv2d_3/StatefulPartitionedCall�&quantize_layer/StatefulPartitionedCall�
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_7595139quantize_layer_7595141*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951382(
&quantize_layer/StatefulPartitionedCall�
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_7595161quant_conv2d_7595163quant_conv2d_7595165quant_conv2d_7595167quant_conv2d_7595169quant_conv2d_7595171*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951602&
$quant_conv2d/StatefulPartitionedCall�
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_7595191quant_conv2d_1_7595193quant_conv2d_1_7595195quant_conv2d_1_7595197quant_conv2d_1_7595199quant_conv2d_1_7595201*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75951902(
&quant_conv2d_1/StatefulPartitionedCall�
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_7595221quant_conv2d_2_7595223quant_conv2d_2_7595225quant_conv2d_2_7595227quant_conv2d_2_7595229quant_conv2d_2_7595231*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952202(
&quant_conv2d_2/StatefulPartitionedCall�
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_7595251quant_conv2d_3_7595253quant_conv2d_3_7595255quant_conv2d_3_7595257quant_conv2d_3_7595259quant_conv2d_3_7595261*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952502(
&quant_conv2d_3/StatefulPartitionedCall�
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75952682
quant_lambda/PartitionedCall�
IdentityIdentity%quant_lambda/PartitionedCall:output:0%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
F
*__inference_restored_function_body_7595268

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_75908502
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�'
�
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589648

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:##X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:#-
biasadd_readvariableop_resource:#K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�*
�

B__inference_model_layer_call_and_return_conditional_losses_7595013

inputs 
quantize_layer_7594954:  
quantize_layer_7594956: .
quant_conv2d_7594959:#"
quant_conv2d_7594961:#"
quant_conv2d_7594963:#"
quant_conv2d_7594965:#
quant_conv2d_7594967: 
quant_conv2d_7594969: 0
quant_conv2d_1_7594972:##$
quant_conv2d_1_7594974:#$
quant_conv2d_1_7594976:#$
quant_conv2d_1_7594978:# 
quant_conv2d_1_7594980:  
quant_conv2d_1_7594982: 0
quant_conv2d_2_7594985:##$
quant_conv2d_2_7594987:#$
quant_conv2d_2_7594989:#$
quant_conv2d_2_7594991:# 
quant_conv2d_2_7594993:  
quant_conv2d_2_7594995: 0
quant_conv2d_3_7594998:#$
quant_conv2d_3_7595000:$
quant_conv2d_3_7595002:$
quant_conv2d_3_7595004: 
quant_conv2d_3_7595006:  
quant_conv2d_3_7595008: 
identity��$quant_conv2d/StatefulPartitionedCall�&quant_conv2d_1/StatefulPartitionedCall�&quant_conv2d_2/StatefulPartitionedCall�&quant_conv2d_3/StatefulPartitionedCall�&quantize_layer/StatefulPartitionedCall�
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_7594954quantize_layer_7594956*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948142(
&quantize_layer/StatefulPartitionedCall�
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_7594959quant_conv2d_7594961quant_conv2d_7594963quant_conv2d_7594965quant_conv2d_7594967quant_conv2d_7594969*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948362&
$quant_conv2d/StatefulPartitionedCall�
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_7594972quant_conv2d_1_7594974quant_conv2d_1_7594976quant_conv2d_1_7594978quant_conv2d_1_7594980quant_conv2d_1_7594982*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948662(
&quant_conv2d_1/StatefulPartitionedCall�
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_7594985quant_conv2d_2_7594987quant_conv2d_2_7594989quant_conv2d_2_7594991quant_conv2d_2_7594993quant_conv2d_2_7594995*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948962(
&quant_conv2d_2/StatefulPartitionedCall�
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_7594998quant_conv2d_3_7595000quant_conv2d_3_7595002quant_conv2d_3_7595004quant_conv2d_3_7595006quant_conv2d_3_7595008*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949262(
&quant_conv2d_3/StatefulPartitionedCall�
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949442
quant_lambda/PartitionedCall�
IdentityIdentity%quant_lambda/PartitionedCall:output:0%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_7595804

inputs
unknown: 
	unknown_0: #
	unknown_1:#
	unknown_2:#
	unknown_3:#
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:##
	unknown_8:#
	unknown_9:#

unknown_10:#

unknown_11: 

unknown_12: $

unknown_13:##

unknown_14:#

unknown_15:#

unknown_16:#

unknown_17: 

unknown_18: $

unknown_19:#

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������**
_read_only_resource_inputs

	*2
config_proto" 

CPU

GPU2 *0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_75952712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7595190

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_75912812
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�*
�

B__inference_model_layer_call_and_return_conditional_losses_7595445
input_1 
quantize_layer_7595386:  
quantize_layer_7595388: .
quant_conv2d_7595391:#"
quant_conv2d_7595393:#"
quant_conv2d_7595395:#"
quant_conv2d_7595397:#
quant_conv2d_7595399: 
quant_conv2d_7595401: 0
quant_conv2d_1_7595404:##$
quant_conv2d_1_7595406:#$
quant_conv2d_1_7595408:#$
quant_conv2d_1_7595410:# 
quant_conv2d_1_7595412:  
quant_conv2d_1_7595414: 0
quant_conv2d_2_7595417:##$
quant_conv2d_2_7595419:#$
quant_conv2d_2_7595421:#$
quant_conv2d_2_7595423:# 
quant_conv2d_2_7595425:  
quant_conv2d_2_7595427: 0
quant_conv2d_3_7595430:#$
quant_conv2d_3_7595432:$
quant_conv2d_3_7595434:$
quant_conv2d_3_7595436: 
quant_conv2d_3_7595438:  
quant_conv2d_3_7595440: 
identity��$quant_conv2d/StatefulPartitionedCall�&quant_conv2d_1/StatefulPartitionedCall�&quant_conv2d_2/StatefulPartitionedCall�&quant_conv2d_3/StatefulPartitionedCall�&quantize_layer/StatefulPartitionedCall�
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1quantize_layer_7595386quantize_layer_7595388*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948142(
&quantize_layer/StatefulPartitionedCall�
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_7595391quant_conv2d_7595393quant_conv2d_7595395quant_conv2d_7595397quant_conv2d_7595399quant_conv2d_7595401*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948362&
$quant_conv2d/StatefulPartitionedCall�
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_7595404quant_conv2d_1_7595406quant_conv2d_1_7595408quant_conv2d_1_7595410quant_conv2d_1_7595412quant_conv2d_1_7595414*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948662(
&quant_conv2d_1/StatefulPartitionedCall�
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_7595417quant_conv2d_2_7595419quant_conv2d_2_7595421quant_conv2d_2_7595423quant_conv2d_2_7595425quant_conv2d_2_7595427*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75948962(
&quant_conv2d_2/StatefulPartitionedCall�
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_7595430quant_conv2d_3_7595432quant_conv2d_3_7595434quant_conv2d_3_7595436quant_conv2d_3_7595438quant_conv2d_3_7595440*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949262(
&quant_conv2d_3/StatefulPartitionedCall�
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *3
f.R,
*__inference_restored_function_body_75949442
quant_lambda/PartitionedCall�
IdentityIdentity%quant_lambda/PartitionedCall:output:0%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+���������������������������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:j f
A
_output_shapes/
-:+���������������������������
!
_user_specified_name	input_1
�^
�	
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589988

inputsI
/lastvaluequant_batchmin_readvariableop_resource:##3
%lastvaluequant_assignminlast_resource:#3
%lastvaluequant_assignmaxlast_resource:#-
biasadd_readvariableop_resource:#@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�^
�	
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7590313

inputsI
/lastvaluequant_batchmin_readvariableop_resource:##3
%lastvaluequant_assignminlast_resource:#3
%lastvaluequant_assignmaxlast_resource:#-
biasadd_readvariableop_resource:#@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:##*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:##*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7595160

inputs!
unknown:#
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_75897082
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
0__inference_quant_conv2d_2_layer_call_fn_7589659

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_75896482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�^
�	
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7589928

inputsI
/lastvaluequant_batchmin_readvariableop_resource:#3
%lastvaluequant_assignminlast_resource:#3
%lastvaluequant_assignmaxlast_resource:#-
biasadd_readvariableop_resource:#@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�LastValueQuant/AssignMaxLast�LastValueQuant/AssignMinLast�&LastValueQuant/BatchMax/ReadVariableOp�&LastValueQuant/BatchMin/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�-MovingAvgQuantize/AssignMinEma/ReadVariableOp�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp�
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indices�
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMin�
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp�
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indices�
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
:#2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/truediv/y�
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/truediv�
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ��2
LastValueQuant/mul/y�
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:#2
LastValueQuant/mul�
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:#2
LastValueQuant/Maximum�
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast�
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const�
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin�
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1�
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y�
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y�
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum�
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMinEma/decay�
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp�
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub�
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul�
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp�
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2&
$MovingAvgQuantize/AssignMaxEma/decay�
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp�
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub�
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul�
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
0__inference_quantize_layer_layer_call_fn_7591196

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_75910912
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7589717

inputs
identity�
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+���������������������������*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/y�
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y�
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+���������������������������2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+���������������������������:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�'
�
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7590025

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity��#AllValuesQuantize/AssignMaxAllValue�#AllValuesQuantize/AssignMinAllValue�8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�(AllValuesQuantize/Maximum/ReadVariableOp�(AllValuesQuantize/Minimum/ReadVariableOp�
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const�
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin�
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const_1�
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMax�
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOp�
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum�
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y�
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1�
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOp�
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum�
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y�
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1�
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue�
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue�
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������2+
)AllValuesQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�'
�
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7590376

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:#-
biasadd_readvariableop_resource:#K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity��BiasAdd/ReadVariableOp�?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:#*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2�
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel�
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+���������������������������#*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������#2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������#2
Relu�
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp�
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1�
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+���������������������������#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars�
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2�
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12�
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7595220

inputs!
unknown:##
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_75899882
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������#
 
_user_specified_nameinputs
�
�
0__inference_quantize_layer_layer_call_fn_7590004

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_75899972
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
*__inference_restored_function_body_7594836

inputs!
unknown:#
	unknown_0:#
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+���������������������������#*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_75897382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
input_1J
serving_default_input_1:0+���������������������������Z
quant_lambdaJ
StatefulPartitionedCall:0+���������������������������tensorflow/serving/predict:��
�r
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	
signatures
#
_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
�_default_save_signature
+�&call_and_return_all_conditional_losses
�__call__"�n
_tf_keras_network�n{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "name": "quantize_layer", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d", "inbound_nodes": [[["quantize_layer", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_1", "inbound_nodes": [[["quant_conv2d", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_2", "inbound_nodes": [[["quant_conv2d_1", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_3", "inbound_nodes": [[["quant_conv2d_2", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lambda", "trainable": true, "dtype": "float32", "layer": {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTQvYXJjaC5wedoIPGxhbWJkYT4pAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial14.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 27}, "quantize_config": {"class_name": "NoOpQuantizeConfig", "config": {}, "shared_object_id": 28}}, "name": "quant_lambda", "inbound_nodes": [[["quant_conv2d_3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["quant_lambda", 0, 0]]}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null, null, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "name": "quantize_layer", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d", "inbound_nodes": [[["quantize_layer", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_1", "inbound_nodes": [[["quant_conv2d", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_2", "inbound_nodes": [[["quant_conv2d_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_3", "inbound_nodes": [[["quant_conv2d_2", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lambda", "trainable": true, "dtype": "float32", "layer": {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTQvYXJjaC5wedoIPGxhbWJkYT4pAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial14.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 27}, "quantize_config": {"class_name": "NoOpQuantizeConfig", "config": {}, "shared_object_id": 28}}, "name": "quant_lambda", "inbound_nodes": [[["quant_conv2d_3", 0, 0, {}]]], "shared_object_id": 6}], "input_layers": [["input_1", 0, 0]], "output_layers": [["quant_lambda", 0, 0]]}}, "training_config": {"loss": "mean_absolute_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 1.249999968422344e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
#_self_saveable_object_factories"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
�
quantize_layer_min
quantize_layer_max
quantizer_vars
optimizer_step
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "quantize_layer", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeLayer", "config": {"name": "quantize_layer", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}
�
	layer
optimizer_step
_weight_vars

kernel_min

kernel_max
_quantize_activations
post_activation_min
 post_activation_max
!_output_quantizers
#"_self_saveable_object_factories
#trainable_variables
$	variables
%regularization_losses
&	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"name": "quant_conv2d", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quantize_layer", 0, 0, {}]]], "shared_object_id": 2}
�
	'layer
(optimizer_step
)_weight_vars
*
kernel_min
+
kernel_max
,_quantize_activations
-post_activation_min
.post_activation_max
/_output_quantizers
#0_self_saveable_object_factories
1trainable_variables
2	variables
3regularization_losses
4	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"name": "quant_conv2d_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_conv2d", 0, 0, {}]]], "shared_object_id": 3}
�
	5layer
6optimizer_step
7_weight_vars
8
kernel_min
9
kernel_max
:_quantize_activations
;post_activation_min
<post_activation_max
=_output_quantizers
#>_self_saveable_object_factories
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"name": "quant_conv2d_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_conv2d_1", 0, 0, {}]]], "shared_object_id": 4}
�
	Clayer
Doptimizer_step
E_weight_vars
F
kernel_min
G
kernel_max
H_quantize_activations
Ipost_activation_min
Jpost_activation_max
K_output_quantizers
#L_self_saveable_object_factories
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"name": "quant_conv2d_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_conv2d_2", 0, 0, {}]]], "shared_object_id": 5}
�
	Qlayer
Roptimizer_step
S_weight_vars
T_quantize_activations
U_output_quantizers
#V_self_saveable_object_factories
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "quant_lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_lambda", "trainable": true, "dtype": "float32", "layer": {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTQvYXJjaC5wedoIPGxhbWJkYT4pAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial14.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 27}, "quantize_config": {"class_name": "NoOpQuantizeConfig", "config": {}, "shared_object_id": 28}}, "inbound_nodes": [[["quant_conv2d_3", 0, 0, {}]]], "shared_object_id": 6}
"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
X
[0
\1
]2
^3
_4
`5
a6
b7"
trackable_list_wrapper
�
0
1
2
[3
\4
5
6
7
8
 9
]10
^11
(12
*13
+14
-15
.16
_17
`18
619
820
921
;22
<23
a24
b25
D26
F27
G28
I29
J30
R31"
trackable_list_wrapper
 "
trackable_list_wrapper
�

clayers
dmetrics
enon_trainable_variables
trainable_variables
	variables
flayer_regularization_losses
glayer_metrics
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
):' 2!quantize_layer/quantize_layer_min
):' 2!quantize_layer/quantize_layer_max
:
min_var
max_var"
trackable_dict_wrapper
%:# 2quantize_layer/optimizer_step
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

hlayers
imetrics
jnon_trainable_variables
trainable_variables
	variables
klayer_regularization_losses
llayer_metrics
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�


[kernel
\bias
#m_self_saveable_object_factories
ntrainable_variables
o	variables
pregularization_losses
q	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 10}}
#:! 2quant_conv2d/optimizer_step
'
r0"
trackable_list_wrapper
#:!#2quant_conv2d/kernel_min
#:!#2quant_conv2d/kernel_max
 "
trackable_list_wrapper
(:& 2 quant_conv2d/post_activation_min
(:& 2 quant_conv2d/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
Q
[0
\1
2
3
4
5
 6"
trackable_list_wrapper
 "
trackable_list_wrapper
�

slayers
tmetrics
unon_trainable_variables
#trainable_variables
$	variables
vlayer_regularization_losses
wlayer_metrics
%regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

]kernel
^bias
#x_self_saveable_object_factories
ytrainable_variables
z	variables
{regularization_losses
|	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 35}}, "shared_object_id": 12}}
%:# 2quant_conv2d_1/optimizer_step
'
}0"
trackable_list_wrapper
%:##2quant_conv2d_1/kernel_min
%:##2quant_conv2d_1/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_1/post_activation_min
*:( 2"quant_conv2d_1/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
Q
]0
^1
(2
*3
+4
-5
.6"
trackable_list_wrapper
 "
trackable_list_wrapper
�

~layers
metrics
�non_trainable_variables
1trainable_variables
2	variables
 �layer_regularization_losses
�layer_metrics
3regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

_kernel
`bias
$�_self_saveable_object_factories
�trainable_variables
�	variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 35}}, "shared_object_id": 14}}
%:# 2quant_conv2d_2/optimizer_step
(
�0"
trackable_list_wrapper
%:##2quant_conv2d_2/kernel_min
%:##2quant_conv2d_2/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_2/post_activation_min
*:( 2"quant_conv2d_2/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
_0
`1"
trackable_list_wrapper
Q
_0
`1
62
83
94
;5
<6"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
?trainable_variables
@	variables
 �layer_regularization_losses
�layer_metrics
Aregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

akernel
bbias
$�_self_saveable_object_factories
�trainable_variables
�	variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 35}}, "shared_object_id": 16}}
%:# 2quant_conv2d_3/optimizer_step
(
�0"
trackable_list_wrapper
%:#2quant_conv2d_3/kernel_min
%:#2quant_conv2d_3/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_3/post_activation_min
*:( 2"quant_conv2d_3/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
a0
b1"
trackable_list_wrapper
Q
a0
b1
D2
F3
G4
I5
J6"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
Mtrainable_variables
N	variables
 �layer_regularization_losses
�layer_metrics
Oregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
$�_self_saveable_object_factories
�trainable_variables
�	variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTQvYXJjaC5wedoIPGxhbWJkYT4pAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial14.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 17}
#:! 2quant_lambda/optimizer_step
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
'
R0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
Wtrainable_variables
X	variables
 �layer_regularization_losses
�layer_metrics
Yregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
':%#2conv2d/kernel
:#2conv2d/bias
):'##2conv2d_1/kernel
:#2conv2d_1/bias
):'##2conv2d_2/kernel
:#2conv2d_2/bias
):'#2conv2d_3/kernel
:2conv2d_3/bias
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
0
1
2
3
4
5
6
 7
(8
*9
+10
-11
.12
613
814
915
;16
<17
D18
F19
G20
I21
J22
R23"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
ntrainable_variables
o	variables
 �layer_regularization_losses
�layer_metrics
pregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/
[0
�2"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
 4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
ytrainable_variables
z	variables
 �layer_regularization_losses
�layer_metrics
{regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/
]0
�2"
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
C
(0
*1
+2
-3
.4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
�trainable_variables
�	variables
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/
_0
�2"
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_list_wrapper
C
60
81
92
;3
<4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
�trainable_variables
�	variables
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/
a0
�2"
trackable_list_wrapper
'
C0"
trackable_list_wrapper
 "
trackable_list_wrapper
C
D0
F1
G2
I3
J4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
�metrics
�non_trainable_variables
�trainable_variables
�	variables
 �layer_regularization_losses
�layer_metrics
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
R0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}
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
:
min_var
max_var"
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
:
*min_var
+max_var"
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
:
8min_var
9max_var"
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
:
Fmin_var
Gmax_var"
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
�2�
"__inference__wrapped_model_7594947�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�8
input_1+���������������������������
�2�
B__inference_model_layer_call_and_return_conditional_losses_7595628
B__inference_model_layer_call_and_return_conditional_losses_7595690
B__inference_model_layer_call_and_return_conditional_losses_7595445
B__inference_model_layer_call_and_return_conditional_losses_7595507�
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
�2�
'__inference_model_layer_call_fn_7595068
'__inference_model_layer_call_fn_7595747
'__inference_model_layer_call_fn_7595804
'__inference_model_layer_call_fn_7595383�
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
�2�
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7590761
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7590025�
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_quantize_layer_layer_call_fn_7590004
0__inference_quantize_layer_layer_call_fn_7591196�
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7589738
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7589708�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_quant_conv2d_layer_call_fn_7590387
.__inference_quant_conv2d_layer_call_fn_7589939�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7590841
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7591281�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_quant_conv2d_1_layer_call_fn_7590579
0__inference_quant_conv2d_1_layer_call_fn_7590324�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589627
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589988�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_quant_conv2d_2_layer_call_fn_7589659
0__inference_quant_conv2d_2_layer_call_fn_7589798�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590045
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590547�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_quant_conv2d_3_layer_call_fn_7590355
0__inference_quant_conv2d_3_layer_call_fn_7590820�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7589717
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7590850�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_quant_lambda_layer_call_fn_7590900
.__inference_quant_lambda_layer_call_fn_7590059�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
%__inference_signature_wrapper_7595566input_1"�
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
�2��
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
�2��
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
�2��
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
�2��
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
�2��
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
�2��
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
�2��
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
�2��
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
�2��
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
"__inference__wrapped_model_7594947�[\ ]*+^-._89`;<aFGbIJJ�G
@�=
;�8
input_1+���������������������������
� "U�R
P
quant_lambda@�=
quant_lambda+����������������������������
B__inference_model_layer_call_and_return_conditional_losses_7595445�[\ ]*+^-._89`;<aFGbIJR�O
H�E
;�8
input_1+���������������������������
p 

 
� "?�<
5�2
0+���������������������������
� �
B__inference_model_layer_call_and_return_conditional_losses_7595507�[\ ]*+^-._89`;<aFGbIJR�O
H�E
;�8
input_1+���������������������������
p

 
� "?�<
5�2
0+���������������������������
� �
B__inference_model_layer_call_and_return_conditional_losses_7595628�[\ ]*+^-._89`;<aFGbIJQ�N
G�D
:�7
inputs+���������������������������
p 

 
� "?�<
5�2
0+���������������������������
� �
B__inference_model_layer_call_and_return_conditional_losses_7595690�[\ ]*+^-._89`;<aFGbIJQ�N
G�D
:�7
inputs+���������������������������
p

 
� "?�<
5�2
0+���������������������������
� �
'__inference_model_layer_call_fn_7595068�[\ ]*+^-._89`;<aFGbIJR�O
H�E
;�8
input_1+���������������������������
p 

 
� "2�/+����������������������������
'__inference_model_layer_call_fn_7595383�[\ ]*+^-._89`;<aFGbIJR�O
H�E
;�8
input_1+���������������������������
p

 
� "2�/+����������������������������
'__inference_model_layer_call_fn_7595747�[\ ]*+^-._89`;<aFGbIJQ�N
G�D
:�7
inputs+���������������������������
p 

 
� "2�/+����������������������������
'__inference_model_layer_call_fn_7595804�[\ ]*+^-._89`;<aFGbIJQ�N
G�D
:�7
inputs+���������������������������
p

 
� "2�/+����������������������������
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7590841�]*+^-.M�J
C�@
:�7
inputs+���������������������������#
p 
� "?�<
5�2
0+���������������������������#
� �
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_7591281�]*+^-.M�J
C�@
:�7
inputs+���������������������������#
p
� "?�<
5�2
0+���������������������������#
� �
0__inference_quant_conv2d_1_layer_call_fn_7590324�]*+^-.M�J
C�@
:�7
inputs+���������������������������#
p
� "2�/+���������������������������#�
0__inference_quant_conv2d_1_layer_call_fn_7590579�]*+^-.M�J
C�@
:�7
inputs+���������������������������#
p 
� "2�/+���������������������������#�
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589627�_89`;<M�J
C�@
:�7
inputs+���������������������������#
p 
� "?�<
5�2
0+���������������������������#
� �
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_7589988�_89`;<M�J
C�@
:�7
inputs+���������������������������#
p
� "?�<
5�2
0+���������������������������#
� �
0__inference_quant_conv2d_2_layer_call_fn_7589659�_89`;<M�J
C�@
:�7
inputs+���������������������������#
p 
� "2�/+���������������������������#�
0__inference_quant_conv2d_2_layer_call_fn_7589798�_89`;<M�J
C�@
:�7
inputs+���������������������������#
p
� "2�/+���������������������������#�
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590045�aFGbIJM�J
C�@
:�7
inputs+���������������������������#
p 
� "?�<
5�2
0+���������������������������
� �
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_7590547�aFGbIJM�J
C�@
:�7
inputs+���������������������������#
p
� "?�<
5�2
0+���������������������������
� �
0__inference_quant_conv2d_3_layer_call_fn_7590355�aFGbIJM�J
C�@
:�7
inputs+���������������������������#
p 
� "2�/+����������������������������
0__inference_quant_conv2d_3_layer_call_fn_7590820�aFGbIJM�J
C�@
:�7
inputs+���������������������������#
p
� "2�/+����������������������������
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7589708�[\ M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������#
� �
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_7589738�[\ M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������#
� �
.__inference_quant_conv2d_layer_call_fn_7589939�[\ M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+���������������������������#�
.__inference_quant_conv2d_layer_call_fn_7590387�[\ M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+���������������������������#�
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7589717�M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
I__inference_quant_lambda_layer_call_and_return_conditional_losses_7590850�M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
.__inference_quant_lambda_layer_call_fn_7590059�M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
.__inference_quant_lambda_layer_call_fn_7590900�M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7590025�M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
K__inference_quantize_layer_layer_call_and_return_conditional_losses_7590761�M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
0__inference_quantize_layer_layer_call_fn_7590004�M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
0__inference_quantize_layer_layer_call_fn_7591196�M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
%__inference_signature_wrapper_7595566�[\ ]*+^-._89`;<aFGbIJU�R
� 
K�H
F
input_1;�8
input_1+���������������������������"U�R
P
quant_lambda@�=
quant_lambda+���������������������������