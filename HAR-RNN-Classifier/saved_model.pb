у• 
•ъ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.4.12v2.4.0-49-g85c8b2a817f8ЕЭ
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

: *
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
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
¶
%simple_rnn_7/simple_rnn_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	 *6
shared_name'%simple_rnn_7/simple_rnn_cell_7/kernel
Я
9simple_rnn_7/simple_rnn_cell_7/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_7/simple_rnn_cell_7/kernel*
_output_shapes

:	 *
dtype0
Ї
/simple_rnn_7/simple_rnn_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *@
shared_name1/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel
≥
Csimple_rnn_7/simple_rnn_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel*
_output_shapes

:  *
dtype0
Ю
#simple_rnn_7/simple_rnn_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#simple_rnn_7/simple_rnn_cell_7/bias
Ч
7simple_rnn_7/simple_rnn_cell_7/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_7/simple_rnn_cell_7/bias*
_output_shapes
: *
dtype0
¶
%simple_rnn_8/simple_rnn_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *6
shared_name'%simple_rnn_8/simple_rnn_cell_8/kernel
Я
9simple_rnn_8/simple_rnn_cell_8/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_8/simple_rnn_cell_8/kernel*
_output_shapes

:  *
dtype0
Ї
/simple_rnn_8/simple_rnn_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *@
shared_name1/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel
≥
Csimple_rnn_8/simple_rnn_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel*
_output_shapes

:  *
dtype0
Ю
#simple_rnn_8/simple_rnn_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#simple_rnn_8/simple_rnn_cell_8/bias
Ч
7simple_rnn_8/simple_rnn_cell_8/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_8/simple_rnn_cell_8/bias*
_output_shapes
: *
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
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
И
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_11/kernel/m
Б
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

: *
dtype0
А
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
і
,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	 *=
shared_name.,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m
≠
@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m*
_output_shapes

:	 *
dtype0
»
6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *G
shared_name86Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m
Ѕ
JAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m*
_output_shapes

:  *
dtype0
ђ
*Adam/simple_rnn_7/simple_rnn_cell_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m
•
>Adam/simple_rnn_7/simple_rnn_cell_7/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m*
_output_shapes
: *
dtype0
і
,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *=
shared_name.,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m
≠
@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m*
_output_shapes

:  *
dtype0
»
6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *G
shared_name86Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m
Ѕ
JAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m*
_output_shapes

:  *
dtype0
ђ
*Adam/simple_rnn_8/simple_rnn_cell_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/simple_rnn_8/simple_rnn_cell_8/bias/m
•
>Adam/simple_rnn_8/simple_rnn_cell_8/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_8/simple_rnn_cell_8/bias/m*
_output_shapes
: *
dtype0
И
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_11/kernel/v
Б
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

: *
dtype0
А
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
і
,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	 *=
shared_name.,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v
≠
@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v*
_output_shapes

:	 *
dtype0
»
6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *G
shared_name86Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v
Ѕ
JAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v*
_output_shapes

:  *
dtype0
ђ
*Adam/simple_rnn_7/simple_rnn_cell_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v
•
>Adam/simple_rnn_7/simple_rnn_cell_7/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v*
_output_shapes
: *
dtype0
і
,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *=
shared_name.,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v
≠
@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v*
_output_shapes

:  *
dtype0
»
6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *G
shared_name86Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v
Ѕ
JAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v*
_output_shapes

:  *
dtype0
ђ
*Adam/simple_rnn_8/simple_rnn_cell_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v
•
>Adam/simple_rnn_8/simple_rnn_cell_8/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v*
_output_shapes
: *
dtype0

NoOpNoOp
“6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Н6
valueГ6BА6 Bщ5
ж
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
l

cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
–
iter

beta_1

beta_2
	decay
 learning_ratem`ma!mb"mc#md$me%mf&mgvhvi!vj"vk#vl$vm%vn&vo
 
8
!0
"1
#2
$3
%4
&5
6
7
8
!0
"1
#2
$3
%4
&5
6
7
≠

'layers
(layer_regularization_losses
)metrics
*layer_metrics
+non_trainable_variables
regularization_losses
trainable_variables
	variables
 
~

!kernel
"recurrent_kernel
#bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
 
 

!0
"1
#2

!0
"1
#2
є

0layers
1layer_regularization_losses
2metrics
3layer_metrics
4non_trainable_variables
regularization_losses
trainable_variables
	variables

5states
~

$kernel
%recurrent_kernel
&bias
6regularization_losses
7trainable_variables
8	variables
9	keras_api
 
 

$0
%1
&2

$0
%1
&2
є

:layers
;layer_regularization_losses
<metrics
=layer_metrics
>non_trainable_variables
regularization_losses
trainable_variables
	variables

?states
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
≠

@layers
Alayer_regularization_losses
Bmetrics
Clayer_metrics
Dnon_trainable_variables
regularization_losses
trainable_variables
	variables
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
ki
VARIABLE_VALUE%simple_rnn_7/simple_rnn_cell_7/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_7/simple_rnn_cell_7/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%simple_rnn_8/simple_rnn_cell_8/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_8/simple_rnn_cell_8/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 

E0
F1
G2
 
 
 

!0
"1
#2

!0
"1
#2
≠

Hlayers
Ilayer_regularization_losses
Jmetrics
Klayer_metrics
Lnon_trainable_variables
,regularization_losses
-trainable_variables
.	variables


0
 
 
 
 
 
 

$0
%1
&2

$0
%1
&2
≠

Mlayers
Nlayer_regularization_losses
Ometrics
Player_metrics
Qnon_trainable_variables
6regularization_losses
7trainable_variables
8	variables

0
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
	Rtotal
	Scount
T	variables
U	keras_api
D
	Vtotal
	Wcount
X
_fn_kwargs
Y	variables
Z	keras_api
D
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

R0
S1

T	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

V0
W1

Y	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

^	variables
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_7/simple_rnn_cell_7/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_8/simple_rnn_cell_8/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_7/simple_rnn_cell_7/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/simple_rnn_8/simple_rnn_cell_8/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Е
serving_default_input_14Placeholder*,
_output_shapes
:€€€€€€€€€А	*
dtype0*!
shape:€€€€€€€€€А	
№
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_14%simple_rnn_7/simple_rnn_cell_7/kernel#simple_rnn_7/simple_rnn_cell_7/bias/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel%simple_rnn_8/simple_rnn_cell_8/kernel#simple_rnn_8/simple_rnn_cell_8/bias/simple_rnn_8/simple_rnn_cell_8/recurrent_kerneldense_11/kerneldense_11/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_56619
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ѓ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9simple_rnn_7/simple_rnn_cell_7/kernel/Read/ReadVariableOpCsimple_rnn_7/simple_rnn_cell_7/recurrent_kernel/Read/ReadVariableOp7simple_rnn_7/simple_rnn_cell_7/bias/Read/ReadVariableOp9simple_rnn_8/simple_rnn_cell_8/kernel/Read/ReadVariableOpCsimple_rnn_8/simple_rnn_cell_8/recurrent_kernel/Read/ReadVariableOp7simple_rnn_8/simple_rnn_cell_8/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_7/simple_rnn_cell_7/bias/m/Read/ReadVariableOp@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_8/simple_rnn_cell_8/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp@Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_7/simple_rnn_cell_7/bias/v/Read/ReadVariableOp@Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_8/simple_rnn_cell_8/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_58368
н

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%simple_rnn_7/simple_rnn_cell_7/kernel/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel#simple_rnn_7/simple_rnn_cell_7/bias%simple_rnn_8/simple_rnn_cell_8/kernel/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel#simple_rnn_8/simple_rnn_cell_8/biastotalcounttotal_1count_1total_2count_2Adam/dense_11/kernel/mAdam/dense_11/bias/m,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m*Adam/simple_rnn_8/simple_rnn_cell_8/bias/mAdam/dense_11/kernel/vAdam/dense_11/bias/v,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v6Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v6Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v*/
Tin(
&2$*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_58483Сх
ХH
Ц
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57717
inputs_04
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpї
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul¬
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp…
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/BiasAdd…
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul_1≥
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/addЕ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57651*
condR
while_cond_57650*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1х
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ :::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
„<
с
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_55813

inputs
simple_rnn_cell_8_55738
simple_rnn_cell_8_55740
simple_rnn_cell_8_55742
identityИҐ)simple_rnn_cell_8/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2Р
)simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_8_55738simple_rnn_cell_8_55740simple_rnn_cell_8_55742*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_554762+
)simple_rnn_cell_8/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_8_55738simple_rnn_cell_8_55740simple_rnn_cell_8_55742*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_55750*
condR
while_cond_55749*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1†
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_8/StatefulPartitionedCall^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ :::2V
)simple_rnn_cell_8/StatefulPartitionedCall)simple_rnn_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ў
Ѕ
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_55476

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€ :€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
∆

Ь
simple_rnn_8_while_cond_567726
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_28
4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56772___redundant_placeholder0M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56772___redundant_placeholder1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56772___redundant_placeholder2M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56772___redundant_placeholder3
simple_rnn_8_while_identity
±
simple_rnn_8/while/LessLesssimple_rnn_8_while_placeholder4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_8/while/LessД
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_8/while/Identity"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
С	
№
C__inference_dense_11_layer_call_and_return_conditional_losses_58107

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Џ
}
(__inference_dense_11_layer_call_fn_58116

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_564592
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ё
√
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_58150

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€	:€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
лЩ
ѓ
!__inference__traced_restore_58483
file_prefix$
 assignvariableop_dense_11_kernel$
 assignvariableop_1_dense_11_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate<
8assignvariableop_7_simple_rnn_7_simple_rnn_cell_7_kernelF
Bassignvariableop_8_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel:
6assignvariableop_9_simple_rnn_7_simple_rnn_cell_7_bias=
9assignvariableop_10_simple_rnn_8_simple_rnn_cell_8_kernelG
Cassignvariableop_11_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel;
7assignvariableop_12_simple_rnn_8_simple_rnn_cell_8_bias
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1
assignvariableop_17_total_2
assignvariableop_18_count_2.
*assignvariableop_19_adam_dense_11_kernel_m,
(assignvariableop_20_adam_dense_11_bias_mD
@assignvariableop_21_adam_simple_rnn_7_simple_rnn_cell_7_kernel_mN
Jassignvariableop_22_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_mB
>assignvariableop_23_adam_simple_rnn_7_simple_rnn_cell_7_bias_mD
@assignvariableop_24_adam_simple_rnn_8_simple_rnn_cell_8_kernel_mN
Jassignvariableop_25_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_mB
>assignvariableop_26_adam_simple_rnn_8_simple_rnn_cell_8_bias_m.
*assignvariableop_27_adam_dense_11_kernel_v,
(assignvariableop_28_adam_dense_11_bias_vD
@assignvariableop_29_adam_simple_rnn_7_simple_rnn_cell_7_kernel_vN
Jassignvariableop_30_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_vB
>assignvariableop_31_adam_simple_rnn_7_simple_rnn_cell_7_bias_vD
@assignvariableop_32_adam_simple_rnn_8_simple_rnn_cell_8_kernel_vN
Jassignvariableop_33_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_vB
>assignvariableop_34_adam_simple_rnn_8_simple_rnn_cell_8_bias_v
identity_36ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*к
valueаBЁ$B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names÷
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesв
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapesУ
Р::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_dense_11_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1•
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_11_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2°
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ґ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6™
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7љ
AssignVariableOp_7AssignVariableOp8assignvariableop_7_simple_rnn_7_simple_rnn_cell_7_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8«
AssignVariableOp_8AssignVariableOpBassignvariableop_8_simple_rnn_7_simple_rnn_cell_7_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9ї
AssignVariableOp_9AssignVariableOp6assignvariableop_9_simple_rnn_7_simple_rnn_cell_7_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ѕ
AssignVariableOp_10AssignVariableOp9assignvariableop_10_simple_rnn_8_simple_rnn_cell_8_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ћ
AssignVariableOp_11AssignVariableOpCassignvariableop_11_simple_rnn_8_simple_rnn_cell_8_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12њ
AssignVariableOp_12AssignVariableOp7assignvariableop_12_simple_rnn_8_simple_rnn_cell_8_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13°
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14°
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19≤
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_11_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20∞
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_11_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21»
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_simple_rnn_7_simple_rnn_cell_7_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22“
AssignVariableOp_22AssignVariableOpJassignvariableop_22_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23∆
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_simple_rnn_7_simple_rnn_cell_7_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24»
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_simple_rnn_8_simple_rnn_cell_8_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25“
AssignVariableOp_25AssignVariableOpJassignvariableop_25_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26∆
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_simple_rnn_8_simple_rnn_cell_8_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27≤
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_11_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28∞
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_11_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29»
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_simple_rnn_7_simple_rnn_cell_7_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30“
AssignVariableOp_30AssignVariableOpJassignvariableop_30_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31∆
AssignVariableOp_31AssignVariableOp>assignvariableop_31_adam_simple_rnn_7_simple_rnn_cell_7_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32»
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_simple_rnn_8_simple_rnn_cell_8_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33“
AssignVariableOp_33AssignVariableOpJassignvariableop_33_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34∆
AssignVariableOp_34AssignVariableOp>assignvariableop_34_adam_simple_rnn_8_simple_rnn_cell_8_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpа
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35”
Identity_36IdentityIdentity_35:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_36"#
identity_36Identity_36:output:0*£
_input_shapesС
О: :::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_34AssignVariableOp_342(
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
лP
Ё
__inference__traced_save_58368
file_prefix.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_simple_rnn_7_simple_rnn_cell_7_kernel_read_readvariableopN
Jsavev2_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_7_simple_rnn_cell_7_bias_read_readvariableopD
@savev2_simple_rnn_8_simple_rnn_cell_8_kernel_read_readvariableopN
Jsavev2_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_8_simple_rnn_cell_8_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЎ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*к
valueаBЁ$B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names–
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices√
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_simple_rnn_7_simple_rnn_cell_7_kernel_read_readvariableopJsavev2_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_read_readvariableop>savev2_simple_rnn_7_simple_rnn_cell_7_bias_read_readvariableop@savev2_simple_rnn_8_simple_rnn_cell_8_kernel_read_readvariableopJsavev2_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_read_readvariableop>savev2_simple_rnn_8_simple_rnn_cell_8_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableopGsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_m_read_readvariableopGsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopGsavev2_adam_simple_rnn_7_simple_rnn_cell_7_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_7_simple_rnn_cell_7_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_7_simple_rnn_cell_7_bias_v_read_readvariableopGsavev2_adam_simple_rnn_8_simple_rnn_cell_8_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_8_simple_rnn_cell_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*ы
_input_shapesй
ж: : :: : : : : :	 :  : :  :  : : : : : : : : ::	 :  : :  :  : : ::	 :  : :  :  : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:	 :$	 

_output_shapes

:  : 


_output_shapes
: :$ 

_output_shapes

:  :$ 

_output_shapes

:  : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:	 :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:	 :$ 

_output_shapes

:  :  

_output_shapes
: :$! 

_output_shapes

:  :$" 

_output_shapes

:  : #

_output_shapes
: :$

_output_shapes
: 
 R
©
+sequential_16_simple_rnn_7_while_body_54735R
Nsequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_loop_counterX
Tsequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_maximum_iterations0
,sequential_16_simple_rnn_7_while_placeholder2
.sequential_16_simple_rnn_7_while_placeholder_12
.sequential_16_simple_rnn_7_while_placeholder_2Q
Msequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_strided_slice_1_0О
Йsequential_16_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0W
Ssequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0X
Tsequential_16_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0Y
Usequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0-
)sequential_16_simple_rnn_7_while_identity/
+sequential_16_simple_rnn_7_while_identity_1/
+sequential_16_simple_rnn_7_while_identity_2/
+sequential_16_simple_rnn_7_while_identity_3/
+sequential_16_simple_rnn_7_while_identity_4O
Ksequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_strided_slice_1М
Зsequential_16_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorU
Qsequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceV
Rsequential_16_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceW
Ssequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐIsequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐHsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpҐJsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpщ
Rsequential_16/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   2T
Rsequential_16/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeц
Dsequential_16/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_16_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0,sequential_16_simple_rnn_7_while_placeholder[sequential_16/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02F
Dsequential_16/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem®
Hsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpSsequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02J
Hsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp—
9sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMulKsequential_16/simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Psequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMulІ
Isequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpTsequential_16_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02K
Isequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpЌ
:sequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAddCsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Qsequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2<
:sequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAddЃ
Jsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpUsequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype02L
Jsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpЇ
;sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul.sequential_16_simple_rnn_7_while_placeholder_2Rsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2=
;sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1Ј
6sequential_16/simple_rnn_7/while/simple_rnn_cell_7/addAddV2Csequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:0Esequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 28
6sequential_16/simple_rnn_7/while/simple_rnn_cell_7/addи
7sequential_16/simple_rnn_7/while/simple_rnn_cell_7/ReluRelu:sequential_16/simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 29
7sequential_16/simple_rnn_7/while/simple_rnn_cell_7/Reluх
Esequential_16/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_16_simple_rnn_7_while_placeholder_1,sequential_16_simple_rnn_7_while_placeholderEsequential_16/simple_rnn_7/while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype02G
Esequential_16/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemТ
&sequential_16/simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_16/simple_rnn_7/while/add/y’
$sequential_16/simple_rnn_7/while/addAddV2,sequential_16_simple_rnn_7_while_placeholder/sequential_16/simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: 2&
$sequential_16/simple_rnn_7/while/addЦ
(sequential_16/simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_16/simple_rnn_7/while/add_1/yэ
&sequential_16/simple_rnn_7/while/add_1AddV2Nsequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_loop_counter1sequential_16/simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2(
&sequential_16/simple_rnn_7/while/add_1У
)sequential_16/simple_rnn_7/while/IdentityIdentity*sequential_16/simple_rnn_7/while/add_1:z:0J^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpK^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2+
)sequential_16/simple_rnn_7/while/IdentityЅ
+sequential_16/simple_rnn_7/while/Identity_1IdentityTsequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_maximum_iterationsJ^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpK^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_16/simple_rnn_7/while/Identity_1Х
+sequential_16/simple_rnn_7/while/Identity_2Identity(sequential_16/simple_rnn_7/while/add:z:0J^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpK^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_16/simple_rnn_7/while/Identity_2¬
+sequential_16/simple_rnn_7/while/Identity_3IdentityUsequential_16/simple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0J^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpK^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_16/simple_rnn_7/while/Identity_3√
+sequential_16/simple_rnn_7/while/Identity_4IdentityEsequential_16/simple_rnn_7/while/simple_rnn_cell_7/Relu:activations:0J^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpK^sequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+sequential_16/simple_rnn_7/while/Identity_4"_
)sequential_16_simple_rnn_7_while_identity2sequential_16/simple_rnn_7/while/Identity:output:0"c
+sequential_16_simple_rnn_7_while_identity_14sequential_16/simple_rnn_7/while/Identity_1:output:0"c
+sequential_16_simple_rnn_7_while_identity_24sequential_16/simple_rnn_7/while/Identity_2:output:0"c
+sequential_16_simple_rnn_7_while_identity_34sequential_16/simple_rnn_7/while/Identity_3:output:0"c
+sequential_16_simple_rnn_7_while_identity_44sequential_16/simple_rnn_7/while/Identity_4:output:0"Ь
Ksequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_strided_slice_1Msequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_strided_slice_1_0"™
Rsequential_16_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceTsequential_16_simple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"ђ
Ssequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceUsequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"®
Qsequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceSsequential_16_simple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"Ц
Зsequential_16_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorЙsequential_16_simple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2Ц
Isequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpIsequential_16/simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2Ф
Hsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpHsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2Ш
Jsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpJsequential_16/simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
н3
ы
while_body_57651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpе
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_8/MatMul÷
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_8/BiasAddЁ
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_8/MatMul_1Ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/addЧ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
н3
ы
while_body_55988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpе
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_7/MatMul÷
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_7/BiasAddЁ
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_7/MatMul_1Ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/addЧ
while/simple_rnn_cell_7/ReluReluwhile/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_7/Relu:activations:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
џ<
с
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_55418

inputs
simple_rnn_cell_7_55343
simple_rnn_cell_7_55345
simple_rnn_cell_7_55347
identityИҐ)simple_rnn_cell_7/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2Р
)simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7_55343simple_rnn_cell_7_55345simple_rnn_cell_7_55347*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_549812+
)simple_rnn_cell_7/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7_55343simple_rnn_cell_7_55345simple_rnn_cell_7_55347*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_55355*
condR
while_cond_55354*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1§
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_7/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€	:::2V
)simple_rnn_cell_7/StatefulPartitionedCall)simple_rnn_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
 
_user_specified_nameinputs
Ч
Р
,__inference_simple_rnn_7_layer_call_fn_57605

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_561662
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А	:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
аG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57583

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpї
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul¬
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp…
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/BiasAdd…
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul_1≥
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/addЕ
simple_rnn_cell_7/ReluRelusimple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57517*
condR
while_cond_57516*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А	:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Ћ
•
while_cond_57762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57762___redundant_placeholder03
/while_while_cond_57762___redundant_placeholder13
/while_while_cond_57762___redundant_placeholder23
/while_while_cond_57762___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ў
Ѕ
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_54964

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€	:€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
љ
Т
,__inference_simple_rnn_7_layer_call_fn_57359
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_554182
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€	:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs/0
Е#
ю
while_body_55750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_8_55772_0#
while_simple_rnn_cell_8_55774_0#
while_simple_rnn_cell_8_55776_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_8_55772!
while_simple_rnn_cell_8_55774!
while_simple_rnn_cell_8_55776ИҐ/while/simple_rnn_cell_8/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem—
/while/simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_8_55772_0while_simple_rnn_cell_8_55774_0while_simple_rnn_cell_8_55776_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_5547621
/while/simple_rnn_cell_8/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ќ
while/Identity_4Identity8while/simple_rnn_cell_8/StatefulPartitionedCall:output:10^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_8_55772while_simple_rnn_cell_8_55772_0"@
while_simple_rnn_cell_8_55774while_simple_rnn_cell_8_55774_0"@
while_simple_rnn_cell_8_55776while_simple_rnn_cell_8_55776_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2b
/while/simple_rnn_cell_8/StatefulPartitionedCall/while/simple_rnn_cell_8/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
нг
н	
 __inference__wrapped_model_54915
input_14O
Ksequential_16_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceP
Lsequential_16_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceQ
Msequential_16_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resourceO
Ksequential_16_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceP
Lsequential_16_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceQ
Msequential_16_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource9
5sequential_16_dense_11_matmul_readvariableop_resource:
6sequential_16_dense_11_biasadd_readvariableop_resource
identityИҐ-sequential_16/dense_11/BiasAdd/ReadVariableOpҐ,sequential_16/dense_11/MatMul/ReadVariableOpҐCsequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐBsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpҐDsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpҐ sequential_16/simple_rnn_7/whileҐCsequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐBsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpҐDsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpҐ sequential_16/simple_rnn_8/while|
 sequential_16/simple_rnn_7/ShapeShapeinput_14*
T0*
_output_shapes
:2"
 sequential_16/simple_rnn_7/Shape™
.sequential_16/simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_16/simple_rnn_7/strided_slice/stackЃ
0sequential_16/simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_16/simple_rnn_7/strided_slice/stack_1Ѓ
0sequential_16/simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_16/simple_rnn_7/strided_slice/stack_2Д
(sequential_16/simple_rnn_7/strided_sliceStridedSlice)sequential_16/simple_rnn_7/Shape:output:07sequential_16/simple_rnn_7/strided_slice/stack:output:09sequential_16/simple_rnn_7/strided_slice/stack_1:output:09sequential_16/simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_16/simple_rnn_7/strided_sliceТ
&sequential_16/simple_rnn_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_16/simple_rnn_7/zeros/mul/yЎ
$sequential_16/simple_rnn_7/zeros/mulMul1sequential_16/simple_rnn_7/strided_slice:output:0/sequential_16/simple_rnn_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2&
$sequential_16/simple_rnn_7/zeros/mulХ
'sequential_16/simple_rnn_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2)
'sequential_16/simple_rnn_7/zeros/Less/y”
%sequential_16/simple_rnn_7/zeros/LessLess(sequential_16/simple_rnn_7/zeros/mul:z:00sequential_16/simple_rnn_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2'
%sequential_16/simple_rnn_7/zeros/LessШ
)sequential_16/simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_16/simple_rnn_7/zeros/packed/1п
'sequential_16/simple_rnn_7/zeros/packedPack1sequential_16/simple_rnn_7/strided_slice:output:02sequential_16/simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_16/simple_rnn_7/zeros/packedХ
&sequential_16/simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&sequential_16/simple_rnn_7/zeros/Constб
 sequential_16/simple_rnn_7/zerosFill0sequential_16/simple_rnn_7/zeros/packed:output:0/sequential_16/simple_rnn_7/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 sequential_16/simple_rnn_7/zerosЂ
)sequential_16/simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential_16/simple_rnn_7/transpose/permќ
$sequential_16/simple_rnn_7/transpose	Transposeinput_142sequential_16/simple_rnn_7/transpose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€	2&
$sequential_16/simple_rnn_7/transpose†
"sequential_16/simple_rnn_7/Shape_1Shape(sequential_16/simple_rnn_7/transpose:y:0*
T0*
_output_shapes
:2$
"sequential_16/simple_rnn_7/Shape_1Ѓ
0sequential_16/simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_16/simple_rnn_7/strided_slice_1/stack≤
2sequential_16/simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_7/strided_slice_1/stack_1≤
2sequential_16/simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_7/strided_slice_1/stack_2Р
*sequential_16/simple_rnn_7/strided_slice_1StridedSlice+sequential_16/simple_rnn_7/Shape_1:output:09sequential_16/simple_rnn_7/strided_slice_1/stack:output:0;sequential_16/simple_rnn_7/strided_slice_1/stack_1:output:0;sequential_16/simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_16/simple_rnn_7/strided_slice_1ї
6sequential_16/simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€28
6sequential_16/simple_rnn_7/TensorArrayV2/element_shapeЮ
(sequential_16/simple_rnn_7/TensorArrayV2TensorListReserve?sequential_16/simple_rnn_7/TensorArrayV2/element_shape:output:03sequential_16/simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(sequential_16/simple_rnn_7/TensorArrayV2х
Psequential_16/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   2R
Psequential_16/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeд
Bsequential_16/simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_16/simple_rnn_7/transpose:y:0Ysequential_16/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02D
Bsequential_16/simple_rnn_7/TensorArrayUnstack/TensorListFromTensorЃ
0sequential_16/simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_16/simple_rnn_7/strided_slice_2/stack≤
2sequential_16/simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_7/strided_slice_2/stack_1≤
2sequential_16/simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_7/strided_slice_2/stack_2Ю
*sequential_16/simple_rnn_7/strided_slice_2StridedSlice(sequential_16/simple_rnn_7/transpose:y:09sequential_16/simple_rnn_7/strided_slice_2/stack:output:0;sequential_16/simple_rnn_7/strided_slice_2/stack_1:output:0;sequential_16/simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2,
*sequential_16/simple_rnn_7/strided_slice_2Ф
Bsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpKsequential_16_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02D
Bsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpІ
3sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMulMatMul3sequential_16/simple_rnn_7/strided_slice_2:output:0Jsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 25
3sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMulУ
Csequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpLsequential_16_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpµ
4sequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd=sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0Ksequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 26
4sequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAddЪ
Dsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpMsequential_16_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02F
Dsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp£
5sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMul)sequential_16/simple_rnn_7/zeros:output:0Lsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 27
5sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1Я
0sequential_16/simple_rnn_7/simple_rnn_cell_7/addAddV2=sequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:0?sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential_16/simple_rnn_7/simple_rnn_cell_7/add÷
1sequential_16/simple_rnn_7/simple_rnn_cell_7/ReluRelu4sequential_16/simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 23
1sequential_16/simple_rnn_7/simple_rnn_cell_7/Relu≈
8sequential_16/simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2:
8sequential_16/simple_rnn_7/TensorArrayV2_1/element_shape§
*sequential_16/simple_rnn_7/TensorArrayV2_1TensorListReserveAsequential_16/simple_rnn_7/TensorArrayV2_1/element_shape:output:03sequential_16/simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02,
*sequential_16/simple_rnn_7/TensorArrayV2_1Д
sequential_16/simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_16/simple_rnn_7/timeµ
3sequential_16/simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€25
3sequential_16/simple_rnn_7/while/maximum_iterations†
-sequential_16/simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_16/simple_rnn_7/while/loop_counterЉ
 sequential_16/simple_rnn_7/whileWhile6sequential_16/simple_rnn_7/while/loop_counter:output:0<sequential_16/simple_rnn_7/while/maximum_iterations:output:0(sequential_16/simple_rnn_7/time:output:03sequential_16/simple_rnn_7/TensorArrayV2_1:handle:0)sequential_16/simple_rnn_7/zeros:output:03sequential_16/simple_rnn_7/strided_slice_1:output:0Rsequential_16/simple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ksequential_16_simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceLsequential_16_simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceMsequential_16_simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*7
body/R-
+sequential_16_simple_rnn_7_while_body_54735*7
cond/R-
+sequential_16_simple_rnn_7_while_cond_54734*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2"
 sequential_16/simple_rnn_7/whileл
Ksequential_16/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2M
Ksequential_16/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape’
=sequential_16/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_16/simple_rnn_7/while:output:3Tsequential_16/simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02?
=sequential_16/simple_rnn_7/TensorArrayV2Stack/TensorListStackЈ
0sequential_16/simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€22
0sequential_16/simple_rnn_7/strided_slice_3/stack≤
2sequential_16/simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_16/simple_rnn_7/strided_slice_3/stack_1≤
2sequential_16/simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_7/strided_slice_3/stack_2Љ
*sequential_16/simple_rnn_7/strided_slice_3StridedSliceFsequential_16/simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:09sequential_16/simple_rnn_7/strided_slice_3/stack:output:0;sequential_16/simple_rnn_7/strided_slice_3/stack_1:output:0;sequential_16/simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2,
*sequential_16/simple_rnn_7/strided_slice_3ѓ
+sequential_16/simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential_16/simple_rnn_7/transpose_1/permТ
&sequential_16/simple_rnn_7/transpose_1	TransposeFsequential_16/simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:04sequential_16/simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2(
&sequential_16/simple_rnn_7/transpose_1Ю
 sequential_16/simple_rnn_8/ShapeShape*sequential_16/simple_rnn_7/transpose_1:y:0*
T0*
_output_shapes
:2"
 sequential_16/simple_rnn_8/Shape™
.sequential_16/simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_16/simple_rnn_8/strided_slice/stackЃ
0sequential_16/simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_16/simple_rnn_8/strided_slice/stack_1Ѓ
0sequential_16/simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_16/simple_rnn_8/strided_slice/stack_2Д
(sequential_16/simple_rnn_8/strided_sliceStridedSlice)sequential_16/simple_rnn_8/Shape:output:07sequential_16/simple_rnn_8/strided_slice/stack:output:09sequential_16/simple_rnn_8/strided_slice/stack_1:output:09sequential_16/simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_16/simple_rnn_8/strided_sliceТ
&sequential_16/simple_rnn_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_16/simple_rnn_8/zeros/mul/yЎ
$sequential_16/simple_rnn_8/zeros/mulMul1sequential_16/simple_rnn_8/strided_slice:output:0/sequential_16/simple_rnn_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2&
$sequential_16/simple_rnn_8/zeros/mulХ
'sequential_16/simple_rnn_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2)
'sequential_16/simple_rnn_8/zeros/Less/y”
%sequential_16/simple_rnn_8/zeros/LessLess(sequential_16/simple_rnn_8/zeros/mul:z:00sequential_16/simple_rnn_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2'
%sequential_16/simple_rnn_8/zeros/LessШ
)sequential_16/simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_16/simple_rnn_8/zeros/packed/1п
'sequential_16/simple_rnn_8/zeros/packedPack1sequential_16/simple_rnn_8/strided_slice:output:02sequential_16/simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_16/simple_rnn_8/zeros/packedХ
&sequential_16/simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&sequential_16/simple_rnn_8/zeros/Constб
 sequential_16/simple_rnn_8/zerosFill0sequential_16/simple_rnn_8/zeros/packed:output:0/sequential_16/simple_rnn_8/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 sequential_16/simple_rnn_8/zerosЂ
)sequential_16/simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential_16/simple_rnn_8/transpose/permр
$sequential_16/simple_rnn_8/transpose	Transpose*sequential_16/simple_rnn_7/transpose_1:y:02sequential_16/simple_rnn_8/transpose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€ 2&
$sequential_16/simple_rnn_8/transpose†
"sequential_16/simple_rnn_8/Shape_1Shape(sequential_16/simple_rnn_8/transpose:y:0*
T0*
_output_shapes
:2$
"sequential_16/simple_rnn_8/Shape_1Ѓ
0sequential_16/simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_16/simple_rnn_8/strided_slice_1/stack≤
2sequential_16/simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_8/strided_slice_1/stack_1≤
2sequential_16/simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_8/strided_slice_1/stack_2Р
*sequential_16/simple_rnn_8/strided_slice_1StridedSlice+sequential_16/simple_rnn_8/Shape_1:output:09sequential_16/simple_rnn_8/strided_slice_1/stack:output:0;sequential_16/simple_rnn_8/strided_slice_1/stack_1:output:0;sequential_16/simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_16/simple_rnn_8/strided_slice_1ї
6sequential_16/simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€28
6sequential_16/simple_rnn_8/TensorArrayV2/element_shapeЮ
(sequential_16/simple_rnn_8/TensorArrayV2TensorListReserve?sequential_16/simple_rnn_8/TensorArrayV2/element_shape:output:03sequential_16/simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02*
(sequential_16/simple_rnn_8/TensorArrayV2х
Psequential_16/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2R
Psequential_16/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeд
Bsequential_16/simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_16/simple_rnn_8/transpose:y:0Ysequential_16/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02D
Bsequential_16/simple_rnn_8/TensorArrayUnstack/TensorListFromTensorЃ
0sequential_16/simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_16/simple_rnn_8/strided_slice_2/stack≤
2sequential_16/simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_8/strided_slice_2/stack_1≤
2sequential_16/simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_8/strided_slice_2/stack_2Ю
*sequential_16/simple_rnn_8/strided_slice_2StridedSlice(sequential_16/simple_rnn_8/transpose:y:09sequential_16/simple_rnn_8/strided_slice_2/stack:output:0;sequential_16/simple_rnn_8/strided_slice_2/stack_1:output:0;sequential_16/simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2,
*sequential_16/simple_rnn_8/strided_slice_2Ф
Bsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpKsequential_16_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02D
Bsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpІ
3sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMulMatMul3sequential_16/simple_rnn_8/strided_slice_2:output:0Jsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 25
3sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMulУ
Csequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpLsequential_16_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02E
Csequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpµ
4sequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd=sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0Ksequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 26
4sequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAddЪ
Dsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpMsequential_16_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02F
Dsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp£
5sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMul)sequential_16/simple_rnn_8/zeros:output:0Lsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 27
5sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1Я
0sequential_16/simple_rnn_8/simple_rnn_cell_8/addAddV2=sequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:0?sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential_16/simple_rnn_8/simple_rnn_cell_8/add÷
1sequential_16/simple_rnn_8/simple_rnn_cell_8/ReluRelu4sequential_16/simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 23
1sequential_16/simple_rnn_8/simple_rnn_cell_8/Relu≈
8sequential_16/simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2:
8sequential_16/simple_rnn_8/TensorArrayV2_1/element_shape§
*sequential_16/simple_rnn_8/TensorArrayV2_1TensorListReserveAsequential_16/simple_rnn_8/TensorArrayV2_1/element_shape:output:03sequential_16/simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02,
*sequential_16/simple_rnn_8/TensorArrayV2_1Д
sequential_16/simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_16/simple_rnn_8/timeµ
3sequential_16/simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€25
3sequential_16/simple_rnn_8/while/maximum_iterations†
-sequential_16/simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_16/simple_rnn_8/while/loop_counterЉ
 sequential_16/simple_rnn_8/whileWhile6sequential_16/simple_rnn_8/while/loop_counter:output:0<sequential_16/simple_rnn_8/while/maximum_iterations:output:0(sequential_16/simple_rnn_8/time:output:03sequential_16/simple_rnn_8/TensorArrayV2_1:handle:0)sequential_16/simple_rnn_8/zeros:output:03sequential_16/simple_rnn_8/strided_slice_1:output:0Rsequential_16/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ksequential_16_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceLsequential_16_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceMsequential_16_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*7
body/R-
+sequential_16_simple_rnn_8_while_body_54843*7
cond/R-
+sequential_16_simple_rnn_8_while_cond_54842*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2"
 sequential_16/simple_rnn_8/whileл
Ksequential_16/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2M
Ksequential_16/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape’
=sequential_16/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_16/simple_rnn_8/while:output:3Tsequential_16/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02?
=sequential_16/simple_rnn_8/TensorArrayV2Stack/TensorListStackЈ
0sequential_16/simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€22
0sequential_16/simple_rnn_8/strided_slice_3/stack≤
2sequential_16/simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_16/simple_rnn_8/strided_slice_3/stack_1≤
2sequential_16/simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_16/simple_rnn_8/strided_slice_3/stack_2Љ
*sequential_16/simple_rnn_8/strided_slice_3StridedSliceFsequential_16/simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:09sequential_16/simple_rnn_8/strided_slice_3/stack:output:0;sequential_16/simple_rnn_8/strided_slice_3/stack_1:output:0;sequential_16/simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2,
*sequential_16/simple_rnn_8/strided_slice_3ѓ
+sequential_16/simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential_16/simple_rnn_8/transpose_1/permТ
&sequential_16/simple_rnn_8/transpose_1	TransposeFsequential_16/simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:04sequential_16/simple_rnn_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2(
&sequential_16/simple_rnn_8/transpose_1“
,sequential_16/dense_11/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_16/dense_11/MatMul/ReadVariableOpе
sequential_16/dense_11/MatMulMatMul3sequential_16/simple_rnn_8/strided_slice_3:output:04sequential_16/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_16/dense_11/MatMul—
-sequential_16/dense_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_16/dense_11/BiasAdd/ReadVariableOpЁ
sequential_16/dense_11/BiasAddBiasAdd'sequential_16/dense_11/MatMul:product:05sequential_16/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_16/dense_11/BiasAddƒ
IdentityIdentity'sequential_16/dense_11/BiasAdd:output:0.^sequential_16/dense_11/BiasAdd/ReadVariableOp-^sequential_16/dense_11/MatMul/ReadVariableOpD^sequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpC^sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpE^sequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp!^sequential_16/simple_rnn_7/whileD^sequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpC^sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpE^sequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp!^sequential_16/simple_rnn_8/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::2^
-sequential_16/dense_11/BiasAdd/ReadVariableOp-sequential_16/dense_11/BiasAdd/ReadVariableOp2\
,sequential_16/dense_11/MatMul/ReadVariableOp,sequential_16/dense_11/MatMul/ReadVariableOp2К
Csequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpCsequential_16/simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2И
Bsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpBsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2М
Dsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpDsequential_16/simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2D
 sequential_16/simple_rnn_7/while sequential_16/simple_rnn_7/while2К
Csequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpCsequential_16/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2И
Bsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpBsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2М
Dsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpDsequential_16/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2D
 sequential_16/simple_rnn_8/while sequential_16/simple_rnn_8/while:V R
,
_output_shapes
:€€€€€€€€€А	
"
_user_specified_name
input_14
£
Т
,__inference_simple_rnn_8_layer_call_fn_57840
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_558132
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
ё
√
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_58212

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€ :€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
Н
Р
,__inference_simple_rnn_8_layer_call_fn_58097

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_564192
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
Ћ
•
while_cond_57404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57404___redundant_placeholder03
/while_while_cond_57404___redundant_placeholder13
/while_while_cond_57404___redundant_placeholder23
/while_while_cond_57404___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
ЩH
Ц
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57337
inputs_04
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpї
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul¬
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp…
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/BiasAdd…
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul_1≥
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/addЕ
simple_rnn_cell_7/ReluRelusimple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57271*
condR
while_cond_57270*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1щ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€	:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs/0
С	
№
C__inference_dense_11_layer_call_and_return_conditional_losses_56459

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
аG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_56166

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpї
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul¬
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp…
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/BiasAdd…
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul_1≥
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/addЕ
simple_rnn_cell_7/ReluRelusimple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_56100*
condR
while_cond_56099*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А	:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Е#
ю
while_body_55355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_7_55377_0#
while_simple_rnn_cell_7_55379_0#
while_simple_rnn_cell_7_55381_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_7_55377!
while_simple_rnn_cell_7_55379!
while_simple_rnn_cell_7_55381ИҐ/while/simple_rnn_cell_7/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem—
/while/simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_7_55377_0while_simple_rnn_cell_7_55379_0while_simple_rnn_cell_7_55381_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_5498121
/while/simple_rnn_cell_7/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ќ
while/Identity_4Identity8while/simple_rnn_cell_7/StatefulPartitionedCall:output:10^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_7_55377while_simple_rnn_cell_7_55377_0"@
while_simple_rnn_cell_7_55379while_simple_rnn_cell_7_55379_0"@
while_simple_rnn_cell_7_55381while_simple_rnn_cell_7_55381_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2b
/while/simple_rnn_cell_7/StatefulPartitionedCall/while/simple_rnn_cell_7/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
£
Т
,__inference_simple_rnn_8_layer_call_fn_57851
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_559302
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
ё
√
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_58195

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€ :€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
Н
Р
,__inference_simple_rnn_8_layer_call_fn_58086

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_563072
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
∆

Ь
simple_rnn_8_while_cond_569986
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_28
4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56998___redundant_placeholder0M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56998___redundant_placeholder1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56998___redundant_placeholder2M
Isimple_rnn_8_while_simple_rnn_8_while_cond_56998___redundant_placeholder3
simple_rnn_8_while_identity
±
simple_rnn_8/while/LessLesssimple_rnn_8_while_placeholder4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_8/while/LessД
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_8/while/Identity"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
дG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_56307

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpї
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul¬
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp…
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/BiasAdd…
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul_1≥
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/addЕ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_56241*
condR
while_cond_56240*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1х
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А :::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
„<
с
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_55930

inputs
simple_rnn_cell_8_55855
simple_rnn_cell_8_55857
simple_rnn_cell_8_55859
identityИҐ)simple_rnn_cell_8/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2Р
)simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_8_55855simple_rnn_cell_8_55857simple_rnn_cell_8_55859*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_554932+
)simple_rnn_cell_8/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_8_55855simple_rnn_cell_8_55857simple_rnn_cell_8_55859*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_55867*
condR
while_cond_55866*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1†
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_8/StatefulPartitionedCall^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ :::2V
)simple_rnn_cell_8/StatefulPartitionedCall)simple_rnn_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
 R
©
+sequential_16_simple_rnn_8_while_body_54843R
Nsequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_loop_counterX
Tsequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_maximum_iterations0
,sequential_16_simple_rnn_8_while_placeholder2
.sequential_16_simple_rnn_8_while_placeholder_12
.sequential_16_simple_rnn_8_while_placeholder_2Q
Msequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_strided_slice_1_0О
Йsequential_16_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0W
Ssequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0X
Tsequential_16_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0Y
Usequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0-
)sequential_16_simple_rnn_8_while_identity/
+sequential_16_simple_rnn_8_while_identity_1/
+sequential_16_simple_rnn_8_while_identity_2/
+sequential_16_simple_rnn_8_while_identity_3/
+sequential_16_simple_rnn_8_while_identity_4O
Ksequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_strided_slice_1М
Зsequential_16_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorU
Qsequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceV
Rsequential_16_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceW
Ssequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐIsequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐHsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpҐJsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpщ
Rsequential_16/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2T
Rsequential_16/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeц
Dsequential_16/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_16_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0,sequential_16_simple_rnn_8_while_placeholder[sequential_16/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02F
Dsequential_16/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem®
Hsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpSsequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02J
Hsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp—
9sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMulKsequential_16/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Psequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMulІ
Isequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpTsequential_16_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02K
Isequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpЌ
:sequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAddCsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Qsequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2<
:sequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAddЃ
Jsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpUsequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype02L
Jsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpЇ
;sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul.sequential_16_simple_rnn_8_while_placeholder_2Rsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2=
;sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1Ј
6sequential_16/simple_rnn_8/while/simple_rnn_cell_8/addAddV2Csequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:0Esequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 28
6sequential_16/simple_rnn_8/while/simple_rnn_cell_8/addи
7sequential_16/simple_rnn_8/while/simple_rnn_cell_8/ReluRelu:sequential_16/simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 29
7sequential_16/simple_rnn_8/while/simple_rnn_cell_8/Reluх
Esequential_16/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_16_simple_rnn_8_while_placeholder_1,sequential_16_simple_rnn_8_while_placeholderEsequential_16/simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02G
Esequential_16/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemТ
&sequential_16/simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_16/simple_rnn_8/while/add/y’
$sequential_16/simple_rnn_8/while/addAddV2,sequential_16_simple_rnn_8_while_placeholder/sequential_16/simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: 2&
$sequential_16/simple_rnn_8/while/addЦ
(sequential_16/simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_16/simple_rnn_8/while/add_1/yэ
&sequential_16/simple_rnn_8/while/add_1AddV2Nsequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_loop_counter1sequential_16/simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2(
&sequential_16/simple_rnn_8/while/add_1У
)sequential_16/simple_rnn_8/while/IdentityIdentity*sequential_16/simple_rnn_8/while/add_1:z:0J^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpK^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2+
)sequential_16/simple_rnn_8/while/IdentityЅ
+sequential_16/simple_rnn_8/while/Identity_1IdentityTsequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_maximum_iterationsJ^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpK^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_16/simple_rnn_8/while/Identity_1Х
+sequential_16/simple_rnn_8/while/Identity_2Identity(sequential_16/simple_rnn_8/while/add:z:0J^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpK^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_16/simple_rnn_8/while/Identity_2¬
+sequential_16/simple_rnn_8/while/Identity_3IdentityUsequential_16/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0J^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpK^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2-
+sequential_16/simple_rnn_8/while/Identity_3√
+sequential_16/simple_rnn_8/while/Identity_4IdentityEsequential_16/simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0J^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpI^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpK^sequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+sequential_16/simple_rnn_8/while/Identity_4"_
)sequential_16_simple_rnn_8_while_identity2sequential_16/simple_rnn_8/while/Identity:output:0"c
+sequential_16_simple_rnn_8_while_identity_14sequential_16/simple_rnn_8/while/Identity_1:output:0"c
+sequential_16_simple_rnn_8_while_identity_24sequential_16/simple_rnn_8/while/Identity_2:output:0"c
+sequential_16_simple_rnn_8_while_identity_34sequential_16/simple_rnn_8/while/Identity_3:output:0"c
+sequential_16_simple_rnn_8_while_identity_44sequential_16/simple_rnn_8/while/Identity_4:output:0"Ь
Ksequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_strided_slice_1Msequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_strided_slice_1_0"™
Rsequential_16_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceTsequential_16_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"ђ
Ssequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceUsequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"®
Qsequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceSsequential_16_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"Ц
Зsequential_16_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorЙsequential_16_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_16_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2Ц
Isequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpIsequential_16/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2Ф
Hsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpHsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2Ш
Jsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpJsequential_16/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
н3
ы
while_body_58009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpе
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_8/MatMul÷
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_8/BiasAddЁ
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_8/MatMul_1Ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/addЧ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
н3
ы
while_body_57897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpе
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_8/MatMul÷
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_8/BiasAddЁ
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_8/MatMul_1Ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/addЧ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
н3
ы
while_body_57271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpе
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_7/MatMul÷
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_7/BiasAddЁ
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_7/MatMul_1Ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/addЧ
while/simple_rnn_cell_7/ReluReluwhile/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_7/Relu:activations:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Г
‘
#__inference_signature_wrapper_56619
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall†
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_549152
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:€€€€€€€€€А	
"
_user_specified_name
input_14
мє
Ч
H__inference_sequential_16_layer_call_and_return_conditional_losses_56845

inputsA
=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceB
>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceC
?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resourceA
=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceB
>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceC
?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identityИҐdense_11/BiasAdd/ReadVariableOpҐdense_11/MatMul/ReadVariableOpҐ5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpҐ6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpҐsimple_rnn_7/whileҐ5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpҐ6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpҐsimple_rnn_8/while^
simple_rnn_7/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn_7/ShapeО
 simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_7/strided_slice/stackТ
"simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_1Т
"simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_2∞
simple_rnn_7/strided_sliceStridedSlicesimple_rnn_7/Shape:output:0)simple_rnn_7/strided_slice/stack:output:0+simple_rnn_7/strided_slice/stack_1:output:0+simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slicev
simple_rnn_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/zeros/mul/y†
simple_rnn_7/zeros/mulMul#simple_rnn_7/strided_slice:output:0!simple_rnn_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/muly
simple_rnn_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_7/zeros/Less/yЫ
simple_rnn_7/zeros/LessLesssimple_rnn_7/zeros/mul:z:0"simple_rnn_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/Less|
simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/zeros/packed/1Ј
simple_rnn_7/zeros/packedPack#simple_rnn_7/strided_slice:output:0$simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_7/zeros/packedy
simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_7/zeros/Const©
simple_rnn_7/zerosFill"simple_rnn_7/zeros/packed:output:0!simple_rnn_7/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_7/zerosП
simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose/permҐ
simple_rnn_7/transpose	Transposeinputs$simple_rnn_7/transpose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€	2
simple_rnn_7/transposev
simple_rnn_7/Shape_1Shapesimple_rnn_7/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_7/Shape_1Т
"simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_1/stackЦ
$simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_1Ц
$simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_2Љ
simple_rnn_7/strided_slice_1StridedSlicesimple_rnn_7/Shape_1:output:0+simple_rnn_7/strided_slice_1/stack:output:0-simple_rnn_7/strided_slice_1/stack_1:output:0-simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slice_1Я
(simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_7/TensorArrayV2/element_shapeж
simple_rnn_7/TensorArrayV2TensorListReserve1simple_rnn_7/TensorArrayV2/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2ў
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   2D
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_7/transpose:y:0Ksimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_2/stackЦ
$simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_1Ц
$simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_2 
simple_rnn_7/strided_slice_2StridedSlicesimple_rnn_7/transpose:y:0+simple_rnn_7/strided_slice_2/stack:output:0-simple_rnn_7/strided_slice_2/stack_1:output:0-simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
simple_rnn_7/strided_slice_2к
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype026
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpп
%simple_rnn_7/simple_rnn_cell_7/MatMulMatMul%simple_rnn_7/strided_slice_2:output:0<simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%simple_rnn_7/simple_rnn_cell_7/MatMulй
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpэ
&simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0=simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&simple_rnn_7/simple_rnn_cell_7/BiasAddр
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype028
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpл
'simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMulsimple_rnn_7/zeros:output:0>simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'simple_rnn_7/simple_rnn_cell_7/MatMul_1з
"simple_rnn_7/simple_rnn_cell_7/addAddV2/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:01simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"simple_rnn_7/simple_rnn_cell_7/addђ
#simple_rnn_7/simple_rnn_cell_7/ReluRelu&simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#simple_rnn_7/simple_rnn_cell_7/Relu©
*simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2,
*simple_rnn_7/TensorArrayV2_1/element_shapeм
simple_rnn_7/TensorArrayV2_1TensorListReserve3simple_rnn_7/TensorArrayV2_1/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2_1h
simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/timeЩ
%simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_7/while/maximum_iterationsД
simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_7/while/loop_counterш
simple_rnn_7/whileWhile(simple_rnn_7/while/loop_counter:output:0.simple_rnn_7/while/maximum_iterations:output:0simple_rnn_7/time:output:0%simple_rnn_7/TensorArrayV2_1:handle:0simple_rnn_7/zeros:output:0%simple_rnn_7/strided_slice_1:output:0Dsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_7_while_body_56665*)
cond!R
simple_rnn_7_while_cond_56664*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
simple_rnn_7/whileѕ
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2?
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_7/while:output:3Fsimple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype021
/simple_rnn_7/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_7/strided_slice_3/stackЦ
$simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_7/strided_slice_3/stack_1Ц
$simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_3/stack_2и
simple_rnn_7/strided_slice_3StridedSlice8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_7/strided_slice_3/stack:output:0-simple_rnn_7/strided_slice_3/stack_1:output:0-simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
simple_rnn_7/strided_slice_3У
simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose_1/permЏ
simple_rnn_7/transpose_1	Transpose8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
simple_rnn_7/transpose_1t
simple_rnn_8/ShapeShapesimple_rnn_7/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_8/ShapeО
 simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_8/strided_slice/stackТ
"simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_1Т
"simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_2∞
simple_rnn_8/strided_sliceStridedSlicesimple_rnn_8/Shape:output:0)simple_rnn_8/strided_slice/stack:output:0+simple_rnn_8/strided_slice/stack_1:output:0+simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slicev
simple_rnn_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/zeros/mul/y†
simple_rnn_8/zeros/mulMul#simple_rnn_8/strided_slice:output:0!simple_rnn_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/muly
simple_rnn_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_8/zeros/Less/yЫ
simple_rnn_8/zeros/LessLesssimple_rnn_8/zeros/mul:z:0"simple_rnn_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/Less|
simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/zeros/packed/1Ј
simple_rnn_8/zeros/packedPack#simple_rnn_8/strided_slice:output:0$simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_8/zeros/packedy
simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_8/zeros/Const©
simple_rnn_8/zerosFill"simple_rnn_8/zeros/packed:output:0!simple_rnn_8/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_8/zerosП
simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose/permЄ
simple_rnn_8/transpose	Transposesimple_rnn_7/transpose_1:y:0$simple_rnn_8/transpose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€ 2
simple_rnn_8/transposev
simple_rnn_8/Shape_1Shapesimple_rnn_8/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_8/Shape_1Т
"simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_1/stackЦ
$simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_1Ц
$simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_2Љ
simple_rnn_8/strided_slice_1StridedSlicesimple_rnn_8/Shape_1:output:0+simple_rnn_8/strided_slice_1/stack:output:0-simple_rnn_8/strided_slice_1/stack_1:output:0-simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slice_1Я
(simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_8/TensorArrayV2/element_shapeж
simple_rnn_8/TensorArrayV2TensorListReserve1simple_rnn_8/TensorArrayV2/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2ў
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2D
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_8/transpose:y:0Ksimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_2/stackЦ
$simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_1Ц
$simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_2 
simple_rnn_8/strided_slice_2StridedSlicesimple_rnn_8/transpose:y:0+simple_rnn_8/strided_slice_2/stack:output:0-simple_rnn_8/strided_slice_2/stack_1:output:0-simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
simple_rnn_8/strided_slice_2к
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype026
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpп
%simple_rnn_8/simple_rnn_cell_8/MatMulMatMul%simple_rnn_8/strided_slice_2:output:0<simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%simple_rnn_8/simple_rnn_cell_8/MatMulй
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpэ
&simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0=simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&simple_rnn_8/simple_rnn_cell_8/BiasAddр
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype028
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpл
'simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMulsimple_rnn_8/zeros:output:0>simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'simple_rnn_8/simple_rnn_cell_8/MatMul_1з
"simple_rnn_8/simple_rnn_cell_8/addAddV2/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:01simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"simple_rnn_8/simple_rnn_cell_8/addђ
#simple_rnn_8/simple_rnn_cell_8/ReluRelu&simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#simple_rnn_8/simple_rnn_cell_8/Relu©
*simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2,
*simple_rnn_8/TensorArrayV2_1/element_shapeм
simple_rnn_8/TensorArrayV2_1TensorListReserve3simple_rnn_8/TensorArrayV2_1/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2_1h
simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/timeЩ
%simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_8/while/maximum_iterationsД
simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_8/while/loop_counterш
simple_rnn_8/whileWhile(simple_rnn_8/while/loop_counter:output:0.simple_rnn_8/while/maximum_iterations:output:0simple_rnn_8/time:output:0%simple_rnn_8/TensorArrayV2_1:handle:0simple_rnn_8/zeros:output:0%simple_rnn_8/strided_slice_1:output:0Dsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_8_while_body_56773*)
cond!R
simple_rnn_8_while_cond_56772*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
simple_rnn_8/whileѕ
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2?
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_8/while:output:3Fsimple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype021
/simple_rnn_8/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_8/strided_slice_3/stackЦ
$simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_8/strided_slice_3/stack_1Ц
$simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_3/stack_2и
simple_rnn_8/strided_slice_3StridedSlice8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_8/strided_slice_3/stack:output:0-simple_rnn_8/strided_slice_3/stack_1:output:0-simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
simple_rnn_8/strided_slice_3У
simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose_1/permЏ
simple_rnn_8/transpose_1	Transpose8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
simple_rnn_8/transpose_1®
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_11/MatMul/ReadVariableOp≠
dense_11/MatMulMatMul%simple_rnn_8/strided_slice_3:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/MatMulІ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp•
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/BiasAdd™
IdentityIdentitydense_11/BiasAdd:output:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp6^simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5^simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp7^simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp^simple_rnn_7/while6^simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5^simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp7^simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp^simple_rnn_8/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2n
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2l
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2p
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2(
simple_rnn_7/whilesimple_rnn_7/while2n
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2l
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2p
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2(
simple_rnn_8/whilesimple_rnn_8/while:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
аG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57471

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpї
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul¬
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp…
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/BiasAdd…
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul_1≥
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/addЕ
simple_rnn_cell_7/ReluRelusimple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57405*
condR
while_cond_57404*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А	:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Ћ
•
while_cond_57516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57516___redundant_placeholder03
/while_while_cond_57516___redundant_placeholder13
/while_while_cond_57516___redundant_placeholder23
/while_while_cond_57516___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_56240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56240___redundant_placeholder03
/while_while_cond_56240___redundant_placeholder13
/while_while_cond_56240___redundant_placeholder23
/while_while_cond_56240___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
ѓ
№
-__inference_sequential_16_layer_call_fn_57113

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_565692
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
н3
ы
while_body_57405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpе
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_7/MatMul÷
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_7/BiasAddЁ
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_7/MatMul_1Ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/addЧ
while/simple_rnn_cell_7/ReluReluwhile/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_7/Relu:activations:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Ћ
•
while_cond_57270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57270___redundant_placeholder03
/while_while_cond_57270___redundant_placeholder13
/while_while_cond_57270___redundant_placeholder23
/while_while_cond_57270___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_56352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56352___redundant_placeholder03
/while_while_cond_56352___redundant_placeholder13
/while_while_cond_56352___redundant_placeholder23
/while_while_cond_56352___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_57158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57158___redundant_placeholder03
/while_while_cond_57158___redundant_placeholder13
/while_while_cond_57158___redundant_placeholder23
/while_while_cond_57158___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
дG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_56419

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpї
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul¬
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp…
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/BiasAdd…
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul_1≥
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/addЕ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_56353*
condR
while_cond_56352*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1х
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А :::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
н3
ы
while_body_56100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpе
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_7/MatMul÷
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_7/BiasAddЁ
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_7/MatMul_1Ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/addЧ
while/simple_rnn_cell_7/ReluReluwhile/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_7/Relu:activations:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
н3
ы
while_body_57763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpе
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_8/MatMul÷
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_8/BiasAddЁ
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_8/MatMul_1Ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/addЧ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
ѕB
Б
simple_rnn_8_while_body_569996
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_25
1simple_rnn_8_while_simple_rnn_8_strided_slice_1_0q
msimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0J
Fsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0K
Gsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
simple_rnn_8_while_identity!
simple_rnn_8_while_identity_1!
simple_rnn_8_while_identity_2!
simple_rnn_8_while_identity_3!
simple_rnn_8_while_identity_43
/simple_rnn_8_while_simple_rnn_8_strided_slice_1o
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceH
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceI
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2F
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_8_while_placeholderMsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype028
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemю
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02<
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpЩ
+simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMul=simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+simple_rnn_8/while/simple_rnn_cell_8/MatMulэ
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02=
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpХ
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAdd5simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Csimple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddД
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype02>
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpВ
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul simple_rnn_8_while_placeholder_2Dsimple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1€
(simple_rnn_8/while/simple_rnn_cell_8/addAddV25simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:07simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(simple_rnn_8/while/simple_rnn_cell_8/addЊ
)simple_rnn_8/while/simple_rnn_cell_8/ReluRelu,simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)simple_rnn_8/while/simple_rnn_cell_8/Reluѓ
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_8_while_placeholder_1simple_rnn_8_while_placeholder7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype029
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add/yЭ
simple_rnn_8/while/addAddV2simple_rnn_8_while_placeholder!simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/addz
simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add_1/yЈ
simple_rnn_8/while/add_1AddV22simple_rnn_8_while_simple_rnn_8_while_loop_counter#simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/add_1њ
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/add_1:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identityя
simple_rnn_8/while/Identity_1Identity8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_1Ѕ
simple_rnn_8/while/Identity_2Identitysimple_rnn_8/while/add:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_2о
simple_rnn_8/while/Identity_3IdentityGsimple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_3п
simple_rnn_8/while/Identity_4Identity7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_8/while/Identity_4"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0"G
simple_rnn_8_while_identity_1&simple_rnn_8/while/Identity_1:output:0"G
simple_rnn_8_while_identity_2&simple_rnn_8/while/Identity_2:output:0"G
simple_rnn_8_while_identity_3&simple_rnn_8/while/Identity_3:output:0"G
simple_rnn_8_while_identity_4&simple_rnn_8/while/Identity_4:output:0"d
/simple_rnn_8_while_simple_rnn_8_strided_slice_11simple_rnn_8_while_simple_rnn_8_strided_slice_1_0"О
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"Р
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"М
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"№
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensormsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2z
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2x
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2|
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Л
Р
H__inference_sequential_16_layer_call_and_return_conditional_losses_56569

inputs
simple_rnn_7_56549
simple_rnn_7_56551
simple_rnn_7_56553
simple_rnn_8_56556
simple_rnn_8_56558
simple_rnn_8_56560
dense_11_56563
dense_11_56565
identityИҐ dense_11/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCallј
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_7_56549simple_rnn_7_56551simple_rnn_7_56553*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_561662&
$simple_rnn_7/StatefulPartitionedCallв
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_56556simple_rnn_8_56558simple_rnn_8_56560*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_564192&
$simple_rnn_8/StatefulPartitionedCallЄ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0dense_11_56563dense_11_56565*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_564592"
 dense_11/StatefulPartitionedCallо
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Ў
Ѕ
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_54981

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€	:€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
Ћ
•
while_cond_57896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57896___redundant_placeholder03
/while_while_cond_57896___redundant_placeholder13
/while_while_cond_57896___redundant_placeholder23
/while_while_cond_57896___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
аG
Ф
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_56054

inputs4
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpї
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul¬
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp…
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/BiasAdd…
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul_1≥
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/addЕ
simple_rnn_cell_7/ReluRelusimple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_55988*
condR
while_cond_55987*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1с
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А	:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Ћ
•
while_cond_55866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55866___redundant_placeholder03
/while_while_cond_55866___redundant_placeholder13
/while_while_cond_55866___redundant_placeholder23
/while_while_cond_55866___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_56099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_56099___redundant_placeholder03
/while_while_cond_56099___redundant_placeholder13
/while_while_cond_56099___redundant_placeholder23
/while_while_cond_56099___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
ХH
Ц
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57829
inputs_04
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpї
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul¬
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp…
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/BiasAdd…
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul_1≥
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/addЕ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57763*
condR
while_cond_57762*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1х
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ :::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
н3
ы
while_body_56241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpе
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_8/MatMul÷
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_8/BiasAddЁ
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_8/MatMul_1Ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/addЧ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
µ
ё
-__inference_sequential_16_layer_call_fn_56588
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_565692
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:€€€€€€€€€А	
"
_user_specified_name
input_14
мє
Ч
H__inference_sequential_16_layer_call_and_return_conditional_losses_57071

inputsA
=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resourceB
>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resourceC
?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resourceA
=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceB
>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceC
?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identityИҐdense_11/BiasAdd/ReadVariableOpҐdense_11/MatMul/ReadVariableOpҐ5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpҐ6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpҐsimple_rnn_7/whileҐ5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpҐ6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpҐsimple_rnn_8/while^
simple_rnn_7/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn_7/ShapeО
 simple_rnn_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_7/strided_slice/stackТ
"simple_rnn_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_1Т
"simple_rnn_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_7/strided_slice/stack_2∞
simple_rnn_7/strided_sliceStridedSlicesimple_rnn_7/Shape:output:0)simple_rnn_7/strided_slice/stack:output:0+simple_rnn_7/strided_slice/stack_1:output:0+simple_rnn_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slicev
simple_rnn_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/zeros/mul/y†
simple_rnn_7/zeros/mulMul#simple_rnn_7/strided_slice:output:0!simple_rnn_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/muly
simple_rnn_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_7/zeros/Less/yЫ
simple_rnn_7/zeros/LessLesssimple_rnn_7/zeros/mul:z:0"simple_rnn_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/zeros/Less|
simple_rnn_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/zeros/packed/1Ј
simple_rnn_7/zeros/packedPack#simple_rnn_7/strided_slice:output:0$simple_rnn_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_7/zeros/packedy
simple_rnn_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_7/zeros/Const©
simple_rnn_7/zerosFill"simple_rnn_7/zeros/packed:output:0!simple_rnn_7/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_7/zerosП
simple_rnn_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose/permҐ
simple_rnn_7/transpose	Transposeinputs$simple_rnn_7/transpose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€	2
simple_rnn_7/transposev
simple_rnn_7/Shape_1Shapesimple_rnn_7/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_7/Shape_1Т
"simple_rnn_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_1/stackЦ
$simple_rnn_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_1Ц
$simple_rnn_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_1/stack_2Љ
simple_rnn_7/strided_slice_1StridedSlicesimple_rnn_7/Shape_1:output:0+simple_rnn_7/strided_slice_1/stack:output:0-simple_rnn_7/strided_slice_1/stack_1:output:0-simple_rnn_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_7/strided_slice_1Я
(simple_rnn_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_7/TensorArrayV2/element_shapeж
simple_rnn_7/TensorArrayV2TensorListReserve1simple_rnn_7/TensorArrayV2/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2ў
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   2D
Bsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_7/transpose:y:0Ksimple_rnn_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_7/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_7/strided_slice_2/stackЦ
$simple_rnn_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_1Ц
$simple_rnn_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_2/stack_2 
simple_rnn_7/strided_slice_2StridedSlicesimple_rnn_7/transpose:y:0+simple_rnn_7/strided_slice_2/stack:output:0-simple_rnn_7/strided_slice_2/stack_1:output:0-simple_rnn_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
simple_rnn_7/strided_slice_2к
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype026
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOpп
%simple_rnn_7/simple_rnn_cell_7/MatMulMatMul%simple_rnn_7/strided_slice_2:output:0<simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%simple_rnn_7/simple_rnn_cell_7/MatMulй
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOpэ
&simple_rnn_7/simple_rnn_cell_7/BiasAddBiasAdd/simple_rnn_7/simple_rnn_cell_7/MatMul:product:0=simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&simple_rnn_7/simple_rnn_cell_7/BiasAddр
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype028
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOpл
'simple_rnn_7/simple_rnn_cell_7/MatMul_1MatMulsimple_rnn_7/zeros:output:0>simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'simple_rnn_7/simple_rnn_cell_7/MatMul_1з
"simple_rnn_7/simple_rnn_cell_7/addAddV2/simple_rnn_7/simple_rnn_cell_7/BiasAdd:output:01simple_rnn_7/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"simple_rnn_7/simple_rnn_cell_7/addђ
#simple_rnn_7/simple_rnn_cell_7/ReluRelu&simple_rnn_7/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#simple_rnn_7/simple_rnn_cell_7/Relu©
*simple_rnn_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2,
*simple_rnn_7/TensorArrayV2_1/element_shapeм
simple_rnn_7/TensorArrayV2_1TensorListReserve3simple_rnn_7/TensorArrayV2_1/element_shape:output:0%simple_rnn_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_7/TensorArrayV2_1h
simple_rnn_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_7/timeЩ
%simple_rnn_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_7/while/maximum_iterationsД
simple_rnn_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_7/while/loop_counterш
simple_rnn_7/whileWhile(simple_rnn_7/while/loop_counter:output:0.simple_rnn_7/while/maximum_iterations:output:0simple_rnn_7/time:output:0%simple_rnn_7/TensorArrayV2_1:handle:0simple_rnn_7/zeros:output:0%simple_rnn_7/strided_slice_1:output:0Dsimple_rnn_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_7_simple_rnn_cell_7_matmul_readvariableop_resource>simple_rnn_7_simple_rnn_cell_7_biasadd_readvariableop_resource?simple_rnn_7_simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_7_while_body_56891*)
cond!R
simple_rnn_7_while_cond_56890*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
simple_rnn_7/whileѕ
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2?
=simple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_7/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_7/while:output:3Fsimple_rnn_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype021
/simple_rnn_7/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_7/strided_slice_3/stackЦ
$simple_rnn_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_7/strided_slice_3/stack_1Ц
$simple_rnn_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_7/strided_slice_3/stack_2и
simple_rnn_7/strided_slice_3StridedSlice8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_7/strided_slice_3/stack:output:0-simple_rnn_7/strided_slice_3/stack_1:output:0-simple_rnn_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
simple_rnn_7/strided_slice_3У
simple_rnn_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_7/transpose_1/permЏ
simple_rnn_7/transpose_1	Transpose8simple_rnn_7/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_7/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
simple_rnn_7/transpose_1t
simple_rnn_8/ShapeShapesimple_rnn_7/transpose_1:y:0*
T0*
_output_shapes
:2
simple_rnn_8/ShapeО
 simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_8/strided_slice/stackТ
"simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_1Т
"simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_8/strided_slice/stack_2∞
simple_rnn_8/strided_sliceStridedSlicesimple_rnn_8/Shape:output:0)simple_rnn_8/strided_slice/stack:output:0+simple_rnn_8/strided_slice/stack_1:output:0+simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slicev
simple_rnn_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/zeros/mul/y†
simple_rnn_8/zeros/mulMul#simple_rnn_8/strided_slice:output:0!simple_rnn_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/muly
simple_rnn_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_8/zeros/Less/yЫ
simple_rnn_8/zeros/LessLesssimple_rnn_8/zeros/mul:z:0"simple_rnn_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/zeros/Less|
simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/zeros/packed/1Ј
simple_rnn_8/zeros/packedPack#simple_rnn_8/strided_slice:output:0$simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_8/zeros/packedy
simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_8/zeros/Const©
simple_rnn_8/zerosFill"simple_rnn_8/zeros/packed:output:0!simple_rnn_8/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_8/zerosП
simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose/permЄ
simple_rnn_8/transpose	Transposesimple_rnn_7/transpose_1:y:0$simple_rnn_8/transpose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€ 2
simple_rnn_8/transposev
simple_rnn_8/Shape_1Shapesimple_rnn_8/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_8/Shape_1Т
"simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_1/stackЦ
$simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_1Ц
$simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_1/stack_2Љ
simple_rnn_8/strided_slice_1StridedSlicesimple_rnn_8/Shape_1:output:0+simple_rnn_8/strided_slice_1/stack:output:0-simple_rnn_8/strided_slice_1/stack_1:output:0-simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_8/strided_slice_1Я
(simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_8/TensorArrayV2/element_shapeж
simple_rnn_8/TensorArrayV2TensorListReserve1simple_rnn_8/TensorArrayV2/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2ў
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2D
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_8/transpose:y:0Ksimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_8/strided_slice_2/stackЦ
$simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_1Ц
$simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_2/stack_2 
simple_rnn_8/strided_slice_2StridedSlicesimple_rnn_8/transpose:y:0+simple_rnn_8/strided_slice_2/stack:output:0-simple_rnn_8/strided_slice_2/stack_1:output:0-simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
simple_rnn_8/strided_slice_2к
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype026
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpп
%simple_rnn_8/simple_rnn_cell_8/MatMulMatMul%simple_rnn_8/strided_slice_2:output:0<simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%simple_rnn_8/simple_rnn_cell_8/MatMulй
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpэ
&simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0=simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&simple_rnn_8/simple_rnn_cell_8/BiasAddр
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype028
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpл
'simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMulsimple_rnn_8/zeros:output:0>simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'simple_rnn_8/simple_rnn_cell_8/MatMul_1з
"simple_rnn_8/simple_rnn_cell_8/addAddV2/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:01simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"simple_rnn_8/simple_rnn_cell_8/addђ
#simple_rnn_8/simple_rnn_cell_8/ReluRelu&simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#simple_rnn_8/simple_rnn_cell_8/Relu©
*simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2,
*simple_rnn_8/TensorArrayV2_1/element_shapeм
simple_rnn_8/TensorArrayV2_1TensorListReserve3simple_rnn_8/TensorArrayV2_1/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_8/TensorArrayV2_1h
simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_8/timeЩ
%simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_8/while/maximum_iterationsД
simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_8/while/loop_counterш
simple_rnn_8/whileWhile(simple_rnn_8/while/loop_counter:output:0.simple_rnn_8/while/maximum_iterations:output:0simple_rnn_8/time:output:0%simple_rnn_8/TensorArrayV2_1:handle:0simple_rnn_8/zeros:output:0%simple_rnn_8/strided_slice_1:output:0Dsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*)
body!R
simple_rnn_8_while_body_56999*)
cond!R
simple_rnn_8_while_cond_56998*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
simple_rnn_8/whileѕ
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2?
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeЭ
/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_8/while:output:3Fsimple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype021
/simple_rnn_8/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_8/strided_slice_3/stackЦ
$simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_8/strided_slice_3/stack_1Ц
$simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_8/strided_slice_3/stack_2и
simple_rnn_8/strided_slice_3StridedSlice8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_8/strided_slice_3/stack:output:0-simple_rnn_8/strided_slice_3/stack_1:output:0-simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
simple_rnn_8/strided_slice_3У
simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_8/transpose_1/permЏ
simple_rnn_8/transpose_1	Transpose8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_8/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
simple_rnn_8/transpose_1®
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_11/MatMul/ReadVariableOp≠
dense_11/MatMulMatMul%simple_rnn_8/strided_slice_3:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/MatMulІ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp•
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_11/BiasAdd™
IdentityIdentitydense_11/BiasAdd:output:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp6^simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5^simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp7^simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp^simple_rnn_7/while6^simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5^simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp7^simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp^simple_rnn_8/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2n
5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp5simple_rnn_7/simple_rnn_cell_7/BiasAdd/ReadVariableOp2l
4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp4simple_rnn_7/simple_rnn_cell_7/MatMul/ReadVariableOp2p
6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp6simple_rnn_7/simple_rnn_cell_7/MatMul_1/ReadVariableOp2(
simple_rnn_7/whilesimple_rnn_7/while2n
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2l
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2p
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2(
simple_rnn_8/whilesimple_rnn_8/while:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
н3
ы
while_body_57517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpе
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_7/MatMul÷
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_7/BiasAddЁ
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_7/MatMul_1Ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/addЧ
while/simple_rnn_cell_7/ReluReluwhile/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_7/Relu:activations:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
ё
√
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_58133

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€	:€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
и	
≥
1__inference_simple_rnn_cell_8_layer_call_fn_58226

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_554762
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€ :€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
Ћ
•
while_cond_55237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55237___redundant_placeholder03
/while_while_cond_55237___redundant_placeholder13
/while_while_cond_55237___redundant_placeholder23
/while_while_cond_55237___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_55354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55354___redundant_placeholder03
/while_while_cond_55354___redundant_placeholder13
/while_while_cond_55354___redundant_placeholder23
/while_while_cond_55354___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
µ
ё
-__inference_sequential_16_layer_call_fn_56544
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_565252
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:€€€€€€€€€А	
"
_user_specified_name
input_14
н3
ы
while_body_56353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_8_matmul_readvariableop_resource;
7while_simple_rnn_cell_8_biasadd_readvariableop_resource<
8while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02/
-while/simple_rnn_cell_8/MatMul/ReadVariableOpе
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_8/MatMul÷
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_8/BiasAddЁ
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_8/MatMul_1Ћ
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/addЧ
while/simple_rnn_cell_8/ReluReluwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_8/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_8/Relu:activations:0/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
дG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57963

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpї
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul¬
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp…
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/BiasAdd…
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul_1≥
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/addЕ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57897*
condR
while_cond_57896*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1х
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А :::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
ЩH
Ц
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57225
inputs_04
0simple_rnn_cell_7_matmul_readvariableop_resource5
1simple_rnn_cell_7_biasadd_readvariableop_resource6
2simple_rnn_cell_7_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_7/MatMul/ReadVariableOpҐ)simple_rnn_cell_7/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_7_matmul_readvariableop_resource*
_output_shapes

:	 *
dtype02)
'simple_rnn_cell_7/MatMul/ReadVariableOpї
simple_rnn_cell_7/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul¬
(simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_7/BiasAdd/ReadVariableOp…
simple_rnn_cell_7/BiasAddBiasAdd"simple_rnn_cell_7/MatMul:product:00simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/BiasAdd…
)simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_7/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_7/MatMul_1MatMulzeros:output:01simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/MatMul_1≥
simple_rnn_cell_7/addAddV2"simple_rnn_cell_7/BiasAdd:output:0$simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/addЕ
simple_rnn_cell_7/ReluRelusimple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_7/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_7_matmul_readvariableop_resource1simple_rnn_cell_7_biasadd_readvariableop_resource2simple_rnn_cell_7_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_57159*
condR
while_cond_57158*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1щ
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_7/BiasAdd/ReadVariableOp(^simple_rnn_cell_7/MatMul/ReadVariableOp*^simple_rnn_cell_7/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€	:::2T
(simple_rnn_cell_7/BiasAdd/ReadVariableOp(simple_rnn_cell_7/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_7/MatMul/ReadVariableOp'simple_rnn_cell_7/MatMul/ReadVariableOp2V
)simple_rnn_cell_7/MatMul_1/ReadVariableOp)simple_rnn_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs/0
Ћ
•
while_cond_57650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_57650___redundant_placeholder03
/while_while_cond_57650___redundant_placeholder13
/while_while_cond_57650___redundant_placeholder23
/while_while_cond_57650___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
и	
≥
1__inference_simple_rnn_cell_7_layer_call_fn_58164

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_549642
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€	:€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
Ћ
•
while_cond_55987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55987___redundant_placeholder03
/while_while_cond_55987___redundant_placeholder13
/while_while_cond_55987___redundant_placeholder23
/while_while_cond_55987___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ћ
•
while_cond_55749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_55749___redundant_placeholder03
/while_while_cond_55749___redundant_placeholder13
/while_while_cond_55749___redundant_placeholder23
/while_while_cond_55749___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
н3
ы
while_body_57159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_7_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_7_matmul_readvariableop_resource;
7while_simple_rnn_cell_7_biasadd_readvariableop_resource<
8while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
-while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02/
-while/simple_rnn_cell_7/MatMul/ReadVariableOpе
while/simple_rnn_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
while/simple_rnn_cell_7/MatMul÷
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOpб
while/simple_rnn_cell_7/BiasAddBiasAdd(while/simple_rnn_cell_7/MatMul:product:06while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
while/simple_rnn_cell_7/BiasAddЁ
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype021
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpќ
 while/simple_rnn_cell_7/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 while/simple_rnn_cell_7/MatMul_1Ћ
while/simple_rnn_cell_7/addAddV2(while/simple_rnn_cell_7/BiasAdd:output:0*while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/addЧ
while/simple_rnn_cell_7/ReluReluwhile/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/simple_rnn_cell_7/Reluо
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3°
while/Identity_4Identity*while/simple_rnn_cell_7/Relu:activations:0/^while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_7/MatMul/ReadVariableOp0^while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_7_biasadd_readvariableop_resource9while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_7_matmul_1_readvariableop_resource:while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_7_matmul_readvariableop_resource8while_simple_rnn_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2`
.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp.while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_7/MatMul/ReadVariableOp-while/simple_rnn_cell_7/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
№
¶
+sequential_16_simple_rnn_7_while_cond_54734R
Nsequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_loop_counterX
Tsequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_maximum_iterations0
,sequential_16_simple_rnn_7_while_placeholder2
.sequential_16_simple_rnn_7_while_placeholder_12
.sequential_16_simple_rnn_7_while_placeholder_2T
Psequential_16_simple_rnn_7_while_less_sequential_16_simple_rnn_7_strided_slice_1i
esequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_cond_54734___redundant_placeholder0i
esequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_cond_54734___redundant_placeholder1i
esequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_cond_54734___redundant_placeholder2i
esequential_16_simple_rnn_7_while_sequential_16_simple_rnn_7_while_cond_54734___redundant_placeholder3-
)sequential_16_simple_rnn_7_while_identity
ч
%sequential_16/simple_rnn_7/while/LessLess,sequential_16_simple_rnn_7_while_placeholderPsequential_16_simple_rnn_7_while_less_sequential_16_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: 2'
%sequential_16/simple_rnn_7/while/LessЃ
)sequential_16/simple_rnn_7/while/IdentityIdentity)sequential_16/simple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: 2+
)sequential_16/simple_rnn_7/while/Identity"_
)sequential_16_simple_rnn_7_while_identity2sequential_16/simple_rnn_7/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
∆

Ь
simple_rnn_7_while_cond_566646
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_28
4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56664___redundant_placeholder0M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56664___redundant_placeholder1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56664___redundant_placeholder2M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56664___redundant_placeholder3
simple_rnn_7_while_identity
±
simple_rnn_7/while/LessLesssimple_rnn_7_while_placeholder4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_7/while/LessД
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_7/while/Identity"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
дG
Ф
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_58075

inputs4
0simple_rnn_cell_8_matmul_readvariableop_resource5
1simple_rnn_cell_8_biasadd_readvariableop_resource6
2simple_rnn_cell_8_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_8/MatMul/ReadVariableOpҐ)simple_rnn_cell_8/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:А€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2√
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02)
'simple_rnn_cell_8/MatMul/ReadVariableOpї
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul¬
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(simple_rnn_cell_8/BiasAdd/ReadVariableOp…
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/BiasAdd…
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02+
)simple_rnn_cell_8/MatMul_1/ReadVariableOpЈ
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/MatMul_1≥
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/addЕ
simple_rnn_cell_8/ReluRelusimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_cell_8/ReluП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_58009*
condR
while_cond_58008*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:А€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А 2
transpose_1х
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А :::2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
С
Т
H__inference_sequential_16_layer_call_and_return_conditional_losses_56476
input_14
simple_rnn_7_56189
simple_rnn_7_56191
simple_rnn_7_56193
simple_rnn_8_56442
simple_rnn_8_56444
simple_rnn_8_56446
dense_11_56470
dense_11_56472
identityИҐ dense_11/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCall¬
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCallinput_14simple_rnn_7_56189simple_rnn_7_56191simple_rnn_7_56193*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_560542&
$simple_rnn_7/StatefulPartitionedCallв
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_56442simple_rnn_8_56444simple_rnn_8_56446*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_563072&
$simple_rnn_8/StatefulPartitionedCallЄ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0dense_11_56470dense_11_56472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_564592"
 dense_11/StatefulPartitionedCallо
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall:V R
,
_output_shapes
:€€€€€€€€€А	
"
_user_specified_name
input_14
Л
Р
H__inference_sequential_16_layer_call_and_return_conditional_losses_56525

inputs
simple_rnn_7_56505
simple_rnn_7_56507
simple_rnn_7_56509
simple_rnn_8_56512
simple_rnn_8_56514
simple_rnn_8_56516
dense_11_56519
dense_11_56521
identityИҐ dense_11/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCallј
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_7_56505simple_rnn_7_56507simple_rnn_7_56509*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_560542&
$simple_rnn_7/StatefulPartitionedCallв
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_56512simple_rnn_8_56514simple_rnn_8_56516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_563072&
$simple_rnn_8/StatefulPartitionedCallЄ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0dense_11_56519dense_11_56521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_564592"
 dense_11/StatefulPartitionedCallо
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
и	
≥
1__inference_simple_rnn_cell_7_layer_call_fn_58178

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_549812
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€	:€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
ѕB
Б
simple_rnn_7_while_body_568916
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_25
1simple_rnn_7_while_simple_rnn_7_strided_slice_1_0q
msimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0J
Fsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0K
Gsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
simple_rnn_7_while_identity!
simple_rnn_7_while_identity_1!
simple_rnn_7_while_identity_2!
simple_rnn_7_while_identity_3!
simple_rnn_7_while_identity_43
/simple_rnn_7_while_simple_rnn_7_strided_slice_1o
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceH
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceI
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   2F
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_7_while_placeholderMsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype028
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemю
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02<
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpЩ
+simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMul=simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+simple_rnn_7/while/simple_rnn_cell_7/MatMulэ
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02=
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpХ
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAdd5simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Csimple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddД
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype02>
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpВ
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul simple_rnn_7_while_placeholder_2Dsimple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1€
(simple_rnn_7/while/simple_rnn_cell_7/addAddV25simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:07simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(simple_rnn_7/while/simple_rnn_cell_7/addЊ
)simple_rnn_7/while/simple_rnn_cell_7/ReluRelu,simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)simple_rnn_7/while/simple_rnn_cell_7/Reluѓ
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_7_while_placeholder_1simple_rnn_7_while_placeholder7simple_rnn_7/while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype029
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add/yЭ
simple_rnn_7/while/addAddV2simple_rnn_7_while_placeholder!simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/addz
simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add_1/yЈ
simple_rnn_7/while/add_1AddV22simple_rnn_7_while_simple_rnn_7_while_loop_counter#simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/add_1њ
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/add_1:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identityя
simple_rnn_7/while/Identity_1Identity8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_1Ѕ
simple_rnn_7/while/Identity_2Identitysimple_rnn_7/while/add:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_2о
simple_rnn_7/while/Identity_3IdentityGsimple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_3п
simple_rnn_7/while/Identity_4Identity7simple_rnn_7/while/simple_rnn_cell_7/Relu:activations:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_7/while/Identity_4"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0"G
simple_rnn_7_while_identity_1&simple_rnn_7/while/Identity_1:output:0"G
simple_rnn_7_while_identity_2&simple_rnn_7/while/Identity_2:output:0"G
simple_rnn_7_while_identity_3&simple_rnn_7/while/Identity_3:output:0"G
simple_rnn_7_while_identity_4&simple_rnn_7/while/Identity_4:output:0"d
/simple_rnn_7_while_simple_rnn_7_strided_slice_11simple_rnn_7_while_simple_rnn_7_strided_slice_1_0"О
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"Р
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"М
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"№
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensormsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2z
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2x
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2|
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Ў
Ѕ
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_55493

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddУ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
addO
ReluReluadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityµ

Identity_1IdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€ :€€€€€€€€€ :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
љ
Т
,__inference_simple_rnn_7_layer_call_fn_57348
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_553012
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€	:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs/0
№
¶
+sequential_16_simple_rnn_8_while_cond_54842R
Nsequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_loop_counterX
Tsequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_maximum_iterations0
,sequential_16_simple_rnn_8_while_placeholder2
.sequential_16_simple_rnn_8_while_placeholder_12
.sequential_16_simple_rnn_8_while_placeholder_2T
Psequential_16_simple_rnn_8_while_less_sequential_16_simple_rnn_8_strided_slice_1i
esequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_cond_54842___redundant_placeholder0i
esequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_cond_54842___redundant_placeholder1i
esequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_cond_54842___redundant_placeholder2i
esequential_16_simple_rnn_8_while_sequential_16_simple_rnn_8_while_cond_54842___redundant_placeholder3-
)sequential_16_simple_rnn_8_while_identity
ч
%sequential_16/simple_rnn_8/while/LessLess,sequential_16_simple_rnn_8_while_placeholderPsequential_16_simple_rnn_8_while_less_sequential_16_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: 2'
%sequential_16/simple_rnn_8/while/LessЃ
)sequential_16/simple_rnn_8/while/IdentityIdentity)sequential_16/simple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: 2+
)sequential_16/simple_rnn_8/while/Identity"_
)sequential_16_simple_rnn_8_while_identity2sequential_16/simple_rnn_8/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Е#
ю
while_body_55238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_7_55260_0#
while_simple_rnn_cell_7_55262_0#
while_simple_rnn_cell_7_55264_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_7_55260!
while_simple_rnn_cell_7_55262!
while_simple_rnn_cell_7_55264ИҐ/while/simple_rnn_cell_7/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem—
/while/simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_7_55260_0while_simple_rnn_cell_7_55262_0while_simple_rnn_cell_7_55264_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_5496421
/while/simple_rnn_cell_7/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ќ
while/Identity_4Identity8while/simple_rnn_cell_7/StatefulPartitionedCall:output:10^while/simple_rnn_cell_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_7_55260while_simple_rnn_cell_7_55260_0"@
while_simple_rnn_cell_7_55262while_simple_rnn_cell_7_55262_0"@
while_simple_rnn_cell_7_55264while_simple_rnn_cell_7_55264_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2b
/while/simple_rnn_cell_7/StatefulPartitionedCall/while/simple_rnn_cell_7/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
и	
≥
1__inference_simple_rnn_cell_8_layer_call_fn_58240

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_554932
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:€€€€€€€€€ :€€€€€€€€€ :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0
∆

Ь
simple_rnn_7_while_cond_568906
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_28
4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56890___redundant_placeholder0M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56890___redundant_placeholder1M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56890___redundant_placeholder2M
Isimple_rnn_7_while_simple_rnn_7_while_cond_56890___redundant_placeholder3
simple_rnn_7_while_identity
±
simple_rnn_7/while/LessLesssimple_rnn_7_while_placeholder4simple_rnn_7_while_less_simple_rnn_7_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_7/while/LessД
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_7/while/Identity"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
џ<
с
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_55301

inputs
simple_rnn_cell_7_55226
simple_rnn_cell_7_55228
simple_rnn_cell_7_55230
identityИҐ)simple_rnn_cell_7/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask2
strided_slice_2Р
)simple_rnn_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7_55226simple_rnn_cell_7_55228simple_rnn_cell_7_55230*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_549642+
)simple_rnn_cell_7/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7_55226simple_rnn_cell_7_55228simple_rnn_cell_7_55230*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_55238*
condR
while_cond_55237*8
output_shapes'
%: : : : :€€€€€€€€€ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1§
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_7/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€	:::2V
)simple_rnn_cell_7/StatefulPartitionedCall)simple_rnn_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
 
_user_specified_nameinputs
ѓ
№
-__inference_sequential_16_layer_call_fn_57092

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_565252
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
ѕB
Б
simple_rnn_7_while_body_566656
2simple_rnn_7_while_simple_rnn_7_while_loop_counter<
8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations"
simple_rnn_7_while_placeholder$
 simple_rnn_7_while_placeholder_1$
 simple_rnn_7_while_placeholder_25
1simple_rnn_7_while_simple_rnn_7_strided_slice_1_0q
msimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0J
Fsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0K
Gsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0
simple_rnn_7_while_identity!
simple_rnn_7_while_identity_1!
simple_rnn_7_while_identity_2!
simple_rnn_7_while_identity_3!
simple_rnn_7_while_identity_43
/simple_rnn_7_while_simple_rnn_7_strided_slice_1o
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceH
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceI
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceИҐ;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpҐ:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpҐ<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   2F
Dsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_7_while_placeholderMsimple_rnn_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype028
6simple_rnn_7/while/TensorArrayV2Read/TensorListGetItemю
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	 *
dtype02<
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOpЩ
+simple_rnn_7/while/simple_rnn_cell_7/MatMulMatMul=simple_rnn_7/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+simple_rnn_7/while/simple_rnn_cell_7/MatMulэ
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02=
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOpХ
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddBiasAdd5simple_rnn_7/while/simple_rnn_cell_7/MatMul:product:0Csimple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,simple_rnn_7/while/simple_rnn_cell_7/BiasAddД
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype02>
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOpВ
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1MatMul simple_rnn_7_while_placeholder_2Dsimple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-simple_rnn_7/while/simple_rnn_cell_7/MatMul_1€
(simple_rnn_7/while/simple_rnn_cell_7/addAddV25simple_rnn_7/while/simple_rnn_cell_7/BiasAdd:output:07simple_rnn_7/while/simple_rnn_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(simple_rnn_7/while/simple_rnn_cell_7/addЊ
)simple_rnn_7/while/simple_rnn_cell_7/ReluRelu,simple_rnn_7/while/simple_rnn_cell_7/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)simple_rnn_7/while/simple_rnn_cell_7/Reluѓ
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_7_while_placeholder_1simple_rnn_7_while_placeholder7simple_rnn_7/while/simple_rnn_cell_7/Relu:activations:0*
_output_shapes
: *
element_dtype029
7simple_rnn_7/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add/yЭ
simple_rnn_7/while/addAddV2simple_rnn_7_while_placeholder!simple_rnn_7/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/addz
simple_rnn_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_7/while/add_1/yЈ
simple_rnn_7/while/add_1AddV22simple_rnn_7_while_simple_rnn_7_while_loop_counter#simple_rnn_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_7/while/add_1њ
simple_rnn_7/while/IdentityIdentitysimple_rnn_7/while/add_1:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identityя
simple_rnn_7/while/Identity_1Identity8simple_rnn_7_while_simple_rnn_7_while_maximum_iterations<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_1Ѕ
simple_rnn_7/while/Identity_2Identitysimple_rnn_7/while/add:z:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_2о
simple_rnn_7/while/Identity_3IdentityGsimple_rnn_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_7/while/Identity_3п
simple_rnn_7/while/Identity_4Identity7simple_rnn_7/while/simple_rnn_cell_7/Relu:activations:0<^simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;^simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp=^simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_7/while/Identity_4"C
simple_rnn_7_while_identity$simple_rnn_7/while/Identity:output:0"G
simple_rnn_7_while_identity_1&simple_rnn_7/while/Identity_1:output:0"G
simple_rnn_7_while_identity_2&simple_rnn_7/while/Identity_2:output:0"G
simple_rnn_7_while_identity_3&simple_rnn_7/while/Identity_3:output:0"G
simple_rnn_7_while_identity_4&simple_rnn_7/while/Identity_4:output:0"d
/simple_rnn_7_while_simple_rnn_7_strided_slice_11simple_rnn_7_while_simple_rnn_7_strided_slice_1_0"О
Dsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resourceFsimple_rnn_7_while_simple_rnn_cell_7_biasadd_readvariableop_resource_0"Р
Esimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resourceGsimple_rnn_7_while_simple_rnn_cell_7_matmul_1_readvariableop_resource_0"М
Csimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resourceEsimple_rnn_7_while_simple_rnn_cell_7_matmul_readvariableop_resource_0"№
ksimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensormsimple_rnn_7_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_7_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2z
;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp;simple_rnn_7/while/simple_rnn_cell_7/BiasAdd/ReadVariableOp2x
:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp:simple_rnn_7/while/simple_rnn_cell_7/MatMul/ReadVariableOp2|
<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp<simple_rnn_7/while/simple_rnn_cell_7/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
ѕB
Б
simple_rnn_8_while_body_567736
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_25
1simple_rnn_8_while_simple_rnn_8_strided_slice_1_0q
msimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0J
Fsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0K
Gsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0
simple_rnn_8_while_identity!
simple_rnn_8_while_identity_1!
simple_rnn_8_while_identity_2!
simple_rnn_8_while_identity_3!
simple_rnn_8_while_identity_43
/simple_rnn_8_while_simple_rnn_8_strided_slice_1o
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceH
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceI
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceИҐ;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpҐ:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpҐ<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2F
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_8_while_placeholderMsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype028
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemю
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:  *
dtype02<
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpЩ
+simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMul=simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+simple_rnn_8/while/simple_rnn_cell_8/MatMulэ
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02=
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpХ
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAdd5simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Csimple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddД
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype02>
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpВ
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul simple_rnn_8_while_placeholder_2Dsimple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1€
(simple_rnn_8/while/simple_rnn_cell_8/addAddV25simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:07simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(simple_rnn_8/while/simple_rnn_cell_8/addЊ
)simple_rnn_8/while/simple_rnn_cell_8/ReluRelu,simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2+
)simple_rnn_8/while/simple_rnn_cell_8/Reluѓ
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_8_while_placeholder_1simple_rnn_8_while_placeholder7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0*
_output_shapes
: *
element_dtype029
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add/yЭ
simple_rnn_8/while/addAddV2simple_rnn_8_while_placeholder!simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/addz
simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_8/while/add_1/yЈ
simple_rnn_8/while/add_1AddV22simple_rnn_8_while_simple_rnn_8_while_loop_counter#simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_8/while/add_1њ
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/add_1:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identityя
simple_rnn_8/while/Identity_1Identity8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_1Ѕ
simple_rnn_8/while/Identity_2Identitysimple_rnn_8/while/add:z:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_2о
simple_rnn_8/while/Identity_3IdentityGsimple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_8/while/Identity_3п
simple_rnn_8/while/Identity_4Identity7simple_rnn_8/while/simple_rnn_cell_8/Relu:activations:0<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€ 2
simple_rnn_8/while/Identity_4"C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0"G
simple_rnn_8_while_identity_1&simple_rnn_8/while/Identity_1:output:0"G
simple_rnn_8_while_identity_2&simple_rnn_8/while/Identity_2:output:0"G
simple_rnn_8_while_identity_3&simple_rnn_8/while/Identity_3:output:0"G
simple_rnn_8_while_identity_4&simple_rnn_8/while/Identity_4:output:0"d
/simple_rnn_8_while_simple_rnn_8_strided_slice_11simple_rnn_8_while_simple_rnn_8_strided_slice_1_0"О
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"Р
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"М
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"№
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensormsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2z
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2x
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2|
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
С
Т
H__inference_sequential_16_layer_call_and_return_conditional_losses_56499
input_14
simple_rnn_7_56479
simple_rnn_7_56481
simple_rnn_7_56483
simple_rnn_8_56486
simple_rnn_8_56488
simple_rnn_8_56490
dense_11_56493
dense_11_56495
identityИҐ dense_11/StatefulPartitionedCallҐ$simple_rnn_7/StatefulPartitionedCallҐ$simple_rnn_8/StatefulPartitionedCall¬
$simple_rnn_7/StatefulPartitionedCallStatefulPartitionedCallinput_14simple_rnn_7_56479simple_rnn_7_56481simple_rnn_7_56483*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_561662&
$simple_rnn_7/StatefulPartitionedCallв
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_7/StatefulPartitionedCall:output:0simple_rnn_8_56486simple_rnn_8_56488simple_rnn_8_56490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_564192&
$simple_rnn_8/StatefulPartitionedCallЄ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0dense_11_56493dense_11_56495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_564592"
 dense_11/StatefulPartitionedCallо
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall%^simple_rnn_7/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:€€€€€€€€€А	::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2L
$simple_rnn_7/StatefulPartitionedCall$simple_rnn_7/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall:V R
,
_output_shapes
:€€€€€€€€€А	
"
_user_specified_name
input_14
Ч
Р
,__inference_simple_rnn_7_layer_call_fn_57594

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_560542
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А	:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Ћ
•
while_cond_58008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_58008___redundant_placeholder03
/while_while_cond_58008___redundant_placeholder13
/while_while_cond_58008___redundant_placeholder23
/while_while_cond_58008___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Е#
ю
while_body_55867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0#
while_simple_rnn_cell_8_55889_0#
while_simple_rnn_cell_8_55891_0#
while_simple_rnn_cell_8_55893_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor!
while_simple_rnn_cell_8_55889!
while_simple_rnn_cell_8_55891!
while_simple_rnn_cell_8_55893ИҐ/while/simple_rnn_cell_8/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem—
/while/simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_8_55889_0while_simple_rnn_cell_8_55891_0while_simple_rnn_cell_8_55893_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_5549321
/while/simple_rnn_cell_8/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ќ
while/Identity_4Identity8while/simple_rnn_cell_8/StatefulPartitionedCall:output:10^while/simple_rnn_cell_8/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_8_55889while_simple_rnn_cell_8_55889_0"@
while_simple_rnn_cell_8_55891while_simple_rnn_cell_8_55891_0"@
while_simple_rnn_cell_8_55893while_simple_rnn_cell_8_55893_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :€€€€€€€€€ : : :::2b
/while/simple_rnn_cell_8/StatefulPartitionedCall/while/simple_rnn_cell_8/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: "±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≤
serving_defaultЮ
B
input_146
serving_default_input_14:0€€€€€€€€€А	<
dense_110
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Џо
Б/
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
*p&call_and_return_all_conditional_losses
q_default_save_signature
r__call__"Ѕ,
_tf_keras_sequentialҐ,{"class_name": "Sequential", "name": "sequential_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_7", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_8", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 6, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 9]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 9]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_7", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_8", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 6, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0024999999441206455, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ъ


cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
*s&call_and_return_all_conditional_losses
t__call__"—	
_tf_keras_rnn_layer≥	{"class_name": "SimpleRNN", "name": "simple_rnn_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_7", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 9]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 9]}}
э

cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
*u&call_and_return_all_conditional_losses
v__call__"‘	
_tf_keras_rnn_layerґ	{"class_name": "SimpleRNN", "name": "simple_rnn_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_8", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 32]}}
у

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*w&call_and_return_all_conditional_losses
x__call__"ќ
_tf_keras_layerі{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 6, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
г
iter

beta_1

beta_2
	decay
 learning_ratem`ma!mb"mc#md$me%mf&mgvhvi!vj"vk#vl$vm%vn&vo"
	optimizer
 "
trackable_list_wrapper
X
!0
"1
#2
$3
%4
&5
6
7"
trackable_list_wrapper
X
!0
"1
#2
$3
%4
&5
6
7"
trackable_list_wrapper
 

'layers
(layer_regularization_losses
)metrics
*layer_metrics
+non_trainable_variables
regularization_losses
trainable_variables
	variables
r__call__
q_default_save_signature
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
з

!kernel
"recurrent_kernel
#bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
*z&call_and_return_all_conditional_losses
{__call__"ђ
_tf_keras_layerТ{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_7", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
є

0layers
1layer_regularization_losses
2metrics
3layer_metrics
4non_trainable_variables
regularization_losses
trainable_variables
	variables

5states
t__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
з

$kernel
%recurrent_kernel
&bias
6regularization_losses
7trainable_variables
8	variables
9	keras_api
*|&call_and_return_all_conditional_losses
}__call__"ђ
_tf_keras_layerТ{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_8", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
є

:layers
;layer_regularization_losses
<metrics
=layer_metrics
>non_trainable_variables
regularization_losses
trainable_variables
	variables

?states
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠

@layers
Alayer_regularization_losses
Bmetrics
Clayer_metrics
Dnon_trainable_variables
regularization_losses
trainable_variables
	variables
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
7:5	 2%simple_rnn_7/simple_rnn_cell_7/kernel
A:?  2/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel
1:/ 2#simple_rnn_7/simple_rnn_cell_7/bias
7:5  2%simple_rnn_8/simple_rnn_cell_8/kernel
A:?  2/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel
1:/ 2#simple_rnn_8/simple_rnn_cell_8/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
≠

Hlayers
Ilayer_regularization_losses
Jmetrics
Klayer_metrics
Lnon_trainable_variables
,regularization_losses
-trainable_variables
.	variables
{__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
'

0"
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
≠

Mlayers
Nlayer_regularization_losses
Ometrics
Player_metrics
Qnon_trainable_variables
6regularization_losses
7trainable_variables
8	variables
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
ї
	Rtotal
	Scount
T	variables
U	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Ж
	Vtotal
	Wcount
X
_fn_kwargs
Y	variables
Z	keras_api"њ
_tf_keras_metric§{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
Ч
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api"–
_tf_keras_metricµ{"class_name": "MeanMetricWrapper", "name": "categorical_accuracy", "dtype": "float32", "config": {"name": "categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
.
R0
S1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
V0
W1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
&:$ 2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
<::	 2,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/m
F:D  26Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/m
6:4 2*Adam/simple_rnn_7/simple_rnn_cell_7/bias/m
<::  2,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/m
F:D  26Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/m
6:4 2*Adam/simple_rnn_8/simple_rnn_cell_8/bias/m
&:$ 2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
<::	 2,Adam/simple_rnn_7/simple_rnn_cell_7/kernel/v
F:D  26Adam/simple_rnn_7/simple_rnn_cell_7/recurrent_kernel/v
6:4 2*Adam/simple_rnn_7/simple_rnn_cell_7/bias/v
<::  2,Adam/simple_rnn_8/simple_rnn_cell_8/kernel/v
F:D  26Adam/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/v
6:4 2*Adam/simple_rnn_8/simple_rnn_cell_8/bias/v
о2л
H__inference_sequential_16_layer_call_and_return_conditional_losses_56476
H__inference_sequential_16_layer_call_and_return_conditional_losses_56845
H__inference_sequential_16_layer_call_and_return_conditional_losses_57071
H__inference_sequential_16_layer_call_and_return_conditional_losses_56499ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
д2б
 __inference__wrapped_model_54915Љ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *,Ґ)
'К$
input_14€€€€€€€€€А	
В2€
-__inference_sequential_16_layer_call_fn_56544
-__inference_sequential_16_layer_call_fn_57113
-__inference_sequential_16_layer_call_fn_56588
-__inference_sequential_16_layer_call_fn_57092ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€2ь
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57225
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57583
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57471
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57337’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
У2Р
,__inference_simple_rnn_7_layer_call_fn_57348
,__inference_simple_rnn_7_layer_call_fn_57605
,__inference_simple_rnn_7_layer_call_fn_57359
,__inference_simple_rnn_7_layer_call_fn_57594’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€2ь
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57717
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57829
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57963
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_58075’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
У2Р
,__inference_simple_rnn_8_layer_call_fn_58097
,__inference_simple_rnn_8_layer_call_fn_57840
,__inference_simple_rnn_8_layer_call_fn_57851
,__inference_simple_rnn_8_layer_call_fn_58086’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
н2к
C__inference_dense_11_layer_call_and_return_conditional_losses_58107Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_11_layer_call_fn_58116Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
#__inference_signature_wrapper_56619input_14"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
а2Ё
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_58150
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_58133Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
1__inference_simple_rnn_cell_7_layer_call_fn_58164
1__inference_simple_rnn_cell_7_layer_call_fn_58178Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_58195
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_58212Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
1__inference_simple_rnn_cell_8_layer_call_fn_58226
1__inference_simple_rnn_cell_8_layer_call_fn_58240Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 Ы
 __inference__wrapped_model_54915w!#"$&%6Ґ3
,Ґ)
'К$
input_14€€€€€€€€€А	
™ "3™0
.
dense_11"К
dense_11€€€€€€€€€£
C__inference_dense_11_layer_call_and_return_conditional_losses_58107\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_11_layer_call_fn_58116O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€љ
H__inference_sequential_16_layer_call_and_return_conditional_losses_56476q!#"$&%>Ґ;
4Ґ1
'К$
input_14€€€€€€€€€А	
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
H__inference_sequential_16_layer_call_and_return_conditional_losses_56499q!#"$&%>Ґ;
4Ґ1
'К$
input_14€€€€€€€€€А	
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ї
H__inference_sequential_16_layer_call_and_return_conditional_losses_56845o!#"$&%<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€А	
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ї
H__inference_sequential_16_layer_call_and_return_conditional_losses_57071o!#"$&%<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€А	
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Х
-__inference_sequential_16_layer_call_fn_56544d!#"$&%>Ґ;
4Ґ1
'К$
input_14€€€€€€€€€А	
p

 
™ "К€€€€€€€€€Х
-__inference_sequential_16_layer_call_fn_56588d!#"$&%>Ґ;
4Ґ1
'К$
input_14€€€€€€€€€А	
p 

 
™ "К€€€€€€€€€У
-__inference_sequential_16_layer_call_fn_57092b!#"$&%<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€А	
p

 
™ "К€€€€€€€€€У
-__inference_sequential_16_layer_call_fn_57113b!#"$&%<Ґ9
2Ґ/
%К"
inputs€€€€€€€€€А	
p 

 
™ "К€€€€€€€€€Ђ
#__inference_signature_wrapper_56619Г!#"$&%BҐ?
Ґ 
8™5
3
input_14'К$
input_14€€€€€€€€€А	"3™0
.
dense_11"К
dense_11€€€€€€€€€÷
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57225К!#"OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€	

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ ÷
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57337К!#"OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€	

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ Њ
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57471s!#"@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А	

 
p

 
™ "*Ґ'
 К
0€€€€€€€€€А 
Ъ Њ
G__inference_simple_rnn_7_layer_call_and_return_conditional_losses_57583s!#"@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А	

 
p 

 
™ "*Ґ'
 К
0€€€€€€€€€А 
Ъ ≠
,__inference_simple_rnn_7_layer_call_fn_57348}!#"OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€	

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€ ≠
,__inference_simple_rnn_7_layer_call_fn_57359}!#"OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€	

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€ Ц
,__inference_simple_rnn_7_layer_call_fn_57594f!#"@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А	

 
p

 
™ "К€€€€€€€€€А Ц
,__inference_simple_rnn_7_layer_call_fn_57605f!#"@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А	

 
p 

 
™ "К€€€€€€€€€А »
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57717}$&%OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ »
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57829}$&%OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ є
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_57963n$&%@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А 

 
p

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ є
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_58075n$&%@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А 

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ †
,__inference_simple_rnn_8_layer_call_fn_57840p$&%OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p

 
™ "К€€€€€€€€€ †
,__inference_simple_rnn_8_layer_call_fn_57851p$&%OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ "К€€€€€€€€€ С
,__inference_simple_rnn_8_layer_call_fn_58086a$&%@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А 

 
p

 
™ "К€€€€€€€€€ С
,__inference_simple_rnn_8_layer_call_fn_58097a$&%@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А 

 
p 

 
™ "К€€€€€€€€€ И
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_58133Ј!#"\ҐY
RҐO
 К
inputs€€€€€€€€€	
'Ґ$
"К
states/0€€€€€€€€€ 
p
™ "RҐO
HҐE
К
0/0€€€€€€€€€ 
$Ъ!
К
0/1/0€€€€€€€€€ 
Ъ И
L__inference_simple_rnn_cell_7_layer_call_and_return_conditional_losses_58150Ј!#"\ҐY
RҐO
 К
inputs€€€€€€€€€	
'Ґ$
"К
states/0€€€€€€€€€ 
p 
™ "RҐO
HҐE
К
0/0€€€€€€€€€ 
$Ъ!
К
0/1/0€€€€€€€€€ 
Ъ я
1__inference_simple_rnn_cell_7_layer_call_fn_58164©!#"\ҐY
RҐO
 К
inputs€€€€€€€€€	
'Ґ$
"К
states/0€€€€€€€€€ 
p
™ "DҐA
К
0€€€€€€€€€ 
"Ъ
К
1/0€€€€€€€€€ я
1__inference_simple_rnn_cell_7_layer_call_fn_58178©!#"\ҐY
RҐO
 К
inputs€€€€€€€€€	
'Ґ$
"К
states/0€€€€€€€€€ 
p 
™ "DҐA
К
0€€€€€€€€€ 
"Ъ
К
1/0€€€€€€€€€ И
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_58195Ј$&%\ҐY
RҐO
 К
inputs€€€€€€€€€ 
'Ґ$
"К
states/0€€€€€€€€€ 
p
™ "RҐO
HҐE
К
0/0€€€€€€€€€ 
$Ъ!
К
0/1/0€€€€€€€€€ 
Ъ И
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_58212Ј$&%\ҐY
RҐO
 К
inputs€€€€€€€€€ 
'Ґ$
"К
states/0€€€€€€€€€ 
p 
™ "RҐO
HҐE
К
0/0€€€€€€€€€ 
$Ъ!
К
0/1/0€€€€€€€€€ 
Ъ я
1__inference_simple_rnn_cell_8_layer_call_fn_58226©$&%\ҐY
RҐO
 К
inputs€€€€€€€€€ 
'Ґ$
"К
states/0€€€€€€€€€ 
p
™ "DҐA
К
0€€€€€€€€€ 
"Ъ
К
1/0€€€€€€€€€ я
1__inference_simple_rnn_cell_8_layer_call_fn_58240©$&%\ҐY
RҐO
 К
inputs€€€€€€€€€ 
'Ґ$
"К
states/0€€€€€€€€€ 
p 
™ "DҐA
К
0€€€€€€€€€ 
"Ъ
К
1/0€€€€€€€€€ 