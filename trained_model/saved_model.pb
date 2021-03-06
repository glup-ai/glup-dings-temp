??/
??
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
?
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
?
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??#
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
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
?
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
?
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
?
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
?
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
?
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*$
shared_nameblock2_conv1/kernel
?
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@?*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:?*
dtype0
?
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock2_conv2/kernel
?
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:?*
dtype0
?
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock3_conv1/kernel
?
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:?*
dtype0
?
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock3_conv2/kernel
?
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:?*
dtype0
?
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock3_conv3/kernel
?
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:?*
dtype0
?
block3_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock3_conv4/kernel
?
'block3_conv4/kernel/Read/ReadVariableOpReadVariableOpblock3_conv4/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock3_conv4/bias
t
%block3_conv4/bias/Read/ReadVariableOpReadVariableOpblock3_conv4/bias*
_output_shapes	
:?*
dtype0
?
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock4_conv1/kernel
?
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:?*
dtype0
?
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock4_conv2/kernel
?
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:?*
dtype0
?
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock4_conv3/kernel
?
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:?*
dtype0
?
block4_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock4_conv4/kernel
?
'block4_conv4/kernel/Read/ReadVariableOpReadVariableOpblock4_conv4/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock4_conv4/bias
t
%block4_conv4/bias/Read/ReadVariableOpReadVariableOpblock4_conv4/bias*
_output_shapes	
:?*
dtype0
?
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock5_conv1/kernel
?
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:?*
dtype0
?
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock5_conv2/kernel
?
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:?*
dtype0
?
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock5_conv3/kernel
?
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:?*
dtype0
?
block5_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock5_conv4/kernel
?
'block5_conv4/kernel/Read/ReadVariableOpReadVariableOpblock5_conv4/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv4/bias
t
%block5_conv4/bias/Read/ReadVariableOpReadVariableOpblock5_conv4/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
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
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
т
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
 
 
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
iter

beta_1

 beta_2
	!decay
"learning_ratem?m?Cm?Dm?v?v?Cv?Dv?
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31
C32
D33
34
35
 

C0
D1
2
3
?
Enon_trainable_variables
	variables
Fmetrics
regularization_losses

Glayers
Hlayer_regularization_losses
	trainable_variables
Ilayer_metrics
 
 
?
Jlayer-0
Klayer_with_weights-0
Klayer-1
Llayer_with_weights-1
Llayer-2
Mlayer-3
Nlayer_with_weights-2
Nlayer-4
Olayer_with_weights-3
Olayer-5
Player-6
Qlayer_with_weights-4
Qlayer-7
Rlayer_with_weights-5
Rlayer-8
Slayer_with_weights-6
Slayer-9
Tlayer_with_weights-7
Tlayer-10
Ulayer-11
Vlayer_with_weights-8
Vlayer-12
Wlayer_with_weights-9
Wlayer-13
Xlayer_with_weights-10
Xlayer-14
Ylayer_with_weights-11
Ylayer-15
Zlayer-16
[layer_with_weights-12
[layer-17
\layer_with_weights-13
\layer-18
]layer_with_weights-14
]layer-19
^layer_with_weights-15
^layer-20
_layer-21
`	variables
aregularization_losses
btrainable_variables
c	keras_api
R
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
h

Ckernel
Dbias
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31
C32
D33
 

C0
D1
?
lnon_trainable_variables
	variables
mmetrics
regularization_losses

nlayers
olayer_regularization_losses
trainable_variables
player_metrics
 
 
 
?
qnon_trainable_variables
rmetrics
	variables
regularization_losses

slayers
tlayer_regularization_losses
trainable_variables
ulayer_metrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
vnon_trainable_variables
wmetrics
	variables
regularization_losses

xlayers
ylayer_regularization_losses
trainable_variables
zlayer_metrics
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
OM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv4/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv4/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv3/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv3/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv4/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv4/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv2/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv2/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv3/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv3/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv4/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv4/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31

{0
|1
#
0
1
2
3
4
 
 
 
i

#kernel
$bias
}	variables
~regularization_losses
trainable_variables
?	keras_api
l

%kernel
&bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

'kernel
(bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

)kernel
*bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

+kernel
,bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

-kernel
.bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

/kernel
0bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

1kernel
2bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

3kernel
4bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

5kernel
6bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

7kernel
8bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

9kernel
:bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

;kernel
<bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

=kernel
>bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

?kernel
@bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

Akernel
Bbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31
 
 
?
?non_trainable_variables
`	variables
?metrics
aregularization_losses
?layers
 ?layer_regularization_losses
btrainable_variables
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
d	variables
eregularization_losses
?layers
 ?layer_regularization_losses
ftrainable_variables
?layer_metrics

C0
D1
 

C0
D1
?
?non_trainable_variables
?metrics
h	variables
iregularization_losses
?layers
 ?layer_regularization_losses
jtrainable_variables
?layer_metrics
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31
 

0
1
2
3
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api

#0
$1
 
 
?
?non_trainable_variables
?metrics
}	variables
~regularization_losses
?layers
 ?layer_regularization_losses
trainable_variables
?layer_metrics

%0
&1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

'0
(1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

)0
*1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

+0
,1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

-0
.1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

/0
01
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

10
21
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

30
41
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

50
61
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

70
81
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

90
:1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

;0
<1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

=0
>1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

?0
@1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics

A0
B1
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
 
 
 
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31
 
?
J0
K1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables

#0
$1
 
 
 
 

%0
&1
 
 
 
 
 
 
 
 
 

'0
(1
 
 
 
 

)0
*1
 
 
 
 
 
 
 
 
 

+0
,1
 
 
 
 

-0
.1
 
 
 
 

/0
01
 
 
 
 

10
21
 
 
 
 
 
 
 
 
 

30
41
 
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

70
81
 
 
 
 

90
:1
 
 
 
 
 
 
 
 
 

;0
<1
 
 
 
 

=0
>1
 
 
 
 

?0
@1
 
 
 
 

A0
B1
 
 
 
 
 
 
 
 
 
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_3Placeholder*/
_output_shapes
:?????????}^*
dtype0*$
shape:?????????}^
?
serving_default_input_4Placeholder*/
_output_shapes
:?????????}^*
dtype0*$
shape:?????????}^
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3serving_default_input_4block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_48489
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block3_conv4/kernel/Read/ReadVariableOp%block3_conv4/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block4_conv4/kernel/Read/ReadVariableOp%block4_conv4/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp'block5_conv4/kernel/Read/ReadVariableOp%block5_conv4/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*B
Tin;
927	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_50485
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasdense_1/kerneldense_1/biastotalcounttotal_1count_1Adam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*A
Tin:
826*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_50654ϵ!
?
?
,__inference_block5_conv1_layer_call_fn_50242

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_461772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block5_conv2_layer_call_fn_50262

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_461942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
? 
!__inference__traced_restore_50654
file_prefix1
assignvariableop_dense_2_kernel:-
assignvariableop_1_dense_2_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: @
&assignvariableop_7_block1_conv1_kernel:@2
$assignvariableop_8_block1_conv1_bias:@@
&assignvariableop_9_block1_conv2_kernel:@@3
%assignvariableop_10_block1_conv2_bias:@B
'assignvariableop_11_block2_conv1_kernel:@?4
%assignvariableop_12_block2_conv1_bias:	?C
'assignvariableop_13_block2_conv2_kernel:??4
%assignvariableop_14_block2_conv2_bias:	?C
'assignvariableop_15_block3_conv1_kernel:??4
%assignvariableop_16_block3_conv1_bias:	?C
'assignvariableop_17_block3_conv2_kernel:??4
%assignvariableop_18_block3_conv2_bias:	?C
'assignvariableop_19_block3_conv3_kernel:??4
%assignvariableop_20_block3_conv3_bias:	?C
'assignvariableop_21_block3_conv4_kernel:??4
%assignvariableop_22_block3_conv4_bias:	?C
'assignvariableop_23_block4_conv1_kernel:??4
%assignvariableop_24_block4_conv1_bias:	?C
'assignvariableop_25_block4_conv2_kernel:??4
%assignvariableop_26_block4_conv2_bias:	?C
'assignvariableop_27_block4_conv3_kernel:??4
%assignvariableop_28_block4_conv3_bias:	?C
'assignvariableop_29_block4_conv4_kernel:??4
%assignvariableop_30_block4_conv4_bias:	?C
'assignvariableop_31_block5_conv1_kernel:??4
%assignvariableop_32_block5_conv1_bias:	?C
'assignvariableop_33_block5_conv2_kernel:??4
%assignvariableop_34_block5_conv2_bias:	?C
'assignvariableop_35_block5_conv3_kernel:??4
%assignvariableop_36_block5_conv3_bias:	?C
'assignvariableop_37_block5_conv4_kernel:??4
%assignvariableop_38_block5_conv4_bias:	?5
"assignvariableop_39_dense_1_kernel:	?@.
 assignvariableop_40_dense_1_bias:@#
assignvariableop_41_total: #
assignvariableop_42_count: %
assignvariableop_43_total_1: %
assignvariableop_44_count_1: ;
)assignvariableop_45_adam_dense_2_kernel_m:5
'assignvariableop_46_adam_dense_2_bias_m:<
)assignvariableop_47_adam_dense_1_kernel_m:	?@5
'assignvariableop_48_adam_dense_1_bias_m:@;
)assignvariableop_49_adam_dense_2_kernel_v:5
'assignvariableop_50_adam_dense_2_bias_v:<
)assignvariableop_51_adam_dense_1_kernel_v:	?@5
'assignvariableop_52_adam_dense_1_bias_v:@
identity_54??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*?
value?B?6B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::*D
dtypes:
826	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp&assignvariableop_7_block1_conv1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_block1_conv1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp&assignvariableop_9_block1_conv2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_block1_conv2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp'assignvariableop_11_block2_conv1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_block2_conv1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_block2_conv2_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_block2_conv2_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_block3_conv1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_block3_conv1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_block3_conv2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_block3_conv2_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp'assignvariableop_19_block3_conv3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_block3_conv3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_block3_conv4_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_block3_conv4_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp'assignvariableop_23_block4_conv1_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_block4_conv1_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp'assignvariableop_25_block4_conv2_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp%assignvariableop_26_block4_conv2_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp'assignvariableop_27_block4_conv3_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp%assignvariableop_28_block4_conv3_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_block4_conv4_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_block4_conv4_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_block5_conv1_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp%assignvariableop_32_block5_conv1_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_block5_conv2_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp%assignvariableop_34_block5_conv2_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_block5_conv3_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp%assignvariableop_36_block5_conv3_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp'assignvariableop_37_block5_conv4_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp%assignvariableop_38_block5_conv4_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp"assignvariableop_39_dense_1_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp assignvariableop_40_dense_1_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_totalIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpassignvariableop_42_countIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_total_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_count_1Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_2_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_2_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_1_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_529
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_53Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_53?	
Identity_54IdentityIdentity_53:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_54"#
identity_54Identity_54:output:0*
_input_shapesn
l: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
,__inference_block5_conv4_layer_call_fn_50302

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_462282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?3
B__inference_model_2_layer_call_and_return_conditional_losses_48726
inputs_0
inputs_1S
9model_1_vgg19_block1_conv1_conv2d_readvariableop_resource:@H
:model_1_vgg19_block1_conv1_biasadd_readvariableop_resource:@S
9model_1_vgg19_block1_conv2_conv2d_readvariableop_resource:@@H
:model_1_vgg19_block1_conv2_biasadd_readvariableop_resource:@T
9model_1_vgg19_block2_conv1_conv2d_readvariableop_resource:@?I
:model_1_vgg19_block2_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block2_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block2_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv1_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv3_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv3_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv4_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv4_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv1_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv3_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv3_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv4_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv4_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv1_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv3_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv3_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv4_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv4_biasadd_readvariableop_resource:	?A
.model_1_dense_1_matmul_readvariableop_resource:	?@=
/model_1_dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?&model_1/dense_1/BiasAdd/ReadVariableOp?(model_1/dense_1/BiasAdd_1/ReadVariableOp?%model_1/dense_1/MatMul/ReadVariableOp?'model_1/dense_1/MatMul_1/ReadVariableOp?1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp?
0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype022
0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block1_conv1/Conv2DConv2Dinputs_08model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2#
!model_1/vgg19/block1_conv1/Conv2D?
1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block1_conv1/BiasAddBiasAdd*model_1/vgg19/block1_conv1/Conv2D:output:09model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2$
"model_1/vgg19/block1_conv1/BiasAdd?
model_1/vgg19/block1_conv1/ReluRelu+model_1/vgg19/block1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2!
model_1/vgg19/block1_conv1/Relu?
0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block1_conv2/Conv2DConv2D-model_1/vgg19/block1_conv1/Relu:activations:08model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2#
!model_1/vgg19/block1_conv2/Conv2D?
1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block1_conv2/BiasAddBiasAdd*model_1/vgg19/block1_conv2/Conv2D:output:09model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2$
"model_1/vgg19/block1_conv2/BiasAdd?
model_1/vgg19/block1_conv2/ReluRelu+model_1/vgg19/block1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2!
model_1/vgg19/block1_conv2/Relu?
!model_1/vgg19/block1_pool/MaxPoolMaxPool-model_1/vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block1_pool/MaxPool?
0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype022
0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block2_conv1/Conv2DConv2D*model_1/vgg19/block1_pool/MaxPool:output:08model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2#
!model_1/vgg19/block2_conv1/Conv2D?
1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block2_conv1/BiasAddBiasAdd*model_1/vgg19/block2_conv1/Conv2D:output:09model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2$
"model_1/vgg19/block2_conv1/BiasAdd?
model_1/vgg19/block2_conv1/ReluRelu+model_1/vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2!
model_1/vgg19/block2_conv1/Relu?
0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block2_conv2/Conv2DConv2D-model_1/vgg19/block2_conv1/Relu:activations:08model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2#
!model_1/vgg19/block2_conv2/Conv2D?
1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block2_conv2/BiasAddBiasAdd*model_1/vgg19/block2_conv2/Conv2D:output:09model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2$
"model_1/vgg19/block2_conv2/BiasAdd?
model_1/vgg19/block2_conv2/ReluRelu+model_1/vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2!
model_1/vgg19/block2_conv2/Relu?
!model_1/vgg19/block2_pool/MaxPoolMaxPool-model_1/vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block2_pool/MaxPool?
0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv1/Conv2DConv2D*model_1/vgg19/block2_pool/MaxPool:output:08model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv1/Conv2D?
1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv1/BiasAddBiasAdd*model_1/vgg19/block3_conv1/Conv2D:output:09model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv1/BiasAdd?
model_1/vgg19/block3_conv1/ReluRelu+model_1/vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv1/Relu?
0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv2/Conv2DConv2D-model_1/vgg19/block3_conv1/Relu:activations:08model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv2/Conv2D?
1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv2/BiasAddBiasAdd*model_1/vgg19/block3_conv2/Conv2D:output:09model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv2/BiasAdd?
model_1/vgg19/block3_conv2/ReluRelu+model_1/vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv2/Relu?
0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv3/Conv2DConv2D-model_1/vgg19/block3_conv2/Relu:activations:08model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv3/Conv2D?
1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv3/BiasAddBiasAdd*model_1/vgg19/block3_conv3/Conv2D:output:09model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv3/BiasAdd?
model_1/vgg19/block3_conv3/ReluRelu+model_1/vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv3/Relu?
0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv4/Conv2DConv2D-model_1/vgg19/block3_conv3/Relu:activations:08model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv4/Conv2D?
1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv4/BiasAddBiasAdd*model_1/vgg19/block3_conv4/Conv2D:output:09model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv4/BiasAdd?
model_1/vgg19/block3_conv4/ReluRelu+model_1/vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv4/Relu?
!model_1/vgg19/block3_pool/MaxPoolMaxPool-model_1/vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block3_pool/MaxPool?
0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv1/Conv2DConv2D*model_1/vgg19/block3_pool/MaxPool:output:08model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv1/Conv2D?
1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv1/BiasAddBiasAdd*model_1/vgg19/block4_conv1/Conv2D:output:09model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv1/BiasAdd?
model_1/vgg19/block4_conv1/ReluRelu+model_1/vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv1/Relu?
0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv2/Conv2DConv2D-model_1/vgg19/block4_conv1/Relu:activations:08model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv2/Conv2D?
1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv2/BiasAddBiasAdd*model_1/vgg19/block4_conv2/Conv2D:output:09model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv2/BiasAdd?
model_1/vgg19/block4_conv2/ReluRelu+model_1/vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv2/Relu?
0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv3/Conv2DConv2D-model_1/vgg19/block4_conv2/Relu:activations:08model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv3/Conv2D?
1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv3/BiasAddBiasAdd*model_1/vgg19/block4_conv3/Conv2D:output:09model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv3/BiasAdd?
model_1/vgg19/block4_conv3/ReluRelu+model_1/vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv3/Relu?
0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv4/Conv2DConv2D-model_1/vgg19/block4_conv3/Relu:activations:08model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv4/Conv2D?
1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv4/BiasAddBiasAdd*model_1/vgg19/block4_conv4/Conv2D:output:09model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv4/BiasAdd?
model_1/vgg19/block4_conv4/ReluRelu+model_1/vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv4/Relu?
!model_1/vgg19/block4_pool/MaxPoolMaxPool-model_1/vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block4_pool/MaxPool?
0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv1/Conv2DConv2D*model_1/vgg19/block4_pool/MaxPool:output:08model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv1/Conv2D?
1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv1/BiasAddBiasAdd*model_1/vgg19/block5_conv1/Conv2D:output:09model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv1/BiasAdd?
model_1/vgg19/block5_conv1/ReluRelu+model_1/vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv1/Relu?
0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv2/Conv2DConv2D-model_1/vgg19/block5_conv1/Relu:activations:08model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv2/Conv2D?
1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv2/BiasAddBiasAdd*model_1/vgg19/block5_conv2/Conv2D:output:09model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv2/BiasAdd?
model_1/vgg19/block5_conv2/ReluRelu+model_1/vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv2/Relu?
0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv3/Conv2DConv2D-model_1/vgg19/block5_conv2/Relu:activations:08model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv3/Conv2D?
1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv3/BiasAddBiasAdd*model_1/vgg19/block5_conv3/Conv2D:output:09model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv3/BiasAdd?
model_1/vgg19/block5_conv3/ReluRelu+model_1/vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv3/Relu?
0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv4/Conv2DConv2D-model_1/vgg19/block5_conv3/Relu:activations:08model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv4/Conv2D?
1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv4/BiasAddBiasAdd*model_1/vgg19/block5_conv4/Conv2D:output:09model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv4/BiasAdd?
model_1/vgg19/block5_conv4/ReluRelu+model_1/vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv4/Relu?
!model_1/vgg19/block5_pool/MaxPoolMaxPool-model_1/vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block5_pool/MaxPool?
9model_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2;
9model_1/global_average_pooling2d_1/Mean/reduction_indices?
'model_1/global_average_pooling2d_1/MeanMean*model_1/vgg19/block5_pool/MaxPool:output:0Bmodel_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2)
'model_1/global_average_pooling2d_1/Mean?
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02'
%model_1/dense_1/MatMul/ReadVariableOp?
model_1/dense_1/MatMulMatMul0model_1/global_average_pooling2d_1/Mean:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/MatMul?
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOp?
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/BiasAdd?
2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype024
2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block1_conv1/Conv2D_1Conv2Dinputs_1:model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2%
#model_1/vgg19/block1_conv1/Conv2D_1?
3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block1_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block1_conv1/Conv2D_1:output:0;model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2&
$model_1/vgg19/block1_conv1/BiasAdd_1?
!model_1/vgg19/block1_conv1/Relu_1Relu-model_1/vgg19/block1_conv1/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????}^@2#
!model_1/vgg19/block1_conv1/Relu_1?
2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block1_conv2/Conv2D_1Conv2D/model_1/vgg19/block1_conv1/Relu_1:activations:0:model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2%
#model_1/vgg19/block1_conv2/Conv2D_1?
3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block1_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block1_conv2/Conv2D_1:output:0;model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2&
$model_1/vgg19/block1_conv2/BiasAdd_1?
!model_1/vgg19/block1_conv2/Relu_1Relu-model_1/vgg19/block1_conv2/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????}^@2#
!model_1/vgg19/block1_conv2/Relu_1?
#model_1/vgg19/block1_pool/MaxPool_1MaxPool/model_1/vgg19/block1_conv2/Relu_1:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block1_pool/MaxPool_1?
2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block2_conv1/Conv2D_1Conv2D,model_1/vgg19/block1_pool/MaxPool_1:output:0:model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2%
#model_1/vgg19/block2_conv1/Conv2D_1?
3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block2_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block2_conv1/Conv2D_1:output:0;model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2&
$model_1/vgg19/block2_conv1/BiasAdd_1?
!model_1/vgg19/block2_conv1/Relu_1Relu-model_1/vgg19/block2_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????>/?2#
!model_1/vgg19/block2_conv1/Relu_1?
2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block2_conv2/Conv2D_1Conv2D/model_1/vgg19/block2_conv1/Relu_1:activations:0:model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2%
#model_1/vgg19/block2_conv2/Conv2D_1?
3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block2_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block2_conv2/Conv2D_1:output:0;model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2&
$model_1/vgg19/block2_conv2/BiasAdd_1?
!model_1/vgg19/block2_conv2/Relu_1Relu-model_1/vgg19/block2_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????>/?2#
!model_1/vgg19/block2_conv2/Relu_1?
#model_1/vgg19/block2_pool/MaxPool_1MaxPool/model_1/vgg19/block2_conv2/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block2_pool/MaxPool_1?
2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv1/Conv2D_1Conv2D,model_1/vgg19/block2_pool/MaxPool_1:output:0:model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv1/Conv2D_1?
3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv1/Conv2D_1:output:0;model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv1/BiasAdd_1?
!model_1/vgg19/block3_conv1/Relu_1Relu-model_1/vgg19/block3_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv1/Relu_1?
2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv2/Conv2D_1Conv2D/model_1/vgg19/block3_conv1/Relu_1:activations:0:model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv2/Conv2D_1?
3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv2/Conv2D_1:output:0;model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv2/BiasAdd_1?
!model_1/vgg19/block3_conv2/Relu_1Relu-model_1/vgg19/block3_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv2/Relu_1?
2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv3/Conv2D_1Conv2D/model_1/vgg19/block3_conv2/Relu_1:activations:0:model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv3/Conv2D_1?
3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv3/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv3/Conv2D_1:output:0;model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv3/BiasAdd_1?
!model_1/vgg19/block3_conv3/Relu_1Relu-model_1/vgg19/block3_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv3/Relu_1?
2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv4/Conv2D_1Conv2D/model_1/vgg19/block3_conv3/Relu_1:activations:0:model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv4/Conv2D_1?
3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv4/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv4/Conv2D_1:output:0;model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv4/BiasAdd_1?
!model_1/vgg19/block3_conv4/Relu_1Relu-model_1/vgg19/block3_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv4/Relu_1?
#model_1/vgg19/block3_pool/MaxPool_1MaxPool/model_1/vgg19/block3_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block3_pool/MaxPool_1?
2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv1/Conv2D_1Conv2D,model_1/vgg19/block3_pool/MaxPool_1:output:0:model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv1/Conv2D_1?
3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv1/Conv2D_1:output:0;model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv1/BiasAdd_1?
!model_1/vgg19/block4_conv1/Relu_1Relu-model_1/vgg19/block4_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv1/Relu_1?
2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv2/Conv2D_1Conv2D/model_1/vgg19/block4_conv1/Relu_1:activations:0:model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv2/Conv2D_1?
3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv2/Conv2D_1:output:0;model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv2/BiasAdd_1?
!model_1/vgg19/block4_conv2/Relu_1Relu-model_1/vgg19/block4_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv2/Relu_1?
2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv3/Conv2D_1Conv2D/model_1/vgg19/block4_conv2/Relu_1:activations:0:model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv3/Conv2D_1?
3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv3/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv3/Conv2D_1:output:0;model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv3/BiasAdd_1?
!model_1/vgg19/block4_conv3/Relu_1Relu-model_1/vgg19/block4_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv3/Relu_1?
2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv4/Conv2D_1Conv2D/model_1/vgg19/block4_conv3/Relu_1:activations:0:model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv4/Conv2D_1?
3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv4/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv4/Conv2D_1:output:0;model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv4/BiasAdd_1?
!model_1/vgg19/block4_conv4/Relu_1Relu-model_1/vgg19/block4_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv4/Relu_1?
#model_1/vgg19/block4_pool/MaxPool_1MaxPool/model_1/vgg19/block4_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block4_pool/MaxPool_1?
2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv1/Conv2D_1Conv2D,model_1/vgg19/block4_pool/MaxPool_1:output:0:model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv1/Conv2D_1?
3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv1/Conv2D_1:output:0;model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv1/BiasAdd_1?
!model_1/vgg19/block5_conv1/Relu_1Relu-model_1/vgg19/block5_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv1/Relu_1?
2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv2/Conv2D_1Conv2D/model_1/vgg19/block5_conv1/Relu_1:activations:0:model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv2/Conv2D_1?
3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv2/Conv2D_1:output:0;model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv2/BiasAdd_1?
!model_1/vgg19/block5_conv2/Relu_1Relu-model_1/vgg19/block5_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv2/Relu_1?
2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv3/Conv2D_1Conv2D/model_1/vgg19/block5_conv2/Relu_1:activations:0:model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv3/Conv2D_1?
3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv3/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv3/Conv2D_1:output:0;model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv3/BiasAdd_1?
!model_1/vgg19/block5_conv3/Relu_1Relu-model_1/vgg19/block5_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv3/Relu_1?
2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv4/Conv2D_1Conv2D/model_1/vgg19/block5_conv3/Relu_1:activations:0:model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv4/Conv2D_1?
3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv4/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv4/Conv2D_1:output:0;model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv4/BiasAdd_1?
!model_1/vgg19/block5_conv4/Relu_1Relu-model_1/vgg19/block5_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv4/Relu_1?
#model_1/vgg19/block5_pool/MaxPool_1MaxPool/model_1/vgg19/block5_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block5_pool/MaxPool_1?
;model_1/global_average_pooling2d_1/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2=
;model_1/global_average_pooling2d_1/Mean_1/reduction_indices?
)model_1/global_average_pooling2d_1/Mean_1Mean,model_1/vgg19/block5_pool/MaxPool_1:output:0Dmodel_1/global_average_pooling2d_1/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2+
)model_1/global_average_pooling2d_1/Mean_1?
'model_1/dense_1/MatMul_1/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02)
'model_1/dense_1/MatMul_1/ReadVariableOp?
model_1/dense_1/MatMul_1MatMul2model_1/global_average_pooling2d_1/Mean_1:output:0/model_1/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/MatMul_1?
(model_1/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_1/dense_1/BiasAdd_1/ReadVariableOp?
model_1/dense_1/BiasAdd_1BiasAdd"model_1/dense_1/MatMul_1:product:00model_1/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/BiasAdd_1?

lambda/subSub model_1/dense_1/BiasAdd:output:0"model_1/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@2

lambda/subj
lambda/SquareSquarelambda/sub:z:0*
T0*'
_output_shapes
:?????????@2
lambda/Square~
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
lambda/Sum/reduction_indices?

lambda/SumSumlambda/Square:y:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2

lambda/Sumi
lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
lambda/Maximum/y?
lambda/MaximumMaximumlambda/Sum:output:0lambda/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximuma
lambda/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda/Const?
lambda/Maximum_1Maximumlambda/Maximum:z:0lambda/Const:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximum_1j
lambda/SqrtSqrtlambda/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
lambda/Sqrt?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMullambda/Sqrt:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Sigmoid?
IdentityIdentitydense_2/Sigmoid:y:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/BiasAdd_1/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp(^model_1/dense_1/MatMul_1/ReadVariableOp2^model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2T
(model_1/dense_1/BiasAdd_1/ReadVariableOp(model_1/dense_1/BiasAdd_1/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2R
'model_1/dense_1/MatMul_1/ReadVariableOp'model_1/dense_1/MatMul_1/ReadVariableOp2f
1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp:Y U
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/1
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_49973

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block4_conv1_layer_call_and_return_conditional_losses_46108

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?

B__inference_model_1_layer_call_and_return_conditional_losses_47271

inputs%
vgg19_47199:@
vgg19_47201:@%
vgg19_47203:@@
vgg19_47205:@&
vgg19_47207:@?
vgg19_47209:	?'
vgg19_47211:??
vgg19_47213:	?'
vgg19_47215:??
vgg19_47217:	?'
vgg19_47219:??
vgg19_47221:	?'
vgg19_47223:??
vgg19_47225:	?'
vgg19_47227:??
vgg19_47229:	?'
vgg19_47231:??
vgg19_47233:	?'
vgg19_47235:??
vgg19_47237:	?'
vgg19_47239:??
vgg19_47241:	?'
vgg19_47243:??
vgg19_47245:	?'
vgg19_47247:??
vgg19_47249:	?'
vgg19_47251:??
vgg19_47253:	?'
vgg19_47255:??
vgg19_47257:	?'
vgg19_47259:??
vgg19_47261:	? 
dense_1_47265:	?@
dense_1_47267:@
identity??dense_1/StatefulPartitionedCall?vgg19/StatefulPartitionedCall?
vgg19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg19_47199vgg19_47201vgg19_47203vgg19_47205vgg19_47207vgg19_47209vgg19_47211vgg19_47213vgg19_47215vgg19_47217vgg19_47219vgg19_47221vgg19_47223vgg19_47225vgg19_47227vgg19_47229vgg19_47231vgg19_47233vgg19_47235vgg19_47237vgg19_47239vgg19_47241vgg19_47243vgg19_47245vgg19_47247vgg19_47249vgg19_47251vgg19_47253vgg19_47255vgg19_47257vgg19_47259vgg19_47261*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_466232
vgg19/StatefulPartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_469442,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_47265dense_1_47267*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_470332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
G__inference_block3_conv3_layer_call_and_return_conditional_losses_46073

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block1_conv1_layer_call_and_return_conditional_losses_45969

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????}^@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????}^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
G__inference_block5_conv4_layer_call_and_return_conditional_losses_46228

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_vgg19_layer_call_fn_46759
input_6!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_466232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_6
?
?
G__inference_block5_conv2_layer_call_and_return_conditional_losses_50253

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block4_conv4_layer_call_fn_50222

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_461592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block2_conv1_layer_call_and_return_conditional_losses_46004

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????>/?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>/@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>/@
 
_user_specified_nameinputs
??
?9
 __inference__wrapped_model_45891
input_3
input_4[
Amodel_2_model_1_vgg19_block1_conv1_conv2d_readvariableop_resource:@P
Bmodel_2_model_1_vgg19_block1_conv1_biasadd_readvariableop_resource:@[
Amodel_2_model_1_vgg19_block1_conv2_conv2d_readvariableop_resource:@@P
Bmodel_2_model_1_vgg19_block1_conv2_biasadd_readvariableop_resource:@\
Amodel_2_model_1_vgg19_block2_conv1_conv2d_readvariableop_resource:@?Q
Bmodel_2_model_1_vgg19_block2_conv1_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block2_conv2_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block2_conv2_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block3_conv1_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block3_conv1_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block3_conv2_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block3_conv2_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block3_conv3_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block3_conv3_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block3_conv4_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block3_conv4_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block4_conv1_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block4_conv1_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block4_conv2_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block4_conv2_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block4_conv3_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block4_conv3_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block4_conv4_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block4_conv4_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block5_conv1_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block5_conv1_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block5_conv2_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block5_conv2_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block5_conv3_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block5_conv3_biasadd_readvariableop_resource:	?]
Amodel_2_model_1_vgg19_block5_conv4_conv2d_readvariableop_resource:??Q
Bmodel_2_model_1_vgg19_block5_conv4_biasadd_readvariableop_resource:	?I
6model_2_model_1_dense_1_matmul_readvariableop_resource:	?@E
7model_2_model_1_dense_1_biasadd_readvariableop_resource:@@
.model_2_dense_2_matmul_readvariableop_resource:=
/model_2_dense_2_biasadd_readvariableop_resource:
identity??&model_2/dense_2/BiasAdd/ReadVariableOp?%model_2/dense_2/MatMul/ReadVariableOp?.model_2/model_1/dense_1/BiasAdd/ReadVariableOp?0model_2/model_1/dense_1/BiasAdd_1/ReadVariableOp?-model_2/model_1/dense_1/MatMul/ReadVariableOp?/model_2/model_1/dense_1/MatMul_1/ReadVariableOp?9model_2/model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp?9model_2/model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp?;model_2/model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp?8model_2/model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp?:model_2/model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp?
8model_2/model_1/vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8model_2/model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block1_conv1/Conv2DConv2Dinput_3@model_2/model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block1_conv1/Conv2D?
9model_2/model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9model_2/model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block1_conv1/BiasAddBiasAdd2model_2/model_1/vgg19/block1_conv1/Conv2D:output:0Amodel_2/model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2,
*model_2/model_1/vgg19/block1_conv1/BiasAdd?
'model_2/model_1/vgg19/block1_conv1/ReluRelu3model_2/model_1/vgg19/block1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2)
'model_2/model_1/vgg19/block1_conv1/Relu?
8model_2/model_1/vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02:
8model_2/model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block1_conv2/Conv2DConv2D5model_2/model_1/vgg19/block1_conv1/Relu:activations:0@model_2/model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block1_conv2/Conv2D?
9model_2/model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9model_2/model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block1_conv2/BiasAddBiasAdd2model_2/model_1/vgg19/block1_conv2/Conv2D:output:0Amodel_2/model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2,
*model_2/model_1/vgg19/block1_conv2/BiasAdd?
'model_2/model_1/vgg19/block1_conv2/ReluRelu3model_2/model_1/vgg19/block1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2)
'model_2/model_1/vgg19/block1_conv2/Relu?
)model_2/model_1/vgg19/block1_pool/MaxPoolMaxPool5model_2/model_1/vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2+
)model_2/model_1/vgg19/block1_pool/MaxPool?
8model_2/model_1/vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02:
8model_2/model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block2_conv1/Conv2DConv2D2model_2/model_1/vgg19/block1_pool/MaxPool:output:0@model_2/model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block2_conv1/Conv2D?
9model_2/model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block2_conv1/BiasAddBiasAdd2model_2/model_1/vgg19/block2_conv1/Conv2D:output:0Amodel_2/model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2,
*model_2/model_1/vgg19/block2_conv1/BiasAdd?
'model_2/model_1/vgg19/block2_conv1/ReluRelu3model_2/model_1/vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2)
'model_2/model_1/vgg19/block2_conv1/Relu?
8model_2/model_1/vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block2_conv2/Conv2DConv2D5model_2/model_1/vgg19/block2_conv1/Relu:activations:0@model_2/model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block2_conv2/Conv2D?
9model_2/model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block2_conv2/BiasAddBiasAdd2model_2/model_1/vgg19/block2_conv2/Conv2D:output:0Amodel_2/model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2,
*model_2/model_1/vgg19/block2_conv2/BiasAdd?
'model_2/model_1/vgg19/block2_conv2/ReluRelu3model_2/model_1/vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2)
'model_2/model_1/vgg19/block2_conv2/Relu?
)model_2/model_1/vgg19/block2_pool/MaxPoolMaxPool5model_2/model_1/vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)model_2/model_1/vgg19/block2_pool/MaxPool?
8model_2/model_1/vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block3_conv1/Conv2DConv2D2model_2/model_1/vgg19/block2_pool/MaxPool:output:0@model_2/model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block3_conv1/Conv2D?
9model_2/model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block3_conv1/BiasAddBiasAdd2model_2/model_1/vgg19/block3_conv1/Conv2D:output:0Amodel_2/model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block3_conv1/BiasAdd?
'model_2/model_1/vgg19/block3_conv1/ReluRelu3model_2/model_1/vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block3_conv1/Relu?
8model_2/model_1/vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block3_conv2/Conv2DConv2D5model_2/model_1/vgg19/block3_conv1/Relu:activations:0@model_2/model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block3_conv2/Conv2D?
9model_2/model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block3_conv2/BiasAddBiasAdd2model_2/model_1/vgg19/block3_conv2/Conv2D:output:0Amodel_2/model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block3_conv2/BiasAdd?
'model_2/model_1/vgg19/block3_conv2/ReluRelu3model_2/model_1/vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block3_conv2/Relu?
8model_2/model_1/vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block3_conv3/Conv2DConv2D5model_2/model_1/vgg19/block3_conv2/Relu:activations:0@model_2/model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block3_conv3/Conv2D?
9model_2/model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block3_conv3/BiasAddBiasAdd2model_2/model_1/vgg19/block3_conv3/Conv2D:output:0Amodel_2/model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block3_conv3/BiasAdd?
'model_2/model_1/vgg19/block3_conv3/ReluRelu3model_2/model_1/vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block3_conv3/Relu?
8model_2/model_1/vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block3_conv4/Conv2DConv2D5model_2/model_1/vgg19/block3_conv3/Relu:activations:0@model_2/model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block3_conv4/Conv2D?
9model_2/model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block3_conv4/BiasAddBiasAdd2model_2/model_1/vgg19/block3_conv4/Conv2D:output:0Amodel_2/model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block3_conv4/BiasAdd?
'model_2/model_1/vgg19/block3_conv4/ReluRelu3model_2/model_1/vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block3_conv4/Relu?
)model_2/model_1/vgg19/block3_pool/MaxPoolMaxPool5model_2/model_1/vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)model_2/model_1/vgg19/block3_pool/MaxPool?
8model_2/model_1/vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block4_conv1/Conv2DConv2D2model_2/model_1/vgg19/block3_pool/MaxPool:output:0@model_2/model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block4_conv1/Conv2D?
9model_2/model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block4_conv1/BiasAddBiasAdd2model_2/model_1/vgg19/block4_conv1/Conv2D:output:0Amodel_2/model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block4_conv1/BiasAdd?
'model_2/model_1/vgg19/block4_conv1/ReluRelu3model_2/model_1/vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block4_conv1/Relu?
8model_2/model_1/vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block4_conv2/Conv2DConv2D5model_2/model_1/vgg19/block4_conv1/Relu:activations:0@model_2/model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block4_conv2/Conv2D?
9model_2/model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block4_conv2/BiasAddBiasAdd2model_2/model_1/vgg19/block4_conv2/Conv2D:output:0Amodel_2/model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block4_conv2/BiasAdd?
'model_2/model_1/vgg19/block4_conv2/ReluRelu3model_2/model_1/vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block4_conv2/Relu?
8model_2/model_1/vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block4_conv3/Conv2DConv2D5model_2/model_1/vgg19/block4_conv2/Relu:activations:0@model_2/model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block4_conv3/Conv2D?
9model_2/model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block4_conv3/BiasAddBiasAdd2model_2/model_1/vgg19/block4_conv3/Conv2D:output:0Amodel_2/model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block4_conv3/BiasAdd?
'model_2/model_1/vgg19/block4_conv3/ReluRelu3model_2/model_1/vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block4_conv3/Relu?
8model_2/model_1/vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block4_conv4/Conv2DConv2D5model_2/model_1/vgg19/block4_conv3/Relu:activations:0@model_2/model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block4_conv4/Conv2D?
9model_2/model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block4_conv4/BiasAddBiasAdd2model_2/model_1/vgg19/block4_conv4/Conv2D:output:0Amodel_2/model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block4_conv4/BiasAdd?
'model_2/model_1/vgg19/block4_conv4/ReluRelu3model_2/model_1/vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block4_conv4/Relu?
)model_2/model_1/vgg19/block4_pool/MaxPoolMaxPool5model_2/model_1/vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)model_2/model_1/vgg19/block4_pool/MaxPool?
8model_2/model_1/vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block5_conv1/Conv2DConv2D2model_2/model_1/vgg19/block4_pool/MaxPool:output:0@model_2/model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block5_conv1/Conv2D?
9model_2/model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block5_conv1/BiasAddBiasAdd2model_2/model_1/vgg19/block5_conv1/Conv2D:output:0Amodel_2/model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block5_conv1/BiasAdd?
'model_2/model_1/vgg19/block5_conv1/ReluRelu3model_2/model_1/vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block5_conv1/Relu?
8model_2/model_1/vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block5_conv2/Conv2DConv2D5model_2/model_1/vgg19/block5_conv1/Relu:activations:0@model_2/model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block5_conv2/Conv2D?
9model_2/model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block5_conv2/BiasAddBiasAdd2model_2/model_1/vgg19/block5_conv2/Conv2D:output:0Amodel_2/model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block5_conv2/BiasAdd?
'model_2/model_1/vgg19/block5_conv2/ReluRelu3model_2/model_1/vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block5_conv2/Relu?
8model_2/model_1/vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block5_conv3/Conv2DConv2D5model_2/model_1/vgg19/block5_conv2/Relu:activations:0@model_2/model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block5_conv3/Conv2D?
9model_2/model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block5_conv3/BiasAddBiasAdd2model_2/model_1/vgg19/block5_conv3/Conv2D:output:0Amodel_2/model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block5_conv3/BiasAdd?
'model_2/model_1/vgg19/block5_conv3/ReluRelu3model_2/model_1/vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block5_conv3/Relu?
8model_2/model_1/vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8model_2/model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp?
)model_2/model_1/vgg19/block5_conv4/Conv2DConv2D5model_2/model_1/vgg19/block5_conv3/Relu:activations:0@model_2/model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)model_2/model_1/vgg19/block5_conv4/Conv2D?
9model_2/model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_2/model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp?
*model_2/model_1/vgg19/block5_conv4/BiasAddBiasAdd2model_2/model_1/vgg19/block5_conv4/Conv2D:output:0Amodel_2/model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*model_2/model_1/vgg19/block5_conv4/BiasAdd?
'model_2/model_1/vgg19/block5_conv4/ReluRelu3model_2/model_1/vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2)
'model_2/model_1/vgg19/block5_conv4/Relu?
)model_2/model_1/vgg19/block5_pool/MaxPoolMaxPool5model_2/model_1/vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)model_2/model_1/vgg19/block5_pool/MaxPool?
Amodel_2/model_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2C
Amodel_2/model_1/global_average_pooling2d_1/Mean/reduction_indices?
/model_2/model_1/global_average_pooling2d_1/MeanMean2model_2/model_1/vgg19/block5_pool/MaxPool:output:0Jmodel_2/model_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????21
/model_2/model_1/global_average_pooling2d_1/Mean?
-model_2/model_1/dense_1/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02/
-model_2/model_1/dense_1/MatMul/ReadVariableOp?
model_2/model_1/dense_1/MatMulMatMul8model_2/model_1/global_average_pooling2d_1/Mean:output:05model_2/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
model_2/model_1/dense_1/MatMul?
.model_2/model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.model_2/model_1/dense_1/BiasAdd/ReadVariableOp?
model_2/model_1/dense_1/BiasAddBiasAdd(model_2/model_1/dense_1/MatMul:product:06model_2/model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
model_2/model_1/dense_1/BiasAdd?
:model_2/model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02<
:model_2/model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block1_conv1/Conv2D_1Conv2Dinput_4Bmodel_2/model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block1_conv1/Conv2D_1?
;model_2/model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model_2/model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block1_conv1/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block1_conv1/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2.
,model_2/model_1/vgg19/block1_conv1/BiasAdd_1?
)model_2/model_1/vgg19/block1_conv1/Relu_1Relu5model_2/model_1/vgg19/block1_conv1/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????}^@2+
)model_2/model_1/vgg19/block1_conv1/Relu_1?
:model_2/model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02<
:model_2/model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block1_conv2/Conv2D_1Conv2D7model_2/model_1/vgg19/block1_conv1/Relu_1:activations:0Bmodel_2/model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block1_conv2/Conv2D_1?
;model_2/model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model_2/model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block1_conv2/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block1_conv2/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2.
,model_2/model_1/vgg19/block1_conv2/BiasAdd_1?
)model_2/model_1/vgg19/block1_conv2/Relu_1Relu5model_2/model_1/vgg19/block1_conv2/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????}^@2+
)model_2/model_1/vgg19/block1_conv2/Relu_1?
+model_2/model_1/vgg19/block1_pool/MaxPool_1MaxPool7model_2/model_1/vgg19/block1_conv2/Relu_1:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2-
+model_2/model_1/vgg19/block1_pool/MaxPool_1?
:model_2/model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02<
:model_2/model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block2_conv1/Conv2D_1Conv2D4model_2/model_1/vgg19/block1_pool/MaxPool_1:output:0Bmodel_2/model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block2_conv1/Conv2D_1?
;model_2/model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block2_conv1/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block2_conv1/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2.
,model_2/model_1/vgg19/block2_conv1/BiasAdd_1?
)model_2/model_1/vgg19/block2_conv1/Relu_1Relu5model_2/model_1/vgg19/block2_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????>/?2+
)model_2/model_1/vgg19/block2_conv1/Relu_1?
:model_2/model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block2_conv2/Conv2D_1Conv2D7model_2/model_1/vgg19/block2_conv1/Relu_1:activations:0Bmodel_2/model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block2_conv2/Conv2D_1?
;model_2/model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block2_conv2/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block2_conv2/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2.
,model_2/model_1/vgg19/block2_conv2/BiasAdd_1?
)model_2/model_1/vgg19/block2_conv2/Relu_1Relu5model_2/model_1/vgg19/block2_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????>/?2+
)model_2/model_1/vgg19/block2_conv2/Relu_1?
+model_2/model_1/vgg19/block2_pool/MaxPool_1MaxPool7model_2/model_1/vgg19/block2_conv2/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2-
+model_2/model_1/vgg19/block2_pool/MaxPool_1?
:model_2/model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block3_conv1/Conv2D_1Conv2D4model_2/model_1/vgg19/block2_pool/MaxPool_1:output:0Bmodel_2/model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block3_conv1/Conv2D_1?
;model_2/model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block3_conv1/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block3_conv1/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block3_conv1/BiasAdd_1?
)model_2/model_1/vgg19/block3_conv1/Relu_1Relu5model_2/model_1/vgg19/block3_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block3_conv1/Relu_1?
:model_2/model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block3_conv2/Conv2D_1Conv2D7model_2/model_1/vgg19/block3_conv1/Relu_1:activations:0Bmodel_2/model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block3_conv2/Conv2D_1?
;model_2/model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block3_conv2/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block3_conv2/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block3_conv2/BiasAdd_1?
)model_2/model_1/vgg19/block3_conv2/Relu_1Relu5model_2/model_1/vgg19/block3_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block3_conv2/Relu_1?
:model_2/model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block3_conv3/Conv2D_1Conv2D7model_2/model_1/vgg19/block3_conv2/Relu_1:activations:0Bmodel_2/model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block3_conv3/Conv2D_1?
;model_2/model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block3_conv3/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block3_conv3/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block3_conv3/BiasAdd_1?
)model_2/model_1/vgg19/block3_conv3/Relu_1Relu5model_2/model_1/vgg19/block3_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block3_conv3/Relu_1?
:model_2/model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block3_conv4/Conv2D_1Conv2D7model_2/model_1/vgg19/block3_conv3/Relu_1:activations:0Bmodel_2/model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block3_conv4/Conv2D_1?
;model_2/model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block3_conv4/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block3_conv4/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block3_conv4/BiasAdd_1?
)model_2/model_1/vgg19/block3_conv4/Relu_1Relu5model_2/model_1/vgg19/block3_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block3_conv4/Relu_1?
+model_2/model_1/vgg19/block3_pool/MaxPool_1MaxPool7model_2/model_1/vgg19/block3_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2-
+model_2/model_1/vgg19/block3_pool/MaxPool_1?
:model_2/model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block4_conv1/Conv2D_1Conv2D4model_2/model_1/vgg19/block3_pool/MaxPool_1:output:0Bmodel_2/model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block4_conv1/Conv2D_1?
;model_2/model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block4_conv1/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block4_conv1/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block4_conv1/BiasAdd_1?
)model_2/model_1/vgg19/block4_conv1/Relu_1Relu5model_2/model_1/vgg19/block4_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block4_conv1/Relu_1?
:model_2/model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block4_conv2/Conv2D_1Conv2D7model_2/model_1/vgg19/block4_conv1/Relu_1:activations:0Bmodel_2/model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block4_conv2/Conv2D_1?
;model_2/model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block4_conv2/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block4_conv2/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block4_conv2/BiasAdd_1?
)model_2/model_1/vgg19/block4_conv2/Relu_1Relu5model_2/model_1/vgg19/block4_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block4_conv2/Relu_1?
:model_2/model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block4_conv3/Conv2D_1Conv2D7model_2/model_1/vgg19/block4_conv2/Relu_1:activations:0Bmodel_2/model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block4_conv3/Conv2D_1?
;model_2/model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block4_conv3/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block4_conv3/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block4_conv3/BiasAdd_1?
)model_2/model_1/vgg19/block4_conv3/Relu_1Relu5model_2/model_1/vgg19/block4_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block4_conv3/Relu_1?
:model_2/model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block4_conv4/Conv2D_1Conv2D7model_2/model_1/vgg19/block4_conv3/Relu_1:activations:0Bmodel_2/model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block4_conv4/Conv2D_1?
;model_2/model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block4_conv4/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block4_conv4/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block4_conv4/BiasAdd_1?
)model_2/model_1/vgg19/block4_conv4/Relu_1Relu5model_2/model_1/vgg19/block4_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block4_conv4/Relu_1?
+model_2/model_1/vgg19/block4_pool/MaxPool_1MaxPool7model_2/model_1/vgg19/block4_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2-
+model_2/model_1/vgg19/block4_pool/MaxPool_1?
:model_2/model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block5_conv1/Conv2D_1Conv2D4model_2/model_1/vgg19/block4_pool/MaxPool_1:output:0Bmodel_2/model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block5_conv1/Conv2D_1?
;model_2/model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block5_conv1/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block5_conv1/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block5_conv1/BiasAdd_1?
)model_2/model_1/vgg19/block5_conv1/Relu_1Relu5model_2/model_1/vgg19/block5_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block5_conv1/Relu_1?
:model_2/model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block5_conv2/Conv2D_1Conv2D7model_2/model_1/vgg19/block5_conv1/Relu_1:activations:0Bmodel_2/model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block5_conv2/Conv2D_1?
;model_2/model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block5_conv2/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block5_conv2/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block5_conv2/BiasAdd_1?
)model_2/model_1/vgg19/block5_conv2/Relu_1Relu5model_2/model_1/vgg19/block5_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block5_conv2/Relu_1?
:model_2/model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block5_conv3/Conv2D_1Conv2D7model_2/model_1/vgg19/block5_conv2/Relu_1:activations:0Bmodel_2/model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block5_conv3/Conv2D_1?
;model_2/model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block5_conv3/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block5_conv3/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block5_conv3/BiasAdd_1?
)model_2/model_1/vgg19/block5_conv3/Relu_1Relu5model_2/model_1/vgg19/block5_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block5_conv3/Relu_1?
:model_2/model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOpReadVariableOpAmodel_2_model_1_vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02<
:model_2/model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp?
+model_2/model_1/vgg19/block5_conv4/Conv2D_1Conv2D7model_2/model_1/vgg19/block5_conv3/Relu_1:activations:0Bmodel_2/model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2-
+model_2/model_1/vgg19/block5_conv4/Conv2D_1?
;model_2/model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOpReadVariableOpBmodel_2_model_1_vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model_2/model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp?
,model_2/model_1/vgg19/block5_conv4/BiasAdd_1BiasAdd4model_2/model_1/vgg19/block5_conv4/Conv2D_1:output:0Cmodel_2/model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2.
,model_2/model_1/vgg19/block5_conv4/BiasAdd_1?
)model_2/model_1/vgg19/block5_conv4/Relu_1Relu5model_2/model_1/vgg19/block5_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2+
)model_2/model_1/vgg19/block5_conv4/Relu_1?
+model_2/model_1/vgg19/block5_pool/MaxPool_1MaxPool7model_2/model_1/vgg19/block5_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2-
+model_2/model_1/vgg19/block5_pool/MaxPool_1?
Cmodel_2/model_1/global_average_pooling2d_1/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cmodel_2/model_1/global_average_pooling2d_1/Mean_1/reduction_indices?
1model_2/model_1/global_average_pooling2d_1/Mean_1Mean4model_2/model_1/vgg19/block5_pool/MaxPool_1:output:0Lmodel_2/model_1/global_average_pooling2d_1/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:??????????23
1model_2/model_1/global_average_pooling2d_1/Mean_1?
/model_2/model_1/dense_1/MatMul_1/ReadVariableOpReadVariableOp6model_2_model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype021
/model_2/model_1/dense_1/MatMul_1/ReadVariableOp?
 model_2/model_1/dense_1/MatMul_1MatMul:model_2/model_1/global_average_pooling2d_1/Mean_1:output:07model_2/model_1/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 model_2/model_1/dense_1/MatMul_1?
0model_2/model_1/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp7model_2_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0model_2/model_1/dense_1/BiasAdd_1/ReadVariableOp?
!model_2/model_1/dense_1/BiasAdd_1BiasAdd*model_2/model_1/dense_1/MatMul_1:product:08model_2/model_1/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!model_2/model_1/dense_1/BiasAdd_1?
model_2/lambda/subSub(model_2/model_1/dense_1/BiasAdd:output:0*model_2/model_1/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@2
model_2/lambda/sub?
model_2/lambda/SquareSquaremodel_2/lambda/sub:z:0*
T0*'
_output_shapes
:?????????@2
model_2/lambda/Square?
$model_2/lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_2/lambda/Sum/reduction_indices?
model_2/lambda/SumSummodel_2/lambda/Square:y:0-model_2/lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
model_2/lambda/Sumy
model_2/lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
model_2/lambda/Maximum/y?
model_2/lambda/MaximumMaximummodel_2/lambda/Sum:output:0!model_2/lambda/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
model_2/lambda/Maximumq
model_2/lambda/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_2/lambda/Const?
model_2/lambda/Maximum_1Maximummodel_2/lambda/Maximum:z:0model_2/lambda/Const:output:0*
T0*'
_output_shapes
:?????????2
model_2/lambda/Maximum_1?
model_2/lambda/SqrtSqrtmodel_2/lambda/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
model_2/lambda/Sqrt?
%model_2/dense_2/MatMul/ReadVariableOpReadVariableOp.model_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%model_2/dense_2/MatMul/ReadVariableOp?
model_2/dense_2/MatMulMatMulmodel_2/lambda/Sqrt:y:0-model_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_2/dense_2/MatMul?
&model_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_2/dense_2/BiasAdd/ReadVariableOp?
model_2/dense_2/BiasAddBiasAdd model_2/dense_2/MatMul:product:0.model_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_2/dense_2/BiasAdd?
model_2/dense_2/SigmoidSigmoid model_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_2/dense_2/Sigmoid?!
IdentityIdentitymodel_2/dense_2/Sigmoid:y:0'^model_2/dense_2/BiasAdd/ReadVariableOp&^model_2/dense_2/MatMul/ReadVariableOp/^model_2/model_1/dense_1/BiasAdd/ReadVariableOp1^model_2/model_1/dense_1/BiasAdd_1/ReadVariableOp.^model_2/model_1/dense_1/MatMul/ReadVariableOp0^model_2/model_1/dense_1/MatMul_1/ReadVariableOp:^model_2/model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp:^model_2/model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp<^model_2/model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp9^model_2/model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp;^model_2/model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&model_2/dense_2/BiasAdd/ReadVariableOp&model_2/dense_2/BiasAdd/ReadVariableOp2N
%model_2/dense_2/MatMul/ReadVariableOp%model_2/dense_2/MatMul/ReadVariableOp2`
.model_2/model_1/dense_1/BiasAdd/ReadVariableOp.model_2/model_1/dense_1/BiasAdd/ReadVariableOp2d
0model_2/model_1/dense_1/BiasAdd_1/ReadVariableOp0model_2/model_1/dense_1/BiasAdd_1/ReadVariableOp2^
-model_2/model_1/dense_1/MatMul/ReadVariableOp-model_2/model_1/dense_1/MatMul/ReadVariableOp2b
/model_2/model_1/dense_1/MatMul_1/ReadVariableOp/model_2/model_1/dense_1/MatMul_1/ReadVariableOp2v
9model_2/model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp2v
9model_2/model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp9model_2/model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp2z
;model_2/model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp;model_2/model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp2t
8model_2/model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp8model_2/model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp2x
:model_2/model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp:model_2/model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_3:XT
/
_output_shapes
:?????????}^
!
_user_specified_name	input_4
?
?
G__inference_block3_conv1_layer_call_and_return_conditional_losses_46039

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block2_conv1_layer_call_fn_50042

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_460042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????>/?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>/@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>/@
 
_user_specified_nameinputs
?
?
G__inference_block2_conv1_layer_call_and_return_conditional_losses_50033

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????>/?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>/@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>/@
 
_user_specified_nameinputs
?
?
,__inference_block3_conv3_layer_call_fn_50122

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_460732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
A__inference_lambda_layer_call_and_return_conditional_losses_47821

inputs
inputs_1
identityU
subSubinputsinputs_1*
T0*'
_output_shapes
:?????????@2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????@2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
,__inference_block3_conv4_layer_call_fn_50142

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_460902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block3_conv2_layer_call_and_return_conditional_losses_46056

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
'__inference_model_2_layer_call_fn_49041
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@

unknown_33:

unknown_34:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_477122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/1
?
b
F__inference_block3_pool_layer_call_and_return_conditional_losses_45921

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?	
'__inference_model_2_layer_call_fn_49119
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@

unknown_33:

unknown_34:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_480202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/1
?
?
,__inference_block2_conv2_layer_call_fn_50062

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_460212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????>/?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????>/?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????>/?
 
_user_specified_nameinputs
?
b
F__inference_block1_pool_layer_call_and_return_conditional_losses_45897

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_block1_conv1_layer_call_and_return_conditional_losses_49993

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????}^@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????}^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
'__inference_dense_2_layer_call_fn_49583

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_477052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_block5_pool_layer_call_fn_45951

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_459452
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_block4_conv3_layer_call_and_return_conditional_losses_46142

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block3_conv2_layer_call_and_return_conditional_losses_50093

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?l
?
@__inference_vgg19_layer_call_and_return_conditional_losses_46623

inputs,
block1_conv1_46537:@ 
block1_conv1_46539:@,
block1_conv2_46542:@@ 
block1_conv2_46544:@-
block2_conv1_46548:@?!
block2_conv1_46550:	?.
block2_conv2_46553:??!
block2_conv2_46555:	?.
block3_conv1_46559:??!
block3_conv1_46561:	?.
block3_conv2_46564:??!
block3_conv2_46566:	?.
block3_conv3_46569:??!
block3_conv3_46571:	?.
block3_conv4_46574:??!
block3_conv4_46576:	?.
block4_conv1_46580:??!
block4_conv1_46582:	?.
block4_conv2_46585:??!
block4_conv2_46587:	?.
block4_conv3_46590:??!
block4_conv3_46592:	?.
block4_conv4_46595:??!
block4_conv4_46597:	?.
block5_conv1_46601:??!
block5_conv1_46603:	?.
block5_conv2_46606:??!
block5_conv2_46608:	?.
block5_conv3_46611:??!
block5_conv3_46613:	?.
block5_conv4_46616:??!
block5_conv4_46618:	?
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block3_conv4/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block4_conv4/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?$block5_conv4/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_46537block1_conv1_46539*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_459692&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_46542block1_conv2_46544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_459862&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>/@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_458972
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_46548block2_conv1_46550*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_460042&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_46553block2_conv2_46555*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_460212&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_459092
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_46559block3_conv1_46561*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_460392&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_46564block3_conv2_46566*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_460562&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_46569block3_conv3_46571*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_460732&
$block3_conv3/StatefulPartitionedCall?
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_46574block3_conv4_46576*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_460902&
$block3_conv4/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_459212
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_46580block4_conv1_46582*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_461082&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_46585block4_conv2_46587*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_461252&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_46590block4_conv3_46592*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_461422&
$block4_conv3/StatefulPartitionedCall?
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_46595block4_conv4_46597*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_461592&
$block4_conv4/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_459332
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_46601block5_conv1_46603*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_461772&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_46606block5_conv2_46608*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_461942&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_46611block5_conv3_46613*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_462112&
$block5_conv3/StatefulPartitionedCall?
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_46616block5_conv4_46618*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_462282&
$block5_conv4/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_459452
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
G
+__inference_block1_pool_layer_call_fn_45903

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_458972
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_block2_pool_layer_call_and_return_conditional_losses_45909

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_block4_conv4_layer_call_and_return_conditional_losses_46159

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
A__inference_lambda_layer_call_and_return_conditional_losses_47692

inputs
inputs_1
identityU
subSubinputsinputs_1*
T0*'
_output_shapes
:?????????@2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????@2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?	
'__inference_model_1_layer_call_fn_49523

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@
identity??StatefulPartitionedCall?
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_472712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?'
?
B__inference_model_2_layer_call_and_return_conditional_losses_47712

inputs
inputs_1'
model_1_47574:@
model_1_47576:@'
model_1_47578:@@
model_1_47580:@(
model_1_47582:@?
model_1_47584:	?)
model_1_47586:??
model_1_47588:	?)
model_1_47590:??
model_1_47592:	?)
model_1_47594:??
model_1_47596:	?)
model_1_47598:??
model_1_47600:	?)
model_1_47602:??
model_1_47604:	?)
model_1_47606:??
model_1_47608:	?)
model_1_47610:??
model_1_47612:	?)
model_1_47614:??
model_1_47616:	?)
model_1_47618:??
model_1_47620:	?)
model_1_47622:??
model_1_47624:	?)
model_1_47626:??
model_1_47628:	?)
model_1_47630:??
model_1_47632:	?)
model_1_47634:??
model_1_47636:	? 
model_1_47638:	?@
model_1_47640:@
dense_2_47706:
dense_2_47708:
identity??dense_2/StatefulPartitionedCall?model_1/StatefulPartitionedCall?!model_1/StatefulPartitionedCall_1?
model_1/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_1_47574model_1_47576model_1_47578model_1_47580model_1_47582model_1_47584model_1_47586model_1_47588model_1_47590model_1_47592model_1_47594model_1_47596model_1_47598model_1_47600model_1_47602model_1_47604model_1_47606model_1_47608model_1_47610model_1_47612model_1_47614model_1_47616model_1_47618model_1_47620model_1_47622model_1_47624model_1_47626model_1_47628model_1_47630model_1_47632model_1_47634model_1_47636model_1_47638model_1_47640*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_470402!
model_1/StatefulPartitionedCall?
!model_1/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_1_47574model_1_47576model_1_47578model_1_47580model_1_47582model_1_47584model_1_47586model_1_47588model_1_47590model_1_47592model_1_47594model_1_47596model_1_47598model_1_47600model_1_47602model_1_47604model_1_47606model_1_47608model_1_47610model_1_47612model_1_47614model_1_47616model_1_47618model_1_47620model_1_47622model_1_47624model_1_47626model_1_47628model_1_47630model_1_47632model_1_47634model_1_47636model_1_47638model_1_47640*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_470402#
!model_1/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall(model_1/StatefulPartitionedCall:output:0*model_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_476922
lambda/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_47706dense_2_47708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_477052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^model_1/StatefulPartitionedCall"^model_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall2F
!model_1/StatefulPartitionedCall_1!model_1/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
%__inference_vgg19_layer_call_fn_49894

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?
identity??StatefulPartitionedCall?
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_462362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?

B__inference_model_1_layer_call_and_return_conditional_losses_47565
input_5%
vgg19_47493:@
vgg19_47495:@%
vgg19_47497:@@
vgg19_47499:@&
vgg19_47501:@?
vgg19_47503:	?'
vgg19_47505:??
vgg19_47507:	?'
vgg19_47509:??
vgg19_47511:	?'
vgg19_47513:??
vgg19_47515:	?'
vgg19_47517:??
vgg19_47519:	?'
vgg19_47521:??
vgg19_47523:	?'
vgg19_47525:??
vgg19_47527:	?'
vgg19_47529:??
vgg19_47531:	?'
vgg19_47533:??
vgg19_47535:	?'
vgg19_47537:??
vgg19_47539:	?'
vgg19_47541:??
vgg19_47543:	?'
vgg19_47545:??
vgg19_47547:	?'
vgg19_47549:??
vgg19_47551:	?'
vgg19_47553:??
vgg19_47555:	? 
dense_1_47559:	?@
dense_1_47561:@
identity??dense_1/StatefulPartitionedCall?vgg19/StatefulPartitionedCall?
vgg19/StatefulPartitionedCallStatefulPartitionedCallinput_5vgg19_47493vgg19_47495vgg19_47497vgg19_47499vgg19_47501vgg19_47503vgg19_47505vgg19_47507vgg19_47509vgg19_47511vgg19_47513vgg19_47515vgg19_47517vgg19_47519vgg19_47521vgg19_47523vgg19_47525vgg19_47527vgg19_47529vgg19_47531vgg19_47533vgg19_47535vgg19_47537vgg19_47539vgg19_47541vgg19_47543vgg19_47545vgg19_47547vgg19_47549vgg19_47551vgg19_47553vgg19_47555*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_466232
vgg19/StatefulPartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_469442,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_47559dense_1_47561*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_470332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_5
?
m
A__inference_lambda_layer_call_and_return_conditional_losses_49551
inputs_0
inputs_1
identityW
subSubinputs_0inputs_1*
T0*'
_output_shapes
:?????????@2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????@2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:Q M
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/1
?
?
G__inference_block1_conv2_layer_call_and_return_conditional_losses_50013

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????}^@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????}^@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^@
 
_user_specified_nameinputs
?'
?
B__inference_model_2_layer_call_and_return_conditional_losses_48288
input_3
input_4'
model_1_48177:@
model_1_48179:@'
model_1_48181:@@
model_1_48183:@(
model_1_48185:@?
model_1_48187:	?)
model_1_48189:??
model_1_48191:	?)
model_1_48193:??
model_1_48195:	?)
model_1_48197:??
model_1_48199:	?)
model_1_48201:??
model_1_48203:	?)
model_1_48205:??
model_1_48207:	?)
model_1_48209:??
model_1_48211:	?)
model_1_48213:??
model_1_48215:	?)
model_1_48217:??
model_1_48219:	?)
model_1_48221:??
model_1_48223:	?)
model_1_48225:??
model_1_48227:	?)
model_1_48229:??
model_1_48231:	?)
model_1_48233:??
model_1_48235:	?)
model_1_48237:??
model_1_48239:	? 
model_1_48241:	?@
model_1_48243:@
dense_2_48282:
dense_2_48284:
identity??dense_2/StatefulPartitionedCall?model_1/StatefulPartitionedCall?!model_1/StatefulPartitionedCall_1?
model_1/StatefulPartitionedCallStatefulPartitionedCallinput_3model_1_48177model_1_48179model_1_48181model_1_48183model_1_48185model_1_48187model_1_48189model_1_48191model_1_48193model_1_48195model_1_48197model_1_48199model_1_48201model_1_48203model_1_48205model_1_48207model_1_48209model_1_48211model_1_48213model_1_48215model_1_48217model_1_48219model_1_48221model_1_48223model_1_48225model_1_48227model_1_48229model_1_48231model_1_48233model_1_48235model_1_48237model_1_48239model_1_48241model_1_48243*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_470402!
model_1/StatefulPartitionedCall?
!model_1/StatefulPartitionedCall_1StatefulPartitionedCallinput_4model_1_48177model_1_48179model_1_48181model_1_48183model_1_48185model_1_48187model_1_48189model_1_48191model_1_48193model_1_48195model_1_48197model_1_48199model_1_48201model_1_48203model_1_48205model_1_48207model_1_48209model_1_48211model_1_48213model_1_48215model_1_48217model_1_48219model_1_48221model_1_48223model_1_48225model_1_48227model_1_48229model_1_48231model_1_48233model_1_48235model_1_48237model_1_48239model_1_48241model_1_48243*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_470402#
!model_1/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall(model_1/StatefulPartitionedCall:output:0*model_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_476922
lambda/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_48282dense_2_48284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_477052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^model_1/StatefulPartitionedCall"^model_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall2F
!model_1/StatefulPartitionedCall_1!model_1/StatefulPartitionedCall_1:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_3:XT
/
_output_shapes
:?????????}^
!
_user_specified_name	input_4
?
?
G__inference_block5_conv3_layer_call_and_return_conditional_losses_50273

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block3_conv3_layer_call_and_return_conditional_losses_50113

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
#__inference_signature_wrapper_48489
input_3
input_4!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@

unknown_33:

unknown_34:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_458912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_3:XT
/
_output_shapes
:?????????}^
!
_user_specified_name	input_4
?
?
G__inference_block4_conv4_layer_call_and_return_conditional_losses_50213

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block1_conv2_layer_call_and_return_conditional_losses_45986

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????}^@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????}^@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^@
 
_user_specified_nameinputs
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_47705

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?

B__inference_model_1_layer_call_and_return_conditional_losses_47040

inputs%
vgg19_46957:@
vgg19_46959:@%
vgg19_46961:@@
vgg19_46963:@&
vgg19_46965:@?
vgg19_46967:	?'
vgg19_46969:??
vgg19_46971:	?'
vgg19_46973:??
vgg19_46975:	?'
vgg19_46977:??
vgg19_46979:	?'
vgg19_46981:??
vgg19_46983:	?'
vgg19_46985:??
vgg19_46987:	?'
vgg19_46989:??
vgg19_46991:	?'
vgg19_46993:??
vgg19_46995:	?'
vgg19_46997:??
vgg19_46999:	?'
vgg19_47001:??
vgg19_47003:	?'
vgg19_47005:??
vgg19_47007:	?'
vgg19_47009:??
vgg19_47011:	?'
vgg19_47013:??
vgg19_47015:	?'
vgg19_47017:??
vgg19_47019:	? 
dense_1_47034:	?@
dense_1_47036:@
identity??dense_1/StatefulPartitionedCall?vgg19/StatefulPartitionedCall?
vgg19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg19_46957vgg19_46959vgg19_46961vgg19_46963vgg19_46965vgg19_46967vgg19_46969vgg19_46971vgg19_46973vgg19_46975vgg19_46977vgg19_46979vgg19_46981vgg19_46983vgg19_46985vgg19_46987vgg19_46989vgg19_46991vgg19_46993vgg19_46995vgg19_46997vgg19_46999vgg19_47001vgg19_47003vgg19_47005vgg19_47007vgg19_47009vgg19_47011vgg19_47013vgg19_47015vgg19_47017vgg19_47019*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_462362
vgg19/StatefulPartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_469442,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_47034dense_1_47036*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_470332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
R
&__inference_lambda_layer_call_fn_49563
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_478212
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:Q M
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/1
?
b
F__inference_block4_pool_layer_call_and_return_conditional_losses_45933

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_block5_conv3_layer_call_and_return_conditional_losses_46211

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_47033

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block4_conv3_layer_call_and_return_conditional_losses_50193

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block4_conv2_layer_call_and_return_conditional_losses_50173

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?l
?
@__inference_vgg19_layer_call_and_return_conditional_losses_46848
input_6,
block1_conv1_46762:@ 
block1_conv1_46764:@,
block1_conv2_46767:@@ 
block1_conv2_46769:@-
block2_conv1_46773:@?!
block2_conv1_46775:	?.
block2_conv2_46778:??!
block2_conv2_46780:	?.
block3_conv1_46784:??!
block3_conv1_46786:	?.
block3_conv2_46789:??!
block3_conv2_46791:	?.
block3_conv3_46794:??!
block3_conv3_46796:	?.
block3_conv4_46799:??!
block3_conv4_46801:	?.
block4_conv1_46805:??!
block4_conv1_46807:	?.
block4_conv2_46810:??!
block4_conv2_46812:	?.
block4_conv3_46815:??!
block4_conv3_46817:	?.
block4_conv4_46820:??!
block4_conv4_46822:	?.
block5_conv1_46826:??!
block5_conv1_46828:	?.
block5_conv2_46831:??!
block5_conv2_46833:	?.
block5_conv3_46836:??!
block5_conv3_46838:	?.
block5_conv4_46841:??!
block5_conv4_46843:	?
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block3_conv4/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block4_conv4/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?$block5_conv4/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_6block1_conv1_46762block1_conv1_46764*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_459692&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_46767block1_conv2_46769*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_459862&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>/@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_458972
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_46773block2_conv1_46775*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_460042&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_46778block2_conv2_46780*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_460212&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_459092
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_46784block3_conv1_46786*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_460392&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_46789block3_conv2_46791*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_460562&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_46794block3_conv3_46796*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_460732&
$block3_conv3/StatefulPartitionedCall?
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_46799block3_conv4_46801*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_460902&
$block3_conv4/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_459212
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_46805block4_conv1_46807*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_461082&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_46810block4_conv2_46812*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_461252&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_46815block4_conv3_46817*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_461422&
$block4_conv3/StatefulPartitionedCall?
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_46820block4_conv4_46822*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_461592&
$block4_conv4/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_459332
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_46826block5_conv1_46828*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_461772&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_46831block5_conv2_46833*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_461942&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_46836block5_conv3_46838*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_462112&
$block5_conv3/StatefulPartitionedCall?
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_46841block5_conv4_46843*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_462282&
$block5_conv4/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_459452
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_6
?c
?
__inference__traced_save_50485
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block3_conv4_kernel_read_readvariableop0
,savev2_block3_conv4_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block4_conv4_kernel_read_readvariableop0
,savev2_block4_conv4_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop2
.savev2_block5_conv4_kernel_read_readvariableop0
,savev2_block5_conv4_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*?
value?B?6B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block3_conv4_kernel_read_readvariableop,savev2_block3_conv4_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block4_conv4_kernel_read_readvariableop,savev2_block4_conv4_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop.savev2_block5_conv4_kernel_read_readvariableop,savev2_block5_conv4_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *D
dtypes:
826	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: : : : : :@:@:@@:@:@?:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:	?@:@: : : : :::	?@:@:::	?@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::
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
: :,(
&
_output_shapes
:@: 	

_output_shapes
:@:,
(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:. *
(
_output_shapes
:??:!!

_output_shapes	
:?:."*
(
_output_shapes
:??:!#

_output_shapes	
:?:.$*
(
_output_shapes
:??:!%

_output_shapes	
:?:.&*
(
_output_shapes
:??:!'

_output_shapes	
:?:%(!

_output_shapes
:	?@: )

_output_shapes
:@:*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :$. 

_output_shapes

:: /

_output_shapes
::%0!

_output_shapes
:	?@: 1

_output_shapes
:@:$2 

_output_shapes

:: 3

_output_shapes
::%4!

_output_shapes
:	?@: 5

_output_shapes
:@:6

_output_shapes
: 
??
?3
B__inference_model_2_layer_call_and_return_conditional_losses_48963
inputs_0
inputs_1S
9model_1_vgg19_block1_conv1_conv2d_readvariableop_resource:@H
:model_1_vgg19_block1_conv1_biasadd_readvariableop_resource:@S
9model_1_vgg19_block1_conv2_conv2d_readvariableop_resource:@@H
:model_1_vgg19_block1_conv2_biasadd_readvariableop_resource:@T
9model_1_vgg19_block2_conv1_conv2d_readvariableop_resource:@?I
:model_1_vgg19_block2_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block2_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block2_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv1_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv3_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv3_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block3_conv4_conv2d_readvariableop_resource:??I
:model_1_vgg19_block3_conv4_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv1_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv3_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv3_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block4_conv4_conv2d_readvariableop_resource:??I
:model_1_vgg19_block4_conv4_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv1_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv1_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv2_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv2_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv3_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv3_biasadd_readvariableop_resource:	?U
9model_1_vgg19_block5_conv4_conv2d_readvariableop_resource:??I
:model_1_vgg19_block5_conv4_biasadd_readvariableop_resource:	?A
.model_1_dense_1_matmul_readvariableop_resource:	?@=
/model_1_dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?&model_1/dense_1/BiasAdd/ReadVariableOp?(model_1/dense_1/BiasAdd_1/ReadVariableOp?%model_1/dense_1/MatMul/ReadVariableOp?'model_1/dense_1/MatMul_1/ReadVariableOp?1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp?1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp?3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp?2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp?1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp?3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp?2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp?1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp?3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp?0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp?2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp?
0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype022
0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block1_conv1/Conv2DConv2Dinputs_08model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2#
!model_1/vgg19/block1_conv1/Conv2D?
1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block1_conv1/BiasAddBiasAdd*model_1/vgg19/block1_conv1/Conv2D:output:09model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2$
"model_1/vgg19/block1_conv1/BiasAdd?
model_1/vgg19/block1_conv1/ReluRelu+model_1/vgg19/block1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2!
model_1/vgg19/block1_conv1/Relu?
0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype022
0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block1_conv2/Conv2DConv2D-model_1/vgg19/block1_conv1/Relu:activations:08model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2#
!model_1/vgg19/block1_conv2/Conv2D?
1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block1_conv2/BiasAddBiasAdd*model_1/vgg19/block1_conv2/Conv2D:output:09model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2$
"model_1/vgg19/block1_conv2/BiasAdd?
model_1/vgg19/block1_conv2/ReluRelu+model_1/vgg19/block1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2!
model_1/vgg19/block1_conv2/Relu?
!model_1/vgg19/block1_pool/MaxPoolMaxPool-model_1/vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block1_pool/MaxPool?
0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype022
0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block2_conv1/Conv2DConv2D*model_1/vgg19/block1_pool/MaxPool:output:08model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2#
!model_1/vgg19/block2_conv1/Conv2D?
1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block2_conv1/BiasAddBiasAdd*model_1/vgg19/block2_conv1/Conv2D:output:09model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2$
"model_1/vgg19/block2_conv1/BiasAdd?
model_1/vgg19/block2_conv1/ReluRelu+model_1/vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2!
model_1/vgg19/block2_conv1/Relu?
0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block2_conv2/Conv2DConv2D-model_1/vgg19/block2_conv1/Relu:activations:08model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2#
!model_1/vgg19/block2_conv2/Conv2D?
1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block2_conv2/BiasAddBiasAdd*model_1/vgg19/block2_conv2/Conv2D:output:09model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2$
"model_1/vgg19/block2_conv2/BiasAdd?
model_1/vgg19/block2_conv2/ReluRelu+model_1/vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2!
model_1/vgg19/block2_conv2/Relu?
!model_1/vgg19/block2_pool/MaxPoolMaxPool-model_1/vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block2_pool/MaxPool?
0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv1/Conv2DConv2D*model_1/vgg19/block2_pool/MaxPool:output:08model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv1/Conv2D?
1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv1/BiasAddBiasAdd*model_1/vgg19/block3_conv1/Conv2D:output:09model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv1/BiasAdd?
model_1/vgg19/block3_conv1/ReluRelu+model_1/vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv1/Relu?
0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv2/Conv2DConv2D-model_1/vgg19/block3_conv1/Relu:activations:08model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv2/Conv2D?
1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv2/BiasAddBiasAdd*model_1/vgg19/block3_conv2/Conv2D:output:09model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv2/BiasAdd?
model_1/vgg19/block3_conv2/ReluRelu+model_1/vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv2/Relu?
0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv3/Conv2DConv2D-model_1/vgg19/block3_conv2/Relu:activations:08model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv3/Conv2D?
1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv3/BiasAddBiasAdd*model_1/vgg19/block3_conv3/Conv2D:output:09model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv3/BiasAdd?
model_1/vgg19/block3_conv3/ReluRelu+model_1/vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv3/Relu?
0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp?
!model_1/vgg19/block3_conv4/Conv2DConv2D-model_1/vgg19/block3_conv3/Relu:activations:08model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block3_conv4/Conv2D?
1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp?
"model_1/vgg19/block3_conv4/BiasAddBiasAdd*model_1/vgg19/block3_conv4/Conv2D:output:09model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block3_conv4/BiasAdd?
model_1/vgg19/block3_conv4/ReluRelu+model_1/vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block3_conv4/Relu?
!model_1/vgg19/block3_pool/MaxPoolMaxPool-model_1/vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block3_pool/MaxPool?
0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv1/Conv2DConv2D*model_1/vgg19/block3_pool/MaxPool:output:08model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv1/Conv2D?
1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv1/BiasAddBiasAdd*model_1/vgg19/block4_conv1/Conv2D:output:09model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv1/BiasAdd?
model_1/vgg19/block4_conv1/ReluRelu+model_1/vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv1/Relu?
0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv2/Conv2DConv2D-model_1/vgg19/block4_conv1/Relu:activations:08model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv2/Conv2D?
1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv2/BiasAddBiasAdd*model_1/vgg19/block4_conv2/Conv2D:output:09model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv2/BiasAdd?
model_1/vgg19/block4_conv2/ReluRelu+model_1/vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv2/Relu?
0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv3/Conv2DConv2D-model_1/vgg19/block4_conv2/Relu:activations:08model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv3/Conv2D?
1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv3/BiasAddBiasAdd*model_1/vgg19/block4_conv3/Conv2D:output:09model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv3/BiasAdd?
model_1/vgg19/block4_conv3/ReluRelu+model_1/vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv3/Relu?
0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp?
!model_1/vgg19/block4_conv4/Conv2DConv2D-model_1/vgg19/block4_conv3/Relu:activations:08model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block4_conv4/Conv2D?
1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp?
"model_1/vgg19/block4_conv4/BiasAddBiasAdd*model_1/vgg19/block4_conv4/Conv2D:output:09model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block4_conv4/BiasAdd?
model_1/vgg19/block4_conv4/ReluRelu+model_1/vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block4_conv4/Relu?
!model_1/vgg19/block4_pool/MaxPoolMaxPool-model_1/vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block4_pool/MaxPool?
0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv1/Conv2DConv2D*model_1/vgg19/block4_pool/MaxPool:output:08model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv1/Conv2D?
1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv1/BiasAddBiasAdd*model_1/vgg19/block5_conv1/Conv2D:output:09model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv1/BiasAdd?
model_1/vgg19/block5_conv1/ReluRelu+model_1/vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv1/Relu?
0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv2/Conv2DConv2D-model_1/vgg19/block5_conv1/Relu:activations:08model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv2/Conv2D?
1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv2/BiasAddBiasAdd*model_1/vgg19/block5_conv2/Conv2D:output:09model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv2/BiasAdd?
model_1/vgg19/block5_conv2/ReluRelu+model_1/vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv2/Relu?
0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv3/Conv2DConv2D-model_1/vgg19/block5_conv2/Relu:activations:08model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv3/Conv2D?
1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv3/BiasAddBiasAdd*model_1/vgg19/block5_conv3/Conv2D:output:09model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv3/BiasAdd?
model_1/vgg19/block5_conv3/ReluRelu+model_1/vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv3/Relu?
0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype022
0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp?
!model_1/vgg19/block5_conv4/Conv2DConv2D-model_1/vgg19/block5_conv3/Relu:activations:08model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2#
!model_1/vgg19/block5_conv4/Conv2D?
1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp?
"model_1/vgg19/block5_conv4/BiasAddBiasAdd*model_1/vgg19/block5_conv4/Conv2D:output:09model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"model_1/vgg19/block5_conv4/BiasAdd?
model_1/vgg19/block5_conv4/ReluRelu+model_1/vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
model_1/vgg19/block5_conv4/Relu?
!model_1/vgg19/block5_pool/MaxPoolMaxPool-model_1/vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2#
!model_1/vgg19/block5_pool/MaxPool?
9model_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2;
9model_1/global_average_pooling2d_1/Mean/reduction_indices?
'model_1/global_average_pooling2d_1/MeanMean*model_1/vgg19/block5_pool/MaxPool:output:0Bmodel_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2)
'model_1/global_average_pooling2d_1/Mean?
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02'
%model_1/dense_1/MatMul/ReadVariableOp?
model_1/dense_1/MatMulMatMul0model_1/global_average_pooling2d_1/Mean:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/MatMul?
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOp?
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/BiasAdd?
2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype024
2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block1_conv1/Conv2D_1Conv2Dinputs_1:model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2%
#model_1/vgg19/block1_conv1/Conv2D_1?
3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block1_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block1_conv1/Conv2D_1:output:0;model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2&
$model_1/vgg19/block1_conv1/BiasAdd_1?
!model_1/vgg19/block1_conv1/Relu_1Relu-model_1/vgg19/block1_conv1/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????}^@2#
!model_1/vgg19/block1_conv1/Relu_1?
2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block1_conv2/Conv2D_1Conv2D/model_1/vgg19/block1_conv1/Relu_1:activations:0:model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2%
#model_1/vgg19/block1_conv2/Conv2D_1?
3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block1_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block1_conv2/Conv2D_1:output:0;model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2&
$model_1/vgg19/block1_conv2/BiasAdd_1?
!model_1/vgg19/block1_conv2/Relu_1Relu-model_1/vgg19/block1_conv2/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????}^@2#
!model_1/vgg19/block1_conv2/Relu_1?
#model_1/vgg19/block1_pool/MaxPool_1MaxPool/model_1/vgg19/block1_conv2/Relu_1:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block1_pool/MaxPool_1?
2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block2_conv1/Conv2D_1Conv2D,model_1/vgg19/block1_pool/MaxPool_1:output:0:model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2%
#model_1/vgg19/block2_conv1/Conv2D_1?
3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block2_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block2_conv1/Conv2D_1:output:0;model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2&
$model_1/vgg19/block2_conv1/BiasAdd_1?
!model_1/vgg19/block2_conv1/Relu_1Relu-model_1/vgg19/block2_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????>/?2#
!model_1/vgg19/block2_conv1/Relu_1?
2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block2_conv2/Conv2D_1Conv2D/model_1/vgg19/block2_conv1/Relu_1:activations:0:model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2%
#model_1/vgg19/block2_conv2/Conv2D_1?
3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block2_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block2_conv2/Conv2D_1:output:0;model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2&
$model_1/vgg19/block2_conv2/BiasAdd_1?
!model_1/vgg19/block2_conv2/Relu_1Relu-model_1/vgg19/block2_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:?????????>/?2#
!model_1/vgg19/block2_conv2/Relu_1?
#model_1/vgg19/block2_pool/MaxPool_1MaxPool/model_1/vgg19/block2_conv2/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block2_pool/MaxPool_1?
2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv1/Conv2D_1Conv2D,model_1/vgg19/block2_pool/MaxPool_1:output:0:model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv1/Conv2D_1?
3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv1/Conv2D_1:output:0;model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv1/BiasAdd_1?
!model_1/vgg19/block3_conv1/Relu_1Relu-model_1/vgg19/block3_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv1/Relu_1?
2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv2/Conv2D_1Conv2D/model_1/vgg19/block3_conv1/Relu_1:activations:0:model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv2/Conv2D_1?
3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv2/Conv2D_1:output:0;model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv2/BiasAdd_1?
!model_1/vgg19/block3_conv2/Relu_1Relu-model_1/vgg19/block3_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv2/Relu_1?
2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv3/Conv2D_1Conv2D/model_1/vgg19/block3_conv2/Relu_1:activations:0:model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv3/Conv2D_1?
3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv3/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv3/Conv2D_1:output:0;model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv3/BiasAdd_1?
!model_1/vgg19/block3_conv3/Relu_1Relu-model_1/vgg19/block3_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv3/Relu_1?
2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block3_conv4/Conv2D_1Conv2D/model_1/vgg19/block3_conv3/Relu_1:activations:0:model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block3_conv4/Conv2D_1?
3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block3_conv4/BiasAdd_1BiasAdd,model_1/vgg19/block3_conv4/Conv2D_1:output:0;model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block3_conv4/BiasAdd_1?
!model_1/vgg19/block3_conv4/Relu_1Relu-model_1/vgg19/block3_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block3_conv4/Relu_1?
#model_1/vgg19/block3_pool/MaxPool_1MaxPool/model_1/vgg19/block3_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block3_pool/MaxPool_1?
2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv1/Conv2D_1Conv2D,model_1/vgg19/block3_pool/MaxPool_1:output:0:model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv1/Conv2D_1?
3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv1/Conv2D_1:output:0;model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv1/BiasAdd_1?
!model_1/vgg19/block4_conv1/Relu_1Relu-model_1/vgg19/block4_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv1/Relu_1?
2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv2/Conv2D_1Conv2D/model_1/vgg19/block4_conv1/Relu_1:activations:0:model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv2/Conv2D_1?
3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv2/Conv2D_1:output:0;model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv2/BiasAdd_1?
!model_1/vgg19/block4_conv2/Relu_1Relu-model_1/vgg19/block4_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv2/Relu_1?
2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv3/Conv2D_1Conv2D/model_1/vgg19/block4_conv2/Relu_1:activations:0:model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv3/Conv2D_1?
3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv3/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv3/Conv2D_1:output:0;model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv3/BiasAdd_1?
!model_1/vgg19/block4_conv3/Relu_1Relu-model_1/vgg19/block4_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv3/Relu_1?
2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block4_conv4/Conv2D_1Conv2D/model_1/vgg19/block4_conv3/Relu_1:activations:0:model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block4_conv4/Conv2D_1?
3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block4_conv4/BiasAdd_1BiasAdd,model_1/vgg19/block4_conv4/Conv2D_1:output:0;model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block4_conv4/BiasAdd_1?
!model_1/vgg19/block4_conv4/Relu_1Relu-model_1/vgg19/block4_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block4_conv4/Relu_1?
#model_1/vgg19/block4_pool/MaxPool_1MaxPool/model_1/vgg19/block4_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block4_pool/MaxPool_1?
2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv1/Conv2D_1Conv2D,model_1/vgg19/block4_pool/MaxPool_1:output:0:model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv1/Conv2D_1?
3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv1/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv1/Conv2D_1:output:0;model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv1/BiasAdd_1?
!model_1/vgg19/block5_conv1/Relu_1Relu-model_1/vgg19/block5_conv1/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv1/Relu_1?
2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv2/Conv2D_1Conv2D/model_1/vgg19/block5_conv1/Relu_1:activations:0:model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv2/Conv2D_1?
3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv2/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv2/Conv2D_1:output:0;model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv2/BiasAdd_1?
!model_1/vgg19/block5_conv2/Relu_1Relu-model_1/vgg19/block5_conv2/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv2/Relu_1?
2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv3/Conv2D_1Conv2D/model_1/vgg19/block5_conv2/Relu_1:activations:0:model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv3/Conv2D_1?
3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv3/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv3/Conv2D_1:output:0;model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv3/BiasAdd_1?
!model_1/vgg19/block5_conv3/Relu_1Relu-model_1/vgg19/block5_conv3/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv3/Relu_1?
2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOpReadVariableOp9model_1_vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype024
2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp?
#model_1/vgg19/block5_conv4/Conv2D_1Conv2D/model_1/vgg19/block5_conv3/Relu_1:activations:0:model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#model_1/vgg19/block5_conv4/Conv2D_1?
3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOpReadVariableOp:model_1_vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype025
3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp?
$model_1/vgg19/block5_conv4/BiasAdd_1BiasAdd,model_1/vgg19/block5_conv4/Conv2D_1:output:0;model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2&
$model_1/vgg19/block5_conv4/BiasAdd_1?
!model_1/vgg19/block5_conv4/Relu_1Relu-model_1/vgg19/block5_conv4/BiasAdd_1:output:0*
T0*0
_output_shapes
:??????????2#
!model_1/vgg19/block5_conv4/Relu_1?
#model_1/vgg19/block5_pool/MaxPool_1MaxPool/model_1/vgg19/block5_conv4/Relu_1:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#model_1/vgg19/block5_pool/MaxPool_1?
;model_1/global_average_pooling2d_1/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2=
;model_1/global_average_pooling2d_1/Mean_1/reduction_indices?
)model_1/global_average_pooling2d_1/Mean_1Mean,model_1/vgg19/block5_pool/MaxPool_1:output:0Dmodel_1/global_average_pooling2d_1/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2+
)model_1/global_average_pooling2d_1/Mean_1?
'model_1/dense_1/MatMul_1/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02)
'model_1/dense_1/MatMul_1/ReadVariableOp?
model_1/dense_1/MatMul_1MatMul2model_1/global_average_pooling2d_1/Mean_1:output:0/model_1/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/MatMul_1?
(model_1/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_1/dense_1/BiasAdd_1/ReadVariableOp?
model_1/dense_1/BiasAdd_1BiasAdd"model_1/dense_1/MatMul_1:product:00model_1/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/BiasAdd_1?

lambda/subSub model_1/dense_1/BiasAdd:output:0"model_1/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@2

lambda/subj
lambda/SquareSquarelambda/sub:z:0*
T0*'
_output_shapes
:?????????@2
lambda/Square~
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
lambda/Sum/reduction_indices?

lambda/SumSumlambda/Square:y:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2

lambda/Sumi
lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
lambda/Maximum/y?
lambda/MaximumMaximumlambda/Sum:output:0lambda/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximuma
lambda/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda/Const?
lambda/Maximum_1Maximumlambda/Maximum:z:0lambda/Const:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximum_1j
lambda/SqrtSqrtlambda/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
lambda/Sqrt?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMullambda/Sqrt:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Sigmoid?
IdentityIdentitydense_2/Sigmoid:y:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/BiasAdd_1/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp(^model_1/dense_1/MatMul_1/ReadVariableOp2^model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp2^model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp4^model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp3^model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp2^model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp4^model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp3^model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp2^model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp4^model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp1^model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp3^model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2T
(model_1/dense_1/BiasAdd_1/ReadVariableOp(model_1/dense_1/BiasAdd_1/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2R
'model_1/dense_1/MatMul_1/ReadVariableOp'model_1/dense_1/MatMul_1/ReadVariableOp2f
1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block1_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block1_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block1_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block1_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block1_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block1_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block1_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block1_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block2_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block2_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block2_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block2_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block2_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block2_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block2_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block2_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv3/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv3/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv3/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv3/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp1model_1/vgg19/block3_conv4/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp3model_1/vgg19/block3_conv4/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp0model_1/vgg19/block3_conv4/Conv2D/ReadVariableOp2h
2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp2model_1/vgg19/block3_conv4/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv3/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv3/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv3/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv3/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp1model_1/vgg19/block4_conv4/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp3model_1/vgg19/block4_conv4/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp0model_1/vgg19/block4_conv4/Conv2D/ReadVariableOp2h
2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp2model_1/vgg19/block4_conv4/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv1/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv1/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv1/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv1/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv2/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv2/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv2/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv2/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv3/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv3/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv3/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv3/Conv2D_1/ReadVariableOp2f
1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp1model_1/vgg19/block5_conv4/BiasAdd/ReadVariableOp2j
3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp3model_1/vgg19/block5_conv4/BiasAdd_1/ReadVariableOp2d
0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp0model_1/vgg19/block5_conv4/Conv2D/ReadVariableOp2h
2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp2model_1/vgg19/block5_conv4/Conv2D_1/ReadVariableOp:Y U
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????}^
"
_user_specified_name
inputs/1
?
?
,__inference_block4_conv3_layer_call_fn_50202

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_461422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block5_conv1_layer_call_and_return_conditional_losses_46177

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_block5_pool_layer_call_and_return_conditional_losses_45945

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_block2_pool_layer_call_fn_45915

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_459092
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?	
'__inference_model_1_layer_call_fn_47415
input_5!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_472712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_5
?
?	
'__inference_model_1_layer_call_fn_47111
input_5!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_470402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_5
?
?
G__inference_block5_conv1_layer_call_and_return_conditional_losses_50233

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block5_conv3_layer_call_fn_50282

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_462112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block5_conv4_layer_call_and_return_conditional_losses_50293

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_block3_pool_layer_call_fn_45927

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_459212
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_block3_conv4_layer_call_and_return_conditional_losses_50133

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
'__inference_model_2_layer_call_fn_47787
input_3
input_4!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@

unknown_33:

unknown_34:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_477122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_3:XT
/
_output_shapes
:?????????}^
!
_user_specified_name	input_4
ٶ
?
@__inference_vgg19_layer_call_and_return_conditional_losses_49704

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@?;
,block2_conv1_biasadd_readvariableop_resource:	?G
+block2_conv2_conv2d_readvariableop_resource:??;
,block2_conv2_biasadd_readvariableop_resource:	?G
+block3_conv1_conv2d_readvariableop_resource:??;
,block3_conv1_biasadd_readvariableop_resource:	?G
+block3_conv2_conv2d_readvariableop_resource:??;
,block3_conv2_biasadd_readvariableop_resource:	?G
+block3_conv3_conv2d_readvariableop_resource:??;
,block3_conv3_biasadd_readvariableop_resource:	?G
+block3_conv4_conv2d_readvariableop_resource:??;
,block3_conv4_biasadd_readvariableop_resource:	?G
+block4_conv1_conv2d_readvariableop_resource:??;
,block4_conv1_biasadd_readvariableop_resource:	?G
+block4_conv2_conv2d_readvariableop_resource:??;
,block4_conv2_biasadd_readvariableop_resource:	?G
+block4_conv3_conv2d_readvariableop_resource:??;
,block4_conv3_biasadd_readvariableop_resource:	?G
+block4_conv4_conv2d_readvariableop_resource:??;
,block4_conv4_biasadd_readvariableop_resource:	?G
+block5_conv1_conv2d_readvariableop_resource:??;
,block5_conv1_biasadd_readvariableop_resource:	?G
+block5_conv2_conv2d_readvariableop_resource:??;
,block5_conv2_biasadd_readvariableop_resource:	?G
+block5_conv3_conv2d_readvariableop_resource:??;
,block5_conv3_biasadd_readvariableop_resource:	?G
+block5_conv4_conv2d_readvariableop_resource:??;
,block5_conv4_biasadd_readvariableop_resource:	?
identity??#block1_conv1/BiasAdd/ReadVariableOp?"block1_conv1/Conv2D/ReadVariableOp?#block1_conv2/BiasAdd/ReadVariableOp?"block1_conv2/Conv2D/ReadVariableOp?#block2_conv1/BiasAdd/ReadVariableOp?"block2_conv1/Conv2D/ReadVariableOp?#block2_conv2/BiasAdd/ReadVariableOp?"block2_conv2/Conv2D/ReadVariableOp?#block3_conv1/BiasAdd/ReadVariableOp?"block3_conv1/Conv2D/ReadVariableOp?#block3_conv2/BiasAdd/ReadVariableOp?"block3_conv2/Conv2D/ReadVariableOp?#block3_conv3/BiasAdd/ReadVariableOp?"block3_conv3/Conv2D/ReadVariableOp?#block3_conv4/BiasAdd/ReadVariableOp?"block3_conv4/Conv2D/ReadVariableOp?#block4_conv1/BiasAdd/ReadVariableOp?"block4_conv1/Conv2D/ReadVariableOp?#block4_conv2/BiasAdd/ReadVariableOp?"block4_conv2/Conv2D/ReadVariableOp?#block4_conv3/BiasAdd/ReadVariableOp?"block4_conv3/Conv2D/ReadVariableOp?#block4_conv4/BiasAdd/ReadVariableOp?"block4_conv4/Conv2D/ReadVariableOp?#block5_conv1/BiasAdd/ReadVariableOp?"block5_conv1/Conv2D/ReadVariableOp?#block5_conv2/BiasAdd/ReadVariableOp?"block5_conv2/Conv2D/ReadVariableOp?#block5_conv3/BiasAdd/ReadVariableOp?"block5_conv3/Conv2D/ReadVariableOp?#block5_conv4/BiasAdd/ReadVariableOp?"block5_conv4/Conv2D/ReadVariableOp?
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp?
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
block1_conv1/Conv2D?
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp?
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv1/BiasAdd?
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv1/Relu?
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOp?
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
block1_conv2/Conv2D?
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp?
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv2/BiasAdd?
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv2/Relu?
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool?
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02$
"block2_conv1/Conv2D/ReadVariableOp?
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
block2_conv1/Conv2D?
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp?
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv1/BiasAdd?
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv1/Relu?
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block2_conv2/Conv2D/ReadVariableOp?
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
block2_conv2/Conv2D?
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp?
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv2/BiasAdd?
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv2/Relu?
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool?
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv1/Conv2D/ReadVariableOp?
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv1/Conv2D?
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp?
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv1/BiasAdd?
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv1/Relu?
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv2/Conv2D/ReadVariableOp?
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv2/Conv2D?
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp?
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv2/BiasAdd?
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv2/Relu?
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv3/Conv2D/ReadVariableOp?
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv3/Conv2D?
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp?
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv3/BiasAdd?
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv3/Relu?
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv4/Conv2D/ReadVariableOp?
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv4/Conv2D?
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOp?
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv4/BiasAdd?
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv4/Relu?
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool?
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv1/Conv2D/ReadVariableOp?
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv1/Conv2D?
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp?
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv1/BiasAdd?
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv1/Relu?
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv2/Conv2D/ReadVariableOp?
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv2/Conv2D?
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp?
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv2/BiasAdd?
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv2/Relu?
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv3/Conv2D/ReadVariableOp?
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv3/Conv2D?
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp?
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv3/BiasAdd?
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv3/Relu?
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv4/Conv2D/ReadVariableOp?
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv4/Conv2D?
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOp?
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv4/BiasAdd?
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv4/Relu?
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool?
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv1/Conv2D/ReadVariableOp?
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv1/Conv2D?
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp?
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv1/BiasAdd?
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv1/Relu?
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv2/Conv2D/ReadVariableOp?
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv2/Conv2D?
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp?
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv2/BiasAdd?
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv2/Relu?
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv3/Conv2D/ReadVariableOp?
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv3/Conv2D?
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp?
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv3/BiasAdd?
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv3/Relu?
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv4/Conv2D/ReadVariableOp?
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv4/Conv2D?
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOp?
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv4/BiasAdd?
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv4/Relu?
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool?

IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
,__inference_block1_conv2_layer_call_fn_50022

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_459862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????}^@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????}^@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????}^@
 
_user_specified_nameinputs
ٶ
?
@__inference_vgg19_layer_call_and_return_conditional_losses_49825

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@?;
,block2_conv1_biasadd_readvariableop_resource:	?G
+block2_conv2_conv2d_readvariableop_resource:??;
,block2_conv2_biasadd_readvariableop_resource:	?G
+block3_conv1_conv2d_readvariableop_resource:??;
,block3_conv1_biasadd_readvariableop_resource:	?G
+block3_conv2_conv2d_readvariableop_resource:??;
,block3_conv2_biasadd_readvariableop_resource:	?G
+block3_conv3_conv2d_readvariableop_resource:??;
,block3_conv3_biasadd_readvariableop_resource:	?G
+block3_conv4_conv2d_readvariableop_resource:??;
,block3_conv4_biasadd_readvariableop_resource:	?G
+block4_conv1_conv2d_readvariableop_resource:??;
,block4_conv1_biasadd_readvariableop_resource:	?G
+block4_conv2_conv2d_readvariableop_resource:??;
,block4_conv2_biasadd_readvariableop_resource:	?G
+block4_conv3_conv2d_readvariableop_resource:??;
,block4_conv3_biasadd_readvariableop_resource:	?G
+block4_conv4_conv2d_readvariableop_resource:??;
,block4_conv4_biasadd_readvariableop_resource:	?G
+block5_conv1_conv2d_readvariableop_resource:??;
,block5_conv1_biasadd_readvariableop_resource:	?G
+block5_conv2_conv2d_readvariableop_resource:??;
,block5_conv2_biasadd_readvariableop_resource:	?G
+block5_conv3_conv2d_readvariableop_resource:??;
,block5_conv3_biasadd_readvariableop_resource:	?G
+block5_conv4_conv2d_readvariableop_resource:??;
,block5_conv4_biasadd_readvariableop_resource:	?
identity??#block1_conv1/BiasAdd/ReadVariableOp?"block1_conv1/Conv2D/ReadVariableOp?#block1_conv2/BiasAdd/ReadVariableOp?"block1_conv2/Conv2D/ReadVariableOp?#block2_conv1/BiasAdd/ReadVariableOp?"block2_conv1/Conv2D/ReadVariableOp?#block2_conv2/BiasAdd/ReadVariableOp?"block2_conv2/Conv2D/ReadVariableOp?#block3_conv1/BiasAdd/ReadVariableOp?"block3_conv1/Conv2D/ReadVariableOp?#block3_conv2/BiasAdd/ReadVariableOp?"block3_conv2/Conv2D/ReadVariableOp?#block3_conv3/BiasAdd/ReadVariableOp?"block3_conv3/Conv2D/ReadVariableOp?#block3_conv4/BiasAdd/ReadVariableOp?"block3_conv4/Conv2D/ReadVariableOp?#block4_conv1/BiasAdd/ReadVariableOp?"block4_conv1/Conv2D/ReadVariableOp?#block4_conv2/BiasAdd/ReadVariableOp?"block4_conv2/Conv2D/ReadVariableOp?#block4_conv3/BiasAdd/ReadVariableOp?"block4_conv3/Conv2D/ReadVariableOp?#block4_conv4/BiasAdd/ReadVariableOp?"block4_conv4/Conv2D/ReadVariableOp?#block5_conv1/BiasAdd/ReadVariableOp?"block5_conv1/Conv2D/ReadVariableOp?#block5_conv2/BiasAdd/ReadVariableOp?"block5_conv2/Conv2D/ReadVariableOp?#block5_conv3/BiasAdd/ReadVariableOp?"block5_conv3/Conv2D/ReadVariableOp?#block5_conv4/BiasAdd/ReadVariableOp?"block5_conv4/Conv2D/ReadVariableOp?
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp?
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
block1_conv1/Conv2D?
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp?
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv1/BiasAdd?
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv1/Relu?
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOp?
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
block1_conv2/Conv2D?
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp?
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv2/BiasAdd?
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
block1_conv2/Relu?
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool?
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02$
"block2_conv1/Conv2D/ReadVariableOp?
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
block2_conv1/Conv2D?
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp?
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv1/BiasAdd?
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv1/Relu?
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block2_conv2/Conv2D/ReadVariableOp?
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
block2_conv2/Conv2D?
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp?
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv2/BiasAdd?
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
block2_conv2/Relu?
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool?
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv1/Conv2D/ReadVariableOp?
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv1/Conv2D?
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp?
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv1/BiasAdd?
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv1/Relu?
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv2/Conv2D/ReadVariableOp?
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv2/Conv2D?
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp?
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv2/BiasAdd?
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv2/Relu?
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv3/Conv2D/ReadVariableOp?
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv3/Conv2D?
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp?
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv3/BiasAdd?
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv3/Relu?
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv4/Conv2D/ReadVariableOp?
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block3_conv4/Conv2D?
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOp?
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block3_conv4/BiasAdd?
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block3_conv4/Relu?
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool?
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv1/Conv2D/ReadVariableOp?
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv1/Conv2D?
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp?
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv1/BiasAdd?
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv1/Relu?
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv2/Conv2D/ReadVariableOp?
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv2/Conv2D?
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp?
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv2/BiasAdd?
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv2/Relu?
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv3/Conv2D/ReadVariableOp?
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv3/Conv2D?
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp?
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv3/BiasAdd?
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv3/Relu?
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv4/Conv2D/ReadVariableOp?
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv4/Conv2D?
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOp?
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv4/BiasAdd?
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv4/Relu?
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool?
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv1/Conv2D/ReadVariableOp?
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv1/Conv2D?
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp?
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv1/BiasAdd?
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv1/Relu?
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv2/Conv2D/ReadVariableOp?
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv2/Conv2D?
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp?
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv2/BiasAdd?
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv2/Relu?
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv3/Conv2D/ReadVariableOp?
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv3/Conv2D?
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp?
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv3/BiasAdd?
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv3/Relu?
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv4/Conv2D/ReadVariableOp?
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv4/Conv2D?
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOp?
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv4/BiasAdd?
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv4/Relu?
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool?

IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
,__inference_block1_conv1_layer_call_fn_50002

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_459692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????}^@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????}^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
G
+__inference_block4_pool_layer_call_fn_45939

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_459332
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_block3_conv2_layer_call_fn_50102

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_460562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block2_conv2_layer_call_and_return_conditional_losses_46021

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????>/?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????>/?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????>/?
 
_user_specified_nameinputs
?'
?
B__inference_model_2_layer_call_and_return_conditional_losses_48403
input_3
input_4'
model_1_48292:@
model_1_48294:@'
model_1_48296:@@
model_1_48298:@(
model_1_48300:@?
model_1_48302:	?)
model_1_48304:??
model_1_48306:	?)
model_1_48308:??
model_1_48310:	?)
model_1_48312:??
model_1_48314:	?)
model_1_48316:??
model_1_48318:	?)
model_1_48320:??
model_1_48322:	?)
model_1_48324:??
model_1_48326:	?)
model_1_48328:??
model_1_48330:	?)
model_1_48332:??
model_1_48334:	?)
model_1_48336:??
model_1_48338:	?)
model_1_48340:??
model_1_48342:	?)
model_1_48344:??
model_1_48346:	?)
model_1_48348:??
model_1_48350:	?)
model_1_48352:??
model_1_48354:	? 
model_1_48356:	?@
model_1_48358:@
dense_2_48397:
dense_2_48399:
identity??dense_2/StatefulPartitionedCall?model_1/StatefulPartitionedCall?!model_1/StatefulPartitionedCall_1?
model_1/StatefulPartitionedCallStatefulPartitionedCallinput_3model_1_48292model_1_48294model_1_48296model_1_48298model_1_48300model_1_48302model_1_48304model_1_48306model_1_48308model_1_48310model_1_48312model_1_48314model_1_48316model_1_48318model_1_48320model_1_48322model_1_48324model_1_48326model_1_48328model_1_48330model_1_48332model_1_48334model_1_48336model_1_48338model_1_48340model_1_48342model_1_48344model_1_48346model_1_48348model_1_48350model_1_48352model_1_48354model_1_48356model_1_48358*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_472712!
model_1/StatefulPartitionedCall?
!model_1/StatefulPartitionedCall_1StatefulPartitionedCallinput_4model_1_48292model_1_48294model_1_48296model_1_48298model_1_48300model_1_48302model_1_48304model_1_48306model_1_48308model_1_48310model_1_48312model_1_48314model_1_48316model_1_48318model_1_48320model_1_48322model_1_48324model_1_48326model_1_48328model_1_48330model_1_48332model_1_48334model_1_48336model_1_48338model_1_48340model_1_48342model_1_48344model_1_48346model_1_48348model_1_48350model_1_48352model_1_48354model_1_48356model_1_48358*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_472712#
!model_1/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall(model_1/StatefulPartitionedCall:output:0*model_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_478212
lambda/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_48397dense_2_48399*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_477052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^model_1/StatefulPartitionedCall"^model_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall2F
!model_1/StatefulPartitionedCall_1!model_1/StatefulPartitionedCall_1:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_3:XT
/
_output_shapes
:?????????}^
!
_user_specified_name	input_4
?
?
G__inference_block4_conv2_layer_call_and_return_conditional_losses_46125

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_vgg19_layer_call_fn_46303
input_6!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_462362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_6
?
?
G__inference_block3_conv1_layer_call_and_return_conditional_losses_50073

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block4_conv1_layer_call_and_return_conditional_losses_50153

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_block2_conv2_layer_call_and_return_conditional_losses_50053

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????>/?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????>/?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????>/?
 
_user_specified_nameinputs
?
?
'__inference_dense_1_layer_call_fn_49982

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_470332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block4_conv1_layer_call_fn_50162

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_461082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?

B__inference_model_1_layer_call_and_return_conditional_losses_47490
input_5%
vgg19_47418:@
vgg19_47420:@%
vgg19_47422:@@
vgg19_47424:@&
vgg19_47426:@?
vgg19_47428:	?'
vgg19_47430:??
vgg19_47432:	?'
vgg19_47434:??
vgg19_47436:	?'
vgg19_47438:??
vgg19_47440:	?'
vgg19_47442:??
vgg19_47444:	?'
vgg19_47446:??
vgg19_47448:	?'
vgg19_47450:??
vgg19_47452:	?'
vgg19_47454:??
vgg19_47456:	?'
vgg19_47458:??
vgg19_47460:	?'
vgg19_47462:??
vgg19_47464:	?'
vgg19_47466:??
vgg19_47468:	?'
vgg19_47470:??
vgg19_47472:	?'
vgg19_47474:??
vgg19_47476:	?'
vgg19_47478:??
vgg19_47480:	? 
dense_1_47484:	?@
dense_1_47486:@
identity??dense_1/StatefulPartitionedCall?vgg19/StatefulPartitionedCall?
vgg19/StatefulPartitionedCallStatefulPartitionedCallinput_5vgg19_47418vgg19_47420vgg19_47422vgg19_47424vgg19_47426vgg19_47428vgg19_47430vgg19_47432vgg19_47434vgg19_47436vgg19_47438vgg19_47440vgg19_47442vgg19_47444vgg19_47446vgg19_47448vgg19_47450vgg19_47452vgg19_47454vgg19_47456vgg19_47458vgg19_47460vgg19_47462vgg19_47464vgg19_47466vgg19_47468vgg19_47470vgg19_47472vgg19_47474vgg19_47476vgg19_47478vgg19_47480*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_462362
vgg19/StatefulPartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_469442,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_47484dense_1_47486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_470332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_5
?
?
G__inference_block3_conv4_layer_call_and_return_conditional_losses_46090

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?l
?
@__inference_vgg19_layer_call_and_return_conditional_losses_46236

inputs,
block1_conv1_45970:@ 
block1_conv1_45972:@,
block1_conv2_45987:@@ 
block1_conv2_45989:@-
block2_conv1_46005:@?!
block2_conv1_46007:	?.
block2_conv2_46022:??!
block2_conv2_46024:	?.
block3_conv1_46040:??!
block3_conv1_46042:	?.
block3_conv2_46057:??!
block3_conv2_46059:	?.
block3_conv3_46074:??!
block3_conv3_46076:	?.
block3_conv4_46091:??!
block3_conv4_46093:	?.
block4_conv1_46109:??!
block4_conv1_46111:	?.
block4_conv2_46126:??!
block4_conv2_46128:	?.
block4_conv3_46143:??!
block4_conv3_46145:	?.
block4_conv4_46160:??!
block4_conv4_46162:	?.
block5_conv1_46178:??!
block5_conv1_46180:	?.
block5_conv2_46195:??!
block5_conv2_46197:	?.
block5_conv3_46212:??!
block5_conv3_46214:	?.
block5_conv4_46229:??!
block5_conv4_46231:	?
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block3_conv4/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block4_conv4/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?$block5_conv4/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_45970block1_conv1_45972*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_459692&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_45987block1_conv2_45989*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_459862&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>/@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_458972
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_46005block2_conv1_46007*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_460042&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_46022block2_conv2_46024*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_460212&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_459092
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_46040block3_conv1_46042*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_460392&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_46057block3_conv2_46059*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_460562&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_46074block3_conv3_46076*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_460732&
$block3_conv3/StatefulPartitionedCall?
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_46091block3_conv4_46093*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_460902&
$block3_conv4/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_459212
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_46109block4_conv1_46111*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_461082&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_46126block4_conv2_46128*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_461252&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_46143block4_conv3_46145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_461422&
$block4_conv3/StatefulPartitionedCall?
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_46160block4_conv4_46162*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_461592&
$block4_conv4/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_459332
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_46178block5_conv1_46180*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_461772&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_46195block5_conv2_46197*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_461942&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_46212block5_conv3_46214*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_462112&
$block5_conv3/StatefulPartitionedCall?
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_46229block5_conv4_46231*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_462282&
$block5_conv4/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_459452
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
R
&__inference_lambda_layer_call_fn_49557
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_476922
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:Q M
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/1
?
q
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_46944

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?	
'__inference_model_2_layer_call_fn_48173
input_3
input_4!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@

unknown_33:

unknown_34:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_480202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_3:XT
/
_output_shapes
:?????????}^
!
_user_specified_name	input_4
?'
?
B__inference_model_2_layer_call_and_return_conditional_losses_48020

inputs
inputs_1'
model_1_47909:@
model_1_47911:@'
model_1_47913:@@
model_1_47915:@(
model_1_47917:@?
model_1_47919:	?)
model_1_47921:??
model_1_47923:	?)
model_1_47925:??
model_1_47927:	?)
model_1_47929:??
model_1_47931:	?)
model_1_47933:??
model_1_47935:	?)
model_1_47937:??
model_1_47939:	?)
model_1_47941:??
model_1_47943:	?)
model_1_47945:??
model_1_47947:	?)
model_1_47949:??
model_1_47951:	?)
model_1_47953:??
model_1_47955:	?)
model_1_47957:??
model_1_47959:	?)
model_1_47961:??
model_1_47963:	?)
model_1_47965:??
model_1_47967:	?)
model_1_47969:??
model_1_47971:	? 
model_1_47973:	?@
model_1_47975:@
dense_2_48014:
dense_2_48016:
identity??dense_2/StatefulPartitionedCall?model_1/StatefulPartitionedCall?!model_1/StatefulPartitionedCall_1?
model_1/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_1_47909model_1_47911model_1_47913model_1_47915model_1_47917model_1_47919model_1_47921model_1_47923model_1_47925model_1_47927model_1_47929model_1_47931model_1_47933model_1_47935model_1_47937model_1_47939model_1_47941model_1_47943model_1_47945model_1_47947model_1_47949model_1_47951model_1_47953model_1_47955model_1_47957model_1_47959model_1_47961model_1_47963model_1_47965model_1_47967model_1_47969model_1_47971model_1_47973model_1_47975*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_472712!
model_1/StatefulPartitionedCall?
!model_1/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_1_47909model_1_47911model_1_47913model_1_47915model_1_47917model_1_47919model_1_47921model_1_47923model_1_47925model_1_47927model_1_47929model_1_47931model_1_47933model_1_47935model_1_47937model_1_47939model_1_47941model_1_47943model_1_47945model_1_47947model_1_47949model_1_47951model_1_47953model_1_47955model_1_47957model_1_47959model_1_47961model_1_47963model_1_47965model_1_47967model_1_47969model_1_47971model_1_47973model_1_47975*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_472712#
!model_1/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall(model_1/StatefulPartitionedCall:output:0*model_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_478212
lambda/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_48014dense_2_48016*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_477052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^model_1/StatefulPartitionedCall"^model_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:?????????}^:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall2F
!model_1/StatefulPartitionedCall_1!model_1/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?	
'__inference_model_1_layer_call_fn_49450

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?@

unknown_32:@
identity??StatefulPartitionedCall?
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_470402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_49574

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_block3_conv1_layer_call_fn_50082

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_460392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
B__inference_model_1_layer_call_and_return_conditional_losses_49377

inputsK
1vgg19_block1_conv1_conv2d_readvariableop_resource:@@
2vgg19_block1_conv1_biasadd_readvariableop_resource:@K
1vgg19_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg19_block1_conv2_biasadd_readvariableop_resource:@L
1vgg19_block2_conv1_conv2d_readvariableop_resource:@?A
2vgg19_block2_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block2_conv2_conv2d_readvariableop_resource:??A
2vgg19_block2_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv1_conv2d_readvariableop_resource:??A
2vgg19_block3_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv2_conv2d_readvariableop_resource:??A
2vgg19_block3_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv3_conv2d_readvariableop_resource:??A
2vgg19_block3_conv3_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv4_conv2d_readvariableop_resource:??A
2vgg19_block3_conv4_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv1_conv2d_readvariableop_resource:??A
2vgg19_block4_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv2_conv2d_readvariableop_resource:??A
2vgg19_block4_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv3_conv2d_readvariableop_resource:??A
2vgg19_block4_conv3_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv4_conv2d_readvariableop_resource:??A
2vgg19_block4_conv4_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv1_conv2d_readvariableop_resource:??A
2vgg19_block5_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv2_conv2d_readvariableop_resource:??A
2vgg19_block5_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv3_conv2d_readvariableop_resource:??A
2vgg19_block5_conv3_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv4_conv2d_readvariableop_resource:??A
2vgg19_block5_conv4_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?)vgg19/block1_conv1/BiasAdd/ReadVariableOp?(vgg19/block1_conv1/Conv2D/ReadVariableOp?)vgg19/block1_conv2/BiasAdd/ReadVariableOp?(vgg19/block1_conv2/Conv2D/ReadVariableOp?)vgg19/block2_conv1/BiasAdd/ReadVariableOp?(vgg19/block2_conv1/Conv2D/ReadVariableOp?)vgg19/block2_conv2/BiasAdd/ReadVariableOp?(vgg19/block2_conv2/Conv2D/ReadVariableOp?)vgg19/block3_conv1/BiasAdd/ReadVariableOp?(vgg19/block3_conv1/Conv2D/ReadVariableOp?)vgg19/block3_conv2/BiasAdd/ReadVariableOp?(vgg19/block3_conv2/Conv2D/ReadVariableOp?)vgg19/block3_conv3/BiasAdd/ReadVariableOp?(vgg19/block3_conv3/Conv2D/ReadVariableOp?)vgg19/block3_conv4/BiasAdd/ReadVariableOp?(vgg19/block3_conv4/Conv2D/ReadVariableOp?)vgg19/block4_conv1/BiasAdd/ReadVariableOp?(vgg19/block4_conv1/Conv2D/ReadVariableOp?)vgg19/block4_conv2/BiasAdd/ReadVariableOp?(vgg19/block4_conv2/Conv2D/ReadVariableOp?)vgg19/block4_conv3/BiasAdd/ReadVariableOp?(vgg19/block4_conv3/Conv2D/ReadVariableOp?)vgg19/block4_conv4/BiasAdd/ReadVariableOp?(vgg19/block4_conv4/Conv2D/ReadVariableOp?)vgg19/block5_conv1/BiasAdd/ReadVariableOp?(vgg19/block5_conv1/Conv2D/ReadVariableOp?)vgg19/block5_conv2/BiasAdd/ReadVariableOp?(vgg19/block5_conv2/Conv2D/ReadVariableOp?)vgg19/block5_conv3/BiasAdd/ReadVariableOp?(vgg19/block5_conv3/Conv2D/ReadVariableOp?)vgg19/block5_conv4/BiasAdd/ReadVariableOp?(vgg19/block5_conv4/Conv2D/ReadVariableOp?
(vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg19/block1_conv1/Conv2D/ReadVariableOp?
vgg19/block1_conv1/Conv2DConv2Dinputs0vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
vgg19/block1_conv1/Conv2D?
)vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv1/BiasAdd/ReadVariableOp?
vgg19/block1_conv1/BiasAddBiasAdd"vgg19/block1_conv1/Conv2D:output:01vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv1/BiasAdd?
vgg19/block1_conv1/ReluRelu#vgg19/block1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv1/Relu?
(vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg19/block1_conv2/Conv2D/ReadVariableOp?
vgg19/block1_conv2/Conv2DConv2D%vgg19/block1_conv1/Relu:activations:00vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
vgg19/block1_conv2/Conv2D?
)vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv2/BiasAdd/ReadVariableOp?
vgg19/block1_conv2/BiasAddBiasAdd"vgg19/block1_conv2/Conv2D:output:01vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv2/BiasAdd?
vgg19/block1_conv2/ReluRelu#vgg19/block1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv2/Relu?
vgg19/block1_pool/MaxPoolMaxPool%vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2
vgg19/block1_pool/MaxPool?
(vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02*
(vgg19/block2_conv1/Conv2D/ReadVariableOp?
vgg19/block2_conv1/Conv2DConv2D"vgg19/block1_pool/MaxPool:output:00vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
vgg19/block2_conv1/Conv2D?
)vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block2_conv1/BiasAdd/ReadVariableOp?
vgg19/block2_conv1/BiasAddBiasAdd"vgg19/block2_conv1/Conv2D:output:01vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv1/BiasAdd?
vgg19/block2_conv1/ReluRelu#vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv1/Relu?
(vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block2_conv2/Conv2D/ReadVariableOp?
vgg19/block2_conv2/Conv2DConv2D%vgg19/block2_conv1/Relu:activations:00vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
vgg19/block2_conv2/Conv2D?
)vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block2_conv2/BiasAdd/ReadVariableOp?
vgg19/block2_conv2/BiasAddBiasAdd"vgg19/block2_conv2/Conv2D:output:01vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv2/BiasAdd?
vgg19/block2_conv2/ReluRelu#vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv2/Relu?
vgg19/block2_pool/MaxPoolMaxPool%vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block2_pool/MaxPool?
(vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv1/Conv2D/ReadVariableOp?
vgg19/block3_conv1/Conv2DConv2D"vgg19/block2_pool/MaxPool:output:00vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv1/Conv2D?
)vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv1/BiasAdd/ReadVariableOp?
vgg19/block3_conv1/BiasAddBiasAdd"vgg19/block3_conv1/Conv2D:output:01vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv1/BiasAdd?
vgg19/block3_conv1/ReluRelu#vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv1/Relu?
(vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv2/Conv2D/ReadVariableOp?
vgg19/block3_conv2/Conv2DConv2D%vgg19/block3_conv1/Relu:activations:00vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv2/Conv2D?
)vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv2/BiasAdd/ReadVariableOp?
vgg19/block3_conv2/BiasAddBiasAdd"vgg19/block3_conv2/Conv2D:output:01vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv2/BiasAdd?
vgg19/block3_conv2/ReluRelu#vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv2/Relu?
(vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv3/Conv2D/ReadVariableOp?
vgg19/block3_conv3/Conv2DConv2D%vgg19/block3_conv2/Relu:activations:00vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv3/Conv2D?
)vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv3/BiasAdd/ReadVariableOp?
vgg19/block3_conv3/BiasAddBiasAdd"vgg19/block3_conv3/Conv2D:output:01vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv3/BiasAdd?
vgg19/block3_conv3/ReluRelu#vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv3/Relu?
(vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv4/Conv2D/ReadVariableOp?
vgg19/block3_conv4/Conv2DConv2D%vgg19/block3_conv3/Relu:activations:00vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv4/Conv2D?
)vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv4/BiasAdd/ReadVariableOp?
vgg19/block3_conv4/BiasAddBiasAdd"vgg19/block3_conv4/Conv2D:output:01vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv4/BiasAdd?
vgg19/block3_conv4/ReluRelu#vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv4/Relu?
vgg19/block3_pool/MaxPoolMaxPool%vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block3_pool/MaxPool?
(vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv1/Conv2D/ReadVariableOp?
vgg19/block4_conv1/Conv2DConv2D"vgg19/block3_pool/MaxPool:output:00vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv1/Conv2D?
)vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv1/BiasAdd/ReadVariableOp?
vgg19/block4_conv1/BiasAddBiasAdd"vgg19/block4_conv1/Conv2D:output:01vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv1/BiasAdd?
vgg19/block4_conv1/ReluRelu#vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv1/Relu?
(vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv2/Conv2D/ReadVariableOp?
vgg19/block4_conv2/Conv2DConv2D%vgg19/block4_conv1/Relu:activations:00vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv2/Conv2D?
)vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv2/BiasAdd/ReadVariableOp?
vgg19/block4_conv2/BiasAddBiasAdd"vgg19/block4_conv2/Conv2D:output:01vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv2/BiasAdd?
vgg19/block4_conv2/ReluRelu#vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv2/Relu?
(vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv3/Conv2D/ReadVariableOp?
vgg19/block4_conv3/Conv2DConv2D%vgg19/block4_conv2/Relu:activations:00vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv3/Conv2D?
)vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv3/BiasAdd/ReadVariableOp?
vgg19/block4_conv3/BiasAddBiasAdd"vgg19/block4_conv3/Conv2D:output:01vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv3/BiasAdd?
vgg19/block4_conv3/ReluRelu#vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv3/Relu?
(vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv4/Conv2D/ReadVariableOp?
vgg19/block4_conv4/Conv2DConv2D%vgg19/block4_conv3/Relu:activations:00vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv4/Conv2D?
)vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv4/BiasAdd/ReadVariableOp?
vgg19/block4_conv4/BiasAddBiasAdd"vgg19/block4_conv4/Conv2D:output:01vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv4/BiasAdd?
vgg19/block4_conv4/ReluRelu#vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv4/Relu?
vgg19/block4_pool/MaxPoolMaxPool%vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block4_pool/MaxPool?
(vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv1/Conv2D/ReadVariableOp?
vgg19/block5_conv1/Conv2DConv2D"vgg19/block4_pool/MaxPool:output:00vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv1/Conv2D?
)vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv1/BiasAdd/ReadVariableOp?
vgg19/block5_conv1/BiasAddBiasAdd"vgg19/block5_conv1/Conv2D:output:01vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv1/BiasAdd?
vgg19/block5_conv1/ReluRelu#vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv1/Relu?
(vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv2/Conv2D/ReadVariableOp?
vgg19/block5_conv2/Conv2DConv2D%vgg19/block5_conv1/Relu:activations:00vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv2/Conv2D?
)vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv2/BiasAdd/ReadVariableOp?
vgg19/block5_conv2/BiasAddBiasAdd"vgg19/block5_conv2/Conv2D:output:01vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv2/BiasAdd?
vgg19/block5_conv2/ReluRelu#vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv2/Relu?
(vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv3/Conv2D/ReadVariableOp?
vgg19/block5_conv3/Conv2DConv2D%vgg19/block5_conv2/Relu:activations:00vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv3/Conv2D?
)vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv3/BiasAdd/ReadVariableOp?
vgg19/block5_conv3/BiasAddBiasAdd"vgg19/block5_conv3/Conv2D:output:01vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv3/BiasAdd?
vgg19/block5_conv3/ReluRelu#vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv3/Relu?
(vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv4/Conv2D/ReadVariableOp?
vgg19/block5_conv4/Conv2DConv2D%vgg19/block5_conv3/Relu:activations:00vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv4/Conv2D?
)vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv4/BiasAdd/ReadVariableOp?
vgg19/block5_conv4/BiasAddBiasAdd"vgg19/block5_conv4/Conv2D:output:01vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv4/BiasAdd?
vgg19/block5_conv4/ReluRelu#vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv4/Relu?
vgg19/block5_pool/MaxPoolMaxPool%vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block5_pool/MaxPool?
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indices?
global_average_pooling2d_1/MeanMean"vgg19/block5_pool/MaxPool:output:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_1/Mean?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul(global_average_pooling2d_1/Mean:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^vgg19/block1_conv1/BiasAdd/ReadVariableOp)^vgg19/block1_conv1/Conv2D/ReadVariableOp*^vgg19/block1_conv2/BiasAdd/ReadVariableOp)^vgg19/block1_conv2/Conv2D/ReadVariableOp*^vgg19/block2_conv1/BiasAdd/ReadVariableOp)^vgg19/block2_conv1/Conv2D/ReadVariableOp*^vgg19/block2_conv2/BiasAdd/ReadVariableOp)^vgg19/block2_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv1/BiasAdd/ReadVariableOp)^vgg19/block3_conv1/Conv2D/ReadVariableOp*^vgg19/block3_conv2/BiasAdd/ReadVariableOp)^vgg19/block3_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv3/BiasAdd/ReadVariableOp)^vgg19/block3_conv3/Conv2D/ReadVariableOp*^vgg19/block3_conv4/BiasAdd/ReadVariableOp)^vgg19/block3_conv4/Conv2D/ReadVariableOp*^vgg19/block4_conv1/BiasAdd/ReadVariableOp)^vgg19/block4_conv1/Conv2D/ReadVariableOp*^vgg19/block4_conv2/BiasAdd/ReadVariableOp)^vgg19/block4_conv2/Conv2D/ReadVariableOp*^vgg19/block4_conv3/BiasAdd/ReadVariableOp)^vgg19/block4_conv3/Conv2D/ReadVariableOp*^vgg19/block4_conv4/BiasAdd/ReadVariableOp)^vgg19/block4_conv4/Conv2D/ReadVariableOp*^vgg19/block5_conv1/BiasAdd/ReadVariableOp)^vgg19/block5_conv1/Conv2D/ReadVariableOp*^vgg19/block5_conv2/BiasAdd/ReadVariableOp)^vgg19/block5_conv2/Conv2D/ReadVariableOp*^vgg19/block5_conv3/BiasAdd/ReadVariableOp)^vgg19/block5_conv3/Conv2D/ReadVariableOp*^vgg19/block5_conv4/BiasAdd/ReadVariableOp)^vgg19/block5_conv4/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)vgg19/block1_conv1/BiasAdd/ReadVariableOp)vgg19/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv1/Conv2D/ReadVariableOp(vgg19/block1_conv1/Conv2D/ReadVariableOp2V
)vgg19/block1_conv2/BiasAdd/ReadVariableOp)vgg19/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv2/Conv2D/ReadVariableOp(vgg19/block1_conv2/Conv2D/ReadVariableOp2V
)vgg19/block2_conv1/BiasAdd/ReadVariableOp)vgg19/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv1/Conv2D/ReadVariableOp(vgg19/block2_conv1/Conv2D/ReadVariableOp2V
)vgg19/block2_conv2/BiasAdd/ReadVariableOp)vgg19/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv2/Conv2D/ReadVariableOp(vgg19/block2_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv1/BiasAdd/ReadVariableOp)vgg19/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv1/Conv2D/ReadVariableOp(vgg19/block3_conv1/Conv2D/ReadVariableOp2V
)vgg19/block3_conv2/BiasAdd/ReadVariableOp)vgg19/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv2/Conv2D/ReadVariableOp(vgg19/block3_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv3/BiasAdd/ReadVariableOp)vgg19/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv3/Conv2D/ReadVariableOp(vgg19/block3_conv3/Conv2D/ReadVariableOp2V
)vgg19/block3_conv4/BiasAdd/ReadVariableOp)vgg19/block3_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv4/Conv2D/ReadVariableOp(vgg19/block3_conv4/Conv2D/ReadVariableOp2V
)vgg19/block4_conv1/BiasAdd/ReadVariableOp)vgg19/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv1/Conv2D/ReadVariableOp(vgg19/block4_conv1/Conv2D/ReadVariableOp2V
)vgg19/block4_conv2/BiasAdd/ReadVariableOp)vgg19/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv2/Conv2D/ReadVariableOp(vgg19/block4_conv2/Conv2D/ReadVariableOp2V
)vgg19/block4_conv3/BiasAdd/ReadVariableOp)vgg19/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv3/Conv2D/ReadVariableOp(vgg19/block4_conv3/Conv2D/ReadVariableOp2V
)vgg19/block4_conv4/BiasAdd/ReadVariableOp)vgg19/block4_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv4/Conv2D/ReadVariableOp(vgg19/block4_conv4/Conv2D/ReadVariableOp2V
)vgg19/block5_conv1/BiasAdd/ReadVariableOp)vgg19/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv1/Conv2D/ReadVariableOp(vgg19/block5_conv1/Conv2D/ReadVariableOp2V
)vgg19/block5_conv2/BiasAdd/ReadVariableOp)vgg19/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv2/Conv2D/ReadVariableOp(vgg19/block5_conv2/Conv2D/ReadVariableOp2V
)vgg19/block5_conv3/BiasAdd/ReadVariableOp)vgg19/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv3/Conv2D/ReadVariableOp(vgg19/block5_conv3/Conv2D/ReadVariableOp2V
)vgg19/block5_conv4/BiasAdd/ReadVariableOp)vgg19/block5_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv4/Conv2D/ReadVariableOp(vgg19/block5_conv4/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
m
A__inference_lambda_layer_call_and_return_conditional_losses_49537
inputs_0
inputs_1
identityW
subSubinputs_0inputs_1*
T0*'
_output_shapes
:?????????@2
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????@2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:Q M
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/1
??
?
B__inference_model_1_layer_call_and_return_conditional_losses_49248

inputsK
1vgg19_block1_conv1_conv2d_readvariableop_resource:@@
2vgg19_block1_conv1_biasadd_readvariableop_resource:@K
1vgg19_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg19_block1_conv2_biasadd_readvariableop_resource:@L
1vgg19_block2_conv1_conv2d_readvariableop_resource:@?A
2vgg19_block2_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block2_conv2_conv2d_readvariableop_resource:??A
2vgg19_block2_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv1_conv2d_readvariableop_resource:??A
2vgg19_block3_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv2_conv2d_readvariableop_resource:??A
2vgg19_block3_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv3_conv2d_readvariableop_resource:??A
2vgg19_block3_conv3_biasadd_readvariableop_resource:	?M
1vgg19_block3_conv4_conv2d_readvariableop_resource:??A
2vgg19_block3_conv4_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv1_conv2d_readvariableop_resource:??A
2vgg19_block4_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv2_conv2d_readvariableop_resource:??A
2vgg19_block4_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv3_conv2d_readvariableop_resource:??A
2vgg19_block4_conv3_biasadd_readvariableop_resource:	?M
1vgg19_block4_conv4_conv2d_readvariableop_resource:??A
2vgg19_block4_conv4_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv1_conv2d_readvariableop_resource:??A
2vgg19_block5_conv1_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv2_conv2d_readvariableop_resource:??A
2vgg19_block5_conv2_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv3_conv2d_readvariableop_resource:??A
2vgg19_block5_conv3_biasadd_readvariableop_resource:	?M
1vgg19_block5_conv4_conv2d_readvariableop_resource:??A
2vgg19_block5_conv4_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?)vgg19/block1_conv1/BiasAdd/ReadVariableOp?(vgg19/block1_conv1/Conv2D/ReadVariableOp?)vgg19/block1_conv2/BiasAdd/ReadVariableOp?(vgg19/block1_conv2/Conv2D/ReadVariableOp?)vgg19/block2_conv1/BiasAdd/ReadVariableOp?(vgg19/block2_conv1/Conv2D/ReadVariableOp?)vgg19/block2_conv2/BiasAdd/ReadVariableOp?(vgg19/block2_conv2/Conv2D/ReadVariableOp?)vgg19/block3_conv1/BiasAdd/ReadVariableOp?(vgg19/block3_conv1/Conv2D/ReadVariableOp?)vgg19/block3_conv2/BiasAdd/ReadVariableOp?(vgg19/block3_conv2/Conv2D/ReadVariableOp?)vgg19/block3_conv3/BiasAdd/ReadVariableOp?(vgg19/block3_conv3/Conv2D/ReadVariableOp?)vgg19/block3_conv4/BiasAdd/ReadVariableOp?(vgg19/block3_conv4/Conv2D/ReadVariableOp?)vgg19/block4_conv1/BiasAdd/ReadVariableOp?(vgg19/block4_conv1/Conv2D/ReadVariableOp?)vgg19/block4_conv2/BiasAdd/ReadVariableOp?(vgg19/block4_conv2/Conv2D/ReadVariableOp?)vgg19/block4_conv3/BiasAdd/ReadVariableOp?(vgg19/block4_conv3/Conv2D/ReadVariableOp?)vgg19/block4_conv4/BiasAdd/ReadVariableOp?(vgg19/block4_conv4/Conv2D/ReadVariableOp?)vgg19/block5_conv1/BiasAdd/ReadVariableOp?(vgg19/block5_conv1/Conv2D/ReadVariableOp?)vgg19/block5_conv2/BiasAdd/ReadVariableOp?(vgg19/block5_conv2/Conv2D/ReadVariableOp?)vgg19/block5_conv3/BiasAdd/ReadVariableOp?(vgg19/block5_conv3/Conv2D/ReadVariableOp?)vgg19/block5_conv4/BiasAdd/ReadVariableOp?(vgg19/block5_conv4/Conv2D/ReadVariableOp?
(vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg19/block1_conv1/Conv2D/ReadVariableOp?
vgg19/block1_conv1/Conv2DConv2Dinputs0vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
vgg19/block1_conv1/Conv2D?
)vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv1/BiasAdd/ReadVariableOp?
vgg19/block1_conv1/BiasAddBiasAdd"vgg19/block1_conv1/Conv2D:output:01vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv1/BiasAdd?
vgg19/block1_conv1/ReluRelu#vgg19/block1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv1/Relu?
(vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg19/block1_conv2/Conv2D/ReadVariableOp?
vgg19/block1_conv2/Conv2DConv2D%vgg19/block1_conv1/Relu:activations:00vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@*
paddingSAME*
strides
2
vgg19/block1_conv2/Conv2D?
)vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv2/BiasAdd/ReadVariableOp?
vgg19/block1_conv2/BiasAddBiasAdd"vgg19/block1_conv2/Conv2D:output:01vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv2/BiasAdd?
vgg19/block1_conv2/ReluRelu#vgg19/block1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}^@2
vgg19/block1_conv2/Relu?
vgg19/block1_pool/MaxPoolMaxPool%vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????>/@*
ksize
*
paddingVALID*
strides
2
vgg19/block1_pool/MaxPool?
(vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02*
(vgg19/block2_conv1/Conv2D/ReadVariableOp?
vgg19/block2_conv1/Conv2DConv2D"vgg19/block1_pool/MaxPool:output:00vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
vgg19/block2_conv1/Conv2D?
)vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block2_conv1/BiasAdd/ReadVariableOp?
vgg19/block2_conv1/BiasAddBiasAdd"vgg19/block2_conv1/Conv2D:output:01vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv1/BiasAdd?
vgg19/block2_conv1/ReluRelu#vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv1/Relu?
(vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block2_conv2/Conv2D/ReadVariableOp?
vgg19/block2_conv2/Conv2DConv2D%vgg19/block2_conv1/Relu:activations:00vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?*
paddingSAME*
strides
2
vgg19/block2_conv2/Conv2D?
)vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block2_conv2/BiasAdd/ReadVariableOp?
vgg19/block2_conv2/BiasAddBiasAdd"vgg19/block2_conv2/Conv2D:output:01vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv2/BiasAdd?
vgg19/block2_conv2/ReluRelu#vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????>/?2
vgg19/block2_conv2/Relu?
vgg19/block2_pool/MaxPoolMaxPool%vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block2_pool/MaxPool?
(vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv1/Conv2D/ReadVariableOp?
vgg19/block3_conv1/Conv2DConv2D"vgg19/block2_pool/MaxPool:output:00vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv1/Conv2D?
)vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv1/BiasAdd/ReadVariableOp?
vgg19/block3_conv1/BiasAddBiasAdd"vgg19/block3_conv1/Conv2D:output:01vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv1/BiasAdd?
vgg19/block3_conv1/ReluRelu#vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv1/Relu?
(vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv2/Conv2D/ReadVariableOp?
vgg19/block3_conv2/Conv2DConv2D%vgg19/block3_conv1/Relu:activations:00vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv2/Conv2D?
)vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv2/BiasAdd/ReadVariableOp?
vgg19/block3_conv2/BiasAddBiasAdd"vgg19/block3_conv2/Conv2D:output:01vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv2/BiasAdd?
vgg19/block3_conv2/ReluRelu#vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv2/Relu?
(vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv3/Conv2D/ReadVariableOp?
vgg19/block3_conv3/Conv2DConv2D%vgg19/block3_conv2/Relu:activations:00vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv3/Conv2D?
)vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv3/BiasAdd/ReadVariableOp?
vgg19/block3_conv3/BiasAddBiasAdd"vgg19/block3_conv3/Conv2D:output:01vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv3/BiasAdd?
vgg19/block3_conv3/ReluRelu#vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv3/Relu?
(vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block3_conv4/Conv2D/ReadVariableOp?
vgg19/block3_conv4/Conv2DConv2D%vgg19/block3_conv3/Relu:activations:00vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block3_conv4/Conv2D?
)vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block3_conv4/BiasAdd/ReadVariableOp?
vgg19/block3_conv4/BiasAddBiasAdd"vgg19/block3_conv4/Conv2D:output:01vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv4/BiasAdd?
vgg19/block3_conv4/ReluRelu#vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block3_conv4/Relu?
vgg19/block3_pool/MaxPoolMaxPool%vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block3_pool/MaxPool?
(vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv1/Conv2D/ReadVariableOp?
vgg19/block4_conv1/Conv2DConv2D"vgg19/block3_pool/MaxPool:output:00vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv1/Conv2D?
)vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv1/BiasAdd/ReadVariableOp?
vgg19/block4_conv1/BiasAddBiasAdd"vgg19/block4_conv1/Conv2D:output:01vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv1/BiasAdd?
vgg19/block4_conv1/ReluRelu#vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv1/Relu?
(vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv2/Conv2D/ReadVariableOp?
vgg19/block4_conv2/Conv2DConv2D%vgg19/block4_conv1/Relu:activations:00vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv2/Conv2D?
)vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv2/BiasAdd/ReadVariableOp?
vgg19/block4_conv2/BiasAddBiasAdd"vgg19/block4_conv2/Conv2D:output:01vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv2/BiasAdd?
vgg19/block4_conv2/ReluRelu#vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv2/Relu?
(vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv3/Conv2D/ReadVariableOp?
vgg19/block4_conv3/Conv2DConv2D%vgg19/block4_conv2/Relu:activations:00vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv3/Conv2D?
)vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv3/BiasAdd/ReadVariableOp?
vgg19/block4_conv3/BiasAddBiasAdd"vgg19/block4_conv3/Conv2D:output:01vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv3/BiasAdd?
vgg19/block4_conv3/ReluRelu#vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv3/Relu?
(vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block4_conv4/Conv2D/ReadVariableOp?
vgg19/block4_conv4/Conv2DConv2D%vgg19/block4_conv3/Relu:activations:00vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block4_conv4/Conv2D?
)vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block4_conv4/BiasAdd/ReadVariableOp?
vgg19/block4_conv4/BiasAddBiasAdd"vgg19/block4_conv4/Conv2D:output:01vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv4/BiasAdd?
vgg19/block4_conv4/ReluRelu#vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block4_conv4/Relu?
vgg19/block4_pool/MaxPoolMaxPool%vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block4_pool/MaxPool?
(vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv1/Conv2D/ReadVariableOp?
vgg19/block5_conv1/Conv2DConv2D"vgg19/block4_pool/MaxPool:output:00vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv1/Conv2D?
)vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv1/BiasAdd/ReadVariableOp?
vgg19/block5_conv1/BiasAddBiasAdd"vgg19/block5_conv1/Conv2D:output:01vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv1/BiasAdd?
vgg19/block5_conv1/ReluRelu#vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv1/Relu?
(vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv2/Conv2D/ReadVariableOp?
vgg19/block5_conv2/Conv2DConv2D%vgg19/block5_conv1/Relu:activations:00vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv2/Conv2D?
)vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv2/BiasAdd/ReadVariableOp?
vgg19/block5_conv2/BiasAddBiasAdd"vgg19/block5_conv2/Conv2D:output:01vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv2/BiasAdd?
vgg19/block5_conv2/ReluRelu#vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv2/Relu?
(vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv3/Conv2D/ReadVariableOp?
vgg19/block5_conv3/Conv2DConv2D%vgg19/block5_conv2/Relu:activations:00vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv3/Conv2D?
)vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv3/BiasAdd/ReadVariableOp?
vgg19/block5_conv3/BiasAddBiasAdd"vgg19/block5_conv3/Conv2D:output:01vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv3/BiasAdd?
vgg19/block5_conv3/ReluRelu#vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv3/Relu?
(vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg19/block5_conv4/Conv2D/ReadVariableOp?
vgg19/block5_conv4/Conv2DConv2D%vgg19/block5_conv3/Relu:activations:00vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg19/block5_conv4/Conv2D?
)vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg19/block5_conv4/BiasAdd/ReadVariableOp?
vgg19/block5_conv4/BiasAddBiasAdd"vgg19/block5_conv4/Conv2D:output:01vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv4/BiasAdd?
vgg19/block5_conv4/ReluRelu#vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg19/block5_conv4/Relu?
vgg19/block5_pool/MaxPoolMaxPool%vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg19/block5_pool/MaxPool?
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indices?
global_average_pooling2d_1/MeanMean"vgg19/block5_pool/MaxPool:output:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_1/Mean?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul(global_average_pooling2d_1/Mean:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^vgg19/block1_conv1/BiasAdd/ReadVariableOp)^vgg19/block1_conv1/Conv2D/ReadVariableOp*^vgg19/block1_conv2/BiasAdd/ReadVariableOp)^vgg19/block1_conv2/Conv2D/ReadVariableOp*^vgg19/block2_conv1/BiasAdd/ReadVariableOp)^vgg19/block2_conv1/Conv2D/ReadVariableOp*^vgg19/block2_conv2/BiasAdd/ReadVariableOp)^vgg19/block2_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv1/BiasAdd/ReadVariableOp)^vgg19/block3_conv1/Conv2D/ReadVariableOp*^vgg19/block3_conv2/BiasAdd/ReadVariableOp)^vgg19/block3_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv3/BiasAdd/ReadVariableOp)^vgg19/block3_conv3/Conv2D/ReadVariableOp*^vgg19/block3_conv4/BiasAdd/ReadVariableOp)^vgg19/block3_conv4/Conv2D/ReadVariableOp*^vgg19/block4_conv1/BiasAdd/ReadVariableOp)^vgg19/block4_conv1/Conv2D/ReadVariableOp*^vgg19/block4_conv2/BiasAdd/ReadVariableOp)^vgg19/block4_conv2/Conv2D/ReadVariableOp*^vgg19/block4_conv3/BiasAdd/ReadVariableOp)^vgg19/block4_conv3/Conv2D/ReadVariableOp*^vgg19/block4_conv4/BiasAdd/ReadVariableOp)^vgg19/block4_conv4/Conv2D/ReadVariableOp*^vgg19/block5_conv1/BiasAdd/ReadVariableOp)^vgg19/block5_conv1/Conv2D/ReadVariableOp*^vgg19/block5_conv2/BiasAdd/ReadVariableOp)^vgg19/block5_conv2/Conv2D/ReadVariableOp*^vgg19/block5_conv3/BiasAdd/ReadVariableOp)^vgg19/block5_conv3/Conv2D/ReadVariableOp*^vgg19/block5_conv4/BiasAdd/ReadVariableOp)^vgg19/block5_conv4/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)vgg19/block1_conv1/BiasAdd/ReadVariableOp)vgg19/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv1/Conv2D/ReadVariableOp(vgg19/block1_conv1/Conv2D/ReadVariableOp2V
)vgg19/block1_conv2/BiasAdd/ReadVariableOp)vgg19/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv2/Conv2D/ReadVariableOp(vgg19/block1_conv2/Conv2D/ReadVariableOp2V
)vgg19/block2_conv1/BiasAdd/ReadVariableOp)vgg19/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv1/Conv2D/ReadVariableOp(vgg19/block2_conv1/Conv2D/ReadVariableOp2V
)vgg19/block2_conv2/BiasAdd/ReadVariableOp)vgg19/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv2/Conv2D/ReadVariableOp(vgg19/block2_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv1/BiasAdd/ReadVariableOp)vgg19/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv1/Conv2D/ReadVariableOp(vgg19/block3_conv1/Conv2D/ReadVariableOp2V
)vgg19/block3_conv2/BiasAdd/ReadVariableOp)vgg19/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv2/Conv2D/ReadVariableOp(vgg19/block3_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv3/BiasAdd/ReadVariableOp)vgg19/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv3/Conv2D/ReadVariableOp(vgg19/block3_conv3/Conv2D/ReadVariableOp2V
)vgg19/block3_conv4/BiasAdd/ReadVariableOp)vgg19/block3_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv4/Conv2D/ReadVariableOp(vgg19/block3_conv4/Conv2D/ReadVariableOp2V
)vgg19/block4_conv1/BiasAdd/ReadVariableOp)vgg19/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv1/Conv2D/ReadVariableOp(vgg19/block4_conv1/Conv2D/ReadVariableOp2V
)vgg19/block4_conv2/BiasAdd/ReadVariableOp)vgg19/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv2/Conv2D/ReadVariableOp(vgg19/block4_conv2/Conv2D/ReadVariableOp2V
)vgg19/block4_conv3/BiasAdd/ReadVariableOp)vgg19/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv3/Conv2D/ReadVariableOp(vgg19/block4_conv3/Conv2D/ReadVariableOp2V
)vgg19/block4_conv4/BiasAdd/ReadVariableOp)vgg19/block4_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv4/Conv2D/ReadVariableOp(vgg19/block4_conv4/Conv2D/ReadVariableOp2V
)vgg19/block5_conv1/BiasAdd/ReadVariableOp)vgg19/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv1/Conv2D/ReadVariableOp(vgg19/block5_conv1/Conv2D/ReadVariableOp2V
)vgg19/block5_conv2/BiasAdd/ReadVariableOp)vgg19/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv2/Conv2D/ReadVariableOp(vgg19/block5_conv2/Conv2D/ReadVariableOp2V
)vgg19/block5_conv3/BiasAdd/ReadVariableOp)vgg19/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv3/Conv2D/ReadVariableOp(vgg19/block5_conv3/Conv2D/ReadVariableOp2V
)vgg19/block5_conv4/BiasAdd/ReadVariableOp)vgg19/block5_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv4/Conv2D/ReadVariableOp(vgg19/block5_conv4/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
,__inference_block4_conv2_layer_call_fn_50182

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_461252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_vgg19_layer_call_fn_49963

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?%
	unknown_7:??
	unknown_8:	?%
	unknown_9:??

unknown_10:	?&

unknown_11:??

unknown_12:	?&

unknown_13:??

unknown_14:	?&

unknown_15:??

unknown_16:	?&

unknown_17:??

unknown_18:	?&

unknown_19:??

unknown_20:	?&

unknown_21:??

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?&

unknown_27:??

unknown_28:	?&

unknown_29:??

unknown_30:	?
identity??StatefulPartitionedCall?
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_466232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????}^
 
_user_specified_nameinputs
?
?
G__inference_block5_conv2_layer_call_and_return_conditional_losses_46194

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?l
?
@__inference_vgg19_layer_call_and_return_conditional_losses_46937
input_6,
block1_conv1_46851:@ 
block1_conv1_46853:@,
block1_conv2_46856:@@ 
block1_conv2_46858:@-
block2_conv1_46862:@?!
block2_conv1_46864:	?.
block2_conv2_46867:??!
block2_conv2_46869:	?.
block3_conv1_46873:??!
block3_conv1_46875:	?.
block3_conv2_46878:??!
block3_conv2_46880:	?.
block3_conv3_46883:??!
block3_conv3_46885:	?.
block3_conv4_46888:??!
block3_conv4_46890:	?.
block4_conv1_46894:??!
block4_conv1_46896:	?.
block4_conv2_46899:??!
block4_conv2_46901:	?.
block4_conv3_46904:??!
block4_conv3_46906:	?.
block4_conv4_46909:??!
block4_conv4_46911:	?.
block5_conv1_46915:??!
block5_conv1_46917:	?.
block5_conv2_46920:??!
block5_conv2_46922:	?.
block5_conv3_46925:??!
block5_conv3_46927:	?.
block5_conv4_46930:??!
block5_conv4_46932:	?
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block3_conv4/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block4_conv4/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?$block5_conv4/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_6block1_conv1_46851block1_conv1_46853*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_459692&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_46856block1_conv2_46858*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}^@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_459862&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>/@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_458972
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_46862block2_conv1_46864*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_460042&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_46867block2_conv2_46869*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????>/?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_460212&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_459092
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_46873block3_conv1_46875*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_460392&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_46878block3_conv2_46880*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_460562&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_46883block3_conv3_46885*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_460732&
$block3_conv3/StatefulPartitionedCall?
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_46888block3_conv4_46890*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_460902&
$block3_conv4/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_459212
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_46894block4_conv1_46896*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_461082&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_46899block4_conv2_46901*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_461252&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_46904block4_conv3_46906*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_461422&
$block4_conv3/StatefulPartitionedCall?
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_46909block4_conv4_46911*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_461592&
$block4_conv4/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_459332
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_46915block5_conv1_46917*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_461772&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_46920block5_conv2_46922*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_461942&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_46925block5_conv3_46927*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_462112&
$block5_conv3/StatefulPartitionedCall?
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_46930block5_conv4_46932*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_462282&
$block5_conv4/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_459452
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????}^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:X T
/
_output_shapes
:?????????}^
!
_user_specified_name	input_6
?
V
:__inference_global_average_pooling2d_1_layer_call_fn_46950

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_469442
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_38
serving_default_input_3:0?????????}^
C
input_48
serving_default_input_4:0?????????}^;
dense_20
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_network??{"name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "name": "vgg19", "inbound_nodes": [[["input_5", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["vgg19", 1, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]]}], "input_layers": [["input_5", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "name": "model_1", "inbound_nodes": [[["input_3", 0, 0, {}]], [["input_4", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAQAAAAHAAAAQwAAAHM4AAAAfABcAn0BfQJ0AGoBdACgAnwBfAIYAKEBZAFk\nAmQDjQN9A3QAoAN0AKAEfAN0AKAFoQChAqEBUwApBE7pAQAAAFQpAtoEYXhpc9oIa2VlcGRpbXMp\nBtoBS9oDc3Vt2gZzcXVhcmXaBHNxcnTaB21heGltdW3aB2Vwc2lsb24pBNoHdmVjdG9yc9oGZmVh\ndHNB2gZmZWF0c0JaCnN1bVNxdWFyZWSpAHINAAAA+h48aXB5dGhvbi1pbnB1dC03LWY3ZjIzOTYy\nOTc3Yz7aEmV1Y2xpZGVhbl9kaXN0YW5jZQEAAABzBgAAAAACCAIaAg==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda", "inbound_nodes": [[["model_1", 1, 0, {}], ["model_1", 2, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["lambda", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["dense_2", 0, 0]]}, "shared_object_id": 67, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 125, 94, 3]}, {"class_name": "TensorShape", "items": [null, 125, 94, 3]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 125, 94, 3]}, "float32", "input_3"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 125, 94, 3]}, "float32", "input_4"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "name": "vgg19", "inbound_nodes": [[["input_5", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["vgg19", 1, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]]}], "input_layers": [["input_5", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "name": "model_1", "inbound_nodes": [[["input_3", 0, 0, {}]], [["input_4", 0, 0, {}]]], "shared_object_id": 62}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAQAAAAHAAAAQwAAAHM4AAAAfABcAn0BfQJ0AGoBdACgAnwBfAIYAKEBZAFk\nAmQDjQN9A3QAoAN0AKAEfAN0AKAFoQChAqEBUwApBE7pAQAAAFQpAtoEYXhpc9oIa2VlcGRpbXMp\nBtoBS9oDc3Vt2gZzcXVhcmXaBHNxcnTaB21heGltdW3aB2Vwc2lsb24pBNoHdmVjdG9yc9oGZmVh\ndHNB2gZmZWF0c0JaCnN1bVNxdWFyZWSpAHINAAAA+h48aXB5dGhvbi1pbnB1dC03LWY3ZjIzOTYy\nOTc3Yz7aEmV1Y2xpZGVhbl9kaXN0YW5jZQEAAABzBgAAAAACCAIaAg==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda", "inbound_nodes": [[["model_1", 1, 0, {}], ["model_1", 2, 0, {}]]], "shared_object_id": 63}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["lambda", 0, 0, {}]]], "shared_object_id": 66}], "input_layers": [["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["dense_2", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 70}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
??
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"??
_tf_keras_network??{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "name": "vgg19", "inbound_nodes": [[["input_5", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["vgg19", 1, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]]}], "input_layers": [["input_5", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "inbound_nodes": [[["input_3", 0, 0, {}]], [["input_4", 0, 0, {}]]], "shared_object_id": 62, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 125, 94, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 125, 94, 3]}, "float32", "input_5"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": [], "shared_object_id": 2}, {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "name": "vgg19", "inbound_nodes": [[["input_5", 0, 0, {}]]], "shared_object_id": 57}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["vgg19", 1, 0, {}]]], "shared_object_id": 58}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 59}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]], "shared_object_id": 61}], "input_layers": [["input_5", 0, 0]], "output_layers": [["dense_1", 0, 0]]}}}
?
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAQAAAAHAAAAQwAAAHM4AAAAfABcAn0BfQJ0AGoBdACgAnwBfAIYAKEBZAFk\nAmQDjQN9A3QAoAN0AKAEfAN0AKAFoQChAqEBUwApBE7pAQAAAFQpAtoEYXhpc9oIa2VlcGRpbXMp\nBtoBS9oDc3Vt2gZzcXVhcmXaBHNxcnTaB21heGltdW3aB2Vwc2lsb24pBNoHdmVjdG9yc9oGZmVh\ndHNB2gZmZWF0c0JaCnN1bVNxdWFyZWSpAHINAAAA+h48aXB5dGhvbi1pbnB1dC03LWY3ZjIzOTYy\nOTc3Yz7aEmV1Y2xpZGVhbl9kaXN0YW5jZQEAAABzBgAAAAACCAIaAg==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["model_1", 1, 0, {}], ["model_1", 2, 0, {}]]], "shared_object_id": 63}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["lambda", 0, 0, {}]]], "shared_object_id": 66, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}, "shared_object_id": 72}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?
iter

beta_1

 beta_2
	!decay
"learning_ratem?m?Cm?Dm?v?v?Cv?Dv?"
	optimizer
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31
C32
D33
34
35"
trackable_list_wrapper
 "
trackable_list_wrapper
<
C0
D1
2
3"
trackable_list_wrapper
?
Enon_trainable_variables
	variables
Fmetrics
regularization_losses

Glayers
Hlayer_regularization_losses
	trainable_variables
Ilayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_5", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}}
??
Jlayer-0
Klayer_with_weights-0
Klayer-1
Llayer_with_weights-1
Llayer-2
Mlayer-3
Nlayer_with_weights-2
Nlayer-4
Olayer_with_weights-3
Olayer-5
Player-6
Qlayer_with_weights-4
Qlayer-7
Rlayer_with_weights-5
Rlayer-8
Slayer_with_weights-6
Slayer-9
Tlayer_with_weights-7
Tlayer-10
Ulayer-11
Vlayer_with_weights-8
Vlayer-12
Wlayer_with_weights-9
Wlayer-13
Xlayer_with_weights-10
Xlayer-14
Ylayer_with_weights-11
Ylayer-15
Zlayer-16
[layer_with_weights-12
[layer-17
\layer_with_weights-13
\layer-18
]layer_with_weights-14
]layer-19
^layer_with_weights-15
^layer-20
_layer-21
`	variables
aregularization_losses
btrainable_variables
c	keras_api
+?&call_and_return_all_conditional_losses
?__call__"??
_tf_keras_network??{"name": "vgg19", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "inbound_nodes": [[["input_5", 0, 0, {}]]], "shared_object_id": 57, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 125, 94, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 125, 94, 3]}, "float32", "input_6"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": [], "shared_object_id": 3}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_6", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]], "shared_object_id": 30}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]], "shared_object_id": 33}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]], "shared_object_id": 36}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]], "shared_object_id": 42}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]], "shared_object_id": 43}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 44}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 45}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]], "shared_object_id": 46}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]], "shared_object_id": 49}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]], "shared_object_id": 52}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]], "shared_object_id": 56}], "input_layers": [["input_6", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}}}
?
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "global_average_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["vgg19", 1, 0, {}]]], "shared_object_id": 58, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 74}}
?	

Ckernel
Dbias
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 59}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]], "shared_object_id": 61, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31
C32
D33"
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
?
lnon_trainable_variables
	variables
mmetrics
regularization_losses

nlayers
olayer_regularization_losses
trainable_variables
player_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables
rmetrics
	variables
regularization_losses

slayers
tlayer_regularization_losses
trainable_variables
ulayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2dense_2/kernel
:2dense_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
vnon_trainable_variables
wmetrics
	variables
regularization_losses

xlayers
ylayer_regularization_losses
trainable_variables
zlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@?2block2_conv1/kernel
 :?2block2_conv1/bias
/:-??2block2_conv2/kernel
 :?2block2_conv2/bias
/:-??2block3_conv1/kernel
 :?2block3_conv1/bias
/:-??2block3_conv2/kernel
 :?2block3_conv2/bias
/:-??2block3_conv3/kernel
 :?2block3_conv3/bias
/:-??2block3_conv4/kernel
 :?2block3_conv4/bias
/:-??2block4_conv1/kernel
 :?2block4_conv1/bias
/:-??2block4_conv2/kernel
 :?2block4_conv2/bias
/:-??2block4_conv3/kernel
 :?2block4_conv3/bias
/:-??2block4_conv4/kernel
 :?2block4_conv4/bias
/:-??2block5_conv1/kernel
 :?2block5_conv1/bias
/:-??2block5_conv2/kernel
 :?2block5_conv2/bias
/:-??2block5_conv3/kernel
 :?2block5_conv3/bias
/:-??2block5_conv4/kernel
 :?2block5_conv4/bias
!:	?@2dense_1/kernel
:@2dense_1/bias
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_6", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 125, 94, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}}
?

#kernel
$bias
}	variables
~regularization_losses
trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_6", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 76}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 125, 94, 3]}}
?

%kernel
&bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block1_conv1", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 125, 94, 64]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block1_conv2", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 78}}
?

'kernel
(bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block1_pool", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 79}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 47, 64]}}
?

)kernel
*bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block2_conv1", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 80}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 47, 128]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block2_conv2", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 81}}
?

+kernel
,bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block2_pool", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 82}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 23, 128]}}
?

-kernel
.bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv1", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 83}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 23, 256]}}
?

/kernel
0bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv2", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 84}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 23, 256]}}
?

1kernel
2bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block3_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv3", 0, 0, {}]]], "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 85}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 23, 256]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block3_conv4", 0, 0, {}]]], "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 86}}
?

3kernel
4bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_pool", 0, 0, {}]]], "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 87}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 11, 256]}}
?

5kernel
6bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block4_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv1", 0, 0, {}]]], "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 88}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 11, 512]}}
?

7kernel
8bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block4_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv2", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 89}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 11, 512]}}
?

9kernel
:bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block4_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv3", 0, 0, {}]]], "shared_object_id": 42, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 90}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 11, 512]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "block4_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block4_conv4", 0, 0, {}]]], "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 91}}
?

;kernel
<bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block5_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 44}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 45}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_pool", 0, 0, {}]]], "shared_object_id": 46, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 92}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 5, 512]}}
?

=kernel
>bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block5_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv1", 0, 0, {}]]], "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 93}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 5, 512]}}
?

?kernel
@bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block5_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv2", 0, 0, {}]]], "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 94}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 5, 512]}}
?

Akernel
Bbias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "block5_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv3", 0, 0, {}]]], "shared_object_id": 55, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 95}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 5, 512]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "block5_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block5_conv4", 0, 0, {}]]], "shared_object_id": 56, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 96}}
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
`	variables
?metrics
aregularization_losses
?layers
 ?layer_regularization_losses
btrainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
d	variables
eregularization_losses
?layers
 ?layer_regularization_losses
ftrainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
?
?non_trainable_variables
?metrics
h	variables
iregularization_losses
?layers
 ?layer_regularization_losses
jtrainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 97}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 70}
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
}	variables
~regularization_losses
?layers
 ?layer_regularization_losses
trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?metrics
?	variables
?regularization_losses
?layers
 ?layer_regularization_losses
?trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27
?28
@29
A30
B31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
J0
K1
L2
M3
N4
O5
P6
Q7
R8
S9
T10
U11
V12
W13
X14
Y15
Z16
[17
\18
]19
^20
_21"
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
%0
&1"
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
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
)0
*1"
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
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
10
21"
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
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
90
:1"
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
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
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
%:#2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
&:$	?@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
%:#2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
&:$	?@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
?2?
B__inference_model_2_layer_call_and_return_conditional_losses_48726
B__inference_model_2_layer_call_and_return_conditional_losses_48963
B__inference_model_2_layer_call_and_return_conditional_losses_48288
B__inference_model_2_layer_call_and_return_conditional_losses_48403?
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
?2?
 __inference__wrapped_model_45891?
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
annotations? *^?[
Y?V
)?&
input_3?????????}^
)?&
input_4?????????}^
?2?
'__inference_model_2_layer_call_fn_47787
'__inference_model_2_layer_call_fn_49041
'__inference_model_2_layer_call_fn_49119
'__inference_model_2_layer_call_fn_48173?
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
B__inference_model_1_layer_call_and_return_conditional_losses_49248
B__inference_model_1_layer_call_and_return_conditional_losses_49377
B__inference_model_1_layer_call_and_return_conditional_losses_47490
B__inference_model_1_layer_call_and_return_conditional_losses_47565?
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
?2?
'__inference_model_1_layer_call_fn_47111
'__inference_model_1_layer_call_fn_49450
'__inference_model_1_layer_call_fn_49523
'__inference_model_1_layer_call_fn_47415?
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
?2?
A__inference_lambda_layer_call_and_return_conditional_losses_49537
A__inference_lambda_layer_call_and_return_conditional_losses_49551?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_lambda_layer_call_fn_49557
&__inference_lambda_layer_call_fn_49563?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_49574?
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
'__inference_dense_2_layer_call_fn_49583?
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
#__inference_signature_wrapper_48489input_3input_4"?
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
 
?2?
@__inference_vgg19_layer_call_and_return_conditional_losses_49704
@__inference_vgg19_layer_call_and_return_conditional_losses_49825
@__inference_vgg19_layer_call_and_return_conditional_losses_46848
@__inference_vgg19_layer_call_and_return_conditional_losses_46937?
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
?2?
%__inference_vgg19_layer_call_fn_46303
%__inference_vgg19_layer_call_fn_49894
%__inference_vgg19_layer_call_fn_49963
%__inference_vgg19_layer_call_fn_46759?
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
?2?
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_46944?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
:__inference_global_average_pooling2d_1_layer_call_fn_46950?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_49973?
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
'__inference_dense_1_layer_call_fn_49982?
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
G__inference_block1_conv1_layer_call_and_return_conditional_losses_49993?
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
,__inference_block1_conv1_layer_call_fn_50002?
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
G__inference_block1_conv2_layer_call_and_return_conditional_losses_50013?
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
,__inference_block1_conv2_layer_call_fn_50022?
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
?2?
F__inference_block1_pool_layer_call_and_return_conditional_losses_45897?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_block1_pool_layer_call_fn_45903?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_block2_conv1_layer_call_and_return_conditional_losses_50033?
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
,__inference_block2_conv1_layer_call_fn_50042?
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
G__inference_block2_conv2_layer_call_and_return_conditional_losses_50053?
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
,__inference_block2_conv2_layer_call_fn_50062?
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
?2?
F__inference_block2_pool_layer_call_and_return_conditional_losses_45909?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_block2_pool_layer_call_fn_45915?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_block3_conv1_layer_call_and_return_conditional_losses_50073?
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
,__inference_block3_conv1_layer_call_fn_50082?
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
G__inference_block3_conv2_layer_call_and_return_conditional_losses_50093?
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
,__inference_block3_conv2_layer_call_fn_50102?
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
G__inference_block3_conv3_layer_call_and_return_conditional_losses_50113?
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
,__inference_block3_conv3_layer_call_fn_50122?
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
G__inference_block3_conv4_layer_call_and_return_conditional_losses_50133?
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
,__inference_block3_conv4_layer_call_fn_50142?
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
?2?
F__inference_block3_pool_layer_call_and_return_conditional_losses_45921?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_block3_pool_layer_call_fn_45927?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_block4_conv1_layer_call_and_return_conditional_losses_50153?
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
,__inference_block4_conv1_layer_call_fn_50162?
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
G__inference_block4_conv2_layer_call_and_return_conditional_losses_50173?
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
,__inference_block4_conv2_layer_call_fn_50182?
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
G__inference_block4_conv3_layer_call_and_return_conditional_losses_50193?
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
,__inference_block4_conv3_layer_call_fn_50202?
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
G__inference_block4_conv4_layer_call_and_return_conditional_losses_50213?
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
,__inference_block4_conv4_layer_call_fn_50222?
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
?2?
F__inference_block4_pool_layer_call_and_return_conditional_losses_45933?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_block4_pool_layer_call_fn_45939?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
G__inference_block5_conv1_layer_call_and_return_conditional_losses_50233?
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
,__inference_block5_conv1_layer_call_fn_50242?
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
G__inference_block5_conv2_layer_call_and_return_conditional_losses_50253?
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
,__inference_block5_conv2_layer_call_fn_50262?
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
G__inference_block5_conv3_layer_call_and_return_conditional_losses_50273?
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
,__inference_block5_conv3_layer_call_fn_50282?
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
G__inference_block5_conv4_layer_call_and_return_conditional_losses_50293?
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
,__inference_block5_conv4_layer_call_fn_50302?
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
?2?
F__inference_block5_pool_layer_call_and_return_conditional_losses_45945?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_block5_pool_layer_call_fn_45951?
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
annotations? *@?=
;?84?????????????????????????????????????
 __inference__wrapped_model_45891?$#$%&'()*+,-./0123456789:;<=>?@ABCDh?e
^?[
Y?V
)?&
input_3?????????}^
)?&
input_4?????????}^
? "1?.
,
dense_2!?
dense_2??????????
G__inference_block1_conv1_layer_call_and_return_conditional_losses_49993l#$7?4
-?*
(?%
inputs?????????}^
? "-?*
#? 
0?????????}^@
? ?
,__inference_block1_conv1_layer_call_fn_50002_#$7?4
-?*
(?%
inputs?????????}^
? " ??????????}^@?
G__inference_block1_conv2_layer_call_and_return_conditional_losses_50013l%&7?4
-?*
(?%
inputs?????????}^@
? "-?*
#? 
0?????????}^@
? ?
,__inference_block1_conv2_layer_call_fn_50022_%&7?4
-?*
(?%
inputs?????????}^@
? " ??????????}^@?
F__inference_block1_pool_layer_call_and_return_conditional_losses_45897?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block1_pool_layer_call_fn_45903?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block2_conv1_layer_call_and_return_conditional_losses_50033m'(7?4
-?*
(?%
inputs?????????>/@
? ".?+
$?!
0?????????>/?
? ?
,__inference_block2_conv1_layer_call_fn_50042`'(7?4
-?*
(?%
inputs?????????>/@
? "!??????????>/??
G__inference_block2_conv2_layer_call_and_return_conditional_losses_50053n)*8?5
.?+
)?&
inputs?????????>/?
? ".?+
$?!
0?????????>/?
? ?
,__inference_block2_conv2_layer_call_fn_50062a)*8?5
.?+
)?&
inputs?????????>/?
? "!??????????>/??
F__inference_block2_pool_layer_call_and_return_conditional_losses_45909?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block2_pool_layer_call_fn_45915?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block3_conv1_layer_call_and_return_conditional_losses_50073n+,8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block3_conv1_layer_call_fn_50082a+,8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block3_conv2_layer_call_and_return_conditional_losses_50093n-.8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block3_conv2_layer_call_fn_50102a-.8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block3_conv3_layer_call_and_return_conditional_losses_50113n/08?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block3_conv3_layer_call_fn_50122a/08?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block3_conv4_layer_call_and_return_conditional_losses_50133n128?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block3_conv4_layer_call_fn_50142a128?5
.?+
)?&
inputs??????????
? "!????????????
F__inference_block3_pool_layer_call_and_return_conditional_losses_45921?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block3_pool_layer_call_fn_45927?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block4_conv1_layer_call_and_return_conditional_losses_50153n348?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block4_conv1_layer_call_fn_50162a348?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block4_conv2_layer_call_and_return_conditional_losses_50173n568?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block4_conv2_layer_call_fn_50182a568?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block4_conv3_layer_call_and_return_conditional_losses_50193n788?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block4_conv3_layer_call_fn_50202a788?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block4_conv4_layer_call_and_return_conditional_losses_50213n9:8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block4_conv4_layer_call_fn_50222a9:8?5
.?+
)?&
inputs??????????
? "!????????????
F__inference_block4_pool_layer_call_and_return_conditional_losses_45933?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block4_pool_layer_call_fn_45939?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block5_conv1_layer_call_and_return_conditional_losses_50233n;<8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block5_conv1_layer_call_fn_50242a;<8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block5_conv2_layer_call_and_return_conditional_losses_50253n=>8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block5_conv2_layer_call_fn_50262a=>8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block5_conv3_layer_call_and_return_conditional_losses_50273n?@8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block5_conv3_layer_call_fn_50282a?@8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block5_conv4_layer_call_and_return_conditional_losses_50293nAB8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block5_conv4_layer_call_fn_50302aAB8?5
.?+
)?&
inputs??????????
? "!????????????
F__inference_block5_pool_layer_call_and_return_conditional_losses_45945?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block5_pool_layer_call_fn_45951?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_dense_1_layer_call_and_return_conditional_losses_49973]CD0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? {
'__inference_dense_1_layer_call_fn_49982PCD0?-
&?#
!?
inputs??????????
? "??????????@?
B__inference_dense_2_layer_call_and_return_conditional_losses_49574\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_2_layer_call_fn_49583O/?,
%?"
 ?
inputs?????????
? "???????????
U__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_46944?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
:__inference_global_average_pooling2d_1_layer_call_fn_46950wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
A__inference_lambda_layer_call_and_return_conditional_losses_49537?b?_
X?U
K?H
"?
inputs/0?????????@
"?
inputs/1?????????@

 
p 
? "%?"
?
0?????????
? ?
A__inference_lambda_layer_call_and_return_conditional_losses_49551?b?_
X?U
K?H
"?
inputs/0?????????@
"?
inputs/1?????????@

 
p
? "%?"
?
0?????????
? ?
&__inference_lambda_layer_call_fn_49557~b?_
X?U
K?H
"?
inputs/0?????????@
"?
inputs/1?????????@

 
p 
? "???????????
&__inference_lambda_layer_call_fn_49563~b?_
X?U
K?H
"?
inputs/0?????????@
"?
inputs/1?????????@

 
p
? "???????????
B__inference_model_1_layer_call_and_return_conditional_losses_47490?"#$%&'()*+,-./0123456789:;<=>?@ABCD@?=
6?3
)?&
input_5?????????}^
p 

 
? "%?"
?
0?????????@
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_47565?"#$%&'()*+,-./0123456789:;<=>?@ABCD@?=
6?3
)?&
input_5?????????}^
p

 
? "%?"
?
0?????????@
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_49248?"#$%&'()*+,-./0123456789:;<=>?@ABCD??<
5?2
(?%
inputs?????????}^
p 

 
? "%?"
?
0?????????@
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_49377?"#$%&'()*+,-./0123456789:;<=>?@ABCD??<
5?2
(?%
inputs?????????}^
p

 
? "%?"
?
0?????????@
? ?
'__inference_model_1_layer_call_fn_47111?"#$%&'()*+,-./0123456789:;<=>?@ABCD@?=
6?3
)?&
input_5?????????}^
p 

 
? "??????????@?
'__inference_model_1_layer_call_fn_47415?"#$%&'()*+,-./0123456789:;<=>?@ABCD@?=
6?3
)?&
input_5?????????}^
p

 
? "??????????@?
'__inference_model_1_layer_call_fn_49450"#$%&'()*+,-./0123456789:;<=>?@ABCD??<
5?2
(?%
inputs?????????}^
p 

 
? "??????????@?
'__inference_model_1_layer_call_fn_49523"#$%&'()*+,-./0123456789:;<=>?@ABCD??<
5?2
(?%
inputs?????????}^
p

 
? "??????????@?
B__inference_model_2_layer_call_and_return_conditional_losses_48288?$#$%&'()*+,-./0123456789:;<=>?@ABCDp?m
f?c
Y?V
)?&
input_3?????????}^
)?&
input_4?????????}^
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_48403?$#$%&'()*+,-./0123456789:;<=>?@ABCDp?m
f?c
Y?V
)?&
input_3?????????}^
)?&
input_4?????????}^
p

 
? "%?"
?
0?????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_48726?$#$%&'()*+,-./0123456789:;<=>?@ABCDr?o
h?e
[?X
*?'
inputs/0?????????}^
*?'
inputs/1?????????}^
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_48963?$#$%&'()*+,-./0123456789:;<=>?@ABCDr?o
h?e
[?X
*?'
inputs/0?????????}^
*?'
inputs/1?????????}^
p

 
? "%?"
?
0?????????
? ?
'__inference_model_2_layer_call_fn_47787?$#$%&'()*+,-./0123456789:;<=>?@ABCDp?m
f?c
Y?V
)?&
input_3?????????}^
)?&
input_4?????????}^
p 

 
? "???????????
'__inference_model_2_layer_call_fn_48173?$#$%&'()*+,-./0123456789:;<=>?@ABCDp?m
f?c
Y?V
)?&
input_3?????????}^
)?&
input_4?????????}^
p

 
? "???????????
'__inference_model_2_layer_call_fn_49041?$#$%&'()*+,-./0123456789:;<=>?@ABCDr?o
h?e
[?X
*?'
inputs/0?????????}^
*?'
inputs/1?????????}^
p 

 
? "???????????
'__inference_model_2_layer_call_fn_49119?$#$%&'()*+,-./0123456789:;<=>?@ABCDr?o
h?e
[?X
*?'
inputs/0?????????}^
*?'
inputs/1?????????}^
p

 
? "???????????
#__inference_signature_wrapper_48489?$#$%&'()*+,-./0123456789:;<=>?@ABCDy?v
? 
o?l
4
input_3)?&
input_3?????????}^
4
input_4)?&
input_4?????????}^"1?.
,
dense_2!?
dense_2??????????
@__inference_vgg19_layer_call_and_return_conditional_losses_46848? #$%&'()*+,-./0123456789:;<=>?@AB@?=
6?3
)?&
input_6?????????}^
p 

 
? ".?+
$?!
0??????????
? ?
@__inference_vgg19_layer_call_and_return_conditional_losses_46937? #$%&'()*+,-./0123456789:;<=>?@AB@?=
6?3
)?&
input_6?????????}^
p

 
? ".?+
$?!
0??????????
? ?
@__inference_vgg19_layer_call_and_return_conditional_losses_49704? #$%&'()*+,-./0123456789:;<=>?@AB??<
5?2
(?%
inputs?????????}^
p 

 
? ".?+
$?!
0??????????
? ?
@__inference_vgg19_layer_call_and_return_conditional_losses_49825? #$%&'()*+,-./0123456789:;<=>?@AB??<
5?2
(?%
inputs?????????}^
p

 
? ".?+
$?!
0??????????
? ?
%__inference_vgg19_layer_call_fn_46303? #$%&'()*+,-./0123456789:;<=>?@AB@?=
6?3
)?&
input_6?????????}^
p 

 
? "!????????????
%__inference_vgg19_layer_call_fn_46759? #$%&'()*+,-./0123456789:;<=>?@AB@?=
6?3
)?&
input_6?????????}^
p

 
? "!????????????
%__inference_vgg19_layer_call_fn_49894? #$%&'()*+,-./0123456789:;<=>?@AB??<
5?2
(?%
inputs?????????}^
p 

 
? "!????????????
%__inference_vgg19_layer_call_fn_49963? #$%&'()*+,-./0123456789:;<=>?@AB??<
5?2
(?%
inputs?????????}^
p

 
? "!???????????