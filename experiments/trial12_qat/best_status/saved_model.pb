в
іЦ
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

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

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
delete_old_dirsbool(
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
Г
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Е

!quantize_layer/quantize_layer_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quantize_layer/quantize_layer_min

5quantize_layer/quantize_layer_min/Read/ReadVariableOpReadVariableOp!quantize_layer/quantize_layer_min*
_output_shapes
: *
dtype0

!quantize_layer/quantize_layer_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quantize_layer/quantize_layer_max

5quantize_layer/quantize_layer_max/Read/ReadVariableOpReadVariableOp!quantize_layer/quantize_layer_max*
_output_shapes
: *
dtype0

quantize_layer/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequantize_layer/optimizer_step

1quantize_layer/optimizer_step/Read/ReadVariableOpReadVariableOpquantize_layer/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namequant_conv2d/optimizer_step

/quant_conv2d/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namequant_conv2d/kernel_min

+quant_conv2d/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d/kernel_min*
_output_shapes
: *
dtype0

quant_conv2d/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namequant_conv2d/kernel_max

+quant_conv2d/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d/kernel_max*
_output_shapes
: *
dtype0

 quant_conv2d/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_conv2d/post_activation_min

4quant_conv2d/post_activation_min/Read/ReadVariableOpReadVariableOp quant_conv2d/post_activation_min*
_output_shapes
: *
dtype0

 quant_conv2d/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_conv2d/post_activation_max

4quant_conv2d/post_activation_max/Read/ReadVariableOpReadVariableOp quant_conv2d/post_activation_max*
_output_shapes
: *
dtype0

quant_conv2d_1/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_1/optimizer_step

1quant_conv2d_1/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_1/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_1/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_1/kernel_min

-quant_conv2d_1/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_1/kernel_min*
_output_shapes
: *
dtype0

quant_conv2d_1/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_1/kernel_max

-quant_conv2d_1/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_1/kernel_max*
_output_shapes
: *
dtype0

"quant_conv2d_1/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_1/post_activation_min

6quant_conv2d_1/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_1/post_activation_min*
_output_shapes
: *
dtype0

"quant_conv2d_1/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_1/post_activation_max

6quant_conv2d_1/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_1/post_activation_max*
_output_shapes
: *
dtype0

quant_conv2d_2/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_2/optimizer_step

1quant_conv2d_2/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_2/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_2/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_2/kernel_min

-quant_conv2d_2/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_2/kernel_min*
_output_shapes
: *
dtype0

quant_conv2d_2/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_2/kernel_max

-quant_conv2d_2/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_2/kernel_max*
_output_shapes
: *
dtype0

"quant_conv2d_2/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_2/post_activation_min

6quant_conv2d_2/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_2/post_activation_min*
_output_shapes
: *
dtype0

"quant_conv2d_2/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_2/post_activation_max

6quant_conv2d_2/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_2/post_activation_max*
_output_shapes
: *
dtype0

quant_conv2d_3/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_3/optimizer_step

1quant_conv2d_3/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_3/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_3/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_3/kernel_min

-quant_conv2d_3/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_3/kernel_min*
_output_shapes
: *
dtype0

quant_conv2d_3/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_3/kernel_max

-quant_conv2d_3/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_3/kernel_max*
_output_shapes
: *
dtype0

"quant_conv2d_3/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_3/post_activation_min

6quant_conv2d_3/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_3/post_activation_min*
_output_shapes
: *
dtype0

"quant_conv2d_3/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_3/post_activation_max

6quant_conv2d_3/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_3/post_activation_max*
_output_shapes
: *
dtype0

quant_conv2d_4/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_4/optimizer_step

1quant_conv2d_4/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_4/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_4/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_4/kernel_min

-quant_conv2d_4/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_4/kernel_min*
_output_shapes
: *
dtype0

quant_conv2d_4/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namequant_conv2d_4/kernel_max

-quant_conv2d_4/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_4/kernel_max*
_output_shapes
: *
dtype0

"quant_conv2d_4/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_4/post_activation_min

6quant_conv2d_4/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_4/post_activation_min*
_output_shapes
: *
dtype0

"quant_conv2d_4/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_4/post_activation_max

6quant_conv2d_4/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_4/post_activation_max*
_output_shapes
: *
dtype0

 quant_concatenate/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_concatenate/optimizer_step

4quant_concatenate/optimizer_step/Read/ReadVariableOpReadVariableOp quant_concatenate/optimizer_step*
_output_shapes
: *
dtype0

quant_concatenate/output_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namequant_concatenate/output_min

0quant_concatenate/output_min/Read/ReadVariableOpReadVariableOpquant_concatenate/output_min*
_output_shapes
: *
dtype0

quant_concatenate/output_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namequant_concatenate/output_max

0quant_concatenate/output_max/Read/ReadVariableOpReadVariableOpquant_concatenate/output_max*
_output_shapes
: *
dtype0

quant_conv2d_5/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namequant_conv2d_5/optimizer_step

1quant_conv2d_5/optimizer_step/Read/ReadVariableOpReadVariableOpquant_conv2d_5/optimizer_step*
_output_shapes
: *
dtype0

quant_conv2d_5/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_5/kernel_min

-quant_conv2d_5/kernel_min/Read/ReadVariableOpReadVariableOpquant_conv2d_5/kernel_min*
_output_shapes
:*
dtype0

quant_conv2d_5/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namequant_conv2d_5/kernel_max

-quant_conv2d_5/kernel_max/Read/ReadVariableOpReadVariableOpquant_conv2d_5/kernel_max*
_output_shapes
:*
dtype0

"quant_conv2d_5/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_5/post_activation_min

6quant_conv2d_5/post_activation_min/Read/ReadVariableOpReadVariableOp"quant_conv2d_5/post_activation_min*
_output_shapes
: *
dtype0

"quant_conv2d_5/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"quant_conv2d_5/post_activation_max

6quant_conv2d_5/post_activation_max/Read/ReadVariableOpReadVariableOp"quant_conv2d_5/post_activation_max*
_output_shapes
: *
dtype0

quant_lambda/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namequant_lambda/optimizer_step

/quant_lambda/optimizer_step/Read/ReadVariableOpReadVariableOpquant_lambda/optimizer_step*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:#* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:#*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
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
Љz
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*фy
valueкyBзy Bаy

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
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
%
#_self_saveable_object_factories
Я
quantize_layer_min
quantize_layer_max
quantizer_vars
optimizer_step
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
­
	layer
optimizer_step
_weight_vars

kernel_min
 
kernel_max
!_quantize_activations
"post_activation_min
#post_activation_max
$_output_quantizers
#%_self_saveable_object_factories
&regularization_losses
'	variables
(trainable_variables
)	keras_api
­
	*layer
+optimizer_step
,_weight_vars
-
kernel_min
.
kernel_max
/_quantize_activations
0post_activation_min
1post_activation_max
2_output_quantizers
#3_self_saveable_object_factories
4regularization_losses
5	variables
6trainable_variables
7	keras_api
­
	8layer
9optimizer_step
:_weight_vars
;
kernel_min
<
kernel_max
=_quantize_activations
>post_activation_min
?post_activation_max
@_output_quantizers
#A_self_saveable_object_factories
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
­
	Flayer
Goptimizer_step
H_weight_vars
I
kernel_min
J
kernel_max
K_quantize_activations
Lpost_activation_min
Mpost_activation_max
N_output_quantizers
#O_self_saveable_object_factories
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
­
	Tlayer
Uoptimizer_step
V_weight_vars
W
kernel_min
X
kernel_max
Y_quantize_activations
Zpost_activation_min
[post_activation_max
\_output_quantizers
#]_self_saveable_object_factories
^regularization_losses
_	variables
`trainable_variables
a	keras_api

	blayer
coptimizer_step
d_weight_vars
e_quantize_activations
f_output_quantizers
g
output_min
h
output_max
i_output_quantizer_vars
#j_self_saveable_object_factories
kregularization_losses
l	variables
mtrainable_variables
n	keras_api
­
	olayer
poptimizer_step
q_weight_vars
r
kernel_min
s
kernel_max
t_quantize_activations
upost_activation_min
vpost_activation_max
w_output_quantizers
#x_self_saveable_object_factories
yregularization_losses
z	variables
{trainable_variables
|	keras_api
т
	}layer
~optimizer_step
_weight_vars
_quantize_activations
_output_quantizers
$_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
 
 
 
 

0
1
2
3
4
5
6
 7
"8
#9
10
11
+12
-13
.14
015
116
17
18
919
;20
<21
>22
?23
24
25
G26
I27
J28
L29
M30
31
32
U33
W34
X35
Z36
[37
c38
g39
h40
41
42
p43
r44
s45
u46
v47
~48
b
0
1
2
3
4
5
6
7
8
9
10
11
В
 layer_regularization_losses
regularization_losses
layers
	variables
non_trainable_variables
layer_metrics
trainable_variables
metrics
 
yw
VARIABLE_VALUE!quantize_layer/quantize_layer_minBlayer_with_weights-0/quantize_layer_min/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!quantize_layer/quantize_layer_maxBlayer_with_weights-0/quantize_layer_max/.ATTRIBUTES/VARIABLE_VALUE

min_var
max_var
qo
VARIABLE_VALUEquantize_layer/optimizer_step>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
 
В
 layer_regularization_losses
regularization_losses
layers
non_trainable_variables
	variables
layer_metrics
trainable_variables
metrics

kernel
	bias
$_self_saveable_object_factories
regularization_losses
	variables
 trainable_variables
Ё	keras_api
om
VARIABLE_VALUEquant_conv2d/optimizer_step>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

Ђ0
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
 
3
0
1
2
3
 4
"5
#6

0
1
В
 Ѓlayer_regularization_losses
&regularization_losses
Єlayers
Ѕnon_trainable_variables
'	variables
Іlayer_metrics
(trainable_variables
Їmetrics

kernel
	bias
$Ј_self_saveable_object_factories
Љregularization_losses
Њ	variables
Ћtrainable_variables
Ќ	keras_api
qo
VARIABLE_VALUEquant_conv2d_1/optimizer_step>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

­0
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
 
3
0
1
+2
-3
.4
05
16

0
1
В
 Ўlayer_regularization_losses
4regularization_losses
Џlayers
Аnon_trainable_variables
5	variables
Бlayer_metrics
6trainable_variables
Вmetrics

kernel
	bias
$Г_self_saveable_object_factories
Дregularization_losses
Е	variables
Жtrainable_variables
З	keras_api
qo
VARIABLE_VALUEquant_conv2d_2/optimizer_step>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

И0
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
 
3
0
1
92
;3
<4
>5
?6

0
1
В
 Йlayer_regularization_losses
Bregularization_losses
Кlayers
Лnon_trainable_variables
C	variables
Мlayer_metrics
Dtrainable_variables
Нmetrics

kernel
	bias
$О_self_saveable_object_factories
Пregularization_losses
Р	variables
Сtrainable_variables
Т	keras_api
qo
VARIABLE_VALUEquant_conv2d_3/optimizer_step>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

У0
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
 
3
0
1
G2
I3
J4
L5
M6

0
1
В
 Фlayer_regularization_losses
Pregularization_losses
Хlayers
Цnon_trainable_variables
Q	variables
Чlayer_metrics
Rtrainable_variables
Шmetrics

kernel
	bias
$Щ_self_saveable_object_factories
Ъregularization_losses
Ы	variables
Ьtrainable_variables
Э	keras_api
qo
VARIABLE_VALUEquant_conv2d_4/optimizer_step>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

Ю0
ig
VARIABLE_VALUEquant_conv2d_4/kernel_min:layer_with_weights-5/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEquant_conv2d_4/kernel_max:layer_with_weights-5/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
{y
VARIABLE_VALUE"quant_conv2d_4/post_activation_minClayer_with_weights-5/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"quant_conv2d_4/post_activation_maxClayer_with_weights-5/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
3
0
1
U2
W3
X4
Z5
[6

0
1
В
 Яlayer_regularization_losses
^regularization_losses
аlayers
бnon_trainable_variables
_	variables
вlayer_metrics
`trainable_variables
гmetrics
|
$д_self_saveable_object_factories
еregularization_losses
ж	variables
зtrainable_variables
и	keras_api
tr
VARIABLE_VALUE quant_concatenate/optimizer_step>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
lj
VARIABLE_VALUEquant_concatenate/output_min:layer_with_weights-6/output_min/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEquant_concatenate/output_max:layer_with_weights-6/output_max/.ATTRIBUTES/VARIABLE_VALUE

gmin_var
hmax_var
 
 

c0
g1
h2
 
В
 йlayer_regularization_losses
kregularization_losses
кlayers
лnon_trainable_variables
l	variables
мlayer_metrics
mtrainable_variables
нmetrics

kernel
	bias
$о_self_saveable_object_factories
пregularization_losses
р	variables
сtrainable_variables
т	keras_api
qo
VARIABLE_VALUEquant_conv2d_5/optimizer_step>layer_with_weights-7/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

у0
ig
VARIABLE_VALUEquant_conv2d_5/kernel_min:layer_with_weights-7/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEquant_conv2d_5/kernel_max:layer_with_weights-7/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
{y
VARIABLE_VALUE"quant_conv2d_5/post_activation_minClayer_with_weights-7/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"quant_conv2d_5/post_activation_maxClayer_with_weights-7/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
3
0
1
p2
r3
s4
u5
v6

0
1
В
 фlayer_regularization_losses
yregularization_losses
хlayers
цnon_trainable_variables
z	variables
чlayer_metrics
{trainable_variables
шmetrics
|
$щ_self_saveable_object_factories
ъregularization_losses
ы	variables
ьtrainable_variables
э	keras_api
om
VARIABLE_VALUEquant_lambda/optimizer_step>layer_with_weights-8/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 

~0
 
Е
 юlayer_regularization_losses
regularization_losses
яlayers
№non_trainable_variables
	variables
ёlayer_metrics
trainable_variables
ђmetrics
IG
VARIABLE_VALUEconv2d/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEconv2d/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_1/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_1/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_2/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_2/bias'variables/18/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_4/kernel'variables/31/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_4/bias'variables/32/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_5/kernel'variables/41/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_5/bias'variables/42/.ATTRIBUTES/VARIABLE_VALUE
 
F
0
1
2
3
4
5
6
7
	8

9

0
1
2
3
4
 5
"6
#7
+8
-9
.10
011
112
913
;14
<15
>16
?17
G18
I19
J20
L21
M22
U23
W24
X25
Z26
[27
c28
g29
h30
p31
r32
s33
u34
v35
~36
 

ѓ0
 
 

0
1
2
 
 
 
 

0
1

0
1
Е
 єlayer_regularization_losses
regularization_losses
ѕlayers
іnon_trainable_variables
	variables
їlayer_metrics
 trainable_variables
јmetrics

0
љ2
 

0
#
0
1
 2
"3
#4
 
 
 
 

0
1

0
1
Е
 њlayer_regularization_losses
Љregularization_losses
ћlayers
ќnon_trainable_variables
Њ	variables
§layer_metrics
Ћtrainable_variables
ўmetrics

0
џ2
 

*0
#
+0
-1
.2
03
14
 
 
 
 

0
1

0
1
Е
 layer_regularization_losses
Дregularization_losses
layers
non_trainable_variables
Е	variables
layer_metrics
Жtrainable_variables
metrics

0
2
 

80
#
90
;1
<2
>3
?4
 
 
 
 

0
1

0
1
Е
 layer_regularization_losses
Пregularization_losses
layers
non_trainable_variables
Р	variables
layer_metrics
Сtrainable_variables
metrics

0
2
 

F0
#
G0
I1
J2
L3
M4
 
 
 
 

0
1

0
1
Е
 layer_regularization_losses
Ъregularization_losses
layers
non_trainable_variables
Ы	variables
layer_metrics
Ьtrainable_variables
metrics

0
2
 

T0
#
U0
W1
X2
Z3
[4
 
 
 
 
 
 
Е
 layer_regularization_losses
еregularization_losses
layers
non_trainable_variables
ж	variables
layer_metrics
зtrainable_variables
metrics
 

b0

c0
g1
h2
 
 
 
 

0
1

0
1
Е
 layer_regularization_losses
пregularization_losses
layers
non_trainable_variables
р	variables
layer_metrics
сtrainable_variables
metrics

0
2
 

o0
#
p0
r1
s2
u3
v4
 
 
 
 
 
 
Е
 layer_regularization_losses
ъregularization_losses
layers
non_trainable_variables
ы	variables
 layer_metrics
ьtrainable_variables
Ёmetrics
 

}0

~0
 
 
8

Ђtotal

Ѓcount
Є	variables
Ѕ	keras_api
 
 
 
 
 

min_var
 max_var
 
 
 
 
 

-min_var
.max_var
 
 
 
 
 

;min_var
<max_var
 
 
 
 
 

Imin_var
Jmax_var
 
 
 
 
 

Wmin_var
Xmax_var
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

rmin_var
smax_var
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
Ђ0
Ѓ1

Є	variables
Ў
serving_default_input_1Placeholder*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*6
shape-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ь
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!quantize_layer/quantize_layer_min!quantize_layer/quantize_layer_maxconv2d/kernelquant_conv2d/kernel_minquant_conv2d/kernel_maxconv2d/bias quant_conv2d/post_activation_min quant_conv2d/post_activation_maxconv2d_1/kernelquant_conv2d_1/kernel_minquant_conv2d_1/kernel_maxconv2d_1/bias"quant_conv2d_1/post_activation_min"quant_conv2d_1/post_activation_maxconv2d_2/kernelquant_conv2d_2/kernel_minquant_conv2d_2/kernel_maxconv2d_2/bias"quant_conv2d_2/post_activation_min"quant_conv2d_2/post_activation_maxconv2d_3/kernelquant_conv2d_3/kernel_minquant_conv2d_3/kernel_maxconv2d_3/bias"quant_conv2d_3/post_activation_min"quant_conv2d_3/post_activation_maxconv2d_4/kernelquant_conv2d_4/kernel_minquant_conv2d_4/kernel_maxconv2d_4/bias"quant_conv2d_4/post_activation_min"quant_conv2d_4/post_activation_maxquant_concatenate/output_minquant_concatenate/output_maxconv2d_5/kernelquant_conv2d_5/kernel_minquant_conv2d_5/kernel_maxconv2d_5/bias"quant_conv2d_5/post_activation_min"quant_conv2d_5/post_activation_max*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*2
config_proto" 

CPU

GPU2 *0J 8 *.
f)R'
%__inference_signature_wrapper_6089470
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5quantize_layer/quantize_layer_min/Read/ReadVariableOp5quantize_layer/quantize_layer_max/Read/ReadVariableOp1quantize_layer/optimizer_step/Read/ReadVariableOp/quant_conv2d/optimizer_step/Read/ReadVariableOp+quant_conv2d/kernel_min/Read/ReadVariableOp+quant_conv2d/kernel_max/Read/ReadVariableOp4quant_conv2d/post_activation_min/Read/ReadVariableOp4quant_conv2d/post_activation_max/Read/ReadVariableOp1quant_conv2d_1/optimizer_step/Read/ReadVariableOp-quant_conv2d_1/kernel_min/Read/ReadVariableOp-quant_conv2d_1/kernel_max/Read/ReadVariableOp6quant_conv2d_1/post_activation_min/Read/ReadVariableOp6quant_conv2d_1/post_activation_max/Read/ReadVariableOp1quant_conv2d_2/optimizer_step/Read/ReadVariableOp-quant_conv2d_2/kernel_min/Read/ReadVariableOp-quant_conv2d_2/kernel_max/Read/ReadVariableOp6quant_conv2d_2/post_activation_min/Read/ReadVariableOp6quant_conv2d_2/post_activation_max/Read/ReadVariableOp1quant_conv2d_3/optimizer_step/Read/ReadVariableOp-quant_conv2d_3/kernel_min/Read/ReadVariableOp-quant_conv2d_3/kernel_max/Read/ReadVariableOp6quant_conv2d_3/post_activation_min/Read/ReadVariableOp6quant_conv2d_3/post_activation_max/Read/ReadVariableOp1quant_conv2d_4/optimizer_step/Read/ReadVariableOp-quant_conv2d_4/kernel_min/Read/ReadVariableOp-quant_conv2d_4/kernel_max/Read/ReadVariableOp6quant_conv2d_4/post_activation_min/Read/ReadVariableOp6quant_conv2d_4/post_activation_max/Read/ReadVariableOp4quant_concatenate/optimizer_step/Read/ReadVariableOp0quant_concatenate/output_min/Read/ReadVariableOp0quant_concatenate/output_max/Read/ReadVariableOp1quant_conv2d_5/optimizer_step/Read/ReadVariableOp-quant_conv2d_5/kernel_min/Read/ReadVariableOp-quant_conv2d_5/kernel_max/Read/ReadVariableOp6quant_conv2d_5/post_activation_min/Read/ReadVariableOp6quant_conv2d_5/post_activation_max/Read/ReadVariableOp/quant_lambda/optimizer_step/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*@
Tin9
725*
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
GPU2 *0J 8 *)
f$R"
 __inference__traced_save_6090002

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!quantize_layer/quantize_layer_min!quantize_layer/quantize_layer_maxquantize_layer/optimizer_stepquant_conv2d/optimizer_stepquant_conv2d/kernel_minquant_conv2d/kernel_max quant_conv2d/post_activation_min quant_conv2d/post_activation_maxquant_conv2d_1/optimizer_stepquant_conv2d_1/kernel_minquant_conv2d_1/kernel_max"quant_conv2d_1/post_activation_min"quant_conv2d_1/post_activation_maxquant_conv2d_2/optimizer_stepquant_conv2d_2/kernel_minquant_conv2d_2/kernel_max"quant_conv2d_2/post_activation_min"quant_conv2d_2/post_activation_maxquant_conv2d_3/optimizer_stepquant_conv2d_3/kernel_minquant_conv2d_3/kernel_max"quant_conv2d_3/post_activation_min"quant_conv2d_3/post_activation_maxquant_conv2d_4/optimizer_stepquant_conv2d_4/kernel_minquant_conv2d_4/kernel_max"quant_conv2d_4/post_activation_min"quant_conv2d_4/post_activation_max quant_concatenate/optimizer_stepquant_concatenate/output_minquant_concatenate/output_maxquant_conv2d_5/optimizer_stepquant_conv2d_5/kernel_minquant_conv2d_5/kernel_max"quant_conv2d_5/post_activation_min"quant_conv2d_5/post_activation_maxquant_lambda/optimizer_stepconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biastotalcount*?
Tin8
624*
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
GPU2 *0J 8 *,
f'R%
#__inference__traced_restore_6090165Ё
ђ^
	
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082481

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђ^
	
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6082010

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
У	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6082793

inputs
identity
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/yО
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/yЊ
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ј]
	
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6082411

inputsI
/lastvaluequant_batchmin_readvariableop_resource:#3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
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
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/truediv
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
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAdd
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ь
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs
№^
	
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6081885

inputsI
/lastvaluequant_batchmin_readvariableop_resource: 3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
: *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
: *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
: *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
: *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088843

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_60816312
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Д
ў
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6081905

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂ8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ю
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Т
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)AllValuesQuantize/FakeQuantWithMinMaxVars
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В	

0__inference_quant_conv2d_4_layer_call_fn_6081727

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_60817162
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ш

N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6080926
inputs_0
inputs_1K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2
concatю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ы
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsconcat:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:09^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1


0__inference_quantize_layer_layer_call_fn_6081961

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_60819542
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ^
	
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6082130

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6089008

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_60824112
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs

ь
'__inference_model_layer_call_fn_6089197
input_1
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19:  

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: $

unknown_25:  

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: $

unknown_33:#

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38: 
identityЂStatefulPartitionedCall
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*.
_read_only_resource_inputs
	#&*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_60890292
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
Щ	
Є
3__inference_quant_concatenate_layer_call_fn_6080513
inputs_0
inputs_1
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *W
fRRP
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_60805052
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1
Ж	

0__inference_quant_conv2d_4_layer_call_fn_6080715

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_60807042
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
№'
Ј
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6081571

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђ^
	
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082070

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђ^
	
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6081232

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088933

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_60821302
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	

*__inference_restored_function_body_6088986

inputs
inputs_1
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1unknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *W
fRRP
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_60819332
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Г
ы
'__inference_model_layer_call_fn_6089741

inputs
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19:  

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: $

unknown_25:  

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: $

unknown_33:#

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38: 
identityЂStatefulPartitionedCall
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_60886402
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В	
џ
.__inference_quant_conv2d_layer_call_fn_6082825

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_60828142
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
§F

"__inference__wrapped_model_6088543
input_1&
model_quantize_layer_6088336: &
model_quantize_layer_6088338: 4
model_quant_conv2d_6088358: (
model_quant_conv2d_6088360: (
model_quant_conv2d_6088362: (
model_quant_conv2d_6088364: $
model_quant_conv2d_6088366: $
model_quant_conv2d_6088368: 6
model_quant_conv2d_1_6088388:  *
model_quant_conv2d_1_6088390: *
model_quant_conv2d_1_6088392: *
model_quant_conv2d_1_6088394: &
model_quant_conv2d_1_6088396: &
model_quant_conv2d_1_6088398: 6
model_quant_conv2d_2_6088418:  *
model_quant_conv2d_2_6088420: *
model_quant_conv2d_2_6088422: *
model_quant_conv2d_2_6088424: &
model_quant_conv2d_2_6088426: &
model_quant_conv2d_2_6088428: 6
model_quant_conv2d_3_6088448:  *
model_quant_conv2d_3_6088450: *
model_quant_conv2d_3_6088452: *
model_quant_conv2d_3_6088454: &
model_quant_conv2d_3_6088456: &
model_quant_conv2d_3_6088458: 6
model_quant_conv2d_4_6088478:  *
model_quant_conv2d_4_6088480: *
model_quant_conv2d_4_6088482: *
model_quant_conv2d_4_6088484: &
model_quant_conv2d_4_6088486: &
model_quant_conv2d_4_6088488: )
model_quant_concatenate_6088501: )
model_quant_concatenate_6088503: 6
model_quant_conv2d_5_6088523:#*
model_quant_conv2d_5_6088525:*
model_quant_conv2d_5_6088527:*
model_quant_conv2d_5_6088529:&
model_quant_conv2d_5_6088531: &
model_quant_conv2d_5_6088533: 
identityЂ/model/quant_concatenate/StatefulPartitionedCallЂ*model/quant_conv2d/StatefulPartitionedCallЂ,model/quant_conv2d_1/StatefulPartitionedCallЂ,model/quant_conv2d_2/StatefulPartitionedCallЂ,model/quant_conv2d_3/StatefulPartitionedCallЂ,model/quant_conv2d_4/StatefulPartitionedCallЂ,model/quant_conv2d_5/StatefulPartitionedCallЂ,model/quantize_layer/StatefulPartitionedCallЬ
,model/quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1model_quantize_layer_6088336model_quantize_layer_6088338*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883352.
,model/quantize_layer/StatefulPartitionedCallъ
*model/quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall5model/quantize_layer/StatefulPartitionedCall:output:0model_quant_conv2d_6088358model_quant_conv2d_6088360model_quant_conv2d_6088362model_quant_conv2d_6088364model_quant_conv2d_6088366model_quant_conv2d_6088368*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883572,
*model/quant_conv2d/StatefulPartitionedCallј
,model/quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall3model/quant_conv2d/StatefulPartitionedCall:output:0model_quant_conv2d_1_6088388model_quant_conv2d_1_6088390model_quant_conv2d_1_6088392model_quant_conv2d_1_6088394model_quant_conv2d_1_6088396model_quant_conv2d_1_6088398*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883872.
,model/quant_conv2d_1/StatefulPartitionedCallњ
,model/quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall5model/quant_conv2d_1/StatefulPartitionedCall:output:0model_quant_conv2d_2_6088418model_quant_conv2d_2_6088420model_quant_conv2d_2_6088422model_quant_conv2d_2_6088424model_quant_conv2d_2_6088426model_quant_conv2d_2_6088428*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884172.
,model/quant_conv2d_2/StatefulPartitionedCallњ
,model/quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall5model/quant_conv2d_2/StatefulPartitionedCall:output:0model_quant_conv2d_3_6088448model_quant_conv2d_3_6088450model_quant_conv2d_3_6088452model_quant_conv2d_3_6088454model_quant_conv2d_3_6088456model_quant_conv2d_3_6088458*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884472.
,model/quant_conv2d_3/StatefulPartitionedCallњ
,model/quant_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall5model/quant_conv2d_3/StatefulPartitionedCall:output:0model_quant_conv2d_4_6088478model_quant_conv2d_4_6088480model_quant_conv2d_4_6088482model_quant_conv2d_4_6088484model_quant_conv2d_4_6088486model_quant_conv2d_4_6088488*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884772.
,model/quant_conv2d_4/StatefulPartitionedCallО
/model/quant_concatenate/StatefulPartitionedCallStatefulPartitionedCall5model/quant_conv2d_4/StatefulPartitionedCall:output:05model/quantize_layer/StatefulPartitionedCall:output:0model_quant_concatenate_6088501model_quant_concatenate_6088503*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_608850021
/model/quant_concatenate/StatefulPartitionedCall§
,model/quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall8model/quant_concatenate/StatefulPartitionedCall:output:0model_quant_conv2d_5_6088523model_quant_conv2d_5_6088525model_quant_conv2d_5_6088527model_quant_conv2d_5_6088529model_quant_conv2d_5_6088531model_quant_conv2d_5_6088533*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885222.
,model/quant_conv2d_5/StatefulPartitionedCall
"model/quant_lambda/PartitionedCallPartitionedCall5model/quant_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885402$
"model/quant_lambda/PartitionedCall
IdentityIdentity+model/quant_lambda/PartitionedCall:output:00^model/quant_concatenate/StatefulPartitionedCall+^model/quant_conv2d/StatefulPartitionedCall-^model/quant_conv2d_1/StatefulPartitionedCall-^model/quant_conv2d_2/StatefulPartitionedCall-^model/quant_conv2d_3/StatefulPartitionedCall-^model/quant_conv2d_4/StatefulPartitionedCall-^model/quant_conv2d_5/StatefulPartitionedCall-^model/quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/model/quant_concatenate/StatefulPartitionedCall/model/quant_concatenate/StatefulPartitionedCall2X
*model/quant_conv2d/StatefulPartitionedCall*model/quant_conv2d/StatefulPartitionedCall2\
,model/quant_conv2d_1/StatefulPartitionedCall,model/quant_conv2d_1/StatefulPartitionedCall2\
,model/quant_conv2d_2/StatefulPartitionedCall,model/quant_conv2d_2/StatefulPartitionedCall2\
,model/quant_conv2d_3/StatefulPartitionedCall,model/quant_conv2d_3/StatefulPartitionedCall2\
,model/quant_conv2d_4/StatefulPartitionedCall,model/quant_conv2d_4/StatefulPartitionedCall2\
,model/quant_conv2d_5/StatefulPartitionedCall,model/quant_conv2d_5/StatefulPartitionedCall2\
,model/quantize_layer/StatefulPartitionedCall,model/quantize_layer/StatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
в@

B__inference_model_layer_call_and_return_conditional_losses_6088640

inputs 
quantize_layer_6088550:  
quantize_layer_6088552: .
quant_conv2d_6088555: "
quant_conv2d_6088557: "
quant_conv2d_6088559: "
quant_conv2d_6088561: 
quant_conv2d_6088563: 
quant_conv2d_6088565: 0
quant_conv2d_1_6088568:  $
quant_conv2d_1_6088570: $
quant_conv2d_1_6088572: $
quant_conv2d_1_6088574:  
quant_conv2d_1_6088576:  
quant_conv2d_1_6088578: 0
quant_conv2d_2_6088581:  $
quant_conv2d_2_6088583: $
quant_conv2d_2_6088585: $
quant_conv2d_2_6088587:  
quant_conv2d_2_6088589:  
quant_conv2d_2_6088591: 0
quant_conv2d_3_6088594:  $
quant_conv2d_3_6088596: $
quant_conv2d_3_6088598: $
quant_conv2d_3_6088600:  
quant_conv2d_3_6088602:  
quant_conv2d_3_6088604: 0
quant_conv2d_4_6088607:  $
quant_conv2d_4_6088609: $
quant_conv2d_4_6088611: $
quant_conv2d_4_6088613:  
quant_conv2d_4_6088615:  
quant_conv2d_4_6088617: #
quant_concatenate_6088620: #
quant_concatenate_6088622: 0
quant_conv2d_5_6088625:#$
quant_conv2d_5_6088627:$
quant_conv2d_5_6088629:$
quant_conv2d_5_6088631: 
quant_conv2d_5_6088633:  
quant_conv2d_5_6088635: 
identityЂ)quant_concatenate/StatefulPartitionedCallЂ$quant_conv2d/StatefulPartitionedCallЂ&quant_conv2d_1/StatefulPartitionedCallЂ&quant_conv2d_2/StatefulPartitionedCallЂ&quant_conv2d_3/StatefulPartitionedCallЂ&quant_conv2d_4/StatefulPartitionedCallЂ&quant_conv2d_5/StatefulPartitionedCallЂ&quantize_layer/StatefulPartitionedCallГ
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_6088550quantize_layer_6088552*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883352(
&quantize_layer/StatefulPartitionedCallД
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_6088555quant_conv2d_6088557quant_conv2d_6088559quant_conv2d_6088561quant_conv2d_6088563quant_conv2d_6088565*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883572&
$quant_conv2d/StatefulPartitionedCallТ
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_6088568quant_conv2d_1_6088570quant_conv2d_1_6088572quant_conv2d_1_6088574quant_conv2d_1_6088576quant_conv2d_1_6088578*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883872(
&quant_conv2d_1/StatefulPartitionedCallФ
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_6088581quant_conv2d_2_6088583quant_conv2d_2_6088585quant_conv2d_2_6088587quant_conv2d_2_6088589quant_conv2d_2_6088591*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884172(
&quant_conv2d_2/StatefulPartitionedCallФ
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_6088594quant_conv2d_3_6088596quant_conv2d_3_6088598quant_conv2d_3_6088600quant_conv2d_3_6088602quant_conv2d_3_6088604*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884472(
&quant_conv2d_3/StatefulPartitionedCallФ
&quant_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0quant_conv2d_4_6088607quant_conv2d_4_6088609quant_conv2d_4_6088611quant_conv2d_4_6088613quant_conv2d_4_6088615quant_conv2d_4_6088617*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884772(
&quant_conv2d_4/StatefulPartitionedCall
)quant_concatenate/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_4/StatefulPartitionedCall:output:0/quantize_layer/StatefulPartitionedCall:output:0quant_concatenate_6088620quant_concatenate_6088622*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885002+
)quant_concatenate/StatefulPartitionedCallЧ
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall2quant_concatenate/StatefulPartitionedCall:output:0quant_conv2d_5_6088625quant_conv2d_5_6088627quant_conv2d_5_6088629quant_conv2d_5_6088631quant_conv2d_5_6088633quant_conv2d_5_6088635*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885222(
&quant_conv2d_5/StatefulPartitionedCall
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885402
quant_lambda/PartitionedCallм
IdentityIdentity%quant_lambda/PartitionedCall:output:0*^quant_concatenate/StatefulPartitionedCall%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quant_conv2d_4/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)quant_concatenate/StatefulPartitionedCall)quant_concatenate/StatefulPartitionedCall2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quant_conv2d_4/StatefulPartitionedCall&quant_conv2d_4/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ь'
ў
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6081954

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identityЂ#AllValuesQuantize/AssignMaxAllValueЂ#AllValuesQuantize/AssignMinAllValueЂ8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ђ(AllValuesQuantize/Maximum/ReadVariableOpЂ(AllValuesQuantize/Minimum/ReadVariableOp
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const_1
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMaxО
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOpЙ
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y­
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1О
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOpЙ
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y­
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Т
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)AllValuesQuantize/FakeQuantWithMinMaxVarsЛ
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
њ&
Ј
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6080672

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ь
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs
в@

B__inference_model_layer_call_and_return_conditional_losses_6089563

inputs 
quantize_layer_6089473:  
quantize_layer_6089475: .
quant_conv2d_6089478: "
quant_conv2d_6089480: "
quant_conv2d_6089482: "
quant_conv2d_6089484: 
quant_conv2d_6089486: 
quant_conv2d_6089488: 0
quant_conv2d_1_6089491:  $
quant_conv2d_1_6089493: $
quant_conv2d_1_6089495: $
quant_conv2d_1_6089497:  
quant_conv2d_1_6089499:  
quant_conv2d_1_6089501: 0
quant_conv2d_2_6089504:  $
quant_conv2d_2_6089506: $
quant_conv2d_2_6089508: $
quant_conv2d_2_6089510:  
quant_conv2d_2_6089512:  
quant_conv2d_2_6089514: 0
quant_conv2d_3_6089517:  $
quant_conv2d_3_6089519: $
quant_conv2d_3_6089521: $
quant_conv2d_3_6089523:  
quant_conv2d_3_6089525:  
quant_conv2d_3_6089527: 0
quant_conv2d_4_6089530:  $
quant_conv2d_4_6089532: $
quant_conv2d_4_6089534: $
quant_conv2d_4_6089536:  
quant_conv2d_4_6089538:  
quant_conv2d_4_6089540: #
quant_concatenate_6089543: #
quant_concatenate_6089545: 0
quant_conv2d_5_6089548:#$
quant_conv2d_5_6089550:$
quant_conv2d_5_6089552:$
quant_conv2d_5_6089554: 
quant_conv2d_5_6089556:  
quant_conv2d_5_6089558: 
identityЂ)quant_concatenate/StatefulPartitionedCallЂ$quant_conv2d/StatefulPartitionedCallЂ&quant_conv2d_1/StatefulPartitionedCallЂ&quant_conv2d_2/StatefulPartitionedCallЂ&quant_conv2d_3/StatefulPartitionedCallЂ&quant_conv2d_4/StatefulPartitionedCallЂ&quant_conv2d_5/StatefulPartitionedCallЂ&quantize_layer/StatefulPartitionedCallГ
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_6089473quantize_layer_6089475*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883352(
&quantize_layer/StatefulPartitionedCallД
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_6089478quant_conv2d_6089480quant_conv2d_6089482quant_conv2d_6089484quant_conv2d_6089486quant_conv2d_6089488*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883572&
$quant_conv2d/StatefulPartitionedCallТ
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_6089491quant_conv2d_1_6089493quant_conv2d_1_6089495quant_conv2d_1_6089497quant_conv2d_1_6089499quant_conv2d_1_6089501*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883872(
&quant_conv2d_1/StatefulPartitionedCallФ
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_6089504quant_conv2d_2_6089506quant_conv2d_2_6089508quant_conv2d_2_6089510quant_conv2d_2_6089512quant_conv2d_2_6089514*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884172(
&quant_conv2d_2/StatefulPartitionedCallФ
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_6089517quant_conv2d_3_6089519quant_conv2d_3_6089521quant_conv2d_3_6089523quant_conv2d_3_6089525quant_conv2d_3_6089527*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884472(
&quant_conv2d_3/StatefulPartitionedCallФ
&quant_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0quant_conv2d_4_6089530quant_conv2d_4_6089532quant_conv2d_4_6089534quant_conv2d_4_6089536quant_conv2d_4_6089538quant_conv2d_4_6089540*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884772(
&quant_conv2d_4/StatefulPartitionedCall
)quant_concatenate/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_4/StatefulPartitionedCall:output:0/quantize_layer/StatefulPartitionedCall:output:0quant_concatenate_6089543quant_concatenate_6089545*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885002+
)quant_concatenate/StatefulPartitionedCallЧ
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall2quant_concatenate/StatefulPartitionedCall:output:0quant_conv2d_5_6089548quant_conv2d_5_6089550quant_conv2d_5_6089552quant_conv2d_5_6089554quant_conv2d_5_6089556quant_conv2d_5_6089558*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885222(
&quant_conv2d_5/StatefulPartitionedCall
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885402
quant_lambda/PartitionedCallм
IdentityIdentity%quant_lambda/PartitionedCall:output:0*^quant_concatenate/StatefulPartitionedCall%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quant_conv2d_4/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)quant_concatenate/StatefulPartitionedCall)quant_concatenate/StatefulPartitionedCall2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quant_conv2d_4/StatefulPartitionedCall&quant_conv2d_4/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088522

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_60821992
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs
ю'
І
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6082432

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
: *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
: *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Д
ў
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6082745

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂ8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ю
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Т
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)AllValuesQuantize/FakeQuantWithMinMaxVars
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
№^
	
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6081631

inputsI
/lastvaluequant_batchmin_readvariableop_resource: 3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
: *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
: *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
: *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
: *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
№'
Ј
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6080652

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
х

*__inference_restored_function_body_6088335

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_60819052
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	

*__inference_restored_function_body_6088500

inputs
inputs_1
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1unknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *W
fRRP
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_60809262
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
№'
Ј
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6080704

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Д
J
.__inference_quant_lambda_layer_call_fn_6082179

inputs
identityц
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_60821742
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В	

0__inference_quant_conv2d_3_layer_call_fn_6081787

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_60817762
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
№'
Ј
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082773

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ж	

0__inference_quant_conv2d_2_layer_call_fn_6082784

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_60827732
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ъ3
С
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6081659

inputs
inputs_1@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2
concat
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinconcat:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
MovingAvgQuantize/BatchMaxMaxconcat:output:0"MovingAvgQuantize/Const_1:output:0*
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ы
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsconcat:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsу
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:03^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
№'
Ј
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6080903

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088447

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_60821652
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
р

N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6080505

inputs
inputs_1K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2
concatю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ы
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsconcat:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:09^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ђ^
	
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6081716

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088963

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_60812322
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088477

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_60805342
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


0__inference_quantize_layer_layer_call_fn_6082752

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_60827452
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
У	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6080935

inputs
identity
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/yО
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/yЊ
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Е@

B__inference_model_layer_call_and_return_conditional_losses_6089383
input_1 
quantize_layer_6089293:  
quantize_layer_6089295: .
quant_conv2d_6089298: "
quant_conv2d_6089300: "
quant_conv2d_6089302: "
quant_conv2d_6089304: 
quant_conv2d_6089306: 
quant_conv2d_6089308: 0
quant_conv2d_1_6089311:  $
quant_conv2d_1_6089313: $
quant_conv2d_1_6089315: $
quant_conv2d_1_6089317:  
quant_conv2d_1_6089319:  
quant_conv2d_1_6089321: 0
quant_conv2d_2_6089324:  $
quant_conv2d_2_6089326: $
quant_conv2d_2_6089328: $
quant_conv2d_2_6089330:  
quant_conv2d_2_6089332:  
quant_conv2d_2_6089334: 0
quant_conv2d_3_6089337:  $
quant_conv2d_3_6089339: $
quant_conv2d_3_6089341: $
quant_conv2d_3_6089343:  
quant_conv2d_3_6089345:  
quant_conv2d_3_6089347: 0
quant_conv2d_4_6089350:  $
quant_conv2d_4_6089352: $
quant_conv2d_4_6089354: $
quant_conv2d_4_6089356:  
quant_conv2d_4_6089358:  
quant_conv2d_4_6089360: #
quant_concatenate_6089363: #
quant_concatenate_6089365: 0
quant_conv2d_5_6089368:#$
quant_conv2d_5_6089370:$
quant_conv2d_5_6089372:$
quant_conv2d_5_6089374: 
quant_conv2d_5_6089376:  
quant_conv2d_5_6089378: 
identityЂ)quant_concatenate/StatefulPartitionedCallЂ$quant_conv2d/StatefulPartitionedCallЂ&quant_conv2d_1/StatefulPartitionedCallЂ&quant_conv2d_2/StatefulPartitionedCallЂ&quant_conv2d_3/StatefulPartitionedCallЂ&quant_conv2d_4/StatefulPartitionedCallЂ&quant_conv2d_5/StatefulPartitionedCallЂ&quantize_layer/StatefulPartitionedCallА
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1quantize_layer_6089293quantize_layer_6089295*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888212(
&quantize_layer/StatefulPartitionedCallА
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_6089298quant_conv2d_6089300quant_conv2d_6089302quant_conv2d_6089304quant_conv2d_6089306quant_conv2d_6089308*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888432&
$quant_conv2d/StatefulPartitionedCallО
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_6089311quant_conv2d_1_6089313quant_conv2d_1_6089315quant_conv2d_1_6089317quant_conv2d_1_6089319quant_conv2d_1_6089321*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888732(
&quant_conv2d_1/StatefulPartitionedCallР
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_6089324quant_conv2d_2_6089326quant_conv2d_2_6089328quant_conv2d_2_6089330quant_conv2d_2_6089332quant_conv2d_2_6089334*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889032(
&quant_conv2d_2/StatefulPartitionedCallР
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_6089337quant_conv2d_3_6089339quant_conv2d_3_6089341quant_conv2d_3_6089343quant_conv2d_3_6089345quant_conv2d_3_6089347*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889332(
&quant_conv2d_3/StatefulPartitionedCallР
&quant_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0quant_conv2d_4_6089350quant_conv2d_4_6089352quant_conv2d_4_6089354quant_conv2d_4_6089356quant_conv2d_4_6089358quant_conv2d_4_6089360*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889632(
&quant_conv2d_4/StatefulPartitionedCall
)quant_concatenate/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_4/StatefulPartitionedCall:output:0/quantize_layer/StatefulPartitionedCall:output:0quant_concatenate_6089363quant_concatenate_6089365*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889862+
)quant_concatenate/StatefulPartitionedCallУ
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall2quant_concatenate/StatefulPartitionedCall:output:0quant_conv2d_5_6089368quant_conv2d_5_6089370quant_conv2d_5_6089372quant_conv2d_5_6089374quant_conv2d_5_6089376quant_conv2d_5_6089378*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60890082(
&quant_conv2d_5/StatefulPartitionedCall
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60890262
quant_lambda/PartitionedCallм
IdentityIdentity%quant_lambda/PartitionedCall:output:0*^quant_concatenate/StatefulPartitionedCall%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quant_conv2d_4/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)quant_concatenate/StatefulPartitionedCall)quant_concatenate/StatefulPartitionedCall2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quant_conv2d_4/StatefulPartitionedCall&quant_conv2d_4/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
ђ^
	
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6081776

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
В@

B__inference_model_layer_call_and_return_conditional_losses_6089029

inputs 
quantize_layer_6088822:  
quantize_layer_6088824: .
quant_conv2d_6088844: "
quant_conv2d_6088846: "
quant_conv2d_6088848: "
quant_conv2d_6088850: 
quant_conv2d_6088852: 
quant_conv2d_6088854: 0
quant_conv2d_1_6088874:  $
quant_conv2d_1_6088876: $
quant_conv2d_1_6088878: $
quant_conv2d_1_6088880:  
quant_conv2d_1_6088882:  
quant_conv2d_1_6088884: 0
quant_conv2d_2_6088904:  $
quant_conv2d_2_6088906: $
quant_conv2d_2_6088908: $
quant_conv2d_2_6088910:  
quant_conv2d_2_6088912:  
quant_conv2d_2_6088914: 0
quant_conv2d_3_6088934:  $
quant_conv2d_3_6088936: $
quant_conv2d_3_6088938: $
quant_conv2d_3_6088940:  
quant_conv2d_3_6088942:  
quant_conv2d_3_6088944: 0
quant_conv2d_4_6088964:  $
quant_conv2d_4_6088966: $
quant_conv2d_4_6088968: $
quant_conv2d_4_6088970:  
quant_conv2d_4_6088972:  
quant_conv2d_4_6088974: #
quant_concatenate_6088987: #
quant_concatenate_6088989: 0
quant_conv2d_5_6089009:#$
quant_conv2d_5_6089011:$
quant_conv2d_5_6089013:$
quant_conv2d_5_6089015: 
quant_conv2d_5_6089017:  
quant_conv2d_5_6089019: 
identityЂ)quant_concatenate/StatefulPartitionedCallЂ$quant_conv2d/StatefulPartitionedCallЂ&quant_conv2d_1/StatefulPartitionedCallЂ&quant_conv2d_2/StatefulPartitionedCallЂ&quant_conv2d_3/StatefulPartitionedCallЂ&quant_conv2d_4/StatefulPartitionedCallЂ&quant_conv2d_5/StatefulPartitionedCallЂ&quantize_layer/StatefulPartitionedCallЏ
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_6088822quantize_layer_6088824*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888212(
&quantize_layer/StatefulPartitionedCallА
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_6088844quant_conv2d_6088846quant_conv2d_6088848quant_conv2d_6088850quant_conv2d_6088852quant_conv2d_6088854*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888432&
$quant_conv2d/StatefulPartitionedCallО
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_6088874quant_conv2d_1_6088876quant_conv2d_1_6088878quant_conv2d_1_6088880quant_conv2d_1_6088882quant_conv2d_1_6088884*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888732(
&quant_conv2d_1/StatefulPartitionedCallР
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_6088904quant_conv2d_2_6088906quant_conv2d_2_6088908quant_conv2d_2_6088910quant_conv2d_2_6088912quant_conv2d_2_6088914*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889032(
&quant_conv2d_2/StatefulPartitionedCallР
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_6088934quant_conv2d_3_6088936quant_conv2d_3_6088938quant_conv2d_3_6088940quant_conv2d_3_6088942quant_conv2d_3_6088944*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889332(
&quant_conv2d_3/StatefulPartitionedCallР
&quant_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0quant_conv2d_4_6088964quant_conv2d_4_6088966quant_conv2d_4_6088968quant_conv2d_4_6088970quant_conv2d_4_6088972quant_conv2d_4_6088974*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889632(
&quant_conv2d_4/StatefulPartitionedCall
)quant_concatenate/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_4/StatefulPartitionedCall:output:0/quantize_layer/StatefulPartitionedCall:output:0quant_concatenate_6088987quant_concatenate_6088989*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889862+
)quant_concatenate/StatefulPartitionedCallУ
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall2quant_concatenate/StatefulPartitionedCall:output:0quant_conv2d_5_6089009quant_conv2d_5_6089011quant_conv2d_5_6089013quant_conv2d_5_6089015quant_conv2d_5_6089017quant_conv2d_5_6089019*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60890082(
&quant_conv2d_5/StatefulPartitionedCall
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60890262
quant_lambda/PartitionedCallм
IdentityIdentity%quant_lambda/PartitionedCall:output:0*^quant_concatenate/StatefulPartitionedCall%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quant_conv2d_4/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)quant_concatenate/StatefulPartitionedCall)quant_concatenate/StatefulPartitionedCall2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quant_conv2d_4/StatefulPartitionedCall&quant_conv2d_4/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ў	
џ
.__inference_quant_conv2d_layer_call_fn_6081896

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_60818852
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088387

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_60806522
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088903

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_60824812
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ж
ь
'__inference_model_layer_call_fn_6088723
input_1
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19:  

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: $

unknown_25:  

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: $

unknown_33:#

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38: 
identityЂStatefulPartitionedCall
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_60886402
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
в3
У
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6081933
inputs_0
inputs_1@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2
concat
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinconcat:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
MovingAvgQuantize/BatchMaxMaxconcat:output:0"MovingAvgQuantize/Const_1:output:0*
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ы
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsconcat:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsу
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:03^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1
	
ћ
*__inference_restored_function_body_6088357

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_60824322
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В	

0__inference_quant_conv2d_2_layer_call_fn_6082081

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_60820702
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
№'
Ј
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6080534

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
ћ
*__inference_restored_function_body_6088417

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_60823422
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Д
J
.__inference_quant_lambda_layer_call_fn_6082144

inputs
identityц
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_60821392
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е@

B__inference_model_layer_call_and_return_conditional_losses_6089290
input_1 
quantize_layer_6089200:  
quantize_layer_6089202: .
quant_conv2d_6089205: "
quant_conv2d_6089207: "
quant_conv2d_6089209: "
quant_conv2d_6089211: 
quant_conv2d_6089213: 
quant_conv2d_6089215: 0
quant_conv2d_1_6089218:  $
quant_conv2d_1_6089220: $
quant_conv2d_1_6089222: $
quant_conv2d_1_6089224:  
quant_conv2d_1_6089226:  
quant_conv2d_1_6089228: 0
quant_conv2d_2_6089231:  $
quant_conv2d_2_6089233: $
quant_conv2d_2_6089235: $
quant_conv2d_2_6089237:  
quant_conv2d_2_6089239:  
quant_conv2d_2_6089241: 0
quant_conv2d_3_6089244:  $
quant_conv2d_3_6089246: $
quant_conv2d_3_6089248: $
quant_conv2d_3_6089250:  
quant_conv2d_3_6089252:  
quant_conv2d_3_6089254: 0
quant_conv2d_4_6089257:  $
quant_conv2d_4_6089259: $
quant_conv2d_4_6089261: $
quant_conv2d_4_6089263:  
quant_conv2d_4_6089265:  
quant_conv2d_4_6089267: #
quant_concatenate_6089270: #
quant_concatenate_6089272: 0
quant_conv2d_5_6089275:#$
quant_conv2d_5_6089277:$
quant_conv2d_5_6089279:$
quant_conv2d_5_6089281: 
quant_conv2d_5_6089283:  
quant_conv2d_5_6089285: 
identityЂ)quant_concatenate/StatefulPartitionedCallЂ$quant_conv2d/StatefulPartitionedCallЂ&quant_conv2d_1/StatefulPartitionedCallЂ&quant_conv2d_2/StatefulPartitionedCallЂ&quant_conv2d_3/StatefulPartitionedCallЂ&quant_conv2d_4/StatefulPartitionedCallЂ&quant_conv2d_5/StatefulPartitionedCallЂ&quantize_layer/StatefulPartitionedCallД
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1quantize_layer_6089200quantize_layer_6089202*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883352(
&quantize_layer/StatefulPartitionedCallД
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_6089205quant_conv2d_6089207quant_conv2d_6089209quant_conv2d_6089211quant_conv2d_6089213quant_conv2d_6089215*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883572&
$quant_conv2d/StatefulPartitionedCallТ
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_6089218quant_conv2d_1_6089220quant_conv2d_1_6089222quant_conv2d_1_6089224quant_conv2d_1_6089226quant_conv2d_1_6089228*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60883872(
&quant_conv2d_1/StatefulPartitionedCallФ
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_6089231quant_conv2d_2_6089233quant_conv2d_2_6089235quant_conv2d_2_6089237quant_conv2d_2_6089239quant_conv2d_2_6089241*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884172(
&quant_conv2d_2/StatefulPartitionedCallФ
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_6089244quant_conv2d_3_6089246quant_conv2d_3_6089248quant_conv2d_3_6089250quant_conv2d_3_6089252quant_conv2d_3_6089254*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884472(
&quant_conv2d_3/StatefulPartitionedCallФ
&quant_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0quant_conv2d_4_6089257quant_conv2d_4_6089259quant_conv2d_4_6089261quant_conv2d_4_6089263quant_conv2d_4_6089265quant_conv2d_4_6089267*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60884772(
&quant_conv2d_4/StatefulPartitionedCall
)quant_concatenate/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_4/StatefulPartitionedCall:output:0/quantize_layer/StatefulPartitionedCall:output:0quant_concatenate_6089270quant_concatenate_6089272*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885002+
)quant_concatenate/StatefulPartitionedCallЧ
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall2quant_concatenate/StatefulPartitionedCall:output:0quant_conv2d_5_6089275quant_conv2d_5_6089277quant_conv2d_5_6089279quant_conv2d_5_6089281quant_conv2d_5_6089283quant_conv2d_5_6089285*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885222(
&quant_conv2d_5/StatefulPartitionedCall
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60885402
quant_lambda/PartitionedCallм
IdentityIdentity%quant_lambda/PartitionedCall:output:0*^quant_concatenate/StatefulPartitionedCall%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quant_conv2d_4/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)quant_concatenate/StatefulPartitionedCall)quant_concatenate/StatefulPartitionedCall2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quant_conv2d_4/StatefulPartitionedCall&quant_conv2d_4/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
њ&
Ј
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6082199

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:#X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource:X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource:-
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ь
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs

ъ
%__inference_signature_wrapper_6089470
input_1
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19:  

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: $

unknown_25:  

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: $

unknown_33:#

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38: 
identityЂStatefulPartitionedCall§
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*2
config_proto" 

CPU

GPU2 *0J 8 *+
f&R$
"__inference__wrapped_model_60885432
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
Ж	

0__inference_quant_conv2d_1_layer_call_fn_6080914

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_60809032
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђ^
	
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6081836

inputsI
/lastvaluequant_batchmin_readvariableop_resource:  3
%lastvaluequant_assignminlast_resource: 3
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:02LastValueQuant/BatchMax/reduction_indices:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Relu
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ь'
ў
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6082363

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identityЂ#AllValuesQuantize/AssignMaxAllValueЂ#AllValuesQuantize/AssignMinAllValueЂ8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ђ(AllValuesQuantize/Maximum/ReadVariableOpЂ(AllValuesQuantize/Minimum/ReadVariableOp
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
AllValuesQuantize/Const_1
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMaxО
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOpЙ
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y­
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1О
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOpЙ
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y­
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Т
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)AllValuesQuantize/FakeQuantWithMinMaxVarsЛ
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В	

0__inference_quant_conv2d_1_layer_call_fn_6082021

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_60820102
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Х	
Є
3__inference_quant_concatenate_layer_call_fn_6081667
inputs_0
inputs_1
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *W
fRRP
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_60816592
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/1
	
ћ
*__inference_restored_function_body_6088873

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_60818362
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
лк
!
#__inference__traced_restore_6090165
file_prefix<
2assignvariableop_quantize_layer_quantize_layer_min: >
4assignvariableop_1_quantize_layer_quantize_layer_max: :
0assignvariableop_2_quantize_layer_optimizer_step: 8
.assignvariableop_3_quant_conv2d_optimizer_step: 8
*assignvariableop_4_quant_conv2d_kernel_min: 8
*assignvariableop_5_quant_conv2d_kernel_max: =
3assignvariableop_6_quant_conv2d_post_activation_min: =
3assignvariableop_7_quant_conv2d_post_activation_max: :
0assignvariableop_8_quant_conv2d_1_optimizer_step: :
,assignvariableop_9_quant_conv2d_1_kernel_min: ;
-assignvariableop_10_quant_conv2d_1_kernel_max: @
6assignvariableop_11_quant_conv2d_1_post_activation_min: @
6assignvariableop_12_quant_conv2d_1_post_activation_max: ;
1assignvariableop_13_quant_conv2d_2_optimizer_step: ;
-assignvariableop_14_quant_conv2d_2_kernel_min: ;
-assignvariableop_15_quant_conv2d_2_kernel_max: @
6assignvariableop_16_quant_conv2d_2_post_activation_min: @
6assignvariableop_17_quant_conv2d_2_post_activation_max: ;
1assignvariableop_18_quant_conv2d_3_optimizer_step: ;
-assignvariableop_19_quant_conv2d_3_kernel_min: ;
-assignvariableop_20_quant_conv2d_3_kernel_max: @
6assignvariableop_21_quant_conv2d_3_post_activation_min: @
6assignvariableop_22_quant_conv2d_3_post_activation_max: ;
1assignvariableop_23_quant_conv2d_4_optimizer_step: ;
-assignvariableop_24_quant_conv2d_4_kernel_min: ;
-assignvariableop_25_quant_conv2d_4_kernel_max: @
6assignvariableop_26_quant_conv2d_4_post_activation_min: @
6assignvariableop_27_quant_conv2d_4_post_activation_max: >
4assignvariableop_28_quant_concatenate_optimizer_step: :
0assignvariableop_29_quant_concatenate_output_min: :
0assignvariableop_30_quant_concatenate_output_max: ;
1assignvariableop_31_quant_conv2d_5_optimizer_step: ;
-assignvariableop_32_quant_conv2d_5_kernel_min:;
-assignvariableop_33_quant_conv2d_5_kernel_max:@
6assignvariableop_34_quant_conv2d_5_post_activation_min: @
6assignvariableop_35_quant_conv2d_5_post_activation_max: 9
/assignvariableop_36_quant_lambda_optimizer_step: ;
!assignvariableop_37_conv2d_kernel: -
assignvariableop_38_conv2d_bias: =
#assignvariableop_39_conv2d_1_kernel:  /
!assignvariableop_40_conv2d_1_bias: =
#assignvariableop_41_conv2d_2_kernel:  /
!assignvariableop_42_conv2d_2_bias: =
#assignvariableop_43_conv2d_3_kernel:  /
!assignvariableop_44_conv2d_3_bias: =
#assignvariableop_45_conv2d_4_kernel:  /
!assignvariableop_46_conv2d_4_bias: =
#assignvariableop_47_conv2d_5_kernel:#/
!assignvariableop_48_conv2d_5_bias:#
assignvariableop_49_total: #
assignvariableop_50_count: 
identity_52ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Щ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*е
valueЫBШ4BBlayer_with_weights-0/quantize_layer_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/quantize_layer_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-5/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-5/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/output_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/output_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-7/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-8/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesі
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesВ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ц
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
6242
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityБ
AssignVariableOpAssignVariableOp2assignvariableop_quantize_layer_quantize_layer_minIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Й
AssignVariableOp_1AssignVariableOp4assignvariableop_1_quantize_layer_quantize_layer_maxIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Е
AssignVariableOp_2AssignVariableOp0assignvariableop_2_quantize_layer_optimizer_stepIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Г
AssignVariableOp_3AssignVariableOp.assignvariableop_3_quant_conv2d_optimizer_stepIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Џ
AssignVariableOp_4AssignVariableOp*assignvariableop_4_quant_conv2d_kernel_minIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Џ
AssignVariableOp_5AssignVariableOp*assignvariableop_5_quant_conv2d_kernel_maxIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6И
AssignVariableOp_6AssignVariableOp3assignvariableop_6_quant_conv2d_post_activation_minIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7И
AssignVariableOp_7AssignVariableOp3assignvariableop_7_quant_conv2d_post_activation_maxIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Е
AssignVariableOp_8AssignVariableOp0assignvariableop_8_quant_conv2d_1_optimizer_stepIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Б
AssignVariableOp_9AssignVariableOp,assignvariableop_9_quant_conv2d_1_kernel_minIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Е
AssignVariableOp_10AssignVariableOp-assignvariableop_10_quant_conv2d_1_kernel_maxIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11О
AssignVariableOp_11AssignVariableOp6assignvariableop_11_quant_conv2d_1_post_activation_minIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12О
AssignVariableOp_12AssignVariableOp6assignvariableop_12_quant_conv2d_1_post_activation_maxIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Й
AssignVariableOp_13AssignVariableOp1assignvariableop_13_quant_conv2d_2_optimizer_stepIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Е
AssignVariableOp_14AssignVariableOp-assignvariableop_14_quant_conv2d_2_kernel_minIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Е
AssignVariableOp_15AssignVariableOp-assignvariableop_15_quant_conv2d_2_kernel_maxIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16О
AssignVariableOp_16AssignVariableOp6assignvariableop_16_quant_conv2d_2_post_activation_minIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17О
AssignVariableOp_17AssignVariableOp6assignvariableop_17_quant_conv2d_2_post_activation_maxIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Й
AssignVariableOp_18AssignVariableOp1assignvariableop_18_quant_conv2d_3_optimizer_stepIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Е
AssignVariableOp_19AssignVariableOp-assignvariableop_19_quant_conv2d_3_kernel_minIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Е
AssignVariableOp_20AssignVariableOp-assignvariableop_20_quant_conv2d_3_kernel_maxIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21О
AssignVariableOp_21AssignVariableOp6assignvariableop_21_quant_conv2d_3_post_activation_minIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22О
AssignVariableOp_22AssignVariableOp6assignvariableop_22_quant_conv2d_3_post_activation_maxIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Й
AssignVariableOp_23AssignVariableOp1assignvariableop_23_quant_conv2d_4_optimizer_stepIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Е
AssignVariableOp_24AssignVariableOp-assignvariableop_24_quant_conv2d_4_kernel_minIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Е
AssignVariableOp_25AssignVariableOp-assignvariableop_25_quant_conv2d_4_kernel_maxIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26О
AssignVariableOp_26AssignVariableOp6assignvariableop_26_quant_conv2d_4_post_activation_minIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27О
AssignVariableOp_27AssignVariableOp6assignvariableop_27_quant_conv2d_4_post_activation_maxIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28М
AssignVariableOp_28AssignVariableOp4assignvariableop_28_quant_concatenate_optimizer_stepIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29И
AssignVariableOp_29AssignVariableOp0assignvariableop_29_quant_concatenate_output_minIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30И
AssignVariableOp_30AssignVariableOp0assignvariableop_30_quant_concatenate_output_maxIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Й
AssignVariableOp_31AssignVariableOp1assignvariableop_31_quant_conv2d_5_optimizer_stepIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Е
AssignVariableOp_32AssignVariableOp-assignvariableop_32_quant_conv2d_5_kernel_minIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Е
AssignVariableOp_33AssignVariableOp-assignvariableop_33_quant_conv2d_5_kernel_maxIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34О
AssignVariableOp_34AssignVariableOp6assignvariableop_34_quant_conv2d_5_post_activation_minIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35О
AssignVariableOp_35AssignVariableOp6assignvariableop_35_quant_conv2d_5_post_activation_maxIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36З
AssignVariableOp_36AssignVariableOp/assignvariableop_36_quant_lambda_optimizer_stepIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Љ
AssignVariableOp_37AssignVariableOp!assignvariableop_37_conv2d_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ї
AssignVariableOp_38AssignVariableOpassignvariableop_38_conv2d_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Ћ
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv2d_1_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Љ
AssignVariableOp_40AssignVariableOp!assignvariableop_40_conv2d_1_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Ћ
AssignVariableOp_41AssignVariableOp#assignvariableop_41_conv2d_2_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Љ
AssignVariableOp_42AssignVariableOp!assignvariableop_42_conv2d_2_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Ћ
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv2d_3_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Љ
AssignVariableOp_44AssignVariableOp!assignvariableop_44_conv2d_3_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Ћ
AssignVariableOp_45AssignVariableOp#assignvariableop_45_conv2d_4_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Љ
AssignVariableOp_46AssignVariableOp!assignvariableop_46_conv2d_4_biasIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Ћ
AssignVariableOp_47AssignVariableOp#assignvariableop_47_conv2d_5_kernelIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Љ
AssignVariableOp_48AssignVariableOp!assignvariableop_48_conv2d_5_biasIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49Ё
AssignVariableOp_49AssignVariableOpassignvariableop_49_totalIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Ё
AssignVariableOp_50AssignVariableOpassignvariableop_50_countIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpР	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51Г	
Identity_52IdentityIdentity_51:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_52"#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
№'
Ј
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082342

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
У	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6082139

inputs
identity
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/yО
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/yЊ
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

F
*__inference_restored_function_body_6089026

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_60827932
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ј]
	
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6082529

inputsI
/lastvaluequant_batchmin_readvariableop_resource:#3
%lastvaluequant_assignminlast_resource:3
%lastvaluequant_assignmaxlast_resource:-
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂLastValueQuant/AssignMaxLastЂLastValueQuant/AssignMinLastЂ&LastValueQuant/BatchMax/ReadVariableOpЂ&LastValueQuant/BatchMin/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЂ2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpЂ-MovingAvgQuantize/AssignMinEma/ReadVariableOpЂ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ш
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOpЋ
)LastValueQuant/BatchMin/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMin/reduction_indicesТ
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:02LastValueQuant/BatchMin/reduction_indices:output:0*
T0*
_output_shapes
:2
LastValueQuant/BatchMinШ
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOpЋ
)LastValueQuant/BatchMax/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)LastValueQuant/BatchMax/reduction_indicesТ
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
 *  П2
LastValueQuant/truediv/yЅ
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/truediv
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
 *  П2
LastValueQuant/mul/y
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
:2
LastValueQuant/mul
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
:2
LastValueQuant/MaximumЖ
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLastЖ
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLastњ
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOp/lastvaluequant_batchmin_readvariableop_resource*&
_output_shapes
:#*
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
:*
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:#*
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAdd
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             2
MovingAvgQuantize/Const_1
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
MovingAvgQuantize/Minimum/y­
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
MovingAvgQuantize/Maximum/y­
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMinEma/decayЭ
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/subЧ
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mulВ
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$MovingAvgQuantize/AssignMaxEma/decayЭ
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpЦ
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/subЧ
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mulВ
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ь
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsж
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs
В	

0__inference_quant_conv2d_5_layer_call_fn_6082736

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_60825292
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs
Ж	

0__inference_quant_conv2d_5_layer_call_fn_6080683

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_60806722
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
_user_specified_nameinputs
с

*__inference_restored_function_body_6088821

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quantize_layer_layer_call_and_return_conditional_losses_60823632
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
№'
Ј
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6082165

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource:  X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
:  *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
:  *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ж	

0__inference_quant_conv2d_3_layer_call_fn_6081582

inputs!
unknown:  
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_60815712
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ђf
ш
 __inference__traced_save_6090002
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
=savev2_quant_conv2d_3_post_activation_max_read_readvariableop<
8savev2_quant_conv2d_4_optimizer_step_read_readvariableop8
4savev2_quant_conv2d_4_kernel_min_read_readvariableop8
4savev2_quant_conv2d_4_kernel_max_read_readvariableopA
=savev2_quant_conv2d_4_post_activation_min_read_readvariableopA
=savev2_quant_conv2d_4_post_activation_max_read_readvariableop?
;savev2_quant_concatenate_optimizer_step_read_readvariableop;
7savev2_quant_concatenate_output_min_read_readvariableop;
7savev2_quant_concatenate_output_max_read_readvariableop<
8savev2_quant_conv2d_5_optimizer_step_read_readvariableop8
4savev2_quant_conv2d_5_kernel_min_read_readvariableop8
4savev2_quant_conv2d_5_kernel_max_read_readvariableopA
=savev2_quant_conv2d_5_post_activation_min_read_readvariableopA
=savev2_quant_conv2d_5_post_activation_max_read_readvariableop:
6savev2_quant_lambda_optimizer_step_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameУ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*е
valueЫBШ4BBlayer_with_weights-0/quantize_layer_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/quantize_layer_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-5/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-5/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/output_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/output_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-7/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-7/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-8/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names№
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_quantize_layer_quantize_layer_min_read_readvariableop<savev2_quantize_layer_quantize_layer_max_read_readvariableop8savev2_quantize_layer_optimizer_step_read_readvariableop6savev2_quant_conv2d_optimizer_step_read_readvariableop2savev2_quant_conv2d_kernel_min_read_readvariableop2savev2_quant_conv2d_kernel_max_read_readvariableop;savev2_quant_conv2d_post_activation_min_read_readvariableop;savev2_quant_conv2d_post_activation_max_read_readvariableop8savev2_quant_conv2d_1_optimizer_step_read_readvariableop4savev2_quant_conv2d_1_kernel_min_read_readvariableop4savev2_quant_conv2d_1_kernel_max_read_readvariableop=savev2_quant_conv2d_1_post_activation_min_read_readvariableop=savev2_quant_conv2d_1_post_activation_max_read_readvariableop8savev2_quant_conv2d_2_optimizer_step_read_readvariableop4savev2_quant_conv2d_2_kernel_min_read_readvariableop4savev2_quant_conv2d_2_kernel_max_read_readvariableop=savev2_quant_conv2d_2_post_activation_min_read_readvariableop=savev2_quant_conv2d_2_post_activation_max_read_readvariableop8savev2_quant_conv2d_3_optimizer_step_read_readvariableop4savev2_quant_conv2d_3_kernel_min_read_readvariableop4savev2_quant_conv2d_3_kernel_max_read_readvariableop=savev2_quant_conv2d_3_post_activation_min_read_readvariableop=savev2_quant_conv2d_3_post_activation_max_read_readvariableop8savev2_quant_conv2d_4_optimizer_step_read_readvariableop4savev2_quant_conv2d_4_kernel_min_read_readvariableop4savev2_quant_conv2d_4_kernel_max_read_readvariableop=savev2_quant_conv2d_4_post_activation_min_read_readvariableop=savev2_quant_conv2d_4_post_activation_max_read_readvariableop;savev2_quant_concatenate_optimizer_step_read_readvariableop7savev2_quant_concatenate_output_min_read_readvariableop7savev2_quant_concatenate_output_max_read_readvariableop8savev2_quant_conv2d_5_optimizer_step_read_readvariableop4savev2_quant_conv2d_5_kernel_min_read_readvariableop4savev2_quant_conv2d_5_kernel_max_read_readvariableop=savev2_quant_conv2d_5_post_activation_min_read_readvariableop=savev2_quant_conv2d_5_post_activation_max_read_readvariableop6savev2_quant_lambda_optimizer_step_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
6242
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*Ї
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : ::: : : : : :  : :  : :  : :  : :#:: : : 2(
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
: : 

_output_shapes
: :
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
: : 

_output_shapes
: :
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
: : 

_output_shapes
: :
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
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: : !

_output_shapes
:: "

_output_shapes
::#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
:  : )

_output_shapes
: :,*(
&
_output_shapes
:  : +

_output_shapes
: :,,(
&
_output_shapes
:  : -

_output_shapes
: :,.(
&
_output_shapes
:  : /

_output_shapes
: :,0(
&
_output_shapes
:#: 1

_output_shapes
::2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: 
У	
e
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6082174

inputs
identity
DepthToSpaceDepthToSpaceinputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

block_size2
DepthToSpacew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
clip_by_value/Minimum/yО
clip_by_value/MinimumMinimumDepthToSpace:output:0 clip_by_value/Minimum/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/yЊ
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
clip_by_value
IdentityIdentityclip_by_value:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

F
*__inference_restored_function_body_6088540

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_quant_lambda_layer_call_and_return_conditional_losses_60809352
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ю'
І
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6082814

inputsb
Hlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource: X
Jlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identityЂBiasAdd/ReadVariableOpЂ?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ЂALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Ђ8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpЂ:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpReadVariableOpHlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_resource*&
_output_shapes
: *
dtype02A
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_1_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ReadVariableOpJlastvaluequant_fakequantwithminmaxvarsperchannel_readvariableop_2_resource*
_output_shapes
: *
dtype02C
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2Є
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannel!FakeQuantWithMinMaxVarsPerChannelGLastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1:value:0ILastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2:value:0*&
_output_shapes
: *
narrow_range(22
0LastValueQuant/FakeQuantWithMinMaxVarsPerChannelв
Conv2DConv2Dinputs:LastValueQuant/FakeQuantWithMinMaxVarsPerChannel:outputs:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2
Reluю
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpє
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ю
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVarsќ
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp@^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOpB^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1B^LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2
?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp?LastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp2
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_1ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_12
ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_2ALastValueQuant/FakeQuantWithMinMaxVarsPerChannel/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В@

B__inference_model_layer_call_and_return_conditional_losses_6089656

inputs 
quantize_layer_6089566:  
quantize_layer_6089568: .
quant_conv2d_6089571: "
quant_conv2d_6089573: "
quant_conv2d_6089575: "
quant_conv2d_6089577: 
quant_conv2d_6089579: 
quant_conv2d_6089581: 0
quant_conv2d_1_6089584:  $
quant_conv2d_1_6089586: $
quant_conv2d_1_6089588: $
quant_conv2d_1_6089590:  
quant_conv2d_1_6089592:  
quant_conv2d_1_6089594: 0
quant_conv2d_2_6089597:  $
quant_conv2d_2_6089599: $
quant_conv2d_2_6089601: $
quant_conv2d_2_6089603:  
quant_conv2d_2_6089605:  
quant_conv2d_2_6089607: 0
quant_conv2d_3_6089610:  $
quant_conv2d_3_6089612: $
quant_conv2d_3_6089614: $
quant_conv2d_3_6089616:  
quant_conv2d_3_6089618:  
quant_conv2d_3_6089620: 0
quant_conv2d_4_6089623:  $
quant_conv2d_4_6089625: $
quant_conv2d_4_6089627: $
quant_conv2d_4_6089629:  
quant_conv2d_4_6089631:  
quant_conv2d_4_6089633: #
quant_concatenate_6089636: #
quant_concatenate_6089638: 0
quant_conv2d_5_6089641:#$
quant_conv2d_5_6089643:$
quant_conv2d_5_6089645:$
quant_conv2d_5_6089647: 
quant_conv2d_5_6089649:  
quant_conv2d_5_6089651: 
identityЂ)quant_concatenate/StatefulPartitionedCallЂ$quant_conv2d/StatefulPartitionedCallЂ&quant_conv2d_1/StatefulPartitionedCallЂ&quant_conv2d_2/StatefulPartitionedCallЂ&quant_conv2d_3/StatefulPartitionedCallЂ&quant_conv2d_4/StatefulPartitionedCallЂ&quant_conv2d_5/StatefulPartitionedCallЂ&quantize_layer/StatefulPartitionedCallЏ
&quantize_layer/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_6089566quantize_layer_6089568*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888212(
&quantize_layer/StatefulPartitionedCallА
$quant_conv2d/StatefulPartitionedCallStatefulPartitionedCall/quantize_layer/StatefulPartitionedCall:output:0quant_conv2d_6089571quant_conv2d_6089573quant_conv2d_6089575quant_conv2d_6089577quant_conv2d_6089579quant_conv2d_6089581*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888432&
$quant_conv2d/StatefulPartitionedCallО
&quant_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall-quant_conv2d/StatefulPartitionedCall:output:0quant_conv2d_1_6089584quant_conv2d_1_6089586quant_conv2d_1_6089588quant_conv2d_1_6089590quant_conv2d_1_6089592quant_conv2d_1_6089594*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60888732(
&quant_conv2d_1/StatefulPartitionedCallР
&quant_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_1/StatefulPartitionedCall:output:0quant_conv2d_2_6089597quant_conv2d_2_6089599quant_conv2d_2_6089601quant_conv2d_2_6089603quant_conv2d_2_6089605quant_conv2d_2_6089607*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889032(
&quant_conv2d_2/StatefulPartitionedCallР
&quant_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_2/StatefulPartitionedCall:output:0quant_conv2d_3_6089610quant_conv2d_3_6089612quant_conv2d_3_6089614quant_conv2d_3_6089616quant_conv2d_3_6089618quant_conv2d_3_6089620*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889332(
&quant_conv2d_3/StatefulPartitionedCallР
&quant_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_3/StatefulPartitionedCall:output:0quant_conv2d_4_6089623quant_conv2d_4_6089625quant_conv2d_4_6089627quant_conv2d_4_6089629quant_conv2d_4_6089631quant_conv2d_4_6089633*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889632(
&quant_conv2d_4/StatefulPartitionedCall
)quant_concatenate/StatefulPartitionedCallStatefulPartitionedCall/quant_conv2d_4/StatefulPartitionedCall:output:0/quantize_layer/StatefulPartitionedCall:output:0quant_concatenate_6089636quant_concatenate_6089638*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60889862+
)quant_concatenate/StatefulPartitionedCallУ
&quant_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall2quant_concatenate/StatefulPartitionedCall:output:0quant_conv2d_5_6089641quant_conv2d_5_6089643quant_conv2d_5_6089645quant_conv2d_5_6089647quant_conv2d_5_6089649quant_conv2d_5_6089651*
Tin
	2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60890082(
&quant_conv2d_5/StatefulPartitionedCall
quant_lambda/PartitionedCallPartitionedCall/quant_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *3
f.R,
*__inference_restored_function_body_60890262
quant_lambda/PartitionedCallм
IdentityIdentity%quant_lambda/PartitionedCall:output:0*^quant_concatenate/StatefulPartitionedCall%^quant_conv2d/StatefulPartitionedCall'^quant_conv2d_1/StatefulPartitionedCall'^quant_conv2d_2/StatefulPartitionedCall'^quant_conv2d_3/StatefulPartitionedCall'^quant_conv2d_4/StatefulPartitionedCall'^quant_conv2d_5/StatefulPartitionedCall'^quantize_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)quant_concatenate/StatefulPartitionedCall)quant_concatenate/StatefulPartitionedCall2L
$quant_conv2d/StatefulPartitionedCall$quant_conv2d/StatefulPartitionedCall2P
&quant_conv2d_1/StatefulPartitionedCall&quant_conv2d_1/StatefulPartitionedCall2P
&quant_conv2d_2/StatefulPartitionedCall&quant_conv2d_2/StatefulPartitionedCall2P
&quant_conv2d_3/StatefulPartitionedCall&quant_conv2d_3/StatefulPartitionedCall2P
&quant_conv2d_4/StatefulPartitionedCall&quant_conv2d_4/StatefulPartitionedCall2P
&quant_conv2d_5/StatefulPartitionedCall&quant_conv2d_5/StatefulPartitionedCall2P
&quantize_layer/StatefulPartitionedCall&quantize_layer/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ы
'__inference_model_layer_call_fn_6089826

inputs
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: $

unknown_19:  

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: $

unknown_25:  

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: $

unknown_33:#

unknown_34:

unknown_35:

unknown_36:

unknown_37: 

unknown_38: 
identityЂStatefulPartitionedCall
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*.
_read_only_resource_inputs
	#&*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_60890292
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"ЬL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*у
serving_defaultЯ
U
input_1J
serving_default_input_1:0+џџџџџџџџџџџџџџџџџџџџџџџџџџџZ
quant_lambdaJ
StatefulPartitionedCall:0+џџџџџџџџџџџџџџџџџџџџџџџџџџџtensorflow/serving/predict:ь
Ђ
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
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
+І&call_and_return_all_conditional_losses
Ї_default_save_signature
Ј__call__"Д
_tf_keras_network{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "name": "quantize_layer", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d", "inbound_nodes": [[["quantize_layer", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_1", "inbound_nodes": [[["quant_conv2d", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_2", "inbound_nodes": [[["quant_conv2d_1", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_3", "inbound_nodes": [[["quant_conv2d_2", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 27}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_4", "inbound_nodes": [[["quant_conv2d_3", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_concatenate", "trainable": true, "dtype": "float32", "layer": {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 33}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": true}}}, "name": "quant_concatenate", "inbound_nodes": [[["quant_conv2d_4", 0, 0, {}], ["quantize_layer", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_5", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 36}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_5", "inbound_nodes": [[["quant_concatenate", 0, 0, {}]]]}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lambda", "trainable": true, "dtype": "float32", "layer": {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTIvYXJjaC5wedoIPGxhbWJkYT4aAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial12.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 42}, "quantize_config": {"class_name": "NoOpQuantizeConfig", "config": {}, "shared_object_id": 43}}, "name": "quant_lambda", "inbound_nodes": [[["quant_conv2d_5", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["quant_lambda", 0, 0]]}, "shared_object_id": 10, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null, null, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "name": "quantize_layer", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d", "inbound_nodes": [[["quantize_layer", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_1", "inbound_nodes": [[["quant_conv2d", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_2", "inbound_nodes": [[["quant_conv2d_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_3", "inbound_nodes": [[["quant_conv2d_2", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 27}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_4", "inbound_nodes": [[["quant_conv2d_3", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_concatenate", "trainable": true, "dtype": "float32", "layer": {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 33}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": true}}}, "name": "quant_concatenate", "inbound_nodes": [[["quant_conv2d_4", 0, 0, {}], ["quantize_layer", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_5", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 36}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "name": "quant_conv2d_5", "inbound_nodes": [[["quant_concatenate", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "QuantizeWrapperV2", "config": {"name": "quant_lambda", "trainable": true, "dtype": "float32", "layer": {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTIvYXJjaC5wedoIPGxhbWJkYT4aAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial12.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 42}, "quantize_config": {"class_name": "NoOpQuantizeConfig", "config": {}, "shared_object_id": 43}}, "name": "quant_lambda", "inbound_nodes": [[["quant_conv2d_5", 0, 0, {}]]], "shared_object_id": 9}], "input_layers": [["input_1", 0, 0]], "output_layers": [["quant_lambda", 0, 0]]}}, "training_config": {"loss": "mean_absolute_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0001250000059371814, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
І
#_self_saveable_object_factories"ў
_tf_keras_input_layerо{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}

quantize_layer_min
quantize_layer_max
quantizer_vars
optimizer_step
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
+Љ&call_and_return_all_conditional_losses
Њ__call__"
_tf_keras_layerы{"name": "quantize_layer", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeLayer", "config": {"name": "quantize_layer", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}
о
	layer
optimizer_step
_weight_vars

kernel_min
 
kernel_max
!_quantize_activations
"post_activation_min
#post_activation_max
$_output_quantizers
#%_self_saveable_object_factories
&regularization_losses
'	variables
(trainable_variables
)	keras_api
+Ћ&call_and_return_all_conditional_losses
Ќ__call__"ђ

_tf_keras_layerи
{"name": "quant_conv2d", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quantize_layer", 0, 0, {}]]], "shared_object_id": 2}
х
	*layer
+optimizer_step
,_weight_vars
-
kernel_min
.
kernel_max
/_quantize_activations
0post_activation_min
1post_activation_max
2_output_quantizers
#3_self_saveable_object_factories
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+­&call_and_return_all_conditional_losses
Ў__call__"љ

_tf_keras_layerп
{"name": "quant_conv2d_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_conv2d", 0, 0, {}]]], "shared_object_id": 3}
ш
	8layer
9optimizer_step
:_weight_vars
;
kernel_min
<
kernel_max
=_quantize_activations
>post_activation_min
?post_activation_max
@_output_quantizers
#A_self_saveable_object_factories
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
+Џ&call_and_return_all_conditional_losses
А__call__"ќ

_tf_keras_layerт
{"name": "quant_conv2d_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_conv2d_1", 0, 0, {}]]], "shared_object_id": 4}
ш
	Flayer
Goptimizer_step
H_weight_vars
I
kernel_min
J
kernel_max
K_quantize_activations
Lpost_activation_min
Mpost_activation_max
N_output_quantizers
#O_self_saveable_object_factories
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
+Б&call_and_return_all_conditional_losses
В__call__"ќ

_tf_keras_layerт
{"name": "quant_conv2d_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_conv2d_2", 0, 0, {}]]], "shared_object_id": 5}
ш
	Tlayer
Uoptimizer_step
V_weight_vars
W
kernel_min
X
kernel_max
Y_quantize_activations
Zpost_activation_min
[post_activation_max
\_output_quantizers
#]_self_saveable_object_factories
^regularization_losses
_	variables
`trainable_variables
a	keras_api
+Г&call_and_return_all_conditional_losses
Д__call__"ќ

_tf_keras_layerт
{"name": "quant_conv2d_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 27}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_conv2d_3", 0, 0, {}]]], "shared_object_id": 6}
Ѕ
	blayer
coptimizer_step
d_weight_vars
e_quantize_activations
f_output_quantizers
g
output_min
h
output_max
i_output_quantizer_vars
#j_self_saveable_object_factories
kregularization_losses
l	variables
mtrainable_variables
n	keras_api
+Е&call_and_return_all_conditional_losses
Ж__call__"Я
_tf_keras_layerЕ{"name": "quant_concatenate", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_concatenate", "trainable": true, "dtype": "float32", "layer": {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 33}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": true}}}, "inbound_nodes": [[["quant_conv2d_4", 0, 0, {}], ["quantize_layer", 0, 0, {}]]], "shared_object_id": 7}
э
	olayer
poptimizer_step
q_weight_vars
r
kernel_min
s
kernel_max
t_quantize_activations
upost_activation_min
vpost_activation_max
w_output_quantizers
#x_self_saveable_object_factories
yregularization_losses
z	variables
{trainable_variables
|	keras_api
+З&call_and_return_all_conditional_losses
И__call__"
_tf_keras_layerч
{"name": "quant_conv2d_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_conv2d_5", "trainable": true, "dtype": "float32", "layer": {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 36}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39}, "quantize_config": {"class_name": "Default8BitConvQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "inbound_nodes": [[["quant_concatenate", 0, 0, {}]]], "shared_object_id": 8}

	}layer
~optimizer_step
_weight_vars
_quantize_activations
_output_quantizers
$_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"ќ
_tf_keras_layerт{"name": "quant_lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapperV2", "config": {"name": "quant_lambda", "trainable": true, "dtype": "float32", "layer": {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTIvYXJjaC5wedoIPGxhbWJkYT4aAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial12.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 42}, "quantize_config": {"class_name": "NoOpQuantizeConfig", "config": {}, "shared_object_id": 43}}, "inbound_nodes": [[["quant_conv2d_5", 0, 0, {}]]], "shared_object_id": 9}
"
	optimizer
-
Лserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Њ
0
1
2
3
4
5
6
 7
"8
#9
10
11
+12
-13
.14
015
116
17
18
919
;20
<21
>22
?23
24
25
G26
I27
J28
L29
M30
31
32
U33
W34
X35
Z36
[37
c38
g39
h40
41
42
p43
r44
s45
u46
v47
~48"
trackable_list_wrapper

0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
г
 layer_regularization_losses
regularization_losses
layers
	variables
non_trainable_variables
layer_metrics
trainable_variables
metrics
Ј__call__
Ї_default_save_signature
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
):' 2!quantize_layer/quantize_layer_min
):' 2!quantize_layer/quantize_layer_max
:
min_var
max_var"
trackable_dict_wrapper
%:# 2quantize_layer/optimizer_step
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 layer_regularization_losses
regularization_losses
layers
non_trainable_variables
	variables
layer_metrics
trainable_variables
metrics
Њ__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object

kernel
	bias
$_self_saveable_object_factories
regularization_losses
	variables
 trainable_variables
Ё	keras_api
+М&call_and_return_all_conditional_losses
Н__call__"А	
_tf_keras_layer	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 13}}
#:! 2quant_conv2d/optimizer_step
(
Ђ0"
trackable_list_wrapper
#:! 2quant_conv2d/kernel_min
#:! 2quant_conv2d/kernel_max
 "
trackable_list_wrapper
(:& 2 quant_conv2d/post_activation_min
(:& 2 quant_conv2d/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
S
0
1
2
3
 4
"5
#6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Е
 Ѓlayer_regularization_losses
&regularization_losses
Єlayers
Ѕnon_trainable_variables
'	variables
Іlayer_metrics
(trainable_variables
Їmetrics
Ќ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object

kernel
	bias
$Ј_self_saveable_object_factories
Љregularization_losses
Њ	variables
Ћtrainable_variables
Ќ	keras_api
+О&call_and_return_all_conditional_losses
П__call__"З	
_tf_keras_layer	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 15}}
%:# 2quant_conv2d_1/optimizer_step
(
­0"
trackable_list_wrapper
%:# 2quant_conv2d_1/kernel_min
%:# 2quant_conv2d_1/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_1/post_activation_min
*:( 2"quant_conv2d_1/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
S
0
1
+2
-3
.4
05
16"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Е
 Ўlayer_regularization_losses
4regularization_losses
Џlayers
Аnon_trainable_variables
5	variables
Бlayer_metrics
6trainable_variables
Вmetrics
Ў__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object

kernel
	bias
$Г_self_saveable_object_factories
Дregularization_losses
Е	variables
Жtrainable_variables
З	keras_api
+Р&call_and_return_all_conditional_losses
С__call__"И	
_tf_keras_layer	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 17}}
%:# 2quant_conv2d_2/optimizer_step
(
И0"
trackable_list_wrapper
%:# 2quant_conv2d_2/kernel_min
%:# 2quant_conv2d_2/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_2/post_activation_min
*:( 2"quant_conv2d_2/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
S
0
1
92
;3
<4
>5
?6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Е
 Йlayer_regularization_losses
Bregularization_losses
Кlayers
Лnon_trainable_variables
C	variables
Мlayer_metrics
Dtrainable_variables
Нmetrics
А__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object

kernel
	bias
$О_self_saveable_object_factories
Пregularization_losses
Р	variables
Сtrainable_variables
Т	keras_api
+Т&call_and_return_all_conditional_losses
У__call__"И	
_tf_keras_layer	{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 19}}
%:# 2quant_conv2d_3/optimizer_step
(
У0"
trackable_list_wrapper
%:# 2quant_conv2d_3/kernel_min
%:# 2quant_conv2d_3/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_3/post_activation_min
*:( 2"quant_conv2d_3/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
S
0
1
G2
I3
J4
L5
M6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Е
 Фlayer_regularization_losses
Pregularization_losses
Хlayers
Цnon_trainable_variables
Q	variables
Чlayer_metrics
Rtrainable_variables
Шmetrics
В__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object

kernel
	bias
$Щ_self_saveable_object_factories
Ъregularization_losses
Ы	variables
Ьtrainable_variables
Э	keras_api
+Ф&call_and_return_all_conditional_losses
Х__call__"И	
_tf_keras_layer	{"name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 27}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 21}}
%:# 2quant_conv2d_4/optimizer_step
(
Ю0"
trackable_list_wrapper
%:# 2quant_conv2d_4/kernel_min
%:# 2quant_conv2d_4/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_4/post_activation_min
*:( 2"quant_conv2d_4/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
S
0
1
U2
W3
X4
Z5
[6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Е
 Яlayer_regularization_losses
^regularization_losses
аlayers
бnon_trainable_variables
_	variables
вlayer_metrics
`trainable_variables
гmetrics
Д__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
Є
$д_self_saveable_object_factories
еregularization_losses
ж	variables
зtrainable_variables
и	keras_api
+Ц&call_and_return_all_conditional_losses
Ч__call__"щ
_tf_keras_layerЯ{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 22, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, null, 32]}, {"class_name": "TensorShape", "items": [null, null, null, 3]}]}
(:& 2 quant_concatenate/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
$:" 2quant_concatenate/output_min
$:" 2quant_concatenate/output_max
:
gmin_var
hmax_var"
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
c0
g1
h2"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 йlayer_regularization_losses
kregularization_losses
кlayers
лnon_trainable_variables
l	variables
мlayer_metrics
mtrainable_variables
нmetrics
Ж__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object

kernel
	bias
$о_self_saveable_object_factories
пregularization_losses
р	variables
сtrainable_variables
т	keras_api
+Ш&call_and_return_all_conditional_losses
Щ__call__"К	
_tf_keras_layer 	{"name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 27, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "linear"}, "shared_object_id": 36}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 35}}, "shared_object_id": 24}}
%:# 2quant_conv2d_5/optimizer_step
(
у0"
trackable_list_wrapper
%:#2quant_conv2d_5/kernel_min
%:#2quant_conv2d_5/kernel_max
 "
trackable_list_wrapper
*:( 2"quant_conv2d_5/post_activation_min
*:( 2"quant_conv2d_5/post_activation_max
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
S
0
1
p2
r3
s4
u5
v6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Е
 фlayer_regularization_losses
yregularization_losses
хlayers
цnon_trainable_variables
z	variables
чlayer_metrics
{trainable_variables
шmetrics
И__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object

$щ_self_saveable_object_factories
ъregularization_losses
ы	variables
ьtrainable_variables
э	keras_api
+Ъ&call_and_return_all_conditional_losses
Ы__call__"д
_tf_keras_layerК{"name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAEwAAAHMYAAAAdACgAXQCagOgBHwAiAChAmQBZAKhA1MAKQNO\nZwAAAAAAAAAAZwAAAAAA4G9AKQXaAUvaBGNsaXDaAnRm2gJubtoOZGVwdGhfdG9fc3BhY2UpAdoB\neCkB2gVzY2FsZakAejgvaG9tZS9jY2ppYWhhby93b3Jrc3BhY2UvTW9iaWxlU1IvdHJpYWxzL3Ry\naWFsMTIvYXJjaC5wedoIPGxhbWJkYT4aAAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [3]}]}, "function_type": "lambda", "module": "trials.trial12.arch", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 25}
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
~0"
trackable_list_wrapper
 "
trackable_list_wrapper
И
 юlayer_regularization_losses
regularization_losses
яlayers
№non_trainable_variables
	variables
ёlayer_metrics
trainable_variables
ђmetrics
К__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
':% 2conv2d/kernel
: 2conv2d/bias
):'  2conv2d_1/kernel
: 2conv2d_1/bias
):'  2conv2d_2/kernel
: 2conv2d_2/bias
):'  2conv2d_3/kernel
: 2conv2d_3/bias
):'  2conv2d_4/kernel
: 2conv2d_4/bias
):'#2conv2d_5/kernel
:2conv2d_5/bias
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
О
0
1
2
3
4
 5
"6
#7
+8
-9
.10
011
112
913
;14
<15
>16
?17
G18
I19
J20
L21
M22
U23
W24
X25
Z26
[27
c28
g29
h30
p31
r32
s33
u34
v35
~36"
trackable_list_wrapper
 "
trackable_dict_wrapper
(
ѓ0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 єlayer_regularization_losses
regularization_losses
ѕlayers
іnon_trainable_variables
	variables
їlayer_metrics
 trainable_variables
јmetrics
Н__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
0
0
љ2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
C
0
1
 2
"3
#4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 њlayer_regularization_losses
Љregularization_losses
ћlayers
ќnon_trainable_variables
Њ	variables
§layer_metrics
Ћtrainable_variables
ўmetrics
П__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
0
0
џ2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
C
+0
-1
.2
03
14"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 layer_regularization_losses
Дregularization_losses
layers
non_trainable_variables
Е	variables
layer_metrics
Жtrainable_variables
metrics
С__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
0
0
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
80"
trackable_list_wrapper
C
90
;1
<2
>3
?4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 layer_regularization_losses
Пregularization_losses
layers
non_trainable_variables
Р	variables
layer_metrics
Сtrainable_variables
metrics
У__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
0
0
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
C
G0
I1
J2
L3
M4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 layer_regularization_losses
Ъregularization_losses
layers
non_trainable_variables
Ы	variables
layer_metrics
Ьtrainable_variables
metrics
Х__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
0
0
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
T0"
trackable_list_wrapper
C
U0
W1
X2
Z3
[4"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
И
 layer_regularization_losses
еregularization_losses
layers
non_trainable_variables
ж	variables
layer_metrics
зtrainable_variables
metrics
Ч__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
b0"
trackable_list_wrapper
5
c0
g1
h2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 layer_regularization_losses
пregularization_losses
layers
non_trainable_variables
р	variables
layer_metrics
сtrainable_variables
metrics
Щ__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
0
0
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
o0"
trackable_list_wrapper
C
p0
r1
s2
u3
v4"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
И
 layer_regularization_losses
ъregularization_losses
layers
non_trainable_variables
ы	variables
 layer_metrics
ьtrainable_variables
Ёmetrics
Ы__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
}0"
trackable_list_wrapper
'
~0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
и

Ђtotal

Ѓcount
Є	variables
Ѕ	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 26}
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
:
min_var
 max_var"
trackable_dict_wrapper
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
:
-min_var
.max_var"
trackable_dict_wrapper
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
:
;min_var
<max_var"
trackable_dict_wrapper
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
:
Imin_var
Jmax_var"
trackable_dict_wrapper
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
:
Wmin_var
Xmax_var"
trackable_dict_wrapper
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
:
rmin_var
smax_var"
trackable_dict_wrapper
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
:  (2total
:  (2count
0
Ђ0
Ѓ1"
trackable_list_wrapper
.
Є	variables"
_generic_user_object
ж2г
B__inference_model_layer_call_and_return_conditional_losses_6089563
B__inference_model_layer_call_and_return_conditional_losses_6089656
B__inference_model_layer_call_and_return_conditional_losses_6089290
B__inference_model_layer_call_and_return_conditional_losses_6089383Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
"__inference__wrapped_model_6088543а
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
ъ2ч
'__inference_model_layer_call_fn_6088723
'__inference_model_layer_call_fn_6089741
'__inference_model_layer_call_fn_6089826
'__inference_model_layer_call_fn_6089197Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ъ2Ч
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6081905
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6082363Њ
ЃВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
0__inference_quantize_layer_layer_call_fn_6082752
0__inference_quantize_layer_layer_call_fn_6081961Њ
ЃВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ь2Щ
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6082432
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6081631А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
.__inference_quant_conv2d_layer_call_fn_6082825
.__inference_quant_conv2d_layer_call_fn_6081896А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6080652
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6081836А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
0__inference_quant_conv2d_1_layer_call_fn_6080914
0__inference_quant_conv2d_1_layer_call_fn_6082021А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082342
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082481А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
0__inference_quant_conv2d_2_layer_call_fn_6082784
0__inference_quant_conv2d_2_layer_call_fn_6082081А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6082165
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6082130А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
0__inference_quant_conv2d_3_layer_call_fn_6081582
0__inference_quant_conv2d_3_layer_call_fn_6081787А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6080534
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6081232А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
0__inference_quant_conv2d_4_layer_call_fn_6080715
0__inference_quant_conv2d_4_layer_call_fn_6081727А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ж2г
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6080926
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6081933А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 2
3__inference_quant_concatenate_layer_call_fn_6080513
3__inference_quant_concatenate_layer_call_fn_6081667А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6082199
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6082411А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
0__inference_quant_conv2d_5_layer_call_fn_6080683
0__inference_quant_conv2d_5_layer_call_fn_6082736А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ь2Щ
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6080935
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6082793А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
.__inference_quant_lambda_layer_call_fn_6082179
.__inference_quant_lambda_layer_call_fn_6082144А
ЉВЅ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЬBЩ
%__inference_signature_wrapper_6089470input_1"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ц2УР
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2УР
ЗВГ
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
"__inference__wrapped_model_6088543й4 "#-.01;<>?IJLMWXZ[ghrsuvJЂG
@Ђ=
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЊR
P
quant_lambda@=
quant_lambda+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
B__inference_model_layer_call_and_return_conditional_losses_6089290Ы4 "#-.01;<>?IJLMWXZ[ghrsuvRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
B__inference_model_layer_call_and_return_conditional_losses_6089383Ы4 "#-.01;<>?IJLMWXZ[ghrsuvRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
B__inference_model_layer_call_and_return_conditional_losses_6089563Ъ4 "#-.01;<>?IJLMWXZ[ghrsuvQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
B__inference_model_layer_call_and_return_conditional_losses_6089656Ъ4 "#-.01;<>?IJLMWXZ[ghrsuvQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ъ
'__inference_model_layer_call_fn_6088723О4 "#-.01;<>?IJLMWXZ[ghrsuvRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџъ
'__inference_model_layer_call_fn_6089197О4 "#-.01;<>?IJLMWXZ[ghrsuvRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџщ
'__inference_model_layer_call_fn_6089741Н4 "#-.01;<>?IJLMWXZ[ghrsuvQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџщ
'__inference_model_layer_call_fn_6089826Н4 "#-.01;<>?IJLMWXZ[ghrsuvQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6080926нghЂ
Ђ
|
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs/1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 А
N__inference_quant_concatenate_layer_call_and_return_conditional_losses_6081933нghЂ
Ђ
|
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs/1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
 
3__inference_quant_concatenate_layer_call_fn_6080513аghЂ
Ђ
|
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs/1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
3__inference_quant_concatenate_layer_call_fn_6081667аghЂ
Ђ
|
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs/1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#ъ
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6080652-.01MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 ъ
K__inference_quant_conv2d_1_layer_call_and_return_conditional_losses_6081836-.01MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Т
0__inference_quant_conv2d_1_layer_call_fn_6080914-.01MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Т
0__inference_quant_conv2d_1_layer_call_fn_6082021-.01MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ъ
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082342;<>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 ъ
K__inference_quant_conv2d_2_layer_call_and_return_conditional_losses_6082481;<>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Т
0__inference_quant_conv2d_2_layer_call_fn_6082081;<>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Т
0__inference_quant_conv2d_2_layer_call_fn_6082784;<>?MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ъ
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6082130IJLMMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 ъ
K__inference_quant_conv2d_3_layer_call_and_return_conditional_losses_6082165IJLMMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Т
0__inference_quant_conv2d_3_layer_call_fn_6081582IJLMMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Т
0__inference_quant_conv2d_3_layer_call_fn_6081787IJLMMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ъ
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6080534WXZ[MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 ъ
K__inference_quant_conv2d_4_layer_call_and_return_conditional_losses_6081232WXZ[MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Т
0__inference_quant_conv2d_4_layer_call_fn_6080715WXZ[MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Т
0__inference_quant_conv2d_4_layer_call_fn_6081727WXZ[MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ъ
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6082199rsuvMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ъ
K__inference_quant_conv2d_5_layer_call_and_return_conditional_losses_6082411rsuvMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Т
0__inference_quant_conv2d_5_layer_call_fn_6080683rsuvMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџТ
0__inference_quant_conv2d_5_layer_call_fn_6082736rsuvMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ#
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџш
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6081631 "#MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 ш
I__inference_quant_conv2d_layer_call_and_return_conditional_losses_6082432 "#MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Р
.__inference_quant_conv2d_layer_call_fn_6081896 "#MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Р
.__inference_quant_conv2d_layer_call_fn_6082825 "#MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ о
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6080935MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 о
I__inference_quant_lambda_layer_call_and_return_conditional_losses_6082793MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ж
.__inference_quant_lambda_layer_call_fn_6082144MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЖ
.__inference_quant_lambda_layer_call_fn_6082179MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџф
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6081905MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ф
K__inference_quantize_layer_layer_call_and_return_conditional_losses_6082363MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 М
0__inference_quantize_layer_layer_call_fn_6081961MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџМ
0__inference_quantize_layer_layer_call_fn_6082752MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
%__inference_signature_wrapper_6089470ф4 "#-.01;<>?IJLMWXZ[ghrsuvUЂR
Ђ 
KЊH
F
input_1;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"UЊR
P
quant_lambda@=
quant_lambda+џџџџџџџџџџџџџџџџџџџџџџџџџџџ