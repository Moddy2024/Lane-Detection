׽,
??
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
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8ւ$
?
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
?
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
?
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
?
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
|
Conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv1/kernel
u
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*&
_output_shapes
:*
dtype0
l

Conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Conv1/bias
e
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_output_shapes
:*
dtype0
|
Conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv2/kernel
u
 Conv2/kernel/Read/ReadVariableOpReadVariableOpConv2/kernel*&
_output_shapes
:*
dtype0
l

Conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Conv2/bias
e
Conv2/bias/Read/ReadVariableOpReadVariableOp
Conv2/bias*
_output_shapes
:*
dtype0
|
Conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv3/kernel
u
 Conv3/kernel/Read/ReadVariableOpReadVariableOpConv3/kernel*&
_output_shapes
:*
dtype0
l

Conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Conv3/bias
e
Conv3/bias/Read/ReadVariableOpReadVariableOp
Conv3/bias*
_output_shapes
:*
dtype0
|
Conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv4/kernel
u
 Conv4/kernel/Read/ReadVariableOpReadVariableOpConv4/kernel*&
_output_shapes
: *
dtype0
l

Conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Conv4/bias
e
Conv4/bias/Read/ReadVariableOpReadVariableOp
Conv4/bias*
_output_shapes
: *
dtype0
|
Conv5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameConv5/kernel
u
 Conv5/kernel/Read/ReadVariableOpReadVariableOpConv5/kernel*&
_output_shapes
:  *
dtype0
l

Conv5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Conv5/bias
e
Conv5/bias/Read/ReadVariableOpReadVariableOp
Conv5/bias*
_output_shapes
: *
dtype0
|
Conv6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_nameConv6/kernel
u
 Conv6/kernel/Read/ReadVariableOpReadVariableOpConv6/kernel*&
_output_shapes
: @*
dtype0
l

Conv6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Conv6/bias
e
Conv6/bias/Read/ReadVariableOpReadVariableOp
Conv6/bias*
_output_shapes
:@*
dtype0
|
Conv7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameConv7/kernel
u
 Conv7/kernel/Read/ReadVariableOpReadVariableOpConv7/kernel*&
_output_shapes
:@@*
dtype0
l

Conv7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Conv7/bias
e
Conv7/bias/Read/ReadVariableOpReadVariableOp
Conv7/bias*
_output_shapes
:@*
dtype0
|
Conv8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameConv8/kernel
u
 Conv8/kernel/Read/ReadVariableOpReadVariableOpConv8/kernel*&
_output_shapes
:@@*
dtype0
l

Conv8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Conv8/bias
e
Conv8/bias/Read/ReadVariableOpReadVariableOp
Conv8/bias*
_output_shapes
:@*
dtype0
?
Deconv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*
shared_nameDeconv1/kernel
z
"Deconv1/kernel/Read/ReadVariableOpReadVariableOpDeconv1/kernel*'
_output_shapes
:?@*
dtype0
q
Deconv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDeconv1/bias
j
 Deconv1/bias/Read/ReadVariableOpReadVariableOpDeconv1/bias*
_output_shapes	
:?*
dtype0
?
Deconv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*
shared_nameDeconv2/kernel
z
"Deconv2/kernel/Read/ReadVariableOpReadVariableOpDeconv2/kernel*'
_output_shapes
:@?*
dtype0
p
Deconv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameDeconv2/bias
i
 Deconv2/bias/Read/ReadVariableOpReadVariableOpDeconv2/bias*
_output_shapes
:@*
dtype0
?
Deconv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameDeconv3/kernel
y
"Deconv3/kernel/Read/ReadVariableOpReadVariableOpDeconv3/kernel*&
_output_shapes
:@@*
dtype0
p
Deconv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameDeconv3/bias
i
 Deconv3/bias/Read/ReadVariableOpReadVariableOpDeconv3/bias*
_output_shapes
:@*
dtype0
?
Deconv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_nameDeconv4/kernel
y
"Deconv4/kernel/Read/ReadVariableOpReadVariableOpDeconv4/kernel*&
_output_shapes
: @*
dtype0
p
Deconv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDeconv4/bias
i
 Deconv4/bias/Read/ReadVariableOpReadVariableOpDeconv4/bias*
_output_shapes
: *
dtype0
?
Deconv5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameDeconv5/kernel
y
"Deconv5/kernel/Read/ReadVariableOpReadVariableOpDeconv5/kernel*&
_output_shapes
:  *
dtype0
p
Deconv5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDeconv5/bias
i
 Deconv5/bias/Read/ReadVariableOpReadVariableOpDeconv5/bias*
_output_shapes
: *
dtype0
?
Deconv6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameDeconv6/kernel
y
"Deconv6/kernel/Read/ReadVariableOpReadVariableOpDeconv6/kernel*&
_output_shapes
:  *
dtype0
p
Deconv6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDeconv6/bias
i
 Deconv6/bias/Read/ReadVariableOpReadVariableOpDeconv6/bias*
_output_shapes
: *
dtype0
?
Deconv7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDeconv7/kernel
y
"Deconv7/kernel/Read/ReadVariableOpReadVariableOpDeconv7/kernel*&
_output_shapes
: *
dtype0
p
Deconv7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDeconv7/bias
i
 Deconv7/bias/Read/ReadVariableOpReadVariableOpDeconv7/bias*
_output_shapes
:*
dtype0
?
Deconv8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDeconv8/kernel
y
"Deconv8/kernel/Read/ReadVariableOpReadVariableOpDeconv8/kernel*&
_output_shapes
:*
dtype0
p
Deconv8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDeconv8/bias
i
 Deconv8/bias/Read/ReadVariableOpReadVariableOpDeconv8/bias*
_output_shapes
:*
dtype0
?
Deconv9Finalone/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameDeconv9Finalone/kernel
?
*Deconv9Finalone/kernel/Read/ReadVariableOpReadVariableOpDeconv9Finalone/kernel*&
_output_shapes
:*
dtype0
?
Deconv9Finalone/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameDeconv9Finalone/bias
y
(Deconv9Finalone/bias/Read/ReadVariableOpReadVariableOpDeconv9Finalone/bias*
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
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/m
?
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:*
dtype0
?
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/m
?
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:*
dtype0
?
Adam/Conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv1/kernel/m
?
'Adam/Conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv1/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/Conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv1/bias/m
s
%Adam/Conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv1/bias/m*
_output_shapes
:*
dtype0
?
Adam/Conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv2/kernel/m
?
'Adam/Conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv2/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/Conv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv2/bias/m
s
%Adam/Conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv2/bias/m*
_output_shapes
:*
dtype0
?
Adam/Conv3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv3/kernel/m
?
'Adam/Conv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv3/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/Conv3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv3/bias/m
s
%Adam/Conv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv3/bias/m*
_output_shapes
:*
dtype0
?
Adam/Conv4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Conv4/kernel/m
?
'Adam/Conv4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv4/kernel/m*&
_output_shapes
: *
dtype0
z
Adam/Conv4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv4/bias/m
s
%Adam/Conv4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv4/bias/m*
_output_shapes
: *
dtype0
?
Adam/Conv5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameAdam/Conv5/kernel/m
?
'Adam/Conv5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv5/kernel/m*&
_output_shapes
:  *
dtype0
z
Adam/Conv5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv5/bias/m
s
%Adam/Conv5/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv5/bias/m*
_output_shapes
: *
dtype0
?
Adam/Conv6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*$
shared_nameAdam/Conv6/kernel/m
?
'Adam/Conv6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv6/kernel/m*&
_output_shapes
: @*
dtype0
z
Adam/Conv6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv6/bias/m
s
%Adam/Conv6/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv6/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Conv7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv7/kernel/m
?
'Adam/Conv7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv7/kernel/m*&
_output_shapes
:@@*
dtype0
z
Adam/Conv7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv7/bias/m
s
%Adam/Conv7/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv7/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Conv8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv8/kernel/m
?
'Adam/Conv8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv8/kernel/m*&
_output_shapes
:@@*
dtype0
z
Adam/Conv8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv8/bias/m
s
%Adam/Conv8/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv8/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Deconv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*&
shared_nameAdam/Deconv1/kernel/m
?
)Adam/Deconv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv1/kernel/m*'
_output_shapes
:?@*
dtype0

Adam/Deconv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/Deconv1/bias/m
x
'Adam/Deconv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/Deconv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*&
shared_nameAdam/Deconv2/kernel/m
?
)Adam/Deconv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv2/kernel/m*'
_output_shapes
:@?*
dtype0
~
Adam/Deconv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv2/bias/m
w
'Adam/Deconv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Deconv3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*&
shared_nameAdam/Deconv3/kernel/m
?
)Adam/Deconv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv3/kernel/m*&
_output_shapes
:@@*
dtype0
~
Adam/Deconv3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv3/bias/m
w
'Adam/Deconv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Deconv4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*&
shared_nameAdam/Deconv4/kernel/m
?
)Adam/Deconv4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv4/kernel/m*&
_output_shapes
: @*
dtype0
~
Adam/Deconv4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv4/bias/m
w
'Adam/Deconv4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv4/bias/m*
_output_shapes
: *
dtype0
?
Adam/Deconv5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv5/kernel/m
?
)Adam/Deconv5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv5/kernel/m*&
_output_shapes
:  *
dtype0
~
Adam/Deconv5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv5/bias/m
w
'Adam/Deconv5/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv5/bias/m*
_output_shapes
: *
dtype0
?
Adam/Deconv6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv6/kernel/m
?
)Adam/Deconv6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv6/kernel/m*&
_output_shapes
:  *
dtype0
~
Adam/Deconv6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv6/bias/m
w
'Adam/Deconv6/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv6/bias/m*
_output_shapes
: *
dtype0
?
Adam/Deconv7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/Deconv7/kernel/m
?
)Adam/Deconv7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv7/kernel/m*&
_output_shapes
: *
dtype0
~
Adam/Deconv7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv7/bias/m
w
'Adam/Deconv7/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv7/bias/m*
_output_shapes
:*
dtype0
?
Adam/Deconv8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Deconv8/kernel/m
?
)Adam/Deconv8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv8/kernel/m*&
_output_shapes
:*
dtype0
~
Adam/Deconv8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv8/bias/m
w
'Adam/Deconv8/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv8/bias/m*
_output_shapes
:*
dtype0
?
Adam/Deconv9Finalone/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/Deconv9Finalone/kernel/m
?
1Adam/Deconv9Finalone/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Deconv9Finalone/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/Deconv9Finalone/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/Deconv9Finalone/bias/m
?
/Adam/Deconv9Finalone/bias/m/Read/ReadVariableOpReadVariableOpAdam/Deconv9Finalone/bias/m*
_output_shapes
:*
dtype0
?
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/v
?
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:*
dtype0
?
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/v
?
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:*
dtype0
?
Adam/Conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv1/kernel/v
?
'Adam/Conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv1/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/Conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv1/bias/v
s
%Adam/Conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv1/bias/v*
_output_shapes
:*
dtype0
?
Adam/Conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv2/kernel/v
?
'Adam/Conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv2/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/Conv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv2/bias/v
s
%Adam/Conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv2/bias/v*
_output_shapes
:*
dtype0
?
Adam/Conv3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Conv3/kernel/v
?
'Adam/Conv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv3/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/Conv3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/Conv3/bias/v
s
%Adam/Conv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv3/bias/v*
_output_shapes
:*
dtype0
?
Adam/Conv4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Conv4/kernel/v
?
'Adam/Conv4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv4/kernel/v*&
_output_shapes
: *
dtype0
z
Adam/Conv4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv4/bias/v
s
%Adam/Conv4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv4/bias/v*
_output_shapes
: *
dtype0
?
Adam/Conv5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameAdam/Conv5/kernel/v
?
'Adam/Conv5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv5/kernel/v*&
_output_shapes
:  *
dtype0
z
Adam/Conv5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv5/bias/v
s
%Adam/Conv5/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv5/bias/v*
_output_shapes
: *
dtype0
?
Adam/Conv6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*$
shared_nameAdam/Conv6/kernel/v
?
'Adam/Conv6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv6/kernel/v*&
_output_shapes
: @*
dtype0
z
Adam/Conv6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv6/bias/v
s
%Adam/Conv6/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv6/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Conv7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv7/kernel/v
?
'Adam/Conv7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv7/kernel/v*&
_output_shapes
:@@*
dtype0
z
Adam/Conv7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv7/bias/v
s
%Adam/Conv7/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv7/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Conv8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv8/kernel/v
?
'Adam/Conv8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv8/kernel/v*&
_output_shapes
:@@*
dtype0
z
Adam/Conv8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv8/bias/v
s
%Adam/Conv8/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv8/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Deconv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*&
shared_nameAdam/Deconv1/kernel/v
?
)Adam/Deconv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv1/kernel/v*'
_output_shapes
:?@*
dtype0

Adam/Deconv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/Deconv1/bias/v
x
'Adam/Deconv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/Deconv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*&
shared_nameAdam/Deconv2/kernel/v
?
)Adam/Deconv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv2/kernel/v*'
_output_shapes
:@?*
dtype0
~
Adam/Deconv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv2/bias/v
w
'Adam/Deconv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Deconv3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*&
shared_nameAdam/Deconv3/kernel/v
?
)Adam/Deconv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv3/kernel/v*&
_output_shapes
:@@*
dtype0
~
Adam/Deconv3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Deconv3/bias/v
w
'Adam/Deconv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Deconv4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*&
shared_nameAdam/Deconv4/kernel/v
?
)Adam/Deconv4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv4/kernel/v*&
_output_shapes
: @*
dtype0
~
Adam/Deconv4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv4/bias/v
w
'Adam/Deconv4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv4/bias/v*
_output_shapes
: *
dtype0
?
Adam/Deconv5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv5/kernel/v
?
)Adam/Deconv5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv5/kernel/v*&
_output_shapes
:  *
dtype0
~
Adam/Deconv5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv5/bias/v
w
'Adam/Deconv5/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv5/bias/v*
_output_shapes
: *
dtype0
?
Adam/Deconv6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *&
shared_nameAdam/Deconv6/kernel/v
?
)Adam/Deconv6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv6/kernel/v*&
_output_shapes
:  *
dtype0
~
Adam/Deconv6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Deconv6/bias/v
w
'Adam/Deconv6/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv6/bias/v*
_output_shapes
: *
dtype0
?
Adam/Deconv7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/Deconv7/kernel/v
?
)Adam/Deconv7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv7/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/Deconv7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv7/bias/v
w
'Adam/Deconv7/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv7/bias/v*
_output_shapes
:*
dtype0
?
Adam/Deconv8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Deconv8/kernel/v
?
)Adam/Deconv8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv8/kernel/v*&
_output_shapes
:*
dtype0
~
Adam/Deconv8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Deconv8/bias/v
w
'Adam/Deconv8/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv8/bias/v*
_output_shapes
:*
dtype0
?
Adam/Deconv9Finalone/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/Deconv9Finalone/kernel/v
?
1Adam/Deconv9Finalone/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Deconv9Finalone/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/Deconv9Finalone/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/Deconv9Finalone/bias/v
?
/Adam/Deconv9Finalone/bias/v/Read/ReadVariableOpReadVariableOpAdam/Deconv9Finalone/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer_with_weights-8
layer-15
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer-22
layer-23
layer_with_weights-12
layer-24
layer-25
layer_with_weights-13
layer-26
layer-27
layer_with_weights-14
layer-28
layer-29
layer_with_weights-15
layer-30
 layer-31
!layer_with_weights-16
!layer-32
"layer_with_weights-17
"layer-33
#	optimizer
$trainable_variables
%regularization_losses
&	variables
'	keras_api
(
signatures
?
)axis
	*gamma
+beta
,moving_mean
-moving_variance
.trainable_variables
/regularization_losses
0	variables
1	keras_api
h

2kernel
3bias
4trainable_variables
5regularization_losses
6	variables
7	keras_api
h

8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
R
>trainable_variables
?regularization_losses
@	variables
A	keras_api
h

Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
R
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
h

Lkernel
Mbias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
R
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
h

Vkernel
Wbias
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
R
\trainable_variables
]regularization_losses
^	variables
_	keras_api
R
`trainable_variables
aregularization_losses
b	variables
c	keras_api
h

dkernel
ebias
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
R
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
h

nkernel
obias
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
R
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
h

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
T
~trainable_variables
regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate*m?+m?2m?3m?8m?9m?Bm?Cm?Lm?Mm?Vm?Wm?dm?em?nm?om?xm?ym?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?*v?+v?2v?3v?8v?9v?Bv?Cv?Lv?Mv?Vv?Wv?dv?ev?nv?ov?xv?yv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
 
 
?
*0
+1
,2
-3
24
35
86
97
B8
C9
L10
M11
V12
W13
d14
e15
n16
o17
x18
y19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?
?metrics
$trainable_variables
?layers
%regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
&	variables
 
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

*0
+1
,2
-3
?
?metrics
.trainable_variables
?layers
/regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
0	variables
XV
VARIABLE_VALUEConv1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

20
31
?
?metrics
4trainable_variables
?layers
5regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
6	variables
XV
VARIABLE_VALUEConv2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

80
91
?
?metrics
:trainable_variables
?layers
;regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
<	variables
 
 
 
?
?metrics
>trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
@	variables
XV
VARIABLE_VALUEConv3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

B0
C1
?
?metrics
Dtrainable_variables
?layers
Eregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
F	variables
 
 
 
?
?metrics
Htrainable_variables
?layers
Iregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
J	variables
XV
VARIABLE_VALUEConv4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

L0
M1
?
?metrics
Ntrainable_variables
?layers
Oregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
P	variables
 
 
 
?
?metrics
Rtrainable_variables
?layers
Sregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
T	variables
XV
VARIABLE_VALUEConv5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

V0
W1
?
?metrics
Xtrainable_variables
?layers
Yregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
Z	variables
 
 
 
?
?metrics
\trainable_variables
?layers
]regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
^	variables
 
 
 
?
?metrics
`trainable_variables
?layers
aregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
b	variables
XV
VARIABLE_VALUEConv6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

d0
e1
?
?metrics
ftrainable_variables
?layers
gregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
h	variables
 
 
 
?
?metrics
jtrainable_variables
?layers
kregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
l	variables
XV
VARIABLE_VALUEConv7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

n0
o1
?
?metrics
ptrainable_variables
?layers
qregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
r	variables
 
 
 
?
?metrics
ttrainable_variables
?layers
uregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
v	variables
XV
VARIABLE_VALUEConv8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

x0
y1
?
?metrics
ztrainable_variables
?layers
{regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
|	variables
 
 
 
?
?metrics
~trainable_variables
?layers
regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
ZX
VARIABLE_VALUEDeconv1/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDeconv1/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
[Y
VARIABLE_VALUEDeconv2/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDeconv2/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
[Y
VARIABLE_VALUEDeconv3/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDeconv3/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
[Y
VARIABLE_VALUEDeconv4/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDeconv4/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
[Y
VARIABLE_VALUEDeconv5/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDeconv5/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
[Y
VARIABLE_VALUEDeconv6/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDeconv6/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
[Y
VARIABLE_VALUEDeconv7/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDeconv7/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
 
 
 
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
[Y
VARIABLE_VALUEDeconv8/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDeconv8/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
ca
VARIABLE_VALUEDeconv9Finalone/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEDeconv9Finalone/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?1
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
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

?0
?1
?
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
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
 
 
?
*0
+1
,2
-3
24
35
86
97
B8
C9
L10
M11
V12
W13
d14
e15
n16
o17
x18
y19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
 
 
 
 

*0
+1
,2
-3
 
 
 
 

20
31
 
 
 
 

80
91
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
B0
C1
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
L0
M1
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
V0
W1
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

d0
e1
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
n0
o1
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
x0
y1
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

?0
?1
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
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

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 

?0
?1
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv5/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv8/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv8/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Deconv1/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Deconv1/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv2/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv2/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv3/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv3/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv4/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv4/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv5/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv5/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv6/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv6/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv7/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv7/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv8/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv8/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Deconv9Finalone/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Deconv9Finalone/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv5/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv8/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv8/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Deconv1/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Deconv1/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv2/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv2/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv3/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv3/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv4/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv4/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv5/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv5/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv6/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv6/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv7/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv7/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Deconv8/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Deconv8/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Deconv9Finalone/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Deconv9Finalone/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
)serving_default_batch_normalization_inputPlaceholder*0
_output_shapes
:?????????P?*
dtype0*%
shape:?????????P?
?
StatefulPartitionedCallStatefulPartitionedCall)serving_default_batch_normalization_inputbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv4/kernel
Conv4/biasConv5/kernel
Conv5/biasConv6/kernel
Conv6/biasConv7/kernel
Conv7/biasConv8/kernel
Conv8/biasDeconv1/kernelDeconv1/biasDeconv2/kernelDeconv2/biasDeconv3/kernelDeconv3/biasDeconv4/kernelDeconv4/biasDeconv5/kernelDeconv5/biasDeconv6/kernelDeconv6/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasDeconv9Finalone/kernelDeconv9Finalone/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_12913
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?'
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOpConv1/bias/Read/ReadVariableOp Conv2/kernel/Read/ReadVariableOpConv2/bias/Read/ReadVariableOp Conv3/kernel/Read/ReadVariableOpConv3/bias/Read/ReadVariableOp Conv4/kernel/Read/ReadVariableOpConv4/bias/Read/ReadVariableOp Conv5/kernel/Read/ReadVariableOpConv5/bias/Read/ReadVariableOp Conv6/kernel/Read/ReadVariableOpConv6/bias/Read/ReadVariableOp Conv7/kernel/Read/ReadVariableOpConv7/bias/Read/ReadVariableOp Conv8/kernel/Read/ReadVariableOpConv8/bias/Read/ReadVariableOp"Deconv1/kernel/Read/ReadVariableOp Deconv1/bias/Read/ReadVariableOp"Deconv2/kernel/Read/ReadVariableOp Deconv2/bias/Read/ReadVariableOp"Deconv3/kernel/Read/ReadVariableOp Deconv3/bias/Read/ReadVariableOp"Deconv4/kernel/Read/ReadVariableOp Deconv4/bias/Read/ReadVariableOp"Deconv5/kernel/Read/ReadVariableOp Deconv5/bias/Read/ReadVariableOp"Deconv6/kernel/Read/ReadVariableOp Deconv6/bias/Read/ReadVariableOp"Deconv7/kernel/Read/ReadVariableOp Deconv7/bias/Read/ReadVariableOp"Deconv8/kernel/Read/ReadVariableOp Deconv8/bias/Read/ReadVariableOp*Deconv9Finalone/kernel/Read/ReadVariableOp(Deconv9Finalone/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp'Adam/Conv1/kernel/m/Read/ReadVariableOp%Adam/Conv1/bias/m/Read/ReadVariableOp'Adam/Conv2/kernel/m/Read/ReadVariableOp%Adam/Conv2/bias/m/Read/ReadVariableOp'Adam/Conv3/kernel/m/Read/ReadVariableOp%Adam/Conv3/bias/m/Read/ReadVariableOp'Adam/Conv4/kernel/m/Read/ReadVariableOp%Adam/Conv4/bias/m/Read/ReadVariableOp'Adam/Conv5/kernel/m/Read/ReadVariableOp%Adam/Conv5/bias/m/Read/ReadVariableOp'Adam/Conv6/kernel/m/Read/ReadVariableOp%Adam/Conv6/bias/m/Read/ReadVariableOp'Adam/Conv7/kernel/m/Read/ReadVariableOp%Adam/Conv7/bias/m/Read/ReadVariableOp'Adam/Conv8/kernel/m/Read/ReadVariableOp%Adam/Conv8/bias/m/Read/ReadVariableOp)Adam/Deconv1/kernel/m/Read/ReadVariableOp'Adam/Deconv1/bias/m/Read/ReadVariableOp)Adam/Deconv2/kernel/m/Read/ReadVariableOp'Adam/Deconv2/bias/m/Read/ReadVariableOp)Adam/Deconv3/kernel/m/Read/ReadVariableOp'Adam/Deconv3/bias/m/Read/ReadVariableOp)Adam/Deconv4/kernel/m/Read/ReadVariableOp'Adam/Deconv4/bias/m/Read/ReadVariableOp)Adam/Deconv5/kernel/m/Read/ReadVariableOp'Adam/Deconv5/bias/m/Read/ReadVariableOp)Adam/Deconv6/kernel/m/Read/ReadVariableOp'Adam/Deconv6/bias/m/Read/ReadVariableOp)Adam/Deconv7/kernel/m/Read/ReadVariableOp'Adam/Deconv7/bias/m/Read/ReadVariableOp)Adam/Deconv8/kernel/m/Read/ReadVariableOp'Adam/Deconv8/bias/m/Read/ReadVariableOp1Adam/Deconv9Finalone/kernel/m/Read/ReadVariableOp/Adam/Deconv9Finalone/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp'Adam/Conv1/kernel/v/Read/ReadVariableOp%Adam/Conv1/bias/v/Read/ReadVariableOp'Adam/Conv2/kernel/v/Read/ReadVariableOp%Adam/Conv2/bias/v/Read/ReadVariableOp'Adam/Conv3/kernel/v/Read/ReadVariableOp%Adam/Conv3/bias/v/Read/ReadVariableOp'Adam/Conv4/kernel/v/Read/ReadVariableOp%Adam/Conv4/bias/v/Read/ReadVariableOp'Adam/Conv5/kernel/v/Read/ReadVariableOp%Adam/Conv5/bias/v/Read/ReadVariableOp'Adam/Conv6/kernel/v/Read/ReadVariableOp%Adam/Conv6/bias/v/Read/ReadVariableOp'Adam/Conv7/kernel/v/Read/ReadVariableOp%Adam/Conv7/bias/v/Read/ReadVariableOp'Adam/Conv8/kernel/v/Read/ReadVariableOp%Adam/Conv8/bias/v/Read/ReadVariableOp)Adam/Deconv1/kernel/v/Read/ReadVariableOp'Adam/Deconv1/bias/v/Read/ReadVariableOp)Adam/Deconv2/kernel/v/Read/ReadVariableOp'Adam/Deconv2/bias/v/Read/ReadVariableOp)Adam/Deconv3/kernel/v/Read/ReadVariableOp'Adam/Deconv3/bias/v/Read/ReadVariableOp)Adam/Deconv4/kernel/v/Read/ReadVariableOp'Adam/Deconv4/bias/v/Read/ReadVariableOp)Adam/Deconv5/kernel/v/Read/ReadVariableOp'Adam/Deconv5/bias/v/Read/ReadVariableOp)Adam/Deconv6/kernel/v/Read/ReadVariableOp'Adam/Deconv6/bias/v/Read/ReadVariableOp)Adam/Deconv7/kernel/v/Read/ReadVariableOp'Adam/Deconv7/bias/v/Read/ReadVariableOp)Adam/Deconv8/kernel/v/Read/ReadVariableOp'Adam/Deconv8/bias/v/Read/ReadVariableOp1Adam/Deconv9Finalone/kernel/v/Read/ReadVariableOp/Adam/Deconv9Finalone/bias/v/Read/ReadVariableOpConst*?
Tin}
{2y	*
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
__inference__traced_save_14661
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv4/kernel
Conv4/biasConv5/kernel
Conv5/biasConv6/kernel
Conv6/biasConv7/kernel
Conv7/biasConv8/kernel
Conv8/biasDeconv1/kernelDeconv1/biasDeconv2/kernelDeconv2/biasDeconv3/kernelDeconv3/biasDeconv4/kernelDeconv4/biasDeconv5/kernelDeconv5/biasDeconv6/kernelDeconv6/biasDeconv7/kernelDeconv7/biasDeconv8/kernelDeconv8/biasDeconv9Finalone/kernelDeconv9Finalone/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1 Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/Conv1/kernel/mAdam/Conv1/bias/mAdam/Conv2/kernel/mAdam/Conv2/bias/mAdam/Conv3/kernel/mAdam/Conv3/bias/mAdam/Conv4/kernel/mAdam/Conv4/bias/mAdam/Conv5/kernel/mAdam/Conv5/bias/mAdam/Conv6/kernel/mAdam/Conv6/bias/mAdam/Conv7/kernel/mAdam/Conv7/bias/mAdam/Conv8/kernel/mAdam/Conv8/bias/mAdam/Deconv1/kernel/mAdam/Deconv1/bias/mAdam/Deconv2/kernel/mAdam/Deconv2/bias/mAdam/Deconv3/kernel/mAdam/Deconv3/bias/mAdam/Deconv4/kernel/mAdam/Deconv4/bias/mAdam/Deconv5/kernel/mAdam/Deconv5/bias/mAdam/Deconv6/kernel/mAdam/Deconv6/bias/mAdam/Deconv7/kernel/mAdam/Deconv7/bias/mAdam/Deconv8/kernel/mAdam/Deconv8/bias/mAdam/Deconv9Finalone/kernel/mAdam/Deconv9Finalone/bias/m Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/Conv1/kernel/vAdam/Conv1/bias/vAdam/Conv2/kernel/vAdam/Conv2/bias/vAdam/Conv3/kernel/vAdam/Conv3/bias/vAdam/Conv4/kernel/vAdam/Conv4/bias/vAdam/Conv5/kernel/vAdam/Conv5/bias/vAdam/Conv6/kernel/vAdam/Conv6/bias/vAdam/Conv7/kernel/vAdam/Conv7/bias/vAdam/Conv8/kernel/vAdam/Conv8/bias/vAdam/Deconv1/kernel/vAdam/Deconv1/bias/vAdam/Deconv2/kernel/vAdam/Deconv2/bias/vAdam/Deconv3/kernel/vAdam/Deconv3/bias/vAdam/Deconv4/kernel/vAdam/Deconv4/bias/vAdam/Deconv5/kernel/vAdam/Deconv5/bias/vAdam/Deconv6/kernel/vAdam/Deconv6/bias/vAdam/Deconv7/kernel/vAdam/Deconv7/bias/vAdam/Deconv8/kernel/vAdam/Deconv8/bias/vAdam/Deconv9Finalone/kernel/vAdam/Deconv9Finalone/bias/v*?
Tin|
z2x*
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
!__inference__traced_restore_15028??
?
|
'__inference_Deconv8_layer_call_fn_11625

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_116152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_14163

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_12431
batch_normalization_input
batch_normalization_12320
batch_normalization_12322
batch_normalization_12324
batch_normalization_12326
conv1_12329
conv1_12331
conv2_12334
conv2_12336
conv3_12340
conv3_12342
conv4_12346
conv4_12348
conv5_12352
conv5_12354
conv6_12359
conv6_12361
conv7_12365
conv7_12367
conv8_12371
conv8_12373
deconv1_12378
deconv1_12380
deconv2_12383
deconv2_12385
deconv3_12389
deconv3_12391
deconv4_12396
deconv4_12398
deconv5_12402
deconv5_12404
deconv6_12408
deconv6_12410
deconv7_12414
deconv7_12416
deconv8_12420
deconv8_12422
deconv9finalone_12425
deconv9finalone_12427
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?Conv5/StatefulPartitionedCall?Conv6/StatefulPartitionedCall?Conv7/StatefulPartitionedCall?Conv8/StatefulPartitionedCall?Deconv1/StatefulPartitionedCall?Deconv2/StatefulPartitionedCall?Deconv3/StatefulPartitionedCall?Deconv4/StatefulPartitionedCall?Deconv5/StatefulPartitionedCall?Deconv6/StatefulPartitionedCall?Deconv7/StatefulPartitionedCall?Deconv8/StatefulPartitionedCall?'Deconv9Finalone/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_inputbatch_normalization_12320batch_normalization_12322batch_normalization_12324batch_normalization_12326*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_117132-
+batch_normalization/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv1_12329conv1_12331*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????N?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_117602
Conv1/StatefulPartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_12334conv2_12336*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????L?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_117872
Conv2/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_111462
max_pooling2d/PartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv3_12340conv3_12342*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_118152
Conv3/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_118482
dropout/PartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv4_12346conv4_12348*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_118722
Conv4/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_119052
dropout_1/PartitionedCall?
Conv5/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv5_12352conv5_12354*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_119292
Conv5/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall&Conv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_119622
dropout_2/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_111582!
max_pooling2d_1/PartitionedCall?
Conv6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv6_12359conv6_12361*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_119872
Conv6/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall&Conv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120202
dropout_3/PartitionedCall?
Conv7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv7_12365conv7_12367*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_120442
Conv7/StatefulPartitionedCall?
dropout_4/PartitionedCallPartitionedCall&Conv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_120772
dropout_4/PartitionedCall?
Conv8/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0conv8_12371conv8_12373*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv8_layer_call_and_return_conditional_losses_121012
Conv8/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall&Conv8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_111702!
max_pooling2d_2/PartitionedCall?
up_sampling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_111892
up_sampling2d/PartitionedCall?
Deconv1/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0deconv1_12378deconv1_12380*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv1_layer_call_and_return_conditional_losses_112342!
Deconv1/StatefulPartitionedCall?
Deconv2/StatefulPartitionedCallStatefulPartitionedCall(Deconv1/StatefulPartitionedCall:output:0deconv2_12383deconv2_12385*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv2_layer_call_and_return_conditional_losses_112832!
Deconv2/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall(Deconv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_121462
dropout_5/PartitionedCall?
Deconv3/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0deconv3_12389deconv3_12391*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_113322!
Deconv3/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall(Deconv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_121812
dropout_6/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_113552!
up_sampling2d_1/PartitionedCall?
Deconv4/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0deconv4_12396deconv4_12398*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_114002!
Deconv4/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall(Deconv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_122172
dropout_7/PartitionedCall?
Deconv5/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0deconv5_12402deconv5_12404*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_114492!
Deconv5/StatefulPartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall(Deconv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_114722!
up_sampling2d_2/PartitionedCall?
Deconv6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0deconv6_12408deconv6_12410*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_115172!
Deconv6/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall(Deconv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_122582
dropout_8/PartitionedCall?
Deconv7/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0deconv7_12414deconv7_12416*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_115662!
Deconv7/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_122932
dropout_9/PartitionedCall?
Deconv8/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0deconv8_12420deconv8_12422*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_116152!
Deconv8/StatefulPartitionedCall?
'Deconv9Finalone/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0deconv9finalone_12425deconv9finalone_12427*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_116642)
'Deconv9Finalone/StatefulPartitionedCall?
IdentityIdentity0Deconv9Finalone/StatefulPartitionedCall:output:0^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall^Conv8/StatefulPartitionedCall ^Deconv1/StatefulPartitionedCall ^Deconv2/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall(^Deconv9Finalone/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2>
Conv8/StatefulPartitionedCallConv8/StatefulPartitionedCall2B
Deconv1/StatefulPartitionedCallDeconv1/StatefulPartitionedCall2B
Deconv2/StatefulPartitionedCallDeconv2/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2R
'Deconv9Finalone/StatefulPartitionedCall'Deconv9Finalone/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall:k g
0
_output_shapes
:?????????P?
3
_user_specified_namebatch_normalization_input
?

?
@__inference_Conv2_layer_call_and_return_conditional_losses_13882

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????L?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????N?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????N?
 
_user_specified_nameinputs
??
? 
 __inference__wrapped_model_11040
batch_normalization_input:
6sequential_batch_normalization_readvariableop_resource<
8sequential_batch_normalization_readvariableop_1_resourceK
Gsequential_batch_normalization_fusedbatchnormv3_readvariableop_resourceM
Isequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource3
/sequential_conv1_conv2d_readvariableop_resource4
0sequential_conv1_biasadd_readvariableop_resource3
/sequential_conv2_conv2d_readvariableop_resource4
0sequential_conv2_biasadd_readvariableop_resource3
/sequential_conv3_conv2d_readvariableop_resource4
0sequential_conv3_biasadd_readvariableop_resource3
/sequential_conv4_conv2d_readvariableop_resource4
0sequential_conv4_biasadd_readvariableop_resource3
/sequential_conv5_conv2d_readvariableop_resource4
0sequential_conv5_biasadd_readvariableop_resource3
/sequential_conv6_conv2d_readvariableop_resource4
0sequential_conv6_biasadd_readvariableop_resource3
/sequential_conv7_conv2d_readvariableop_resource4
0sequential_conv7_biasadd_readvariableop_resource3
/sequential_conv8_conv2d_readvariableop_resource4
0sequential_conv8_biasadd_readvariableop_resource?
;sequential_deconv1_conv2d_transpose_readvariableop_resource6
2sequential_deconv1_biasadd_readvariableop_resource?
;sequential_deconv2_conv2d_transpose_readvariableop_resource6
2sequential_deconv2_biasadd_readvariableop_resource?
;sequential_deconv3_conv2d_transpose_readvariableop_resource6
2sequential_deconv3_biasadd_readvariableop_resource?
;sequential_deconv4_conv2d_transpose_readvariableop_resource6
2sequential_deconv4_biasadd_readvariableop_resource?
;sequential_deconv5_conv2d_transpose_readvariableop_resource6
2sequential_deconv5_biasadd_readvariableop_resource?
;sequential_deconv6_conv2d_transpose_readvariableop_resource6
2sequential_deconv6_biasadd_readvariableop_resource?
;sequential_deconv7_conv2d_transpose_readvariableop_resource6
2sequential_deconv7_biasadd_readvariableop_resource?
;sequential_deconv8_conv2d_transpose_readvariableop_resource6
2sequential_deconv8_biasadd_readvariableop_resourceG
Csequential_deconv9finalone_conv2d_transpose_readvariableop_resource>
:sequential_deconv9finalone_biasadd_readvariableop_resource
identity??'sequential/Conv1/BiasAdd/ReadVariableOp?&sequential/Conv1/Conv2D/ReadVariableOp?'sequential/Conv2/BiasAdd/ReadVariableOp?&sequential/Conv2/Conv2D/ReadVariableOp?'sequential/Conv3/BiasAdd/ReadVariableOp?&sequential/Conv3/Conv2D/ReadVariableOp?'sequential/Conv4/BiasAdd/ReadVariableOp?&sequential/Conv4/Conv2D/ReadVariableOp?'sequential/Conv5/BiasAdd/ReadVariableOp?&sequential/Conv5/Conv2D/ReadVariableOp?'sequential/Conv6/BiasAdd/ReadVariableOp?&sequential/Conv6/Conv2D/ReadVariableOp?'sequential/Conv7/BiasAdd/ReadVariableOp?&sequential/Conv7/Conv2D/ReadVariableOp?'sequential/Conv8/BiasAdd/ReadVariableOp?&sequential/Conv8/Conv2D/ReadVariableOp?)sequential/Deconv1/BiasAdd/ReadVariableOp?2sequential/Deconv1/conv2d_transpose/ReadVariableOp?)sequential/Deconv2/BiasAdd/ReadVariableOp?2sequential/Deconv2/conv2d_transpose/ReadVariableOp?)sequential/Deconv3/BiasAdd/ReadVariableOp?2sequential/Deconv3/conv2d_transpose/ReadVariableOp?)sequential/Deconv4/BiasAdd/ReadVariableOp?2sequential/Deconv4/conv2d_transpose/ReadVariableOp?)sequential/Deconv5/BiasAdd/ReadVariableOp?2sequential/Deconv5/conv2d_transpose/ReadVariableOp?)sequential/Deconv6/BiasAdd/ReadVariableOp?2sequential/Deconv6/conv2d_transpose/ReadVariableOp?)sequential/Deconv7/BiasAdd/ReadVariableOp?2sequential/Deconv7/conv2d_transpose/ReadVariableOp?)sequential/Deconv8/BiasAdd/ReadVariableOp?2sequential/Deconv8/conv2d_transpose/ReadVariableOp?1sequential/Deconv9Finalone/BiasAdd/ReadVariableOp?:sequential/Deconv9Finalone/conv2d_transpose/ReadVariableOp?>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp?@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?-sequential/batch_normalization/ReadVariableOp?/sequential/batch_normalization/ReadVariableOp_1?
-sequential/batch_normalization/ReadVariableOpReadVariableOp6sequential_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential/batch_normalization/ReadVariableOp?
/sequential/batch_normalization/ReadVariableOp_1ReadVariableOp8sequential_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype021
/sequential/batch_normalization/ReadVariableOp_1?
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpGsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp?
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02B
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3batch_normalization_input5sequential/batch_normalization/ReadVariableOp:value:07sequential/batch_normalization/ReadVariableOp_1:value:0Fsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????P?:::::*
epsilon%o?:*
is_training( 21
/sequential/batch_normalization/FusedBatchNormV3?
&sequential/Conv1/Conv2D/ReadVariableOpReadVariableOp/sequential_conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&sequential/Conv1/Conv2D/ReadVariableOp?
sequential/Conv1/Conv2DConv2D3sequential/batch_normalization/FusedBatchNormV3:y:0.sequential/Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2
sequential/Conv1/Conv2D?
'sequential/Conv1/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/Conv1/BiasAdd/ReadVariableOp?
sequential/Conv1/BiasAddBiasAdd sequential/Conv1/Conv2D:output:0/sequential/Conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2
sequential/Conv1/BiasAdd?
sequential/Conv1/ReluRelu!sequential/Conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2
sequential/Conv1/Relu?
&sequential/Conv2/Conv2D/ReadVariableOpReadVariableOp/sequential_conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&sequential/Conv2/Conv2D/ReadVariableOp?
sequential/Conv2/Conv2DConv2D#sequential/Conv1/Relu:activations:0.sequential/Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2
sequential/Conv2/Conv2D?
'sequential/Conv2/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/Conv2/BiasAdd/ReadVariableOp?
sequential/Conv2/BiasAddBiasAdd sequential/Conv2/Conv2D:output:0/sequential/Conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2
sequential/Conv2/BiasAdd?
sequential/Conv2/ReluRelu!sequential/Conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2
sequential/Conv2/Relu?
 sequential/max_pooling2d/MaxPoolMaxPool#sequential/Conv2/Relu:activations:0*/
_output_shapes
:?????????&N*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPool?
&sequential/Conv3/Conv2D/ReadVariableOpReadVariableOp/sequential_conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&sequential/Conv3/Conv2D/ReadVariableOp?
sequential/Conv3/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:0.sequential/Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L*
paddingVALID*
strides
2
sequential/Conv3/Conv2D?
'sequential/Conv3/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/Conv3/BiasAdd/ReadVariableOp?
sequential/Conv3/BiasAddBiasAdd sequential/Conv3/Conv2D:output:0/sequential/Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L2
sequential/Conv3/BiasAdd?
sequential/Conv3/ReluRelu!sequential/Conv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$L2
sequential/Conv3/Relu?
sequential/dropout/IdentityIdentity#sequential/Conv3/Relu:activations:0*
T0*/
_output_shapes
:?????????$L2
sequential/dropout/Identity?
&sequential/Conv4/Conv2D/ReadVariableOpReadVariableOp/sequential_conv4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02(
&sequential/Conv4/Conv2D/ReadVariableOp?
sequential/Conv4/Conv2DConv2D$sequential/dropout/Identity:output:0.sequential/Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2
sequential/Conv4/Conv2D?
'sequential/Conv4/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/Conv4/BiasAdd/ReadVariableOp?
sequential/Conv4/BiasAddBiasAdd sequential/Conv4/Conv2D:output:0/sequential/Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2
sequential/Conv4/BiasAdd?
sequential/Conv4/ReluRelu!sequential/Conv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2
sequential/Conv4/Relu?
sequential/dropout_1/IdentityIdentity#sequential/Conv4/Relu:activations:0*
T0*/
_output_shapes
:?????????"J 2
sequential/dropout_1/Identity?
&sequential/Conv5/Conv2D/ReadVariableOpReadVariableOp/sequential_conv5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02(
&sequential/Conv5/Conv2D/ReadVariableOp?
sequential/Conv5/Conv2DConv2D&sequential/dropout_1/Identity:output:0.sequential/Conv5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H *
paddingVALID*
strides
2
sequential/Conv5/Conv2D?
'sequential/Conv5/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/Conv5/BiasAdd/ReadVariableOp?
sequential/Conv5/BiasAddBiasAdd sequential/Conv5/Conv2D:output:0/sequential/Conv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H 2
sequential/Conv5/BiasAdd?
sequential/Conv5/ReluRelu!sequential/Conv5/BiasAdd:output:0*
T0*/
_output_shapes
:????????? H 2
sequential/Conv5/Relu?
sequential/dropout_2/IdentityIdentity#sequential/Conv5/Relu:activations:0*
T0*/
_output_shapes
:????????? H 2
sequential/dropout_2/Identity?
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/dropout_2/Identity:output:0*/
_output_shapes
:?????????$ *
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_1/MaxPool?
&sequential/Conv6/Conv2D/ReadVariableOpReadVariableOp/sequential_conv6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02(
&sequential/Conv6/Conv2D/ReadVariableOp?
sequential/Conv6/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:0.sequential/Conv6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
strides
2
sequential/Conv6/Conv2D?
'sequential/Conv6/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'sequential/Conv6/BiasAdd/ReadVariableOp?
sequential/Conv6/BiasAddBiasAdd sequential/Conv6/Conv2D:output:0/sequential/Conv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@2
sequential/Conv6/BiasAdd?
sequential/Conv6/ReluRelu!sequential/Conv6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2
sequential/Conv6/Relu?
sequential/dropout_3/IdentityIdentity#sequential/Conv6/Relu:activations:0*
T0*/
_output_shapes
:?????????"@2
sequential/dropout_3/Identity?
&sequential/Conv7/Conv2D/ReadVariableOpReadVariableOp/sequential_conv7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&sequential/Conv7/Conv2D/ReadVariableOp?
sequential/Conv7/Conv2DConv2D&sequential/dropout_3/Identity:output:0.sequential/Conv7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @*
paddingVALID*
strides
2
sequential/Conv7/Conv2D?
'sequential/Conv7/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'sequential/Conv7/BiasAdd/ReadVariableOp?
sequential/Conv7/BiasAddBiasAdd sequential/Conv7/Conv2D:output:0/sequential/Conv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @2
sequential/Conv7/BiasAdd?
sequential/Conv7/ReluRelu!sequential/Conv7/BiasAdd:output:0*
T0*/
_output_shapes
:????????? @2
sequential/Conv7/Relu?
sequential/dropout_4/IdentityIdentity#sequential/Conv7/Relu:activations:0*
T0*/
_output_shapes
:????????? @2
sequential/dropout_4/Identity?
&sequential/Conv8/Conv2D/ReadVariableOpReadVariableOp/sequential_conv8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&sequential/Conv8/Conv2D/ReadVariableOp?
sequential/Conv8/Conv2DConv2D&sequential/dropout_4/Identity:output:0.sequential/Conv8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@*
paddingVALID*
strides
2
sequential/Conv8/Conv2D?
'sequential/Conv8/BiasAdd/ReadVariableOpReadVariableOp0sequential_conv8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'sequential/Conv8/BiasAdd/ReadVariableOp?
sequential/Conv8/BiasAddBiasAdd sequential/Conv8/Conv2D:output:0/sequential/Conv8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@2
sequential/Conv8/BiasAdd?
sequential/Conv8/ReluRelu!sequential/Conv8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
@2
sequential/Conv8/Relu?
"sequential/max_pooling2d_2/MaxPoolMaxPool#sequential/Conv8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_2/MaxPool?
sequential/up_sampling2d/ShapeShape+sequential/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2 
sequential/up_sampling2d/Shape?
,sequential/up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,sequential/up_sampling2d/strided_slice/stack?
.sequential/up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential/up_sampling2d/strided_slice/stack_1?
.sequential/up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential/up_sampling2d/strided_slice/stack_2?
&sequential/up_sampling2d/strided_sliceStridedSlice'sequential/up_sampling2d/Shape:output:05sequential/up_sampling2d/strided_slice/stack:output:07sequential/up_sampling2d/strided_slice/stack_1:output:07sequential/up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&sequential/up_sampling2d/strided_slice?
sequential/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential/up_sampling2d/Const?
sequential/up_sampling2d/mulMul/sequential/up_sampling2d/strided_slice:output:0'sequential/up_sampling2d/Const:output:0*
T0*
_output_shapes
:2
sequential/up_sampling2d/mul?
5sequential/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential/max_pooling2d_2/MaxPool:output:0 sequential/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:?????????
@*
half_pixel_centers(27
5sequential/up_sampling2d/resize/ResizeNearestNeighbor?
sequential/Deconv1/ShapeShapeFsequential/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
sequential/Deconv1/Shape?
&sequential/Deconv1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv1/strided_slice/stack?
(sequential/Deconv1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv1/strided_slice/stack_1?
(sequential/Deconv1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv1/strided_slice/stack_2?
 sequential/Deconv1/strided_sliceStridedSlice!sequential/Deconv1/Shape:output:0/sequential/Deconv1/strided_slice/stack:output:01sequential/Deconv1/strided_slice/stack_1:output:01sequential/Deconv1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv1/strided_slicez
sequential/Deconv1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
sequential/Deconv1/stack/1z
sequential/Deconv1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
sequential/Deconv1/stack/2{
sequential/Deconv1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
sequential/Deconv1/stack/3?
sequential/Deconv1/stackPack)sequential/Deconv1/strided_slice:output:0#sequential/Deconv1/stack/1:output:0#sequential/Deconv1/stack/2:output:0#sequential/Deconv1/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv1/stack?
(sequential/Deconv1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv1/strided_slice_1/stack?
*sequential/Deconv1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv1/strided_slice_1/stack_1?
*sequential/Deconv1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv1/strided_slice_1/stack_2?
"sequential/Deconv1/strided_slice_1StridedSlice!sequential/Deconv1/stack:output:01sequential/Deconv1/strided_slice_1/stack:output:03sequential/Deconv1/strided_slice_1/stack_1:output:03sequential/Deconv1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv1/strided_slice_1?
2sequential/Deconv1/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:?@*
dtype024
2sequential/Deconv1/conv2d_transpose/ReadVariableOp?
#sequential/Deconv1/conv2d_transposeConv2DBackpropInput!sequential/Deconv1/stack:output:0:sequential/Deconv1/conv2d_transpose/ReadVariableOp:value:0Fsequential/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:????????? ?*
paddingVALID*
strides
2%
#sequential/Deconv1/conv2d_transpose?
)sequential/Deconv1/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)sequential/Deconv1/BiasAdd/ReadVariableOp?
sequential/Deconv1/BiasAddBiasAdd,sequential/Deconv1/conv2d_transpose:output:01sequential/Deconv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
sequential/Deconv1/BiasAdd?
sequential/Deconv1/ReluRelu#sequential/Deconv1/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
sequential/Deconv1/Relu?
sequential/Deconv2/ShapeShape%sequential/Deconv1/Relu:activations:0*
T0*
_output_shapes
:2
sequential/Deconv2/Shape?
&sequential/Deconv2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv2/strided_slice/stack?
(sequential/Deconv2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv2/strided_slice/stack_1?
(sequential/Deconv2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv2/strided_slice/stack_2?
 sequential/Deconv2/strided_sliceStridedSlice!sequential/Deconv2/Shape:output:0/sequential/Deconv2/strided_slice/stack:output:01sequential/Deconv2/strided_slice/stack_1:output:01sequential/Deconv2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv2/strided_slicez
sequential/Deconv2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
sequential/Deconv2/stack/1z
sequential/Deconv2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :"2
sequential/Deconv2/stack/2z
sequential/Deconv2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
sequential/Deconv2/stack/3?
sequential/Deconv2/stackPack)sequential/Deconv2/strided_slice:output:0#sequential/Deconv2/stack/1:output:0#sequential/Deconv2/stack/2:output:0#sequential/Deconv2/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv2/stack?
(sequential/Deconv2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv2/strided_slice_1/stack?
*sequential/Deconv2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv2/strided_slice_1/stack_1?
*sequential/Deconv2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv2/strided_slice_1/stack_2?
"sequential/Deconv2/strided_slice_1StridedSlice!sequential/Deconv2/stack:output:01sequential/Deconv2/strided_slice_1/stack:output:03sequential/Deconv2/strided_slice_1/stack_1:output:03sequential/Deconv2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv2/strided_slice_1?
2sequential/Deconv2/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2sequential/Deconv2/conv2d_transpose/ReadVariableOp?
#sequential/Deconv2/conv2d_transposeConv2DBackpropInput!sequential/Deconv2/stack:output:0:sequential/Deconv2/conv2d_transpose/ReadVariableOp:value:0%sequential/Deconv1/Relu:activations:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
strides
2%
#sequential/Deconv2/conv2d_transpose?
)sequential/Deconv2/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/Deconv2/BiasAdd/ReadVariableOp?
sequential/Deconv2/BiasAddBiasAdd,sequential/Deconv2/conv2d_transpose:output:01sequential/Deconv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@2
sequential/Deconv2/BiasAdd?
sequential/Deconv2/ReluRelu#sequential/Deconv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2
sequential/Deconv2/Relu?
sequential/dropout_5/IdentityIdentity%sequential/Deconv2/Relu:activations:0*
T0*/
_output_shapes
:?????????"@2
sequential/dropout_5/Identity?
sequential/Deconv3/ShapeShape&sequential/dropout_5/Identity:output:0*
T0*
_output_shapes
:2
sequential/Deconv3/Shape?
&sequential/Deconv3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv3/strided_slice/stack?
(sequential/Deconv3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv3/strided_slice/stack_1?
(sequential/Deconv3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv3/strided_slice/stack_2?
 sequential/Deconv3/strided_sliceStridedSlice!sequential/Deconv3/Shape:output:0/sequential/Deconv3/strided_slice/stack:output:01sequential/Deconv3/strided_slice/stack_1:output:01sequential/Deconv3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv3/strided_slicez
sequential/Deconv3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
sequential/Deconv3/stack/1z
sequential/Deconv3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :$2
sequential/Deconv3/stack/2z
sequential/Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
sequential/Deconv3/stack/3?
sequential/Deconv3/stackPack)sequential/Deconv3/strided_slice:output:0#sequential/Deconv3/stack/1:output:0#sequential/Deconv3/stack/2:output:0#sequential/Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv3/stack?
(sequential/Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv3/strided_slice_1/stack?
*sequential/Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv3/strided_slice_1/stack_1?
*sequential/Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv3/strided_slice_1/stack_2?
"sequential/Deconv3/strided_slice_1StridedSlice!sequential/Deconv3/stack:output:01sequential/Deconv3/strided_slice_1/stack:output:03sequential/Deconv3/strided_slice_1/stack_1:output:03sequential/Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv3/strided_slice_1?
2sequential/Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype024
2sequential/Deconv3/conv2d_transpose/ReadVariableOp?
#sequential/Deconv3/conv2d_transposeConv2DBackpropInput!sequential/Deconv3/stack:output:0:sequential/Deconv3/conv2d_transpose/ReadVariableOp:value:0&sequential/dropout_5/Identity:output:0*
T0*/
_output_shapes
:?????????$@*
paddingVALID*
strides
2%
#sequential/Deconv3/conv2d_transpose?
)sequential/Deconv3/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential/Deconv3/BiasAdd/ReadVariableOp?
sequential/Deconv3/BiasAddBiasAdd,sequential/Deconv3/conv2d_transpose:output:01sequential/Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$@2
sequential/Deconv3/BiasAdd?
sequential/Deconv3/ReluRelu#sequential/Deconv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$@2
sequential/Deconv3/Relu?
sequential/dropout_6/IdentityIdentity%sequential/Deconv3/Relu:activations:0*
T0*/
_output_shapes
:?????????$@2
sequential/dropout_6/Identity?
 sequential/up_sampling2d_1/ShapeShape&sequential/dropout_6/Identity:output:0*
T0*
_output_shapes
:2"
 sequential/up_sampling2d_1/Shape?
.sequential/up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.sequential/up_sampling2d_1/strided_slice/stack?
0sequential/up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/up_sampling2d_1/strided_slice/stack_1?
0sequential/up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/up_sampling2d_1/strided_slice/stack_2?
(sequential/up_sampling2d_1/strided_sliceStridedSlice)sequential/up_sampling2d_1/Shape:output:07sequential/up_sampling2d_1/strided_slice/stack:output:09sequential/up_sampling2d_1/strided_slice/stack_1:output:09sequential/up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2*
(sequential/up_sampling2d_1/strided_slice?
 sequential/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 sequential/up_sampling2d_1/Const?
sequential/up_sampling2d_1/mulMul1sequential/up_sampling2d_1/strided_slice:output:0)sequential/up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2 
sequential/up_sampling2d_1/mul?
7sequential/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor&sequential/dropout_6/Identity:output:0"sequential/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:????????? H@*
half_pixel_centers(29
7sequential/up_sampling2d_1/resize/ResizeNearestNeighbor?
sequential/Deconv4/ShapeShapeHsequential/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
sequential/Deconv4/Shape?
&sequential/Deconv4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv4/strided_slice/stack?
(sequential/Deconv4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv4/strided_slice/stack_1?
(sequential/Deconv4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv4/strided_slice/stack_2?
 sequential/Deconv4/strided_sliceStridedSlice!sequential/Deconv4/Shape:output:0/sequential/Deconv4/strided_slice/stack:output:01sequential/Deconv4/strided_slice/stack_1:output:01sequential/Deconv4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv4/strided_slicez
sequential/Deconv4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :"2
sequential/Deconv4/stack/1z
sequential/Deconv4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :J2
sequential/Deconv4/stack/2z
sequential/Deconv4/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
sequential/Deconv4/stack/3?
sequential/Deconv4/stackPack)sequential/Deconv4/strided_slice:output:0#sequential/Deconv4/stack/1:output:0#sequential/Deconv4/stack/2:output:0#sequential/Deconv4/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv4/stack?
(sequential/Deconv4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv4/strided_slice_1/stack?
*sequential/Deconv4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv4/strided_slice_1/stack_1?
*sequential/Deconv4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv4/strided_slice_1/stack_2?
"sequential/Deconv4/strided_slice_1StridedSlice!sequential/Deconv4/stack:output:01sequential/Deconv4/strided_slice_1/stack:output:03sequential/Deconv4/strided_slice_1/stack_1:output:03sequential/Deconv4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv4/strided_slice_1?
2sequential/Deconv4/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype024
2sequential/Deconv4/conv2d_transpose/ReadVariableOp?
#sequential/Deconv4/conv2d_transposeConv2DBackpropInput!sequential/Deconv4/stack:output:0:sequential/Deconv4/conv2d_transpose/ReadVariableOp:value:0Hsequential/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2%
#sequential/Deconv4/conv2d_transpose?
)sequential/Deconv4/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/Deconv4/BiasAdd/ReadVariableOp?
sequential/Deconv4/BiasAddBiasAdd,sequential/Deconv4/conv2d_transpose:output:01sequential/Deconv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2
sequential/Deconv4/BiasAdd?
sequential/Deconv4/ReluRelu#sequential/Deconv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2
sequential/Deconv4/Relu?
sequential/dropout_7/IdentityIdentity%sequential/Deconv4/Relu:activations:0*
T0*/
_output_shapes
:?????????"J 2
sequential/dropout_7/Identity?
sequential/Deconv5/ShapeShape&sequential/dropout_7/Identity:output:0*
T0*
_output_shapes
:2
sequential/Deconv5/Shape?
&sequential/Deconv5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv5/strided_slice/stack?
(sequential/Deconv5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv5/strided_slice/stack_1?
(sequential/Deconv5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv5/strided_slice/stack_2?
 sequential/Deconv5/strided_sliceStridedSlice!sequential/Deconv5/Shape:output:0/sequential/Deconv5/strided_slice/stack:output:01sequential/Deconv5/strided_slice/stack_1:output:01sequential/Deconv5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv5/strided_slicez
sequential/Deconv5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :$2
sequential/Deconv5/stack/1z
sequential/Deconv5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :L2
sequential/Deconv5/stack/2z
sequential/Deconv5/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
sequential/Deconv5/stack/3?
sequential/Deconv5/stackPack)sequential/Deconv5/strided_slice:output:0#sequential/Deconv5/stack/1:output:0#sequential/Deconv5/stack/2:output:0#sequential/Deconv5/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv5/stack?
(sequential/Deconv5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv5/strided_slice_1/stack?
*sequential/Deconv5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv5/strided_slice_1/stack_1?
*sequential/Deconv5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv5/strided_slice_1/stack_2?
"sequential/Deconv5/strided_slice_1StridedSlice!sequential/Deconv5/stack:output:01sequential/Deconv5/strided_slice_1/stack:output:03sequential/Deconv5/strided_slice_1/stack_1:output:03sequential/Deconv5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv5/strided_slice_1?
2sequential/Deconv5/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype024
2sequential/Deconv5/conv2d_transpose/ReadVariableOp?
#sequential/Deconv5/conv2d_transposeConv2DBackpropInput!sequential/Deconv5/stack:output:0:sequential/Deconv5/conv2d_transpose/ReadVariableOp:value:0&sequential/dropout_7/Identity:output:0*
T0*/
_output_shapes
:?????????$L *
paddingVALID*
strides
2%
#sequential/Deconv5/conv2d_transpose?
)sequential/Deconv5/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/Deconv5/BiasAdd/ReadVariableOp?
sequential/Deconv5/BiasAddBiasAdd,sequential/Deconv5/conv2d_transpose:output:01sequential/Deconv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L 2
sequential/Deconv5/BiasAdd?
sequential/Deconv5/ReluRelu#sequential/Deconv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$L 2
sequential/Deconv5/Relu?
 sequential/up_sampling2d_2/ShapeShape%sequential/Deconv5/Relu:activations:0*
T0*
_output_shapes
:2"
 sequential/up_sampling2d_2/Shape?
.sequential/up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.sequential/up_sampling2d_2/strided_slice/stack?
0sequential/up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/up_sampling2d_2/strided_slice/stack_1?
0sequential/up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/up_sampling2d_2/strided_slice/stack_2?
(sequential/up_sampling2d_2/strided_sliceStridedSlice)sequential/up_sampling2d_2/Shape:output:07sequential/up_sampling2d_2/strided_slice/stack:output:09sequential/up_sampling2d_2/strided_slice/stack_1:output:09sequential/up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2*
(sequential/up_sampling2d_2/strided_slice?
 sequential/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 sequential/up_sampling2d_2/Const?
sequential/up_sampling2d_2/mulMul1sequential/up_sampling2d_2/strided_slice:output:0)sequential/up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2 
sequential/up_sampling2d_2/mul?
7sequential/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor%sequential/Deconv5/Relu:activations:0"sequential/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:?????????H? *
half_pixel_centers(29
7sequential/up_sampling2d_2/resize/ResizeNearestNeighbor?
sequential/Deconv6/ShapeShapeHsequential/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
sequential/Deconv6/Shape?
&sequential/Deconv6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv6/strided_slice/stack?
(sequential/Deconv6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv6/strided_slice/stack_1?
(sequential/Deconv6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv6/strided_slice/stack_2?
 sequential/Deconv6/strided_sliceStridedSlice!sequential/Deconv6/Shape:output:0/sequential/Deconv6/strided_slice/stack:output:01sequential/Deconv6/strided_slice/stack_1:output:01sequential/Deconv6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv6/strided_slicez
sequential/Deconv6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :J2
sequential/Deconv6/stack/1{
sequential/Deconv6/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
sequential/Deconv6/stack/2z
sequential/Deconv6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
sequential/Deconv6/stack/3?
sequential/Deconv6/stackPack)sequential/Deconv6/strided_slice:output:0#sequential/Deconv6/stack/1:output:0#sequential/Deconv6/stack/2:output:0#sequential/Deconv6/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv6/stack?
(sequential/Deconv6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv6/strided_slice_1/stack?
*sequential/Deconv6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv6/strided_slice_1/stack_1?
*sequential/Deconv6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv6/strided_slice_1/stack_2?
"sequential/Deconv6/strided_slice_1StridedSlice!sequential/Deconv6/stack:output:01sequential/Deconv6/strided_slice_1/stack:output:03sequential/Deconv6/strided_slice_1/stack_1:output:03sequential/Deconv6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv6/strided_slice_1?
2sequential/Deconv6/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype024
2sequential/Deconv6/conv2d_transpose/ReadVariableOp?
#sequential/Deconv6/conv2d_transposeConv2DBackpropInput!sequential/Deconv6/stack:output:0:sequential/Deconv6/conv2d_transpose/ReadVariableOp:value:0Hsequential/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:?????????J? *
paddingVALID*
strides
2%
#sequential/Deconv6/conv2d_transpose?
)sequential/Deconv6/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/Deconv6/BiasAdd/ReadVariableOp?
sequential/Deconv6/BiasAddBiasAdd,sequential/Deconv6/conv2d_transpose:output:01sequential/Deconv6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????J? 2
sequential/Deconv6/BiasAdd?
sequential/Deconv6/ReluRelu#sequential/Deconv6/BiasAdd:output:0*
T0*0
_output_shapes
:?????????J? 2
sequential/Deconv6/Relu?
sequential/dropout_8/IdentityIdentity%sequential/Deconv6/Relu:activations:0*
T0*0
_output_shapes
:?????????J? 2
sequential/dropout_8/Identity?
sequential/Deconv7/ShapeShape&sequential/dropout_8/Identity:output:0*
T0*
_output_shapes
:2
sequential/Deconv7/Shape?
&sequential/Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv7/strided_slice/stack?
(sequential/Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv7/strided_slice/stack_1?
(sequential/Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv7/strided_slice/stack_2?
 sequential/Deconv7/strided_sliceStridedSlice!sequential/Deconv7/Shape:output:0/sequential/Deconv7/strided_slice/stack:output:01sequential/Deconv7/strided_slice/stack_1:output:01sequential/Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv7/strided_slicez
sequential/Deconv7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :L2
sequential/Deconv7/stack/1{
sequential/Deconv7/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
sequential/Deconv7/stack/2z
sequential/Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
sequential/Deconv7/stack/3?
sequential/Deconv7/stackPack)sequential/Deconv7/strided_slice:output:0#sequential/Deconv7/stack/1:output:0#sequential/Deconv7/stack/2:output:0#sequential/Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv7/stack?
(sequential/Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv7/strided_slice_1/stack?
*sequential/Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv7/strided_slice_1/stack_1?
*sequential/Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv7/strided_slice_1/stack_2?
"sequential/Deconv7/strided_slice_1StridedSlice!sequential/Deconv7/stack:output:01sequential/Deconv7/strided_slice_1/stack:output:03sequential/Deconv7/strided_slice_1/stack_1:output:03sequential/Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv7/strided_slice_1?
2sequential/Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype024
2sequential/Deconv7/conv2d_transpose/ReadVariableOp?
#sequential/Deconv7/conv2d_transposeConv2DBackpropInput!sequential/Deconv7/stack:output:0:sequential/Deconv7/conv2d_transpose/ReadVariableOp:value:0&sequential/dropout_8/Identity:output:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2%
#sequential/Deconv7/conv2d_transpose?
)sequential/Deconv7/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/Deconv7/BiasAdd/ReadVariableOp?
sequential/Deconv7/BiasAddBiasAdd,sequential/Deconv7/conv2d_transpose:output:01sequential/Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2
sequential/Deconv7/BiasAdd?
sequential/Deconv7/ReluRelu#sequential/Deconv7/BiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2
sequential/Deconv7/Relu?
sequential/dropout_9/IdentityIdentity%sequential/Deconv7/Relu:activations:0*
T0*0
_output_shapes
:?????????L?2
sequential/dropout_9/Identity?
sequential/Deconv8/ShapeShape&sequential/dropout_9/Identity:output:0*
T0*
_output_shapes
:2
sequential/Deconv8/Shape?
&sequential/Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/Deconv8/strided_slice/stack?
(sequential/Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv8/strided_slice/stack_1?
(sequential/Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/Deconv8/strided_slice/stack_2?
 sequential/Deconv8/strided_sliceStridedSlice!sequential/Deconv8/Shape:output:0/sequential/Deconv8/strided_slice/stack:output:01sequential/Deconv8/strided_slice/stack_1:output:01sequential/Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/Deconv8/strided_slicez
sequential/Deconv8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :N2
sequential/Deconv8/stack/1{
sequential/Deconv8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
sequential/Deconv8/stack/2z
sequential/Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
sequential/Deconv8/stack/3?
sequential/Deconv8/stackPack)sequential/Deconv8/strided_slice:output:0#sequential/Deconv8/stack/1:output:0#sequential/Deconv8/stack/2:output:0#sequential/Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:2
sequential/Deconv8/stack?
(sequential/Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential/Deconv8/strided_slice_1/stack?
*sequential/Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv8/strided_slice_1/stack_1?
*sequential/Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential/Deconv8/strided_slice_1/stack_2?
"sequential/Deconv8/strided_slice_1StridedSlice!sequential/Deconv8/stack:output:01sequential/Deconv8/strided_slice_1/stack:output:03sequential/Deconv8/strided_slice_1/stack_1:output:03sequential/Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential/Deconv8/strided_slice_1?
2sequential/Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp;sequential_deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype024
2sequential/Deconv8/conv2d_transpose/ReadVariableOp?
#sequential/Deconv8/conv2d_transposeConv2DBackpropInput!sequential/Deconv8/stack:output:0:sequential/Deconv8/conv2d_transpose/ReadVariableOp:value:0&sequential/dropout_9/Identity:output:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2%
#sequential/Deconv8/conv2d_transpose?
)sequential/Deconv8/BiasAdd/ReadVariableOpReadVariableOp2sequential_deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/Deconv8/BiasAdd/ReadVariableOp?
sequential/Deconv8/BiasAddBiasAdd,sequential/Deconv8/conv2d_transpose:output:01sequential/Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2
sequential/Deconv8/BiasAdd?
sequential/Deconv8/ReluRelu#sequential/Deconv8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2
sequential/Deconv8/Relu?
 sequential/Deconv9Finalone/ShapeShape%sequential/Deconv8/Relu:activations:0*
T0*
_output_shapes
:2"
 sequential/Deconv9Finalone/Shape?
.sequential/Deconv9Finalone/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential/Deconv9Finalone/strided_slice/stack?
0sequential/Deconv9Finalone/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/Deconv9Finalone/strided_slice/stack_1?
0sequential/Deconv9Finalone/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential/Deconv9Finalone/strided_slice/stack_2?
(sequential/Deconv9Finalone/strided_sliceStridedSlice)sequential/Deconv9Finalone/Shape:output:07sequential/Deconv9Finalone/strided_slice/stack:output:09sequential/Deconv9Finalone/strided_slice/stack_1:output:09sequential/Deconv9Finalone/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential/Deconv9Finalone/strided_slice?
"sequential/Deconv9Finalone/stack/1Const*
_output_shapes
: *
dtype0*
value	B :P2$
"sequential/Deconv9Finalone/stack/1?
"sequential/Deconv9Finalone/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential/Deconv9Finalone/stack/2?
"sequential/Deconv9Finalone/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/Deconv9Finalone/stack/3?
 sequential/Deconv9Finalone/stackPack1sequential/Deconv9Finalone/strided_slice:output:0+sequential/Deconv9Finalone/stack/1:output:0+sequential/Deconv9Finalone/stack/2:output:0+sequential/Deconv9Finalone/stack/3:output:0*
N*
T0*
_output_shapes
:2"
 sequential/Deconv9Finalone/stack?
0sequential/Deconv9Finalone/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/Deconv9Finalone/strided_slice_1/stack?
2sequential/Deconv9Finalone/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/Deconv9Finalone/strided_slice_1/stack_1?
2sequential/Deconv9Finalone/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/Deconv9Finalone/strided_slice_1/stack_2?
*sequential/Deconv9Finalone/strided_slice_1StridedSlice)sequential/Deconv9Finalone/stack:output:09sequential/Deconv9Finalone/strided_slice_1/stack:output:0;sequential/Deconv9Finalone/strided_slice_1/stack_1:output:0;sequential/Deconv9Finalone/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential/Deconv9Finalone/strided_slice_1?
:sequential/Deconv9Finalone/conv2d_transpose/ReadVariableOpReadVariableOpCsequential_deconv9finalone_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02<
:sequential/Deconv9Finalone/conv2d_transpose/ReadVariableOp?
+sequential/Deconv9Finalone/conv2d_transposeConv2DBackpropInput)sequential/Deconv9Finalone/stack:output:0Bsequential/Deconv9Finalone/conv2d_transpose/ReadVariableOp:value:0%sequential/Deconv8/Relu:activations:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2-
+sequential/Deconv9Finalone/conv2d_transpose?
1sequential/Deconv9Finalone/BiasAdd/ReadVariableOpReadVariableOp:sequential_deconv9finalone_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1sequential/Deconv9Finalone/BiasAdd/ReadVariableOp?
"sequential/Deconv9Finalone/BiasAddBiasAdd4sequential/Deconv9Finalone/conv2d_transpose:output:09sequential/Deconv9Finalone/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2$
"sequential/Deconv9Finalone/BiasAdd?
sequential/Deconv9Finalone/ReluRelu+sequential/Deconv9Finalone/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2!
sequential/Deconv9Finalone/Relu?
IdentityIdentity-sequential/Deconv9Finalone/Relu:activations:0(^sequential/Conv1/BiasAdd/ReadVariableOp'^sequential/Conv1/Conv2D/ReadVariableOp(^sequential/Conv2/BiasAdd/ReadVariableOp'^sequential/Conv2/Conv2D/ReadVariableOp(^sequential/Conv3/BiasAdd/ReadVariableOp'^sequential/Conv3/Conv2D/ReadVariableOp(^sequential/Conv4/BiasAdd/ReadVariableOp'^sequential/Conv4/Conv2D/ReadVariableOp(^sequential/Conv5/BiasAdd/ReadVariableOp'^sequential/Conv5/Conv2D/ReadVariableOp(^sequential/Conv6/BiasAdd/ReadVariableOp'^sequential/Conv6/Conv2D/ReadVariableOp(^sequential/Conv7/BiasAdd/ReadVariableOp'^sequential/Conv7/Conv2D/ReadVariableOp(^sequential/Conv8/BiasAdd/ReadVariableOp'^sequential/Conv8/Conv2D/ReadVariableOp*^sequential/Deconv1/BiasAdd/ReadVariableOp3^sequential/Deconv1/conv2d_transpose/ReadVariableOp*^sequential/Deconv2/BiasAdd/ReadVariableOp3^sequential/Deconv2/conv2d_transpose/ReadVariableOp*^sequential/Deconv3/BiasAdd/ReadVariableOp3^sequential/Deconv3/conv2d_transpose/ReadVariableOp*^sequential/Deconv4/BiasAdd/ReadVariableOp3^sequential/Deconv4/conv2d_transpose/ReadVariableOp*^sequential/Deconv5/BiasAdd/ReadVariableOp3^sequential/Deconv5/conv2d_transpose/ReadVariableOp*^sequential/Deconv6/BiasAdd/ReadVariableOp3^sequential/Deconv6/conv2d_transpose/ReadVariableOp*^sequential/Deconv7/BiasAdd/ReadVariableOp3^sequential/Deconv7/conv2d_transpose/ReadVariableOp*^sequential/Deconv8/BiasAdd/ReadVariableOp3^sequential/Deconv8/conv2d_transpose/ReadVariableOp2^sequential/Deconv9Finalone/BiasAdd/ReadVariableOp;^sequential/Deconv9Finalone/conv2d_transpose/ReadVariableOp?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpA^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^sequential/batch_normalization/ReadVariableOp0^sequential/batch_normalization/ReadVariableOp_1*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::2R
'sequential/Conv1/BiasAdd/ReadVariableOp'sequential/Conv1/BiasAdd/ReadVariableOp2P
&sequential/Conv1/Conv2D/ReadVariableOp&sequential/Conv1/Conv2D/ReadVariableOp2R
'sequential/Conv2/BiasAdd/ReadVariableOp'sequential/Conv2/BiasAdd/ReadVariableOp2P
&sequential/Conv2/Conv2D/ReadVariableOp&sequential/Conv2/Conv2D/ReadVariableOp2R
'sequential/Conv3/BiasAdd/ReadVariableOp'sequential/Conv3/BiasAdd/ReadVariableOp2P
&sequential/Conv3/Conv2D/ReadVariableOp&sequential/Conv3/Conv2D/ReadVariableOp2R
'sequential/Conv4/BiasAdd/ReadVariableOp'sequential/Conv4/BiasAdd/ReadVariableOp2P
&sequential/Conv4/Conv2D/ReadVariableOp&sequential/Conv4/Conv2D/ReadVariableOp2R
'sequential/Conv5/BiasAdd/ReadVariableOp'sequential/Conv5/BiasAdd/ReadVariableOp2P
&sequential/Conv5/Conv2D/ReadVariableOp&sequential/Conv5/Conv2D/ReadVariableOp2R
'sequential/Conv6/BiasAdd/ReadVariableOp'sequential/Conv6/BiasAdd/ReadVariableOp2P
&sequential/Conv6/Conv2D/ReadVariableOp&sequential/Conv6/Conv2D/ReadVariableOp2R
'sequential/Conv7/BiasAdd/ReadVariableOp'sequential/Conv7/BiasAdd/ReadVariableOp2P
&sequential/Conv7/Conv2D/ReadVariableOp&sequential/Conv7/Conv2D/ReadVariableOp2R
'sequential/Conv8/BiasAdd/ReadVariableOp'sequential/Conv8/BiasAdd/ReadVariableOp2P
&sequential/Conv8/Conv2D/ReadVariableOp&sequential/Conv8/Conv2D/ReadVariableOp2V
)sequential/Deconv1/BiasAdd/ReadVariableOp)sequential/Deconv1/BiasAdd/ReadVariableOp2h
2sequential/Deconv1/conv2d_transpose/ReadVariableOp2sequential/Deconv1/conv2d_transpose/ReadVariableOp2V
)sequential/Deconv2/BiasAdd/ReadVariableOp)sequential/Deconv2/BiasAdd/ReadVariableOp2h
2sequential/Deconv2/conv2d_transpose/ReadVariableOp2sequential/Deconv2/conv2d_transpose/ReadVariableOp2V
)sequential/Deconv3/BiasAdd/ReadVariableOp)sequential/Deconv3/BiasAdd/ReadVariableOp2h
2sequential/Deconv3/conv2d_transpose/ReadVariableOp2sequential/Deconv3/conv2d_transpose/ReadVariableOp2V
)sequential/Deconv4/BiasAdd/ReadVariableOp)sequential/Deconv4/BiasAdd/ReadVariableOp2h
2sequential/Deconv4/conv2d_transpose/ReadVariableOp2sequential/Deconv4/conv2d_transpose/ReadVariableOp2V
)sequential/Deconv5/BiasAdd/ReadVariableOp)sequential/Deconv5/BiasAdd/ReadVariableOp2h
2sequential/Deconv5/conv2d_transpose/ReadVariableOp2sequential/Deconv5/conv2d_transpose/ReadVariableOp2V
)sequential/Deconv6/BiasAdd/ReadVariableOp)sequential/Deconv6/BiasAdd/ReadVariableOp2h
2sequential/Deconv6/conv2d_transpose/ReadVariableOp2sequential/Deconv6/conv2d_transpose/ReadVariableOp2V
)sequential/Deconv7/BiasAdd/ReadVariableOp)sequential/Deconv7/BiasAdd/ReadVariableOp2h
2sequential/Deconv7/conv2d_transpose/ReadVariableOp2sequential/Deconv7/conv2d_transpose/ReadVariableOp2V
)sequential/Deconv8/BiasAdd/ReadVariableOp)sequential/Deconv8/BiasAdd/ReadVariableOp2h
2sequential/Deconv8/conv2d_transpose/ReadVariableOp2sequential/Deconv8/conv2d_transpose/ReadVariableOp2f
1sequential/Deconv9Finalone/BiasAdd/ReadVariableOp1sequential/Deconv9Finalone/BiasAdd/ReadVariableOp2x
:sequential/Deconv9Finalone/conv2d_transpose/ReadVariableOp:sequential/Deconv9Finalone/conv2d_transpose/ReadVariableOp2?
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12^
-sequential/batch_normalization/ReadVariableOp-sequential/batch_normalization/ReadVariableOp2b
/sequential/batch_normalization/ReadVariableOp_1/sequential/batch_normalization/ReadVariableOp_1:k g
0
_output_shapes
:?????????P?
3
_user_specified_namebatch_normalization_input
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11713

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????P?:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????P?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
|
'__inference_Deconv3_layer_call_fn_11342

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_113322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
@__inference_Conv5_layer_call_and_return_conditional_losses_11929

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? H 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? H 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????"J ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?
b
)__inference_dropout_2_layer_call_fn_14027

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_119572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? H 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? H 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? H 
 
_user_specified_nameinputs
?
|
'__inference_Deconv7_layer_call_fn_11576

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_115662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
b
)__inference_dropout_9_layer_call_fn_14276

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_122882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_7_layer_call_fn_14222

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_122122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
b
)__inference_dropout_8_layer_call_fn_14249

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_122532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_13727

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
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
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_127432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
K
/__inference_up_sampling2d_2_layer_call_fn_11478

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
GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_114722
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_14266

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13825

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????P?:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????P?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
b
)__inference_dropout_5_layer_call_fn_14168

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_121412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
E
)__inference_dropout_5_layer_call_fn_14173

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_121462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_11848

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$L2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$L2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????$L:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_14069

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????"@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????"@:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?
z
%__inference_Conv5_layer_call_fn_14005

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
 */
_output_shapes
:????????? H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_119292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? H 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????"J ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?
b
)__inference_dropout_3_layer_call_fn_14074

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????"@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_13274

inputs/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resource@
<batch_normalization_fusedbatchnormv3_readvariableop_resourceB
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource(
$conv1_conv2d_readvariableop_resource)
%conv1_biasadd_readvariableop_resource(
$conv2_conv2d_readvariableop_resource)
%conv2_biasadd_readvariableop_resource(
$conv3_conv2d_readvariableop_resource)
%conv3_biasadd_readvariableop_resource(
$conv4_conv2d_readvariableop_resource)
%conv4_biasadd_readvariableop_resource(
$conv5_conv2d_readvariableop_resource)
%conv5_biasadd_readvariableop_resource(
$conv6_conv2d_readvariableop_resource)
%conv6_biasadd_readvariableop_resource(
$conv7_conv2d_readvariableop_resource)
%conv7_biasadd_readvariableop_resource(
$conv8_conv2d_readvariableop_resource)
%conv8_biasadd_readvariableop_resource4
0deconv1_conv2d_transpose_readvariableop_resource+
'deconv1_biasadd_readvariableop_resource4
0deconv2_conv2d_transpose_readvariableop_resource+
'deconv2_biasadd_readvariableop_resource4
0deconv3_conv2d_transpose_readvariableop_resource+
'deconv3_biasadd_readvariableop_resource4
0deconv4_conv2d_transpose_readvariableop_resource+
'deconv4_biasadd_readvariableop_resource4
0deconv5_conv2d_transpose_readvariableop_resource+
'deconv5_biasadd_readvariableop_resource4
0deconv6_conv2d_transpose_readvariableop_resource+
'deconv6_biasadd_readvariableop_resource4
0deconv7_conv2d_transpose_readvariableop_resource+
'deconv7_biasadd_readvariableop_resource4
0deconv8_conv2d_transpose_readvariableop_resource+
'deconv8_biasadd_readvariableop_resource<
8deconv9finalone_conv2d_transpose_readvariableop_resource3
/deconv9finalone_biasadd_readvariableop_resource
identity??Conv1/BiasAdd/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?Conv2/BiasAdd/ReadVariableOp?Conv2/Conv2D/ReadVariableOp?Conv3/BiasAdd/ReadVariableOp?Conv3/Conv2D/ReadVariableOp?Conv4/BiasAdd/ReadVariableOp?Conv4/Conv2D/ReadVariableOp?Conv5/BiasAdd/ReadVariableOp?Conv5/Conv2D/ReadVariableOp?Conv6/BiasAdd/ReadVariableOp?Conv6/Conv2D/ReadVariableOp?Conv7/BiasAdd/ReadVariableOp?Conv7/Conv2D/ReadVariableOp?Conv8/BiasAdd/ReadVariableOp?Conv8/Conv2D/ReadVariableOp?Deconv1/BiasAdd/ReadVariableOp?'Deconv1/conv2d_transpose/ReadVariableOp?Deconv2/BiasAdd/ReadVariableOp?'Deconv2/conv2d_transpose/ReadVariableOp?Deconv3/BiasAdd/ReadVariableOp?'Deconv3/conv2d_transpose/ReadVariableOp?Deconv4/BiasAdd/ReadVariableOp?'Deconv4/conv2d_transpose/ReadVariableOp?Deconv5/BiasAdd/ReadVariableOp?'Deconv5/conv2d_transpose/ReadVariableOp?Deconv6/BiasAdd/ReadVariableOp?'Deconv6/conv2d_transpose/ReadVariableOp?Deconv7/BiasAdd/ReadVariableOp?'Deconv7/conv2d_transpose/ReadVariableOp?Deconv8/BiasAdd/ReadVariableOp?'Deconv8/conv2d_transpose/ReadVariableOp?&Deconv9Finalone/BiasAdd/ReadVariableOp?/Deconv9Finalone/conv2d_transpose/ReadVariableOp?3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3inputs*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????P?:::::*
epsilon%o?:*
is_training( 2&
$batch_normalization/FusedBatchNormV3?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0#Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2
Conv1/Conv2D?
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv1/BiasAdd/ReadVariableOp?
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2
Conv1/BiasAdds

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2

Conv1/Relu?
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2/Conv2D/ReadVariableOp?
Conv2/Conv2DConv2DConv1/Relu:activations:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2
Conv2/Conv2D?
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv2/BiasAdd/ReadVariableOp?
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2
Conv2/BiasAdds

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2

Conv2/Relu?
max_pooling2d/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:?????????&N*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv3/Conv2D/ReadVariableOp?
Conv3/Conv2DConv2Dmax_pooling2d/MaxPool:output:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L*
paddingVALID*
strides
2
Conv3/Conv2D?
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv3/BiasAdd/ReadVariableOp?
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L2
Conv3/BiasAddr

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$L2

Conv3/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMulConv3/Relu:activations:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????$L2
dropout/dropout/Mulv
dropout/dropout/ShapeShapeConv3/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????$L*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????$L2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????$L2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$L2
dropout/dropout/Mul_1?
Conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv4/Conv2D/ReadVariableOp?
Conv4/Conv2DConv2Ddropout/dropout/Mul_1:z:0#Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2
Conv4/Conv2D?
Conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv4/BiasAdd/ReadVariableOp?
Conv4/BiasAddBiasAddConv4/Conv2D:output:0$Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2
Conv4/BiasAddr

Conv4/ReluReluConv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2

Conv4/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulConv4/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:?????????"J 2
dropout_1/dropout/Mulz
dropout_1/dropout/ShapeShapeConv4/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????"J *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"J 2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"J 2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"J 2
dropout_1/dropout/Mul_1?
Conv5/Conv2D/ReadVariableOpReadVariableOp$conv5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv5/Conv2D/ReadVariableOp?
Conv5/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0#Conv5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H *
paddingVALID*
strides
2
Conv5/Conv2D?
Conv5/BiasAdd/ReadVariableOpReadVariableOp%conv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv5/BiasAdd/ReadVariableOp?
Conv5/BiasAddBiasAddConv5/Conv2D:output:0$Conv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H 2
Conv5/BiasAddr

Conv5/ReluReluConv5/BiasAdd:output:0*
T0*/
_output_shapes
:????????? H 2

Conv5/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMulConv5/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:????????? H 2
dropout_2/dropout/Mulz
dropout_2/dropout/ShapeShapeConv5/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? H *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? H 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? H 2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? H 2
dropout_2/dropout/Mul_1?
max_pooling2d_1/MaxPoolMaxPooldropout_2/dropout/Mul_1:z:0*/
_output_shapes
:?????????$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
Conv6/Conv2D/ReadVariableOpReadVariableOp$conv6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv6/Conv2D/ReadVariableOp?
Conv6/Conv2DConv2D max_pooling2d_1/MaxPool:output:0#Conv6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
strides
2
Conv6/Conv2D?
Conv6/BiasAdd/ReadVariableOpReadVariableOp%conv6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv6/BiasAdd/ReadVariableOp?
Conv6/BiasAddBiasAddConv6/Conv2D:output:0$Conv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@2
Conv6/BiasAddr

Conv6/ReluReluConv6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2

Conv6/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/dropout/Const?
dropout_3/dropout/MulMulConv6/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:?????????"@2
dropout_3/dropout/Mulz
dropout_3/dropout/ShapeShapeConv6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????"@*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"@2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"@2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"@2
dropout_3/dropout/Mul_1?
Conv7/Conv2D/ReadVariableOpReadVariableOp$conv7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv7/Conv2D/ReadVariableOp?
Conv7/Conv2DConv2Ddropout_3/dropout/Mul_1:z:0#Conv7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @*
paddingVALID*
strides
2
Conv7/Conv2D?
Conv7/BiasAdd/ReadVariableOpReadVariableOp%conv7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv7/BiasAdd/ReadVariableOp?
Conv7/BiasAddBiasAddConv7/Conv2D:output:0$Conv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @2
Conv7/BiasAddr

Conv7/ReluReluConv7/BiasAdd:output:0*
T0*/
_output_shapes
:????????? @2

Conv7/Reluw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/dropout/Const?
dropout_4/dropout/MulMulConv7/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:????????? @2
dropout_4/dropout/Mulz
dropout_4/dropout/ShapeShapeConv7/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? @*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform?
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_4/dropout/GreaterEqual/y?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? @2 
dropout_4/dropout/GreaterEqual?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? @2
dropout_4/dropout/Cast?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? @2
dropout_4/dropout/Mul_1?
Conv8/Conv2D/ReadVariableOpReadVariableOp$conv8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv8/Conv2D/ReadVariableOp?
Conv8/Conv2DConv2Ddropout_4/dropout/Mul_1:z:0#Conv8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@*
paddingVALID*
strides
2
Conv8/Conv2D?
Conv8/BiasAdd/ReadVariableOpReadVariableOp%conv8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv8/BiasAdd/ReadVariableOp?
Conv8/BiasAddBiasAddConv8/Conv2D:output:0$Conv8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@2
Conv8/BiasAddr

Conv8/ReluReluConv8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
@2

Conv8/Relu?
max_pooling2d_2/MaxPoolMaxPoolConv8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolz
up_sampling2d/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
up_sampling2d/Shape?
!up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!up_sampling2d/strided_slice/stack?
#up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_1?
#up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_2?
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape:output:0*up_sampling2d/strided_slice/stack:output:0,up_sampling2d/strided_slice/stack_1:output:0,up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d/strided_slice{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const?
up_sampling2d/mulMul$up_sampling2d/strided_slice:output:0up_sampling2d/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul?
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor max_pooling2d_2/MaxPool:output:0up_sampling2d/mul:z:0*
T0*/
_output_shapes
:?????????
@*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor?
Deconv1/ShapeShape;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
Deconv1/Shape?
Deconv1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv1/strided_slice/stack?
Deconv1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv1/strided_slice/stack_1?
Deconv1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv1/strided_slice/stack_2?
Deconv1/strided_sliceStridedSliceDeconv1/Shape:output:0$Deconv1/strided_slice/stack:output:0&Deconv1/strided_slice/stack_1:output:0&Deconv1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv1/strided_sliced
Deconv1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv1/stack/1d
Deconv1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv1/stack/2e
Deconv1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv1/stack/3?
Deconv1/stackPackDeconv1/strided_slice:output:0Deconv1/stack/1:output:0Deconv1/stack/2:output:0Deconv1/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv1/stack?
Deconv1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv1/strided_slice_1/stack?
Deconv1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv1/strided_slice_1/stack_1?
Deconv1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv1/strided_slice_1/stack_2?
Deconv1/strided_slice_1StridedSliceDeconv1/stack:output:0&Deconv1/strided_slice_1/stack:output:0(Deconv1/strided_slice_1/stack_1:output:0(Deconv1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv1/strided_slice_1?
'Deconv1/conv2d_transpose/ReadVariableOpReadVariableOp0deconv1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:?@*
dtype02)
'Deconv1/conv2d_transpose/ReadVariableOp?
Deconv1/conv2d_transposeConv2DBackpropInputDeconv1/stack:output:0/Deconv1/conv2d_transpose/ReadVariableOp:value:0;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:????????? ?*
paddingVALID*
strides
2
Deconv1/conv2d_transpose?
Deconv1/BiasAdd/ReadVariableOpReadVariableOp'deconv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Deconv1/BiasAdd/ReadVariableOp?
Deconv1/BiasAddBiasAdd!Deconv1/conv2d_transpose:output:0&Deconv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
Deconv1/BiasAddy
Deconv1/ReluReluDeconv1/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Deconv1/Reluh
Deconv2/ShapeShapeDeconv1/Relu:activations:0*
T0*
_output_shapes
:2
Deconv2/Shape?
Deconv2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv2/strided_slice/stack?
Deconv2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv2/strided_slice/stack_1?
Deconv2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv2/strided_slice/stack_2?
Deconv2/strided_sliceStridedSliceDeconv2/Shape:output:0$Deconv2/strided_slice/stack:output:0&Deconv2/strided_slice/stack_1:output:0&Deconv2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv2/strided_sliced
Deconv2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv2/stack/1d
Deconv2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :"2
Deconv2/stack/2d
Deconv2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Deconv2/stack/3?
Deconv2/stackPackDeconv2/strided_slice:output:0Deconv2/stack/1:output:0Deconv2/stack/2:output:0Deconv2/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv2/stack?
Deconv2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv2/strided_slice_1/stack?
Deconv2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv2/strided_slice_1/stack_1?
Deconv2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv2/strided_slice_1/stack_2?
Deconv2/strided_slice_1StridedSliceDeconv2/stack:output:0&Deconv2/strided_slice_1/stack:output:0(Deconv2/strided_slice_1/stack_1:output:0(Deconv2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv2/strided_slice_1?
'Deconv2/conv2d_transpose/ReadVariableOpReadVariableOp0deconv2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02)
'Deconv2/conv2d_transpose/ReadVariableOp?
Deconv2/conv2d_transposeConv2DBackpropInputDeconv2/stack:output:0/Deconv2/conv2d_transpose/ReadVariableOp:value:0Deconv1/Relu:activations:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
strides
2
Deconv2/conv2d_transpose?
Deconv2/BiasAdd/ReadVariableOpReadVariableOp'deconv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Deconv2/BiasAdd/ReadVariableOp?
Deconv2/BiasAddBiasAdd!Deconv2/conv2d_transpose:output:0&Deconv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@2
Deconv2/BiasAddx
Deconv2/ReluReluDeconv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2
Deconv2/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/dropout/Const?
dropout_5/dropout/MulMulDeconv2/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*/
_output_shapes
:?????????"@2
dropout_5/dropout/Mul|
dropout_5/dropout/ShapeShapeDeconv2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????"@*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"@2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"@2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"@2
dropout_5/dropout/Mul_1i
Deconv3/ShapeShapedropout_5/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
Deconv3/Shape?
Deconv3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv3/strided_slice/stack?
Deconv3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv3/strided_slice/stack_1?
Deconv3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv3/strided_slice/stack_2?
Deconv3/strided_sliceStridedSliceDeconv3/Shape:output:0$Deconv3/strided_slice/stack:output:0&Deconv3/strided_slice/stack_1:output:0&Deconv3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv3/strided_sliced
Deconv3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv3/stack/1d
Deconv3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :$2
Deconv3/stack/2d
Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Deconv3/stack/3?
Deconv3/stackPackDeconv3/strided_slice:output:0Deconv3/stack/1:output:0Deconv3/stack/2:output:0Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv3/stack?
Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv3/strided_slice_1/stack?
Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv3/strided_slice_1/stack_1?
Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv3/strided_slice_1/stack_2?
Deconv3/strided_slice_1StridedSliceDeconv3/stack:output:0&Deconv3/strided_slice_1/stack:output:0(Deconv3/strided_slice_1/stack_1:output:0(Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv3/strided_slice_1?
'Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp0deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02)
'Deconv3/conv2d_transpose/ReadVariableOp?
Deconv3/conv2d_transposeConv2DBackpropInputDeconv3/stack:output:0/Deconv3/conv2d_transpose/ReadVariableOp:value:0dropout_5/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$@*
paddingVALID*
strides
2
Deconv3/conv2d_transpose?
Deconv3/BiasAdd/ReadVariableOpReadVariableOp'deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Deconv3/BiasAdd/ReadVariableOp?
Deconv3/BiasAddBiasAdd!Deconv3/conv2d_transpose:output:0&Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$@2
Deconv3/BiasAddx
Deconv3/ReluReluDeconv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$@2
Deconv3/Reluw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_6/dropout/Const?
dropout_6/dropout/MulMulDeconv3/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:?????????$@2
dropout_6/dropout/Mul|
dropout_6/dropout/ShapeShapeDeconv3/Relu:activations:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????$@*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????$@2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????$@2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$@2
dropout_6/dropout/Mul_1y
up_sampling2d_1/ShapeShapedropout_6/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
up_sampling2d_1/Shape?
#up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_1/strided_slice/stack?
%up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_1?
%up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_2?
up_sampling2d_1/strided_sliceStridedSliceup_sampling2d_1/Shape:output:0,up_sampling2d_1/strided_slice/stack:output:0.up_sampling2d_1/strided_slice/stack_1:output:0.up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_1/strided_slice
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const?
up_sampling2d_1/mulMul&up_sampling2d_1/strided_slice:output:0up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul?
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbordropout_6/dropout/Mul_1:z:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:????????? H@*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor?
Deconv4/ShapeShape=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
Deconv4/Shape?
Deconv4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv4/strided_slice/stack?
Deconv4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv4/strided_slice/stack_1?
Deconv4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv4/strided_slice/stack_2?
Deconv4/strided_sliceStridedSliceDeconv4/Shape:output:0$Deconv4/strided_slice/stack:output:0&Deconv4/strided_slice/stack_1:output:0&Deconv4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv4/strided_sliced
Deconv4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :"2
Deconv4/stack/1d
Deconv4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :J2
Deconv4/stack/2d
Deconv4/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv4/stack/3?
Deconv4/stackPackDeconv4/strided_slice:output:0Deconv4/stack/1:output:0Deconv4/stack/2:output:0Deconv4/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv4/stack?
Deconv4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv4/strided_slice_1/stack?
Deconv4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv4/strided_slice_1/stack_1?
Deconv4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv4/strided_slice_1/stack_2?
Deconv4/strided_slice_1StridedSliceDeconv4/stack:output:0&Deconv4/strided_slice_1/stack:output:0(Deconv4/strided_slice_1/stack_1:output:0(Deconv4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv4/strided_slice_1?
'Deconv4/conv2d_transpose/ReadVariableOpReadVariableOp0deconv4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02)
'Deconv4/conv2d_transpose/ReadVariableOp?
Deconv4/conv2d_transposeConv2DBackpropInputDeconv4/stack:output:0/Deconv4/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2
Deconv4/conv2d_transpose?
Deconv4/BiasAdd/ReadVariableOpReadVariableOp'deconv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Deconv4/BiasAdd/ReadVariableOp?
Deconv4/BiasAddBiasAdd!Deconv4/conv2d_transpose:output:0&Deconv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2
Deconv4/BiasAddx
Deconv4/ReluReluDeconv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2
Deconv4/Reluw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMulDeconv4/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*/
_output_shapes
:?????????"J 2
dropout_7/dropout/Mul|
dropout_7/dropout/ShapeShapeDeconv4/Relu:activations:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????"J *
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"J 2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"J 2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"J 2
dropout_7/dropout/Mul_1i
Deconv5/ShapeShapedropout_7/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
Deconv5/Shape?
Deconv5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv5/strided_slice/stack?
Deconv5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv5/strided_slice/stack_1?
Deconv5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv5/strided_slice/stack_2?
Deconv5/strided_sliceStridedSliceDeconv5/Shape:output:0$Deconv5/strided_slice/stack:output:0&Deconv5/strided_slice/stack_1:output:0&Deconv5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv5/strided_sliced
Deconv5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :$2
Deconv5/stack/1d
Deconv5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :L2
Deconv5/stack/2d
Deconv5/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv5/stack/3?
Deconv5/stackPackDeconv5/strided_slice:output:0Deconv5/stack/1:output:0Deconv5/stack/2:output:0Deconv5/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv5/stack?
Deconv5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv5/strided_slice_1/stack?
Deconv5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv5/strided_slice_1/stack_1?
Deconv5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv5/strided_slice_1/stack_2?
Deconv5/strided_slice_1StridedSliceDeconv5/stack:output:0&Deconv5/strided_slice_1/stack:output:0(Deconv5/strided_slice_1/stack_1:output:0(Deconv5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv5/strided_slice_1?
'Deconv5/conv2d_transpose/ReadVariableOpReadVariableOp0deconv5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype02)
'Deconv5/conv2d_transpose/ReadVariableOp?
Deconv5/conv2d_transposeConv2DBackpropInputDeconv5/stack:output:0/Deconv5/conv2d_transpose/ReadVariableOp:value:0dropout_7/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$L *
paddingVALID*
strides
2
Deconv5/conv2d_transpose?
Deconv5/BiasAdd/ReadVariableOpReadVariableOp'deconv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Deconv5/BiasAdd/ReadVariableOp?
Deconv5/BiasAddBiasAdd!Deconv5/conv2d_transpose:output:0&Deconv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L 2
Deconv5/BiasAddx
Deconv5/ReluReluDeconv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$L 2
Deconv5/Relux
up_sampling2d_2/ShapeShapeDeconv5/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_2/Shape?
#up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_2/strided_slice/stack?
%up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_1?
%up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_2?
up_sampling2d_2/strided_sliceStridedSliceup_sampling2d_2/Shape:output:0,up_sampling2d_2/strided_slice/stack:output:0.up_sampling2d_2/strided_slice/stack_1:output:0.up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_2/strided_slice
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const?
up_sampling2d_2/mulMul&up_sampling2d_2/strided_slice:output:0up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul?
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborDeconv5/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:?????????H? *
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor?
Deconv6/ShapeShape=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
Deconv6/Shape?
Deconv6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv6/strided_slice/stack?
Deconv6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv6/strided_slice/stack_1?
Deconv6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv6/strided_slice/stack_2?
Deconv6/strided_sliceStridedSliceDeconv6/Shape:output:0$Deconv6/strided_slice/stack:output:0&Deconv6/strided_slice/stack_1:output:0&Deconv6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv6/strided_sliced
Deconv6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :J2
Deconv6/stack/1e
Deconv6/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv6/stack/2d
Deconv6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv6/stack/3?
Deconv6/stackPackDeconv6/strided_slice:output:0Deconv6/stack/1:output:0Deconv6/stack/2:output:0Deconv6/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv6/stack?
Deconv6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv6/strided_slice_1/stack?
Deconv6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv6/strided_slice_1/stack_1?
Deconv6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv6/strided_slice_1/stack_2?
Deconv6/strided_slice_1StridedSliceDeconv6/stack:output:0&Deconv6/strided_slice_1/stack:output:0(Deconv6/strided_slice_1/stack_1:output:0(Deconv6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv6/strided_slice_1?
'Deconv6/conv2d_transpose/ReadVariableOpReadVariableOp0deconv6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype02)
'Deconv6/conv2d_transpose/ReadVariableOp?
Deconv6/conv2d_transposeConv2DBackpropInputDeconv6/stack:output:0/Deconv6/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:?????????J? *
paddingVALID*
strides
2
Deconv6/conv2d_transpose?
Deconv6/BiasAdd/ReadVariableOpReadVariableOp'deconv6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Deconv6/BiasAdd/ReadVariableOp?
Deconv6/BiasAddBiasAdd!Deconv6/conv2d_transpose:output:0&Deconv6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????J? 2
Deconv6/BiasAddy
Deconv6/ReluReluDeconv6/BiasAdd:output:0*
T0*0
_output_shapes
:?????????J? 2
Deconv6/Reluw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_8/dropout/Const?
dropout_8/dropout/MulMulDeconv6/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*0
_output_shapes
:?????????J? 2
dropout_8/dropout/Mul|
dropout_8/dropout/ShapeShapeDeconv6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????J? *
dtype020
.dropout_8/dropout/random_uniform/RandomUniform?
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_8/dropout/GreaterEqual/y?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????J? 2 
dropout_8/dropout/GreaterEqual?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????J? 2
dropout_8/dropout/Cast?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????J? 2
dropout_8/dropout/Mul_1i
Deconv7/ShapeShapedropout_8/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
Deconv7/Shape?
Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv7/strided_slice/stack?
Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv7/strided_slice/stack_1?
Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv7/strided_slice/stack_2?
Deconv7/strided_sliceStridedSliceDeconv7/Shape:output:0$Deconv7/strided_slice/stack:output:0&Deconv7/strided_slice/stack_1:output:0&Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv7/strided_sliced
Deconv7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :L2
Deconv7/stack/1e
Deconv7/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv7/stack/2d
Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv7/stack/3?
Deconv7/stackPackDeconv7/strided_slice:output:0Deconv7/stack/1:output:0Deconv7/stack/2:output:0Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv7/stack?
Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv7/strided_slice_1/stack?
Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv7/strided_slice_1/stack_1?
Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv7/strided_slice_1/stack_2?
Deconv7/strided_slice_1StridedSliceDeconv7/stack:output:0&Deconv7/strided_slice_1/stack:output:0(Deconv7/strided_slice_1/stack_1:output:0(Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv7/strided_slice_1?
'Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp0deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02)
'Deconv7/conv2d_transpose/ReadVariableOp?
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0dropout_8/dropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2
Deconv7/conv2d_transpose?
Deconv7/BiasAdd/ReadVariableOpReadVariableOp'deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
Deconv7/BiasAdd/ReadVariableOp?
Deconv7/BiasAddBiasAdd!Deconv7/conv2d_transpose:output:0&Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2
Deconv7/BiasAddy
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2
Deconv7/Reluw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_9/dropout/Const?
dropout_9/dropout/MulMulDeconv7/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*0
_output_shapes
:?????????L?2
dropout_9/dropout/Mul|
dropout_9/dropout/ShapeShapeDeconv7/Relu:activations:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????L?*
dtype020
.dropout_9/dropout/random_uniform/RandomUniform?
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_9/dropout/GreaterEqual/y?
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????L?2 
dropout_9/dropout/GreaterEqual?
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????L?2
dropout_9/dropout/Cast?
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????L?2
dropout_9/dropout/Mul_1i
Deconv8/ShapeShapedropout_9/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
Deconv8/Shape?
Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv8/strided_slice/stack?
Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv8/strided_slice/stack_1?
Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv8/strided_slice/stack_2?
Deconv8/strided_sliceStridedSliceDeconv8/Shape:output:0$Deconv8/strided_slice/stack:output:0&Deconv8/strided_slice/stack_1:output:0&Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv8/strided_sliced
Deconv8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :N2
Deconv8/stack/1e
Deconv8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv8/stack/2d
Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv8/stack/3?
Deconv8/stackPackDeconv8/strided_slice:output:0Deconv8/stack/1:output:0Deconv8/stack/2:output:0Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv8/stack?
Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv8/strided_slice_1/stack?
Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv8/strided_slice_1/stack_1?
Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv8/strided_slice_1/stack_2?
Deconv8/strided_slice_1StridedSliceDeconv8/stack:output:0&Deconv8/strided_slice_1/stack:output:0(Deconv8/strided_slice_1/stack_1:output:0(Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv8/strided_slice_1?
'Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp0deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02)
'Deconv8/conv2d_transpose/ReadVariableOp?
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0dropout_9/dropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2
Deconv8/conv2d_transpose?
Deconv8/BiasAdd/ReadVariableOpReadVariableOp'deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
Deconv8/BiasAdd/ReadVariableOp?
Deconv8/BiasAddBiasAdd!Deconv8/conv2d_transpose:output:0&Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2
Deconv8/BiasAddy
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2
Deconv8/Relux
Deconv9Finalone/ShapeShapeDeconv8/Relu:activations:0*
T0*
_output_shapes
:2
Deconv9Finalone/Shape?
#Deconv9Finalone/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#Deconv9Finalone/strided_slice/stack?
%Deconv9Finalone/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%Deconv9Finalone/strided_slice/stack_1?
%Deconv9Finalone/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%Deconv9Finalone/strided_slice/stack_2?
Deconv9Finalone/strided_sliceStridedSliceDeconv9Finalone/Shape:output:0,Deconv9Finalone/strided_slice/stack:output:0.Deconv9Finalone/strided_slice/stack_1:output:0.Deconv9Finalone/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv9Finalone/strided_slicet
Deconv9Finalone/stack/1Const*
_output_shapes
: *
dtype0*
value	B :P2
Deconv9Finalone/stack/1u
Deconv9Finalone/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv9Finalone/stack/2t
Deconv9Finalone/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv9Finalone/stack/3?
Deconv9Finalone/stackPack&Deconv9Finalone/strided_slice:output:0 Deconv9Finalone/stack/1:output:0 Deconv9Finalone/stack/2:output:0 Deconv9Finalone/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv9Finalone/stack?
%Deconv9Finalone/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%Deconv9Finalone/strided_slice_1/stack?
'Deconv9Finalone/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'Deconv9Finalone/strided_slice_1/stack_1?
'Deconv9Finalone/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'Deconv9Finalone/strided_slice_1/stack_2?
Deconv9Finalone/strided_slice_1StridedSliceDeconv9Finalone/stack:output:0.Deconv9Finalone/strided_slice_1/stack:output:00Deconv9Finalone/strided_slice_1/stack_1:output:00Deconv9Finalone/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
Deconv9Finalone/strided_slice_1?
/Deconv9Finalone/conv2d_transpose/ReadVariableOpReadVariableOp8deconv9finalone_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype021
/Deconv9Finalone/conv2d_transpose/ReadVariableOp?
 Deconv9Finalone/conv2d_transposeConv2DBackpropInputDeconv9Finalone/stack:output:07Deconv9Finalone/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2"
 Deconv9Finalone/conv2d_transpose?
&Deconv9Finalone/BiasAdd/ReadVariableOpReadVariableOp/deconv9finalone_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&Deconv9Finalone/BiasAdd/ReadVariableOp?
Deconv9Finalone/BiasAddBiasAdd)Deconv9Finalone/conv2d_transpose:output:0.Deconv9Finalone/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2
Deconv9Finalone/BiasAdd?
Deconv9Finalone/ReluRelu Deconv9Finalone/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Deconv9Finalone/Relu?
IdentityIdentity"Deconv9Finalone/Relu:activations:0^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv4/BiasAdd/ReadVariableOp^Conv4/Conv2D/ReadVariableOp^Conv5/BiasAdd/ReadVariableOp^Conv5/Conv2D/ReadVariableOp^Conv6/BiasAdd/ReadVariableOp^Conv6/Conv2D/ReadVariableOp^Conv7/BiasAdd/ReadVariableOp^Conv7/Conv2D/ReadVariableOp^Conv8/BiasAdd/ReadVariableOp^Conv8/Conv2D/ReadVariableOp^Deconv1/BiasAdd/ReadVariableOp(^Deconv1/conv2d_transpose/ReadVariableOp^Deconv2/BiasAdd/ReadVariableOp(^Deconv2/conv2d_transpose/ReadVariableOp^Deconv3/BiasAdd/ReadVariableOp(^Deconv3/conv2d_transpose/ReadVariableOp^Deconv4/BiasAdd/ReadVariableOp(^Deconv4/conv2d_transpose/ReadVariableOp^Deconv5/BiasAdd/ReadVariableOp(^Deconv5/conv2d_transpose/ReadVariableOp^Deconv6/BiasAdd/ReadVariableOp(^Deconv6/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp'^Deconv9Finalone/BiasAdd/ReadVariableOp0^Deconv9Finalone/conv2d_transpose/ReadVariableOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv4/BiasAdd/ReadVariableOpConv4/BiasAdd/ReadVariableOp2:
Conv4/Conv2D/ReadVariableOpConv4/Conv2D/ReadVariableOp2<
Conv5/BiasAdd/ReadVariableOpConv5/BiasAdd/ReadVariableOp2:
Conv5/Conv2D/ReadVariableOpConv5/Conv2D/ReadVariableOp2<
Conv6/BiasAdd/ReadVariableOpConv6/BiasAdd/ReadVariableOp2:
Conv6/Conv2D/ReadVariableOpConv6/Conv2D/ReadVariableOp2<
Conv7/BiasAdd/ReadVariableOpConv7/BiasAdd/ReadVariableOp2:
Conv7/Conv2D/ReadVariableOpConv7/Conv2D/ReadVariableOp2<
Conv8/BiasAdd/ReadVariableOpConv8/BiasAdd/ReadVariableOp2:
Conv8/Conv2D/ReadVariableOpConv8/Conv2D/ReadVariableOp2@
Deconv1/BiasAdd/ReadVariableOpDeconv1/BiasAdd/ReadVariableOp2R
'Deconv1/conv2d_transpose/ReadVariableOp'Deconv1/conv2d_transpose/ReadVariableOp2@
Deconv2/BiasAdd/ReadVariableOpDeconv2/BiasAdd/ReadVariableOp2R
'Deconv2/conv2d_transpose/ReadVariableOp'Deconv2/conv2d_transpose/ReadVariableOp2@
Deconv3/BiasAdd/ReadVariableOpDeconv3/BiasAdd/ReadVariableOp2R
'Deconv3/conv2d_transpose/ReadVariableOp'Deconv3/conv2d_transpose/ReadVariableOp2@
Deconv4/BiasAdd/ReadVariableOpDeconv4/BiasAdd/ReadVariableOp2R
'Deconv4/conv2d_transpose/ReadVariableOp'Deconv4/conv2d_transpose/ReadVariableOp2@
Deconv5/BiasAdd/ReadVariableOpDeconv5/BiasAdd/ReadVariableOp2R
'Deconv5/conv2d_transpose/ReadVariableOp'Deconv5/conv2d_transpose/ReadVariableOp2@
Deconv6/BiasAdd/ReadVariableOpDeconv6/BiasAdd/ReadVariableOp2R
'Deconv6/conv2d_transpose/ReadVariableOp'Deconv6/conv2d_transpose/ReadVariableOp2@
Deconv7/BiasAdd/ReadVariableOpDeconv7/BiasAdd/ReadVariableOp2R
'Deconv7/conv2d_transpose/ReadVariableOp'Deconv7/conv2d_transpose/ReadVariableOp2@
Deconv8/BiasAdd/ReadVariableOpDeconv8/BiasAdd/ReadVariableOp2R
'Deconv8/conv2d_transpose/ReadVariableOp'Deconv8/conv2d_transpose/ReadVariableOp2P
&Deconv9Finalone/BiasAdd/ReadVariableOp&Deconv9Finalone/BiasAdd/ReadVariableOp2b
/Deconv9Finalone/conv2d_transpose/ReadVariableOp/Deconv9Finalone/conv2d_transpose/ReadVariableOp2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_1:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_13933

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_118432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????$L2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????$L22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_11957

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? H 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? H *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? H 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? H 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? H 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? H 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? H :W S
/
_output_shapes
:????????? H 
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_13938

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_118482
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$L2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????$L:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_14116

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? @:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
I
-__inference_up_sampling2d_layer_call_fn_11195

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
GPU2*0J 8? *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_111892
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_13975

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????"J 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"J 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????"J :W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?

?
@__inference_Conv4_layer_call_and_return_conditional_losses_11872

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????"J 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????$L::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
|
'__inference_Deconv4_layer_call_fn_11410

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_114002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_12072

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? @2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? @2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? @2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? @:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_11189

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_12288

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_Conv6_layer_call_and_return_conditional_losses_14043

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
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
:?????????"@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????"@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????$ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$ 
 
_user_specified_nameinputs
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_12181

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
|
'__inference_Deconv6_layer_call_fn_11527

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_115172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_12822
batch_normalization_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_127432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:k g
0
_output_shapes
:?????????P?
3
_user_specified_namebatch_normalization_input
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_14217

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?/
__inference__traced_save_14661
file_prefix8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop+
'savev2_conv4_kernel_read_readvariableop)
%savev2_conv4_bias_read_readvariableop+
'savev2_conv5_kernel_read_readvariableop)
%savev2_conv5_bias_read_readvariableop+
'savev2_conv6_kernel_read_readvariableop)
%savev2_conv6_bias_read_readvariableop+
'savev2_conv7_kernel_read_readvariableop)
%savev2_conv7_bias_read_readvariableop+
'savev2_conv8_kernel_read_readvariableop)
%savev2_conv8_bias_read_readvariableop-
)savev2_deconv1_kernel_read_readvariableop+
'savev2_deconv1_bias_read_readvariableop-
)savev2_deconv2_kernel_read_readvariableop+
'savev2_deconv2_bias_read_readvariableop-
)savev2_deconv3_kernel_read_readvariableop+
'savev2_deconv3_bias_read_readvariableop-
)savev2_deconv4_kernel_read_readvariableop+
'savev2_deconv4_bias_read_readvariableop-
)savev2_deconv5_kernel_read_readvariableop+
'savev2_deconv5_bias_read_readvariableop-
)savev2_deconv6_kernel_read_readvariableop+
'savev2_deconv6_bias_read_readvariableop-
)savev2_deconv7_kernel_read_readvariableop+
'savev2_deconv7_bias_read_readvariableop-
)savev2_deconv8_kernel_read_readvariableop+
'savev2_deconv8_bias_read_readvariableop5
1savev2_deconv9finalone_kernel_read_readvariableop3
/savev2_deconv9finalone_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop2
.savev2_adam_conv1_kernel_m_read_readvariableop0
,savev2_adam_conv1_bias_m_read_readvariableop2
.savev2_adam_conv2_kernel_m_read_readvariableop0
,savev2_adam_conv2_bias_m_read_readvariableop2
.savev2_adam_conv3_kernel_m_read_readvariableop0
,savev2_adam_conv3_bias_m_read_readvariableop2
.savev2_adam_conv4_kernel_m_read_readvariableop0
,savev2_adam_conv4_bias_m_read_readvariableop2
.savev2_adam_conv5_kernel_m_read_readvariableop0
,savev2_adam_conv5_bias_m_read_readvariableop2
.savev2_adam_conv6_kernel_m_read_readvariableop0
,savev2_adam_conv6_bias_m_read_readvariableop2
.savev2_adam_conv7_kernel_m_read_readvariableop0
,savev2_adam_conv7_bias_m_read_readvariableop2
.savev2_adam_conv8_kernel_m_read_readvariableop0
,savev2_adam_conv8_bias_m_read_readvariableop4
0savev2_adam_deconv1_kernel_m_read_readvariableop2
.savev2_adam_deconv1_bias_m_read_readvariableop4
0savev2_adam_deconv2_kernel_m_read_readvariableop2
.savev2_adam_deconv2_bias_m_read_readvariableop4
0savev2_adam_deconv3_kernel_m_read_readvariableop2
.savev2_adam_deconv3_bias_m_read_readvariableop4
0savev2_adam_deconv4_kernel_m_read_readvariableop2
.savev2_adam_deconv4_bias_m_read_readvariableop4
0savev2_adam_deconv5_kernel_m_read_readvariableop2
.savev2_adam_deconv5_bias_m_read_readvariableop4
0savev2_adam_deconv6_kernel_m_read_readvariableop2
.savev2_adam_deconv6_bias_m_read_readvariableop4
0savev2_adam_deconv7_kernel_m_read_readvariableop2
.savev2_adam_deconv7_bias_m_read_readvariableop4
0savev2_adam_deconv8_kernel_m_read_readvariableop2
.savev2_adam_deconv8_bias_m_read_readvariableop<
8savev2_adam_deconv9finalone_kernel_m_read_readvariableop:
6savev2_adam_deconv9finalone_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop2
.savev2_adam_conv1_kernel_v_read_readvariableop0
,savev2_adam_conv1_bias_v_read_readvariableop2
.savev2_adam_conv2_kernel_v_read_readvariableop0
,savev2_adam_conv2_bias_v_read_readvariableop2
.savev2_adam_conv3_kernel_v_read_readvariableop0
,savev2_adam_conv3_bias_v_read_readvariableop2
.savev2_adam_conv4_kernel_v_read_readvariableop0
,savev2_adam_conv4_bias_v_read_readvariableop2
.savev2_adam_conv5_kernel_v_read_readvariableop0
,savev2_adam_conv5_bias_v_read_readvariableop2
.savev2_adam_conv6_kernel_v_read_readvariableop0
,savev2_adam_conv6_bias_v_read_readvariableop2
.savev2_adam_conv7_kernel_v_read_readvariableop0
,savev2_adam_conv7_bias_v_read_readvariableop2
.savev2_adam_conv8_kernel_v_read_readvariableop0
,savev2_adam_conv8_bias_v_read_readvariableop4
0savev2_adam_deconv1_kernel_v_read_readvariableop2
.savev2_adam_deconv1_bias_v_read_readvariableop4
0savev2_adam_deconv2_kernel_v_read_readvariableop2
.savev2_adam_deconv2_bias_v_read_readvariableop4
0savev2_adam_deconv3_kernel_v_read_readvariableop2
.savev2_adam_deconv3_bias_v_read_readvariableop4
0savev2_adam_deconv4_kernel_v_read_readvariableop2
.savev2_adam_deconv4_bias_v_read_readvariableop4
0savev2_adam_deconv5_kernel_v_read_readvariableop2
.savev2_adam_deconv5_bias_v_read_readvariableop4
0savev2_adam_deconv6_kernel_v_read_readvariableop2
.savev2_adam_deconv6_bias_v_read_readvariableop4
0savev2_adam_deconv7_kernel_v_read_readvariableop2
.savev2_adam_deconv7_bias_v_read_readvariableop4
0savev2_adam_deconv8_kernel_v_read_readvariableop2
.savev2_adam_deconv8_bias_v_read_readvariableop<
8savev2_adam_deconv9finalone_kernel_v_read_readvariableop:
6savev2_adam_deconv9finalone_bias_v_read_readvariableop
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
ShardedFilename?D
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?C
value?CB?CxB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?
value?B?xB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?-
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop'savev2_conv4_kernel_read_readvariableop%savev2_conv4_bias_read_readvariableop'savev2_conv5_kernel_read_readvariableop%savev2_conv5_bias_read_readvariableop'savev2_conv6_kernel_read_readvariableop%savev2_conv6_bias_read_readvariableop'savev2_conv7_kernel_read_readvariableop%savev2_conv7_bias_read_readvariableop'savev2_conv8_kernel_read_readvariableop%savev2_conv8_bias_read_readvariableop)savev2_deconv1_kernel_read_readvariableop'savev2_deconv1_bias_read_readvariableop)savev2_deconv2_kernel_read_readvariableop'savev2_deconv2_bias_read_readvariableop)savev2_deconv3_kernel_read_readvariableop'savev2_deconv3_bias_read_readvariableop)savev2_deconv4_kernel_read_readvariableop'savev2_deconv4_bias_read_readvariableop)savev2_deconv5_kernel_read_readvariableop'savev2_deconv5_bias_read_readvariableop)savev2_deconv6_kernel_read_readvariableop'savev2_deconv6_bias_read_readvariableop)savev2_deconv7_kernel_read_readvariableop'savev2_deconv7_bias_read_readvariableop)savev2_deconv8_kernel_read_readvariableop'savev2_deconv8_bias_read_readvariableop1savev2_deconv9finalone_kernel_read_readvariableop/savev2_deconv9finalone_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop.savev2_adam_conv2_kernel_m_read_readvariableop,savev2_adam_conv2_bias_m_read_readvariableop.savev2_adam_conv3_kernel_m_read_readvariableop,savev2_adam_conv3_bias_m_read_readvariableop.savev2_adam_conv4_kernel_m_read_readvariableop,savev2_adam_conv4_bias_m_read_readvariableop.savev2_adam_conv5_kernel_m_read_readvariableop,savev2_adam_conv5_bias_m_read_readvariableop.savev2_adam_conv6_kernel_m_read_readvariableop,savev2_adam_conv6_bias_m_read_readvariableop.savev2_adam_conv7_kernel_m_read_readvariableop,savev2_adam_conv7_bias_m_read_readvariableop.savev2_adam_conv8_kernel_m_read_readvariableop,savev2_adam_conv8_bias_m_read_readvariableop0savev2_adam_deconv1_kernel_m_read_readvariableop.savev2_adam_deconv1_bias_m_read_readvariableop0savev2_adam_deconv2_kernel_m_read_readvariableop.savev2_adam_deconv2_bias_m_read_readvariableop0savev2_adam_deconv3_kernel_m_read_readvariableop.savev2_adam_deconv3_bias_m_read_readvariableop0savev2_adam_deconv4_kernel_m_read_readvariableop.savev2_adam_deconv4_bias_m_read_readvariableop0savev2_adam_deconv5_kernel_m_read_readvariableop.savev2_adam_deconv5_bias_m_read_readvariableop0savev2_adam_deconv6_kernel_m_read_readvariableop.savev2_adam_deconv6_bias_m_read_readvariableop0savev2_adam_deconv7_kernel_m_read_readvariableop.savev2_adam_deconv7_bias_m_read_readvariableop0savev2_adam_deconv8_kernel_m_read_readvariableop.savev2_adam_deconv8_bias_m_read_readvariableop8savev2_adam_deconv9finalone_kernel_m_read_readvariableop6savev2_adam_deconv9finalone_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop.savev2_adam_conv2_kernel_v_read_readvariableop,savev2_adam_conv2_bias_v_read_readvariableop.savev2_adam_conv3_kernel_v_read_readvariableop,savev2_adam_conv3_bias_v_read_readvariableop.savev2_adam_conv4_kernel_v_read_readvariableop,savev2_adam_conv4_bias_v_read_readvariableop.savev2_adam_conv5_kernel_v_read_readvariableop,savev2_adam_conv5_bias_v_read_readvariableop.savev2_adam_conv6_kernel_v_read_readvariableop,savev2_adam_conv6_bias_v_read_readvariableop.savev2_adam_conv7_kernel_v_read_readvariableop,savev2_adam_conv7_bias_v_read_readvariableop.savev2_adam_conv8_kernel_v_read_readvariableop,savev2_adam_conv8_bias_v_read_readvariableop0savev2_adam_deconv1_kernel_v_read_readvariableop.savev2_adam_deconv1_bias_v_read_readvariableop0savev2_adam_deconv2_kernel_v_read_readvariableop.savev2_adam_deconv2_bias_v_read_readvariableop0savev2_adam_deconv3_kernel_v_read_readvariableop.savev2_adam_deconv3_bias_v_read_readvariableop0savev2_adam_deconv4_kernel_v_read_readvariableop.savev2_adam_deconv4_bias_v_read_readvariableop0savev2_adam_deconv5_kernel_v_read_readvariableop.savev2_adam_deconv5_bias_v_read_readvariableop0savev2_adam_deconv6_kernel_v_read_readvariableop.savev2_adam_deconv6_bias_v_read_readvariableop0savev2_adam_deconv7_kernel_v_read_readvariableop.savev2_adam_deconv7_bias_v_read_readvariableop0savev2_adam_deconv8_kernel_v_read_readvariableop.savev2_adam_deconv8_bias_v_read_readvariableop8savev2_adam_deconv9finalone_kernel_v_read_readvariableop6savev2_adam_deconv9finalone_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes|
z2x	2
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

identity_1Identity_1:output:0*?

_input_shapes?

?
: ::::::::::: : :  : : @:@:@@:@:@@:@:?@:?:@?:@:@@:@: @: :  : :  : : :::::: : : : : : : : : ::::::::: : :  : : @:@:@@:@:@@:@:?@:?:@?:@:@@:@: @: :  : :  : : :::::::::::::: : :  : : @:@:@@:@:@@:@:?@:?:@?:@:@@:@: @: :  : :  : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:?@:!

_output_shapes	
:?:-)
'
_output_shapes
:@?: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  :  

_output_shapes
: :,!(
&
_output_shapes
: : "

_output_shapes
::,#(
&
_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
:: &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*
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
: :.

_output_shapes
: :/

_output_shapes
: : 0

_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
: : 9

_output_shapes
: :,:(
&
_output_shapes
:  : ;

_output_shapes
: :,<(
&
_output_shapes
: @: =

_output_shapes
:@:,>(
&
_output_shapes
:@@: ?

_output_shapes
:@:,@(
&
_output_shapes
:@@: A

_output_shapes
:@:-B)
'
_output_shapes
:?@:!C

_output_shapes	
:?:-D)
'
_output_shapes
:@?: E

_output_shapes
:@:,F(
&
_output_shapes
:@@: G

_output_shapes
:@:,H(
&
_output_shapes
: @: I

_output_shapes
: :,J(
&
_output_shapes
:  : K

_output_shapes
: :,L(
&
_output_shapes
:  : M

_output_shapes
: :,N(
&
_output_shapes
: : O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
::,R(
&
_output_shapes
:: S

_output_shapes
:: T

_output_shapes
:: U

_output_shapes
::,V(
&
_output_shapes
:: W

_output_shapes
::,X(
&
_output_shapes
:: Y

_output_shapes
::,Z(
&
_output_shapes
:: [

_output_shapes
::,\(
&
_output_shapes
: : ]

_output_shapes
: :,^(
&
_output_shapes
:  : _

_output_shapes
: :,`(
&
_output_shapes
: @: a

_output_shapes
:@:,b(
&
_output_shapes
:@@: c

_output_shapes
:@:,d(
&
_output_shapes
:@@: e

_output_shapes
:@:-f)
'
_output_shapes
:?@:!g

_output_shapes	
:?:-h)
'
_output_shapes
:@?: i

_output_shapes
:@:,j(
&
_output_shapes
:@@: k

_output_shapes
:@:,l(
&
_output_shapes
: @: m

_output_shapes
: :,n(
&
_output_shapes
:  : o

_output_shapes
: :,p(
&
_output_shapes
:  : q

_output_shapes
: :,r(
&
_output_shapes
: : s

_output_shapes
::,t(
&
_output_shapes
:: u

_output_shapes
::,v(
&
_output_shapes
:: w

_output_shapes
::x

_output_shapes
: 
?
?
3__inference_batch_normalization_layer_call_fn_13838

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_116952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????P?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_11355

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_2_layer_call_fn_14032

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_119622
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? H 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? H :W S
/
_output_shapes
:????????? H 
 
_user_specified_nameinputs
?

?
@__inference_Conv3_layer_call_and_return_conditional_losses_11815

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????$L2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????$L2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????&N::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????&N
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_11158

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
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
|
'__inference_Deconv1_layer_call_fn_11244

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv1_layer_call_and_return_conditional_losses_112342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_11900

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????"J 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????"J *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"J 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"J 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"J 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"J 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"J :W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?'
?
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_11664

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_1_layer_call_fn_13980

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_119002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????"J 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"J 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_14244

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_13970

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????"J 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????"J *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"J 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"J 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"J 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"J 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"J :W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_12317
batch_normalization_input
batch_normalization_11740
batch_normalization_11742
batch_normalization_11744
batch_normalization_11746
conv1_11771
conv1_11773
conv2_11798
conv2_11800
conv3_11826
conv3_11828
conv4_11883
conv4_11885
conv5_11940
conv5_11942
conv6_11998
conv6_12000
conv7_12055
conv7_12057
conv8_12112
conv8_12114
deconv1_12119
deconv1_12121
deconv2_12124
deconv2_12126
deconv3_12159
deconv3_12161
deconv4_12195
deconv4_12197
deconv5_12230
deconv5_12232
deconv6_12236
deconv6_12238
deconv7_12271
deconv7_12273
deconv8_12306
deconv8_12308
deconv9finalone_12311
deconv9finalone_12313
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?Conv5/StatefulPartitionedCall?Conv6/StatefulPartitionedCall?Conv7/StatefulPartitionedCall?Conv8/StatefulPartitionedCall?Deconv1/StatefulPartitionedCall?Deconv2/StatefulPartitionedCall?Deconv3/StatefulPartitionedCall?Deconv4/StatefulPartitionedCall?Deconv5/StatefulPartitionedCall?Deconv6/StatefulPartitionedCall?Deconv7/StatefulPartitionedCall?Deconv8/StatefulPartitionedCall?'Deconv9Finalone/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_inputbatch_normalization_11740batch_normalization_11742batch_normalization_11744batch_normalization_11746*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_116952-
+batch_normalization/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv1_11771conv1_11773*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????N?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_117602
Conv1/StatefulPartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_11798conv2_11800*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????L?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_117872
Conv2/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_111462
max_pooling2d/PartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv3_11826conv3_11828*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_118152
Conv3/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_118432!
dropout/StatefulPartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv4_11883conv4_11885*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_118722
Conv4/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&Conv4/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_119002#
!dropout_1/StatefulPartitionedCall?
Conv5/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv5_11940conv5_11942*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_119292
Conv5/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&Conv5/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_119572#
!dropout_2/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_111582!
max_pooling2d_1/PartitionedCall?
Conv6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv6_11998conv6_12000*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_119872
Conv6/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&Conv6/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120152#
!dropout_3/StatefulPartitionedCall?
Conv7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv7_12055conv7_12057*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_120442
Conv7/StatefulPartitionedCall?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall&Conv7/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_120722#
!dropout_4/StatefulPartitionedCall?
Conv8/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0conv8_12112conv8_12114*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv8_layer_call_and_return_conditional_losses_121012
Conv8/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall&Conv8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_111702!
max_pooling2d_2/PartitionedCall?
up_sampling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_111892
up_sampling2d/PartitionedCall?
Deconv1/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0deconv1_12119deconv1_12121*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv1_layer_call_and_return_conditional_losses_112342!
Deconv1/StatefulPartitionedCall?
Deconv2/StatefulPartitionedCallStatefulPartitionedCall(Deconv1/StatefulPartitionedCall:output:0deconv2_12124deconv2_12126*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv2_layer_call_and_return_conditional_losses_112832!
Deconv2/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(Deconv2/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_121412#
!dropout_5/StatefulPartitionedCall?
Deconv3/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0deconv3_12159deconv3_12161*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_113322!
Deconv3/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(Deconv3/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_121762#
!dropout_6/StatefulPartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_113552!
up_sampling2d_1/PartitionedCall?
Deconv4/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0deconv4_12195deconv4_12197*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_114002!
Deconv4/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(Deconv4/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_122122#
!dropout_7/StatefulPartitionedCall?
Deconv5/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0deconv5_12230deconv5_12232*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_114492!
Deconv5/StatefulPartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall(Deconv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_114722!
up_sampling2d_2/PartitionedCall?
Deconv6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0deconv6_12236deconv6_12238*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_115172!
Deconv6/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(Deconv6/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_122532#
!dropout_8/StatefulPartitionedCall?
Deconv7/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0deconv7_12271deconv7_12273*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_115662!
Deconv7/StatefulPartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_122882#
!dropout_9/StatefulPartitionedCall?
Deconv8/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0deconv8_12306deconv8_12308*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_116152!
Deconv8/StatefulPartitionedCall?
'Deconv9Finalone/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0deconv9finalone_12311deconv9finalone_12313*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_116642)
'Deconv9Finalone/StatefulPartitionedCall?
IdentityIdentity0Deconv9Finalone/StatefulPartitionedCall:output:0^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall^Conv8/StatefulPartitionedCall ^Deconv1/StatefulPartitionedCall ^Deconv2/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall(^Deconv9Finalone/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2>
Conv8/StatefulPartitionedCallConv8/StatefulPartitionedCall2B
Deconv1/StatefulPartitionedCallDeconv1/StatefulPartitionedCall2B
Deconv2/StatefulPartitionedCallDeconv2/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2R
'Deconv9Finalone/StatefulPartitionedCall'Deconv9Finalone/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:k g
0
_output_shapes
:?????????P?
3
_user_specified_namebatch_normalization_input
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_13565

inputs/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resource@
<batch_normalization_fusedbatchnormv3_readvariableop_resourceB
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource(
$conv1_conv2d_readvariableop_resource)
%conv1_biasadd_readvariableop_resource(
$conv2_conv2d_readvariableop_resource)
%conv2_biasadd_readvariableop_resource(
$conv3_conv2d_readvariableop_resource)
%conv3_biasadd_readvariableop_resource(
$conv4_conv2d_readvariableop_resource)
%conv4_biasadd_readvariableop_resource(
$conv5_conv2d_readvariableop_resource)
%conv5_biasadd_readvariableop_resource(
$conv6_conv2d_readvariableop_resource)
%conv6_biasadd_readvariableop_resource(
$conv7_conv2d_readvariableop_resource)
%conv7_biasadd_readvariableop_resource(
$conv8_conv2d_readvariableop_resource)
%conv8_biasadd_readvariableop_resource4
0deconv1_conv2d_transpose_readvariableop_resource+
'deconv1_biasadd_readvariableop_resource4
0deconv2_conv2d_transpose_readvariableop_resource+
'deconv2_biasadd_readvariableop_resource4
0deconv3_conv2d_transpose_readvariableop_resource+
'deconv3_biasadd_readvariableop_resource4
0deconv4_conv2d_transpose_readvariableop_resource+
'deconv4_biasadd_readvariableop_resource4
0deconv5_conv2d_transpose_readvariableop_resource+
'deconv5_biasadd_readvariableop_resource4
0deconv6_conv2d_transpose_readvariableop_resource+
'deconv6_biasadd_readvariableop_resource4
0deconv7_conv2d_transpose_readvariableop_resource+
'deconv7_biasadd_readvariableop_resource4
0deconv8_conv2d_transpose_readvariableop_resource+
'deconv8_biasadd_readvariableop_resource<
8deconv9finalone_conv2d_transpose_readvariableop_resource3
/deconv9finalone_biasadd_readvariableop_resource
identity??Conv1/BiasAdd/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?Conv2/BiasAdd/ReadVariableOp?Conv2/Conv2D/ReadVariableOp?Conv3/BiasAdd/ReadVariableOp?Conv3/Conv2D/ReadVariableOp?Conv4/BiasAdd/ReadVariableOp?Conv4/Conv2D/ReadVariableOp?Conv5/BiasAdd/ReadVariableOp?Conv5/Conv2D/ReadVariableOp?Conv6/BiasAdd/ReadVariableOp?Conv6/Conv2D/ReadVariableOp?Conv7/BiasAdd/ReadVariableOp?Conv7/Conv2D/ReadVariableOp?Conv8/BiasAdd/ReadVariableOp?Conv8/Conv2D/ReadVariableOp?Deconv1/BiasAdd/ReadVariableOp?'Deconv1/conv2d_transpose/ReadVariableOp?Deconv2/BiasAdd/ReadVariableOp?'Deconv2/conv2d_transpose/ReadVariableOp?Deconv3/BiasAdd/ReadVariableOp?'Deconv3/conv2d_transpose/ReadVariableOp?Deconv4/BiasAdd/ReadVariableOp?'Deconv4/conv2d_transpose/ReadVariableOp?Deconv5/BiasAdd/ReadVariableOp?'Deconv5/conv2d_transpose/ReadVariableOp?Deconv6/BiasAdd/ReadVariableOp?'Deconv6/conv2d_transpose/ReadVariableOp?Deconv7/BiasAdd/ReadVariableOp?'Deconv7/conv2d_transpose/ReadVariableOp?Deconv8/BiasAdd/ReadVariableOp?'Deconv8/conv2d_transpose/ReadVariableOp?&Deconv9Finalone/BiasAdd/ReadVariableOp?/Deconv9Finalone/conv2d_transpose/ReadVariableOp?3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3inputs*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????P?:::::*
epsilon%o?:*
is_training( 2&
$batch_normalization/FusedBatchNormV3?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0#Conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2
Conv1/Conv2D?
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv1/BiasAdd/ReadVariableOp?
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2
Conv1/BiasAdds

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2

Conv1/Relu?
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2/Conv2D/ReadVariableOp?
Conv2/Conv2DConv2DConv1/Relu:activations:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2
Conv2/Conv2D?
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv2/BiasAdd/ReadVariableOp?
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2
Conv2/BiasAdds

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2

Conv2/Relu?
max_pooling2d/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:?????????&N*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv3/Conv2D/ReadVariableOp?
Conv3/Conv2DConv2Dmax_pooling2d/MaxPool:output:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L*
paddingVALID*
strides
2
Conv3/Conv2D?
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv3/BiasAdd/ReadVariableOp?
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L2
Conv3/BiasAddr

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$L2

Conv3/Relu?
dropout/IdentityIdentityConv3/Relu:activations:0*
T0*/
_output_shapes
:?????????$L2
dropout/Identity?
Conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv4/Conv2D/ReadVariableOp?
Conv4/Conv2DConv2Ddropout/Identity:output:0#Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2
Conv4/Conv2D?
Conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv4/BiasAdd/ReadVariableOp?
Conv4/BiasAddBiasAddConv4/Conv2D:output:0$Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2
Conv4/BiasAddr

Conv4/ReluReluConv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2

Conv4/Relu?
dropout_1/IdentityIdentityConv4/Relu:activations:0*
T0*/
_output_shapes
:?????????"J 2
dropout_1/Identity?
Conv5/Conv2D/ReadVariableOpReadVariableOp$conv5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv5/Conv2D/ReadVariableOp?
Conv5/Conv2DConv2Ddropout_1/Identity:output:0#Conv5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H *
paddingVALID*
strides
2
Conv5/Conv2D?
Conv5/BiasAdd/ReadVariableOpReadVariableOp%conv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv5/BiasAdd/ReadVariableOp?
Conv5/BiasAddBiasAddConv5/Conv2D:output:0$Conv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H 2
Conv5/BiasAddr

Conv5/ReluReluConv5/BiasAdd:output:0*
T0*/
_output_shapes
:????????? H 2

Conv5/Relu?
dropout_2/IdentityIdentityConv5/Relu:activations:0*
T0*/
_output_shapes
:????????? H 2
dropout_2/Identity?
max_pooling2d_1/MaxPoolMaxPooldropout_2/Identity:output:0*/
_output_shapes
:?????????$ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
Conv6/Conv2D/ReadVariableOpReadVariableOp$conv6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv6/Conv2D/ReadVariableOp?
Conv6/Conv2DConv2D max_pooling2d_1/MaxPool:output:0#Conv6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
strides
2
Conv6/Conv2D?
Conv6/BiasAdd/ReadVariableOpReadVariableOp%conv6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv6/BiasAdd/ReadVariableOp?
Conv6/BiasAddBiasAddConv6/Conv2D:output:0$Conv6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@2
Conv6/BiasAddr

Conv6/ReluReluConv6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2

Conv6/Relu?
dropout_3/IdentityIdentityConv6/Relu:activations:0*
T0*/
_output_shapes
:?????????"@2
dropout_3/Identity?
Conv7/Conv2D/ReadVariableOpReadVariableOp$conv7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv7/Conv2D/ReadVariableOp?
Conv7/Conv2DConv2Ddropout_3/Identity:output:0#Conv7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @*
paddingVALID*
strides
2
Conv7/Conv2D?
Conv7/BiasAdd/ReadVariableOpReadVariableOp%conv7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv7/BiasAdd/ReadVariableOp?
Conv7/BiasAddBiasAddConv7/Conv2D:output:0$Conv7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @2
Conv7/BiasAddr

Conv7/ReluReluConv7/BiasAdd:output:0*
T0*/
_output_shapes
:????????? @2

Conv7/Relu?
dropout_4/IdentityIdentityConv7/Relu:activations:0*
T0*/
_output_shapes
:????????? @2
dropout_4/Identity?
Conv8/Conv2D/ReadVariableOpReadVariableOp$conv8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv8/Conv2D/ReadVariableOp?
Conv8/Conv2DConv2Ddropout_4/Identity:output:0#Conv8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@*
paddingVALID*
strides
2
Conv8/Conv2D?
Conv8/BiasAdd/ReadVariableOpReadVariableOp%conv8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv8/BiasAdd/ReadVariableOp?
Conv8/BiasAddBiasAddConv8/Conv2D:output:0$Conv8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@2
Conv8/BiasAddr

Conv8/ReluReluConv8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
@2

Conv8/Relu?
max_pooling2d_2/MaxPoolMaxPoolConv8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolz
up_sampling2d/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
up_sampling2d/Shape?
!up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!up_sampling2d/strided_slice/stack?
#up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_1?
#up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_2?
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape:output:0*up_sampling2d/strided_slice/stack:output:0,up_sampling2d/strided_slice/stack_1:output:0,up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d/strided_slice{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const?
up_sampling2d/mulMul$up_sampling2d/strided_slice:output:0up_sampling2d/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul?
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor max_pooling2d_2/MaxPool:output:0up_sampling2d/mul:z:0*
T0*/
_output_shapes
:?????????
@*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighbor?
Deconv1/ShapeShape;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
Deconv1/Shape?
Deconv1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv1/strided_slice/stack?
Deconv1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv1/strided_slice/stack_1?
Deconv1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv1/strided_slice/stack_2?
Deconv1/strided_sliceStridedSliceDeconv1/Shape:output:0$Deconv1/strided_slice/stack:output:0&Deconv1/strided_slice/stack_1:output:0&Deconv1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv1/strided_sliced
Deconv1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv1/stack/1d
Deconv1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv1/stack/2e
Deconv1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv1/stack/3?
Deconv1/stackPackDeconv1/strided_slice:output:0Deconv1/stack/1:output:0Deconv1/stack/2:output:0Deconv1/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv1/stack?
Deconv1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv1/strided_slice_1/stack?
Deconv1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv1/strided_slice_1/stack_1?
Deconv1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv1/strided_slice_1/stack_2?
Deconv1/strided_slice_1StridedSliceDeconv1/stack:output:0&Deconv1/strided_slice_1/stack:output:0(Deconv1/strided_slice_1/stack_1:output:0(Deconv1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv1/strided_slice_1?
'Deconv1/conv2d_transpose/ReadVariableOpReadVariableOp0deconv1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:?@*
dtype02)
'Deconv1/conv2d_transpose/ReadVariableOp?
Deconv1/conv2d_transposeConv2DBackpropInputDeconv1/stack:output:0/Deconv1/conv2d_transpose/ReadVariableOp:value:0;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:????????? ?*
paddingVALID*
strides
2
Deconv1/conv2d_transpose?
Deconv1/BiasAdd/ReadVariableOpReadVariableOp'deconv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Deconv1/BiasAdd/ReadVariableOp?
Deconv1/BiasAddBiasAdd!Deconv1/conv2d_transpose:output:0&Deconv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
Deconv1/BiasAddy
Deconv1/ReluReluDeconv1/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Deconv1/Reluh
Deconv2/ShapeShapeDeconv1/Relu:activations:0*
T0*
_output_shapes
:2
Deconv2/Shape?
Deconv2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv2/strided_slice/stack?
Deconv2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv2/strided_slice/stack_1?
Deconv2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv2/strided_slice/stack_2?
Deconv2/strided_sliceStridedSliceDeconv2/Shape:output:0$Deconv2/strided_slice/stack:output:0&Deconv2/strided_slice/stack_1:output:0&Deconv2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv2/strided_sliced
Deconv2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv2/stack/1d
Deconv2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :"2
Deconv2/stack/2d
Deconv2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Deconv2/stack/3?
Deconv2/stackPackDeconv2/strided_slice:output:0Deconv2/stack/1:output:0Deconv2/stack/2:output:0Deconv2/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv2/stack?
Deconv2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv2/strided_slice_1/stack?
Deconv2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv2/strided_slice_1/stack_1?
Deconv2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv2/strided_slice_1/stack_2?
Deconv2/strided_slice_1StridedSliceDeconv2/stack:output:0&Deconv2/strided_slice_1/stack:output:0(Deconv2/strided_slice_1/stack_1:output:0(Deconv2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv2/strided_slice_1?
'Deconv2/conv2d_transpose/ReadVariableOpReadVariableOp0deconv2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02)
'Deconv2/conv2d_transpose/ReadVariableOp?
Deconv2/conv2d_transposeConv2DBackpropInputDeconv2/stack:output:0/Deconv2/conv2d_transpose/ReadVariableOp:value:0Deconv1/Relu:activations:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
strides
2
Deconv2/conv2d_transpose?
Deconv2/BiasAdd/ReadVariableOpReadVariableOp'deconv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Deconv2/BiasAdd/ReadVariableOp?
Deconv2/BiasAddBiasAdd!Deconv2/conv2d_transpose:output:0&Deconv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@2
Deconv2/BiasAddx
Deconv2/ReluReluDeconv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2
Deconv2/Relu?
dropout_5/IdentityIdentityDeconv2/Relu:activations:0*
T0*/
_output_shapes
:?????????"@2
dropout_5/Identityi
Deconv3/ShapeShapedropout_5/Identity:output:0*
T0*
_output_shapes
:2
Deconv3/Shape?
Deconv3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv3/strided_slice/stack?
Deconv3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv3/strided_slice/stack_1?
Deconv3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv3/strided_slice/stack_2?
Deconv3/strided_sliceStridedSliceDeconv3/Shape:output:0$Deconv3/strided_slice/stack:output:0&Deconv3/strided_slice/stack_1:output:0&Deconv3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv3/strided_sliced
Deconv3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv3/stack/1d
Deconv3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :$2
Deconv3/stack/2d
Deconv3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
Deconv3/stack/3?
Deconv3/stackPackDeconv3/strided_slice:output:0Deconv3/stack/1:output:0Deconv3/stack/2:output:0Deconv3/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv3/stack?
Deconv3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv3/strided_slice_1/stack?
Deconv3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv3/strided_slice_1/stack_1?
Deconv3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv3/strided_slice_1/stack_2?
Deconv3/strided_slice_1StridedSliceDeconv3/stack:output:0&Deconv3/strided_slice_1/stack:output:0(Deconv3/strided_slice_1/stack_1:output:0(Deconv3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv3/strided_slice_1?
'Deconv3/conv2d_transpose/ReadVariableOpReadVariableOp0deconv3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02)
'Deconv3/conv2d_transpose/ReadVariableOp?
Deconv3/conv2d_transposeConv2DBackpropInputDeconv3/stack:output:0/Deconv3/conv2d_transpose/ReadVariableOp:value:0dropout_5/Identity:output:0*
T0*/
_output_shapes
:?????????$@*
paddingVALID*
strides
2
Deconv3/conv2d_transpose?
Deconv3/BiasAdd/ReadVariableOpReadVariableOp'deconv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Deconv3/BiasAdd/ReadVariableOp?
Deconv3/BiasAddBiasAdd!Deconv3/conv2d_transpose:output:0&Deconv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$@2
Deconv3/BiasAddx
Deconv3/ReluReluDeconv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$@2
Deconv3/Relu?
dropout_6/IdentityIdentityDeconv3/Relu:activations:0*
T0*/
_output_shapes
:?????????$@2
dropout_6/Identityy
up_sampling2d_1/ShapeShapedropout_6/Identity:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/Shape?
#up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_1/strided_slice/stack?
%up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_1?
%up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_2?
up_sampling2d_1/strided_sliceStridedSliceup_sampling2d_1/Shape:output:0,up_sampling2d_1/strided_slice/stack:output:0.up_sampling2d_1/strided_slice/stack_1:output:0.up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_1/strided_slice
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const?
up_sampling2d_1/mulMul&up_sampling2d_1/strided_slice:output:0up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul?
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbordropout_6/Identity:output:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:????????? H@*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor?
Deconv4/ShapeShape=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
Deconv4/Shape?
Deconv4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv4/strided_slice/stack?
Deconv4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv4/strided_slice/stack_1?
Deconv4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv4/strided_slice/stack_2?
Deconv4/strided_sliceStridedSliceDeconv4/Shape:output:0$Deconv4/strided_slice/stack:output:0&Deconv4/strided_slice/stack_1:output:0&Deconv4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv4/strided_sliced
Deconv4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :"2
Deconv4/stack/1d
Deconv4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :J2
Deconv4/stack/2d
Deconv4/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv4/stack/3?
Deconv4/stackPackDeconv4/strided_slice:output:0Deconv4/stack/1:output:0Deconv4/stack/2:output:0Deconv4/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv4/stack?
Deconv4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv4/strided_slice_1/stack?
Deconv4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv4/strided_slice_1/stack_1?
Deconv4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv4/strided_slice_1/stack_2?
Deconv4/strided_slice_1StridedSliceDeconv4/stack:output:0&Deconv4/strided_slice_1/stack:output:0(Deconv4/strided_slice_1/stack_1:output:0(Deconv4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv4/strided_slice_1?
'Deconv4/conv2d_transpose/ReadVariableOpReadVariableOp0deconv4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02)
'Deconv4/conv2d_transpose/ReadVariableOp?
Deconv4/conv2d_transposeConv2DBackpropInputDeconv4/stack:output:0/Deconv4/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2
Deconv4/conv2d_transpose?
Deconv4/BiasAdd/ReadVariableOpReadVariableOp'deconv4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Deconv4/BiasAdd/ReadVariableOp?
Deconv4/BiasAddBiasAdd!Deconv4/conv2d_transpose:output:0&Deconv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2
Deconv4/BiasAddx
Deconv4/ReluReluDeconv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2
Deconv4/Relu?
dropout_7/IdentityIdentityDeconv4/Relu:activations:0*
T0*/
_output_shapes
:?????????"J 2
dropout_7/Identityi
Deconv5/ShapeShapedropout_7/Identity:output:0*
T0*
_output_shapes
:2
Deconv5/Shape?
Deconv5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv5/strided_slice/stack?
Deconv5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv5/strided_slice/stack_1?
Deconv5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv5/strided_slice/stack_2?
Deconv5/strided_sliceStridedSliceDeconv5/Shape:output:0$Deconv5/strided_slice/stack:output:0&Deconv5/strided_slice/stack_1:output:0&Deconv5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv5/strided_sliced
Deconv5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :$2
Deconv5/stack/1d
Deconv5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :L2
Deconv5/stack/2d
Deconv5/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv5/stack/3?
Deconv5/stackPackDeconv5/strided_slice:output:0Deconv5/stack/1:output:0Deconv5/stack/2:output:0Deconv5/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv5/stack?
Deconv5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv5/strided_slice_1/stack?
Deconv5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv5/strided_slice_1/stack_1?
Deconv5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv5/strided_slice_1/stack_2?
Deconv5/strided_slice_1StridedSliceDeconv5/stack:output:0&Deconv5/strided_slice_1/stack:output:0(Deconv5/strided_slice_1/stack_1:output:0(Deconv5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv5/strided_slice_1?
'Deconv5/conv2d_transpose/ReadVariableOpReadVariableOp0deconv5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype02)
'Deconv5/conv2d_transpose/ReadVariableOp?
Deconv5/conv2d_transposeConv2DBackpropInputDeconv5/stack:output:0/Deconv5/conv2d_transpose/ReadVariableOp:value:0dropout_7/Identity:output:0*
T0*/
_output_shapes
:?????????$L *
paddingVALID*
strides
2
Deconv5/conv2d_transpose?
Deconv5/BiasAdd/ReadVariableOpReadVariableOp'deconv5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Deconv5/BiasAdd/ReadVariableOp?
Deconv5/BiasAddBiasAdd!Deconv5/conv2d_transpose:output:0&Deconv5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L 2
Deconv5/BiasAddx
Deconv5/ReluReluDeconv5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????$L 2
Deconv5/Relux
up_sampling2d_2/ShapeShapeDeconv5/Relu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_2/Shape?
#up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_2/strided_slice/stack?
%up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_1?
%up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_2?
up_sampling2d_2/strided_sliceStridedSliceup_sampling2d_2/Shape:output:0,up_sampling2d_2/strided_slice/stack:output:0.up_sampling2d_2/strided_slice/stack_1:output:0.up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_2/strided_slice
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const?
up_sampling2d_2/mulMul&up_sampling2d_2/strided_slice:output:0up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul?
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborDeconv5/Relu:activations:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:?????????H? *
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighbor?
Deconv6/ShapeShape=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
Deconv6/Shape?
Deconv6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv6/strided_slice/stack?
Deconv6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv6/strided_slice/stack_1?
Deconv6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv6/strided_slice/stack_2?
Deconv6/strided_sliceStridedSliceDeconv6/Shape:output:0$Deconv6/strided_slice/stack:output:0&Deconv6/strided_slice/stack_1:output:0&Deconv6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv6/strided_sliced
Deconv6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :J2
Deconv6/stack/1e
Deconv6/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv6/stack/2d
Deconv6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Deconv6/stack/3?
Deconv6/stackPackDeconv6/strided_slice:output:0Deconv6/stack/1:output:0Deconv6/stack/2:output:0Deconv6/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv6/stack?
Deconv6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv6/strided_slice_1/stack?
Deconv6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv6/strided_slice_1/stack_1?
Deconv6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv6/strided_slice_1/stack_2?
Deconv6/strided_slice_1StridedSliceDeconv6/stack:output:0&Deconv6/strided_slice_1/stack:output:0(Deconv6/strided_slice_1/stack_1:output:0(Deconv6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv6/strided_slice_1?
'Deconv6/conv2d_transpose/ReadVariableOpReadVariableOp0deconv6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype02)
'Deconv6/conv2d_transpose/ReadVariableOp?
Deconv6/conv2d_transposeConv2DBackpropInputDeconv6/stack:output:0/Deconv6/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:?????????J? *
paddingVALID*
strides
2
Deconv6/conv2d_transpose?
Deconv6/BiasAdd/ReadVariableOpReadVariableOp'deconv6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Deconv6/BiasAdd/ReadVariableOp?
Deconv6/BiasAddBiasAdd!Deconv6/conv2d_transpose:output:0&Deconv6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????J? 2
Deconv6/BiasAddy
Deconv6/ReluReluDeconv6/BiasAdd:output:0*
T0*0
_output_shapes
:?????????J? 2
Deconv6/Relu?
dropout_8/IdentityIdentityDeconv6/Relu:activations:0*
T0*0
_output_shapes
:?????????J? 2
dropout_8/Identityi
Deconv7/ShapeShapedropout_8/Identity:output:0*
T0*
_output_shapes
:2
Deconv7/Shape?
Deconv7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv7/strided_slice/stack?
Deconv7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv7/strided_slice/stack_1?
Deconv7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv7/strided_slice/stack_2?
Deconv7/strided_sliceStridedSliceDeconv7/Shape:output:0$Deconv7/strided_slice/stack:output:0&Deconv7/strided_slice/stack_1:output:0&Deconv7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv7/strided_sliced
Deconv7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :L2
Deconv7/stack/1e
Deconv7/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv7/stack/2d
Deconv7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv7/stack/3?
Deconv7/stackPackDeconv7/strided_slice:output:0Deconv7/stack/1:output:0Deconv7/stack/2:output:0Deconv7/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv7/stack?
Deconv7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv7/strided_slice_1/stack?
Deconv7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv7/strided_slice_1/stack_1?
Deconv7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv7/strided_slice_1/stack_2?
Deconv7/strided_slice_1StridedSliceDeconv7/stack:output:0&Deconv7/strided_slice_1/stack:output:0(Deconv7/strided_slice_1/stack_1:output:0(Deconv7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv7/strided_slice_1?
'Deconv7/conv2d_transpose/ReadVariableOpReadVariableOp0deconv7_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02)
'Deconv7/conv2d_transpose/ReadVariableOp?
Deconv7/conv2d_transposeConv2DBackpropInputDeconv7/stack:output:0/Deconv7/conv2d_transpose/ReadVariableOp:value:0dropout_8/Identity:output:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2
Deconv7/conv2d_transpose?
Deconv7/BiasAdd/ReadVariableOpReadVariableOp'deconv7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
Deconv7/BiasAdd/ReadVariableOp?
Deconv7/BiasAddBiasAdd!Deconv7/conv2d_transpose:output:0&Deconv7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2
Deconv7/BiasAddy
Deconv7/ReluReluDeconv7/BiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2
Deconv7/Relu?
dropout_9/IdentityIdentityDeconv7/Relu:activations:0*
T0*0
_output_shapes
:?????????L?2
dropout_9/Identityi
Deconv8/ShapeShapedropout_9/Identity:output:0*
T0*
_output_shapes
:2
Deconv8/Shape?
Deconv8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv8/strided_slice/stack?
Deconv8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv8/strided_slice/stack_1?
Deconv8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Deconv8/strided_slice/stack_2?
Deconv8/strided_sliceStridedSliceDeconv8/Shape:output:0$Deconv8/strided_slice/stack:output:0&Deconv8/strided_slice/stack_1:output:0&Deconv8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv8/strided_sliced
Deconv8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :N2
Deconv8/stack/1e
Deconv8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv8/stack/2d
Deconv8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv8/stack/3?
Deconv8/stackPackDeconv8/strided_slice:output:0Deconv8/stack/1:output:0Deconv8/stack/2:output:0Deconv8/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv8/stack?
Deconv8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Deconv8/strided_slice_1/stack?
Deconv8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv8/strided_slice_1/stack_1?
Deconv8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
Deconv8/strided_slice_1/stack_2?
Deconv8/strided_slice_1StridedSliceDeconv8/stack:output:0&Deconv8/strided_slice_1/stack:output:0(Deconv8/strided_slice_1/stack_1:output:0(Deconv8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv8/strided_slice_1?
'Deconv8/conv2d_transpose/ReadVariableOpReadVariableOp0deconv8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02)
'Deconv8/conv2d_transpose/ReadVariableOp?
Deconv8/conv2d_transposeConv2DBackpropInputDeconv8/stack:output:0/Deconv8/conv2d_transpose/ReadVariableOp:value:0dropout_9/Identity:output:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2
Deconv8/conv2d_transpose?
Deconv8/BiasAdd/ReadVariableOpReadVariableOp'deconv8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
Deconv8/BiasAdd/ReadVariableOp?
Deconv8/BiasAddBiasAdd!Deconv8/conv2d_transpose:output:0&Deconv8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2
Deconv8/BiasAddy
Deconv8/ReluReluDeconv8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2
Deconv8/Relux
Deconv9Finalone/ShapeShapeDeconv8/Relu:activations:0*
T0*
_output_shapes
:2
Deconv9Finalone/Shape?
#Deconv9Finalone/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#Deconv9Finalone/strided_slice/stack?
%Deconv9Finalone/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%Deconv9Finalone/strided_slice/stack_1?
%Deconv9Finalone/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%Deconv9Finalone/strided_slice/stack_2?
Deconv9Finalone/strided_sliceStridedSliceDeconv9Finalone/Shape:output:0,Deconv9Finalone/strided_slice/stack:output:0.Deconv9Finalone/strided_slice/stack_1:output:0.Deconv9Finalone/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Deconv9Finalone/strided_slicet
Deconv9Finalone/stack/1Const*
_output_shapes
: *
dtype0*
value	B :P2
Deconv9Finalone/stack/1u
Deconv9Finalone/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Deconv9Finalone/stack/2t
Deconv9Finalone/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
Deconv9Finalone/stack/3?
Deconv9Finalone/stackPack&Deconv9Finalone/strided_slice:output:0 Deconv9Finalone/stack/1:output:0 Deconv9Finalone/stack/2:output:0 Deconv9Finalone/stack/3:output:0*
N*
T0*
_output_shapes
:2
Deconv9Finalone/stack?
%Deconv9Finalone/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%Deconv9Finalone/strided_slice_1/stack?
'Deconv9Finalone/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'Deconv9Finalone/strided_slice_1/stack_1?
'Deconv9Finalone/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'Deconv9Finalone/strided_slice_1/stack_2?
Deconv9Finalone/strided_slice_1StridedSliceDeconv9Finalone/stack:output:0.Deconv9Finalone/strided_slice_1/stack:output:00Deconv9Finalone/strided_slice_1/stack_1:output:00Deconv9Finalone/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
Deconv9Finalone/strided_slice_1?
/Deconv9Finalone/conv2d_transpose/ReadVariableOpReadVariableOp8deconv9finalone_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype021
/Deconv9Finalone/conv2d_transpose/ReadVariableOp?
 Deconv9Finalone/conv2d_transposeConv2DBackpropInputDeconv9Finalone/stack:output:07Deconv9Finalone/conv2d_transpose/ReadVariableOp:value:0Deconv8/Relu:activations:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2"
 Deconv9Finalone/conv2d_transpose?
&Deconv9Finalone/BiasAdd/ReadVariableOpReadVariableOp/deconv9finalone_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&Deconv9Finalone/BiasAdd/ReadVariableOp?
Deconv9Finalone/BiasAddBiasAdd)Deconv9Finalone/conv2d_transpose:output:0.Deconv9Finalone/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2
Deconv9Finalone/BiasAdd?
Deconv9Finalone/ReluRelu Deconv9Finalone/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Deconv9Finalone/Relu?
IdentityIdentity"Deconv9Finalone/Relu:activations:0^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv4/BiasAdd/ReadVariableOp^Conv4/Conv2D/ReadVariableOp^Conv5/BiasAdd/ReadVariableOp^Conv5/Conv2D/ReadVariableOp^Conv6/BiasAdd/ReadVariableOp^Conv6/Conv2D/ReadVariableOp^Conv7/BiasAdd/ReadVariableOp^Conv7/Conv2D/ReadVariableOp^Conv8/BiasAdd/ReadVariableOp^Conv8/Conv2D/ReadVariableOp^Deconv1/BiasAdd/ReadVariableOp(^Deconv1/conv2d_transpose/ReadVariableOp^Deconv2/BiasAdd/ReadVariableOp(^Deconv2/conv2d_transpose/ReadVariableOp^Deconv3/BiasAdd/ReadVariableOp(^Deconv3/conv2d_transpose/ReadVariableOp^Deconv4/BiasAdd/ReadVariableOp(^Deconv4/conv2d_transpose/ReadVariableOp^Deconv5/BiasAdd/ReadVariableOp(^Deconv5/conv2d_transpose/ReadVariableOp^Deconv6/BiasAdd/ReadVariableOp(^Deconv6/conv2d_transpose/ReadVariableOp^Deconv7/BiasAdd/ReadVariableOp(^Deconv7/conv2d_transpose/ReadVariableOp^Deconv8/BiasAdd/ReadVariableOp(^Deconv8/conv2d_transpose/ReadVariableOp'^Deconv9Finalone/BiasAdd/ReadVariableOp0^Deconv9Finalone/conv2d_transpose/ReadVariableOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv4/BiasAdd/ReadVariableOpConv4/BiasAdd/ReadVariableOp2:
Conv4/Conv2D/ReadVariableOpConv4/Conv2D/ReadVariableOp2<
Conv5/BiasAdd/ReadVariableOpConv5/BiasAdd/ReadVariableOp2:
Conv5/Conv2D/ReadVariableOpConv5/Conv2D/ReadVariableOp2<
Conv6/BiasAdd/ReadVariableOpConv6/BiasAdd/ReadVariableOp2:
Conv6/Conv2D/ReadVariableOpConv6/Conv2D/ReadVariableOp2<
Conv7/BiasAdd/ReadVariableOpConv7/BiasAdd/ReadVariableOp2:
Conv7/Conv2D/ReadVariableOpConv7/Conv2D/ReadVariableOp2<
Conv8/BiasAdd/ReadVariableOpConv8/BiasAdd/ReadVariableOp2:
Conv8/Conv2D/ReadVariableOpConv8/Conv2D/ReadVariableOp2@
Deconv1/BiasAdd/ReadVariableOpDeconv1/BiasAdd/ReadVariableOp2R
'Deconv1/conv2d_transpose/ReadVariableOp'Deconv1/conv2d_transpose/ReadVariableOp2@
Deconv2/BiasAdd/ReadVariableOpDeconv2/BiasAdd/ReadVariableOp2R
'Deconv2/conv2d_transpose/ReadVariableOp'Deconv2/conv2d_transpose/ReadVariableOp2@
Deconv3/BiasAdd/ReadVariableOpDeconv3/BiasAdd/ReadVariableOp2R
'Deconv3/conv2d_transpose/ReadVariableOp'Deconv3/conv2d_transpose/ReadVariableOp2@
Deconv4/BiasAdd/ReadVariableOpDeconv4/BiasAdd/ReadVariableOp2R
'Deconv4/conv2d_transpose/ReadVariableOp'Deconv4/conv2d_transpose/ReadVariableOp2@
Deconv5/BiasAdd/ReadVariableOpDeconv5/BiasAdd/ReadVariableOp2R
'Deconv5/conv2d_transpose/ReadVariableOp'Deconv5/conv2d_transpose/ReadVariableOp2@
Deconv6/BiasAdd/ReadVariableOpDeconv6/BiasAdd/ReadVariableOp2R
'Deconv6/conv2d_transpose/ReadVariableOp'Deconv6/conv2d_transpose/ReadVariableOp2@
Deconv7/BiasAdd/ReadVariableOpDeconv7/BiasAdd/ReadVariableOp2R
'Deconv7/conv2d_transpose/ReadVariableOp'Deconv7/conv2d_transpose/ReadVariableOp2@
Deconv8/BiasAdd/ReadVariableOpDeconv8/BiasAdd/ReadVariableOp2R
'Deconv8/conv2d_transpose/ReadVariableOp'Deconv8/conv2d_transpose/ReadVariableOp2P
&Deconv9Finalone/BiasAdd/ReadVariableOp&Deconv9Finalone/BiasAdd/ReadVariableOp2b
/Deconv9Finalone/conv2d_transpose/ReadVariableOp/Deconv9Finalone/conv2d_transpose/ReadVariableOp2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_1:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
E
)__inference_dropout_8_layer_call_fn_14254

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_122582
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
z
%__inference_Conv1_layer_call_fn_13871

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
 *0
_output_shapes
:?????????N?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_117602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????N?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????P?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_11146

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
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_12146

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13763

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_11843

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????$L2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????$L*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????$L2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????$L2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$L2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$L2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????$L:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_13928

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$L2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$L2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????$L:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_14111

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? @2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? @2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? @2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? @:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?

?
@__inference_Conv7_layer_call_and_return_conditional_losses_12044

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @*
paddingVALID*
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
:????????? @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? @2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????"@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?
E
)__inference_dropout_1_layer_call_fn_13985

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_119052
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"J 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"J :W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_14017

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? H 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? H *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? H 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? H 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? H 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? H 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? H :W S
/
_output_shapes
:????????? H 
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_11152

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
GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_111462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_6_layer_call_fn_14195

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_121762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_up_sampling2d_1_layer_call_fn_11361

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
GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_113552
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_14185

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?'
?
B__inference_Deconv2_layer_call_and_return_conditional_losses_11283

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
z
%__inference_Conv4_layer_call_fn_13958

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
 */
_output_shapes
:?????????"J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_118722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????"J 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????$L::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_12176

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
@__inference_Conv7_layer_call_and_return_conditional_losses_14090

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? @*
paddingVALID*
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
:????????? @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? @2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????"@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_14271

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_2_layer_call_fn_11176

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
GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_111702
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_Conv1_layer_call_and_return_conditional_losses_13862

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????N?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????P?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_14212

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
z
%__inference_Conv7_layer_call_fn_14099

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
 */
_output_shapes
:????????? @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_120442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????"@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?
E
)__inference_dropout_4_layer_call_fn_14126

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_120772
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? @2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? @:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11098

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_Conv5_layer_call_and_return_conditional_losses_13996

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? H 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? H 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? H 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????"J ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_13851

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_117132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????P?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?'
?
B__inference_Deconv6_layer_call_and_return_conditional_losses_11517

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_14064

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????"@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????"@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"@:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?
E
)__inference_dropout_3_layer_call_fn_14079

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120202
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"@:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_12293

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
z
%__inference_Conv2_layer_call_fn_13891

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
 *0
_output_shapes
:?????????L?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_117872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????L?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????N?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????N?
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_12743

inputs
batch_normalization_12632
batch_normalization_12634
batch_normalization_12636
batch_normalization_12638
conv1_12641
conv1_12643
conv2_12646
conv2_12648
conv3_12652
conv3_12654
conv4_12658
conv4_12660
conv5_12664
conv5_12666
conv6_12671
conv6_12673
conv7_12677
conv7_12679
conv8_12683
conv8_12685
deconv1_12690
deconv1_12692
deconv2_12695
deconv2_12697
deconv3_12701
deconv3_12703
deconv4_12708
deconv4_12710
deconv5_12714
deconv5_12716
deconv6_12720
deconv6_12722
deconv7_12726
deconv7_12728
deconv8_12732
deconv8_12734
deconv9finalone_12737
deconv9finalone_12739
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?Conv5/StatefulPartitionedCall?Conv6/StatefulPartitionedCall?Conv7/StatefulPartitionedCall?Conv8/StatefulPartitionedCall?Deconv1/StatefulPartitionedCall?Deconv2/StatefulPartitionedCall?Deconv3/StatefulPartitionedCall?Deconv4/StatefulPartitionedCall?Deconv5/StatefulPartitionedCall?Deconv6/StatefulPartitionedCall?Deconv7/StatefulPartitionedCall?Deconv8/StatefulPartitionedCall?'Deconv9Finalone/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_12632batch_normalization_12634batch_normalization_12636batch_normalization_12638*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_117132-
+batch_normalization/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv1_12641conv1_12643*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????N?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_117602
Conv1/StatefulPartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_12646conv2_12648*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????L?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_117872
Conv2/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_111462
max_pooling2d/PartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv3_12652conv3_12654*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_118152
Conv3/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_118482
dropout/PartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv4_12658conv4_12660*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_118722
Conv4/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_119052
dropout_1/PartitionedCall?
Conv5/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv5_12664conv5_12666*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_119292
Conv5/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall&Conv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_119622
dropout_2/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_111582!
max_pooling2d_1/PartitionedCall?
Conv6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv6_12671conv6_12673*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_119872
Conv6/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall&Conv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120202
dropout_3/PartitionedCall?
Conv7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv7_12677conv7_12679*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_120442
Conv7/StatefulPartitionedCall?
dropout_4/PartitionedCallPartitionedCall&Conv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_120772
dropout_4/PartitionedCall?
Conv8/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0conv8_12683conv8_12685*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv8_layer_call_and_return_conditional_losses_121012
Conv8/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall&Conv8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_111702!
max_pooling2d_2/PartitionedCall?
up_sampling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_111892
up_sampling2d/PartitionedCall?
Deconv1/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0deconv1_12690deconv1_12692*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv1_layer_call_and_return_conditional_losses_112342!
Deconv1/StatefulPartitionedCall?
Deconv2/StatefulPartitionedCallStatefulPartitionedCall(Deconv1/StatefulPartitionedCall:output:0deconv2_12695deconv2_12697*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv2_layer_call_and_return_conditional_losses_112832!
Deconv2/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall(Deconv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_121462
dropout_5/PartitionedCall?
Deconv3/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0deconv3_12701deconv3_12703*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_113322!
Deconv3/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall(Deconv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_121812
dropout_6/PartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_113552!
up_sampling2d_1/PartitionedCall?
Deconv4/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0deconv4_12708deconv4_12710*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_114002!
Deconv4/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall(Deconv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_122172
dropout_7/PartitionedCall?
Deconv5/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0deconv5_12714deconv5_12716*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_114492!
Deconv5/StatefulPartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall(Deconv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_114722!
up_sampling2d_2/PartitionedCall?
Deconv6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0deconv6_12720deconv6_12722*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_115172!
Deconv6/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall(Deconv6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_122582
dropout_8/PartitionedCall?
Deconv7/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0deconv7_12726deconv7_12728*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_115662!
Deconv7/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall(Deconv7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_122932
dropout_9/PartitionedCall?
Deconv8/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0deconv8_12732deconv8_12734*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_116152!
Deconv8/StatefulPartitionedCall?
'Deconv9Finalone/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0deconv9finalone_12737deconv9finalone_12739*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_116642)
'Deconv9Finalone/StatefulPartitionedCall?
IdentityIdentity0Deconv9Finalone/StatefulPartitionedCall:output:0^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall^Conv8/StatefulPartitionedCall ^Deconv1/StatefulPartitionedCall ^Deconv2/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall(^Deconv9Finalone/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2>
Conv8/StatefulPartitionedCallConv8/StatefulPartitionedCall2B
Deconv1/StatefulPartitionedCallDeconv1/StatefulPartitionedCall2B
Deconv2/StatefulPartitionedCallDeconv2/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2R
'Deconv9Finalone/StatefulPartitionedCall'Deconv9Finalone/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13745

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?'
?
B__inference_Deconv3_layer_call_and_return_conditional_losses_11332

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13807

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????P?:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????P?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
E
)__inference_dropout_9_layer_call_fn_14281

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_122932
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
/__inference_Deconv9Finalone_layer_call_fn_11674

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_116642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_11472

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?'
?
B__inference_Deconv8_layer_call_and_return_conditional_losses_11615

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_Conv8_layer_call_and_return_conditional_losses_14137

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@*
paddingVALID*
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
:?????????
@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
??
?=
!__inference__traced_restore_15028
file_prefix.
*assignvariableop_batch_normalization_gamma/
+assignvariableop_1_batch_normalization_beta6
2assignvariableop_2_batch_normalization_moving_mean:
6assignvariableop_3_batch_normalization_moving_variance#
assignvariableop_4_conv1_kernel!
assignvariableop_5_conv1_bias#
assignvariableop_6_conv2_kernel!
assignvariableop_7_conv2_bias#
assignvariableop_8_conv3_kernel!
assignvariableop_9_conv3_bias$
 assignvariableop_10_conv4_kernel"
assignvariableop_11_conv4_bias$
 assignvariableop_12_conv5_kernel"
assignvariableop_13_conv5_bias$
 assignvariableop_14_conv6_kernel"
assignvariableop_15_conv6_bias$
 assignvariableop_16_conv7_kernel"
assignvariableop_17_conv7_bias$
 assignvariableop_18_conv8_kernel"
assignvariableop_19_conv8_bias&
"assignvariableop_20_deconv1_kernel$
 assignvariableop_21_deconv1_bias&
"assignvariableop_22_deconv2_kernel$
 assignvariableop_23_deconv2_bias&
"assignvariableop_24_deconv3_kernel$
 assignvariableop_25_deconv3_bias&
"assignvariableop_26_deconv4_kernel$
 assignvariableop_27_deconv4_bias&
"assignvariableop_28_deconv5_kernel$
 assignvariableop_29_deconv5_bias&
"assignvariableop_30_deconv6_kernel$
 assignvariableop_31_deconv6_bias&
"assignvariableop_32_deconv7_kernel$
 assignvariableop_33_deconv7_bias&
"assignvariableop_34_deconv8_kernel$
 assignvariableop_35_deconv8_bias.
*assignvariableop_36_deconv9finalone_kernel,
(assignvariableop_37_deconv9finalone_bias!
assignvariableop_38_adam_iter#
assignvariableop_39_adam_beta_1#
assignvariableop_40_adam_beta_2"
assignvariableop_41_adam_decay*
&assignvariableop_42_adam_learning_rate
assignvariableop_43_total
assignvariableop_44_count
assignvariableop_45_total_1
assignvariableop_46_count_18
4assignvariableop_47_adam_batch_normalization_gamma_m7
3assignvariableop_48_adam_batch_normalization_beta_m+
'assignvariableop_49_adam_conv1_kernel_m)
%assignvariableop_50_adam_conv1_bias_m+
'assignvariableop_51_adam_conv2_kernel_m)
%assignvariableop_52_adam_conv2_bias_m+
'assignvariableop_53_adam_conv3_kernel_m)
%assignvariableop_54_adam_conv3_bias_m+
'assignvariableop_55_adam_conv4_kernel_m)
%assignvariableop_56_adam_conv4_bias_m+
'assignvariableop_57_adam_conv5_kernel_m)
%assignvariableop_58_adam_conv5_bias_m+
'assignvariableop_59_adam_conv6_kernel_m)
%assignvariableop_60_adam_conv6_bias_m+
'assignvariableop_61_adam_conv7_kernel_m)
%assignvariableop_62_adam_conv7_bias_m+
'assignvariableop_63_adam_conv8_kernel_m)
%assignvariableop_64_adam_conv8_bias_m-
)assignvariableop_65_adam_deconv1_kernel_m+
'assignvariableop_66_adam_deconv1_bias_m-
)assignvariableop_67_adam_deconv2_kernel_m+
'assignvariableop_68_adam_deconv2_bias_m-
)assignvariableop_69_adam_deconv3_kernel_m+
'assignvariableop_70_adam_deconv3_bias_m-
)assignvariableop_71_adam_deconv4_kernel_m+
'assignvariableop_72_adam_deconv4_bias_m-
)assignvariableop_73_adam_deconv5_kernel_m+
'assignvariableop_74_adam_deconv5_bias_m-
)assignvariableop_75_adam_deconv6_kernel_m+
'assignvariableop_76_adam_deconv6_bias_m-
)assignvariableop_77_adam_deconv7_kernel_m+
'assignvariableop_78_adam_deconv7_bias_m-
)assignvariableop_79_adam_deconv8_kernel_m+
'assignvariableop_80_adam_deconv8_bias_m5
1assignvariableop_81_adam_deconv9finalone_kernel_m3
/assignvariableop_82_adam_deconv9finalone_bias_m8
4assignvariableop_83_adam_batch_normalization_gamma_v7
3assignvariableop_84_adam_batch_normalization_beta_v+
'assignvariableop_85_adam_conv1_kernel_v)
%assignvariableop_86_adam_conv1_bias_v+
'assignvariableop_87_adam_conv2_kernel_v)
%assignvariableop_88_adam_conv2_bias_v+
'assignvariableop_89_adam_conv3_kernel_v)
%assignvariableop_90_adam_conv3_bias_v+
'assignvariableop_91_adam_conv4_kernel_v)
%assignvariableop_92_adam_conv4_bias_v+
'assignvariableop_93_adam_conv5_kernel_v)
%assignvariableop_94_adam_conv5_bias_v+
'assignvariableop_95_adam_conv6_kernel_v)
%assignvariableop_96_adam_conv6_bias_v+
'assignvariableop_97_adam_conv7_kernel_v)
%assignvariableop_98_adam_conv7_bias_v+
'assignvariableop_99_adam_conv8_kernel_v*
&assignvariableop_100_adam_conv8_bias_v.
*assignvariableop_101_adam_deconv1_kernel_v,
(assignvariableop_102_adam_deconv1_bias_v.
*assignvariableop_103_adam_deconv2_kernel_v,
(assignvariableop_104_adam_deconv2_bias_v.
*assignvariableop_105_adam_deconv3_kernel_v,
(assignvariableop_106_adam_deconv3_bias_v.
*assignvariableop_107_adam_deconv4_kernel_v,
(assignvariableop_108_adam_deconv4_bias_v.
*assignvariableop_109_adam_deconv5_kernel_v,
(assignvariableop_110_adam_deconv5_bias_v.
*assignvariableop_111_adam_deconv6_kernel_v,
(assignvariableop_112_adam_deconv6_bias_v.
*assignvariableop_113_adam_deconv7_kernel_v,
(assignvariableop_114_adam_deconv7_bias_v.
*assignvariableop_115_adam_deconv8_kernel_v,
(assignvariableop_116_adam_deconv8_bias_v6
2assignvariableop_117_adam_deconv9finalone_kernel_v4
0assignvariableop_118_adam_deconv9finalone_bias_v
identity_120??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?D
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?C
value?CB?CxB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:x*
dtype0*?
value?B?xB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes|
z2x	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp*assignvariableop_batch_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp+assignvariableop_1_batch_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp2assignvariableop_2_batch_normalization_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp6assignvariableop_3_batch_normalization_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_conv1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_conv4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_conv4_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp assignvariableop_12_conv5_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_conv5_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_conv6_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_conv6_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp assignvariableop_16_conv7_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_conv7_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp assignvariableop_18_conv8_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_conv8_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_deconv1_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp assignvariableop_21_deconv1_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_deconv2_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp assignvariableop_23_deconv2_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_deconv3_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp assignvariableop_25_deconv3_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_deconv4_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp assignvariableop_27_deconv4_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp"assignvariableop_28_deconv5_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp assignvariableop_29_deconv5_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp"assignvariableop_30_deconv6_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp assignvariableop_31_deconv6_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp"assignvariableop_32_deconv7_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp assignvariableop_33_deconv7_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp"assignvariableop_34_deconv8_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp assignvariableop_35_deconv8_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_deconv9finalone_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp(assignvariableop_37_deconv9finalone_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_iterIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_beta_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_beta_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_decayIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_learning_rateIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_total_1Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_count_1Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_batch_normalization_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp3assignvariableop_48_adam_batch_normalization_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_conv1_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_conv1_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_conv2_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_conv2_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_conv3_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp%assignvariableop_54_adam_conv3_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_conv4_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_conv4_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_conv5_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_conv5_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_conv6_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp%assignvariableop_60_adam_conv6_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_conv7_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp%assignvariableop_62_adam_conv7_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp'assignvariableop_63_adam_conv8_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp%assignvariableop_64_adam_conv8_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_deconv1_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_deconv1_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_deconv2_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_deconv2_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_deconv3_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_deconv3_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp)assignvariableop_71_adam_deconv4_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_deconv4_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp)assignvariableop_73_adam_deconv5_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_deconv5_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_deconv6_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp'assignvariableop_76_adam_deconv6_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp)assignvariableop_77_adam_deconv7_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp'assignvariableop_78_adam_deconv7_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp)assignvariableop_79_adam_deconv8_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp'assignvariableop_80_adam_deconv8_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp1assignvariableop_81_adam_deconv9finalone_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp/assignvariableop_82_adam_deconv9finalone_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp4assignvariableop_83_adam_batch_normalization_gamma_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp3assignvariableop_84_adam_batch_normalization_beta_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp'assignvariableop_85_adam_conv1_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp%assignvariableop_86_adam_conv1_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp'assignvariableop_87_adam_conv2_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp%assignvariableop_88_adam_conv2_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp'assignvariableop_89_adam_conv3_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp%assignvariableop_90_adam_conv3_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp'assignvariableop_91_adam_conv4_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp%assignvariableop_92_adam_conv4_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp'assignvariableop_93_adam_conv5_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp%assignvariableop_94_adam_conv5_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp'assignvariableop_95_adam_conv6_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp%assignvariableop_96_adam_conv6_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp'assignvariableop_97_adam_conv7_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp%assignvariableop_98_adam_conv7_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp'assignvariableop_99_adam_conv8_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp&assignvariableop_100_adam_conv8_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp*assignvariableop_101_adam_deconv1_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp(assignvariableop_102_adam_deconv1_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp*assignvariableop_103_adam_deconv2_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp(assignvariableop_104_adam_deconv2_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp*assignvariableop_105_adam_deconv3_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp(assignvariableop_106_adam_deconv3_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp*assignvariableop_107_adam_deconv4_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp(assignvariableop_108_adam_deconv4_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp*assignvariableop_109_adam_deconv5_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp(assignvariableop_110_adam_deconv5_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp*assignvariableop_111_adam_deconv6_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp(assignvariableop_112_adam_deconv6_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp*assignvariableop_113_adam_deconv7_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp(assignvariableop_114_adam_deconv7_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp*assignvariableop_115_adam_deconv8_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp(assignvariableop_116_adam_deconv8_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp2assignvariableop_117_adam_deconv9finalone_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118?
AssignVariableOp_118AssignVariableOp0assignvariableop_118_adam_deconv9finalone_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1189
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_119Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_119?
Identity_120IdentityIdentity_119:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_120"%
identity_120Identity_120:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182*
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
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
|
'__inference_Deconv5_layer_call_fn_11459

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_114492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?'
?
B__inference_Deconv1_layer_call_and_return_conditional_losses_11234

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11129

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_12217

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_13789

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_111292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_12913
batch_normalization_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_110402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:k g
0
_output_shapes
:?????????P?
3
_user_specified_namebatch_normalization_input
?
?
3__inference_batch_normalization_layer_call_fn_13776

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_110982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_13646

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
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
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_125482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11695

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????P?:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????P?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
E
)__inference_dropout_7_layer_call_fn_14227

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_122172
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?'
?
B__inference_Deconv5_layer_call_and_return_conditional_losses_11449

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_12020

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????"@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????"@:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_12015

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????"@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????"@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????"@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????"@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????"@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????"@:W S
/
_output_shapes
:?????????"@
 
_user_specified_nameinputs
?

?
@__inference_Conv3_layer_call_and_return_conditional_losses_13902

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$L2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????$L2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????$L2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????&N::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????&N
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_1_layer_call_fn_11164

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
GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_111582
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_14158

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?'
?
B__inference_Deconv4_layer_call_and_return_conditional_losses_11400

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_11905

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????"J 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"J 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????"J :W S
/
_output_shapes
:?????????"J 
 
_user_specified_nameinputs
?
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_12141

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_12627
batch_normalization_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_125482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:k g
0
_output_shapes
:?????????P?
3
_user_specified_namebatch_normalization_input
?
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_12212

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?'
?
B__inference_Deconv7_layer_call_and_return_conditional_losses_11566

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_11962

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? H 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? H 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? H :W S
/
_output_shapes
:????????? H 
 
_user_specified_nameinputs
?

?
@__inference_Conv6_layer_call_and_return_conditional_losses_11987

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"@*
paddingVALID*
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
:?????????"@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????"@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????"@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????$ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$ 
 
_user_specified_nameinputs
?
E
)__inference_dropout_6_layer_call_fn_14200

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_121812
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_14239

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_12548

inputs
batch_normalization_12437
batch_normalization_12439
batch_normalization_12441
batch_normalization_12443
conv1_12446
conv1_12448
conv2_12451
conv2_12453
conv3_12457
conv3_12459
conv4_12463
conv4_12465
conv5_12469
conv5_12471
conv6_12476
conv6_12478
conv7_12482
conv7_12484
conv8_12488
conv8_12490
deconv1_12495
deconv1_12497
deconv2_12500
deconv2_12502
deconv3_12506
deconv3_12508
deconv4_12513
deconv4_12515
deconv5_12519
deconv5_12521
deconv6_12525
deconv6_12527
deconv7_12531
deconv7_12533
deconv8_12537
deconv8_12539
deconv9finalone_12542
deconv9finalone_12544
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?Conv5/StatefulPartitionedCall?Conv6/StatefulPartitionedCall?Conv7/StatefulPartitionedCall?Conv8/StatefulPartitionedCall?Deconv1/StatefulPartitionedCall?Deconv2/StatefulPartitionedCall?Deconv3/StatefulPartitionedCall?Deconv4/StatefulPartitionedCall?Deconv5/StatefulPartitionedCall?Deconv6/StatefulPartitionedCall?Deconv7/StatefulPartitionedCall?Deconv8/StatefulPartitionedCall?'Deconv9Finalone/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_12437batch_normalization_12439batch_normalization_12441batch_normalization_12443*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_116952-
+batch_normalization/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv1_12446conv1_12448*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????N?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_117602
Conv1/StatefulPartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0conv2_12451conv2_12453*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????L?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_117872
Conv2/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&N* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_111462
max_pooling2d/PartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv3_12457conv3_12459*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_118152
Conv3/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$L* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_118432!
dropout/StatefulPartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv4_12463conv4_12465*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv4_layer_call_and_return_conditional_losses_118722
Conv4/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&Conv4/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_119002#
!dropout_1/StatefulPartitionedCall?
Conv5/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv5_12469conv5_12471*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv5_layer_call_and_return_conditional_losses_119292
Conv5/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&Conv5/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? H * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_119572#
!dropout_2/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_111582!
max_pooling2d_1/PartitionedCall?
Conv6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv6_12476conv6_12478*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_119872
Conv6/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&Conv6/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????"@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120152#
!dropout_3/StatefulPartitionedCall?
Conv7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv7_12482conv7_12484*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv7_layer_call_and_return_conditional_losses_120442
Conv7/StatefulPartitionedCall?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall&Conv7/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_120722#
!dropout_4/StatefulPartitionedCall?
Conv8/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0conv8_12488conv8_12490*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv8_layer_call_and_return_conditional_losses_121012
Conv8/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall&Conv8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_111702!
max_pooling2d_2/PartitionedCall?
up_sampling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_111892
up_sampling2d/PartitionedCall?
Deconv1/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0deconv1_12495deconv1_12497*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv1_layer_call_and_return_conditional_losses_112342!
Deconv1/StatefulPartitionedCall?
Deconv2/StatefulPartitionedCallStatefulPartitionedCall(Deconv1/StatefulPartitionedCall:output:0deconv2_12500deconv2_12502*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv2_layer_call_and_return_conditional_losses_112832!
Deconv2/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(Deconv2/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_121412#
!dropout_5/StatefulPartitionedCall?
Deconv3/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0deconv3_12506deconv3_12508*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv3_layer_call_and_return_conditional_losses_113322!
Deconv3/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(Deconv3/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_121762#
!dropout_6/StatefulPartitionedCall?
up_sampling2d_1/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_113552!
up_sampling2d_1/PartitionedCall?
Deconv4/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0deconv4_12513deconv4_12515*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv4_layer_call_and_return_conditional_losses_114002!
Deconv4/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(Deconv4/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_122122#
!dropout_7/StatefulPartitionedCall?
Deconv5/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0deconv5_12519deconv5_12521*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv5_layer_call_and_return_conditional_losses_114492!
Deconv5/StatefulPartitionedCall?
up_sampling2d_2/PartitionedCallPartitionedCall(Deconv5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_114722!
up_sampling2d_2/PartitionedCall?
Deconv6/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_2/PartitionedCall:output:0deconv6_12525deconv6_12527*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv6_layer_call_and_return_conditional_losses_115172!
Deconv6/StatefulPartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall(Deconv6/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_122532#
!dropout_8/StatefulPartitionedCall?
Deconv7/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0deconv7_12531deconv7_12533*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv7_layer_call_and_return_conditional_losses_115662!
Deconv7/StatefulPartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(Deconv7/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_122882#
!dropout_9/StatefulPartitionedCall?
Deconv8/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0deconv8_12537deconv8_12539*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv8_layer_call_and_return_conditional_losses_116152!
Deconv8/StatefulPartitionedCall?
'Deconv9Finalone/StatefulPartitionedCallStatefulPartitionedCall(Deconv8/StatefulPartitionedCall:output:0deconv9finalone_12542deconv9finalone_12544*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_116642)
'Deconv9Finalone/StatefulPartitionedCall?
IdentityIdentity0Deconv9Finalone/StatefulPartitionedCall:output:0^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^Conv5/StatefulPartitionedCall^Conv6/StatefulPartitionedCall^Conv7/StatefulPartitionedCall^Conv8/StatefulPartitionedCall ^Deconv1/StatefulPartitionedCall ^Deconv2/StatefulPartitionedCall ^Deconv3/StatefulPartitionedCall ^Deconv4/StatefulPartitionedCall ^Deconv5/StatefulPartitionedCall ^Deconv6/StatefulPartitionedCall ^Deconv7/StatefulPartitionedCall ^Deconv8/StatefulPartitionedCall(^Deconv9Finalone/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????P?::::::::::::::::::::::::::::::::::::::2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2>
Conv5/StatefulPartitionedCallConv5/StatefulPartitionedCall2>
Conv6/StatefulPartitionedCallConv6/StatefulPartitionedCall2>
Conv7/StatefulPartitionedCallConv7/StatefulPartitionedCall2>
Conv8/StatefulPartitionedCallConv8/StatefulPartitionedCall2B
Deconv1/StatefulPartitionedCallDeconv1/StatefulPartitionedCall2B
Deconv2/StatefulPartitionedCallDeconv2/StatefulPartitionedCall2B
Deconv3/StatefulPartitionedCallDeconv3/StatefulPartitionedCall2B
Deconv4/StatefulPartitionedCallDeconv4/StatefulPartitionedCall2B
Deconv5/StatefulPartitionedCallDeconv5/StatefulPartitionedCall2B
Deconv6/StatefulPartitionedCallDeconv6/StatefulPartitionedCall2B
Deconv7/StatefulPartitionedCallDeconv7/StatefulPartitionedCall2B
Deconv8/StatefulPartitionedCallDeconv8/StatefulPartitionedCall2R
'Deconv9Finalone/StatefulPartitionedCall'Deconv9Finalone/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_12258

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
@__inference_Conv1_layer_call_and_return_conditional_losses_11760

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????N?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????N?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????N?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????P?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_12077

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? @:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
b
)__inference_dropout_4_layer_call_fn_14121

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_120722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? @2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_14190

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_13923

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????$L2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????$L*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????$L2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????$L2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$L2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$L2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????$L:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_11170

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
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
|
'__inference_Deconv2_layer_call_fn_11293

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_Deconv2_layer_call_and_return_conditional_losses_112832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_Conv8_layer_call_and_return_conditional_losses_12101

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
@*
paddingVALID*
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
:?????????
@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?

?
@__inference_Conv4_layer_call_and_return_conditional_losses_13949

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????"J 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????"J 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????"J 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????$L::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$L
 
_user_specified_nameinputs
?
z
%__inference_Conv3_layer_call_fn_13911

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
 */
_output_shapes
:?????????$L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_118152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????$L2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????&N::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????&N
 
_user_specified_nameinputs
?

?
@__inference_Conv2_layer_call_and_return_conditional_losses_11787

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????L?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????L?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????L?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????N?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????N?
 
_user_specified_nameinputs
?
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_12253

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
z
%__inference_Conv8_layer_call_fn_14146

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
 */
_output_shapes
:?????????
@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv8_layer_call_and_return_conditional_losses_121012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? @
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_14022

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? H 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? H 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? H :W S
/
_output_shapes
:????????? H 
 
_user_specified_nameinputs
?
z
%__inference_Conv6_layer_call_fn_14052

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
 */
_output_shapes
:?????????"@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv6_layer_call_and_return_conditional_losses_119872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????"@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????$ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$ 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
h
batch_normalization_inputK
+serving_default_batch_normalization_input:0?????????P?L
Deconv9Finalone9
StatefulPartitionedCall:0?????????P?tensorflow/serving/predict:??
??
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer_with_weights-8
layer-15
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer-20
layer_with_weights-11
layer-21
layer-22
layer-23
layer_with_weights-12
layer-24
layer-25
layer_with_weights-13
layer-26
layer-27
layer_with_weights-14
layer-28
layer-29
layer_with_weights-15
layer-30
 layer-31
!layer_with_weights-16
!layer-32
"layer_with_weights-17
"layer-33
#	optimizer
$trainable_variables
%regularization_losses
&	variables
'	keras_api
(
signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"??
_tf_keras_sequential??{"class_name": "Sequential", "name": "sequential", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 160, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "batch_normalization_input"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 160, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "Conv1", "trainable": false, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "Conv2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "Conv3", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv5", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "Conv6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv7", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv8", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv3", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv5", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv6", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv7", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv8", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv9Finalone", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 160, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 160, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "batch_normalization_input"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 160, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "Conv1", "trainable": false, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "Conv2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "Conv3", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv5", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "Conv6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv7", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "Conv8", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv3", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv5", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv6", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv7", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv8", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "Conv2DTranspose", "config": {"name": "Deconv9Finalone", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

)axis
	*gamma
+beta
,moving_mean
-moving_variance
.trainable_variables
/regularization_losses
0	variables
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 160, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 160, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 160, 3]}}
?	

2kernel
3bias
4trainable_variables
5regularization_losses
6	variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv1", "trainable": false, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 160, 3]}}
?	

8kernel
9bias
:trainable_variables
;regularization_losses
<	variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 78, 158, 8]}}
?
>trainable_variables
?regularization_losses
@	variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv3", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 38, 78, 16]}}
?
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

Lkernel
Mbias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 76, 16]}}
?
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

Vkernel
Wbias
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv5", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv5", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 34, 74, 32]}}
?
\trainable_variables
]regularization_losses
^	variables
_	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_2", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
`trainable_variables
aregularization_losses
b	variables
c	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

dkernel
ebias
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv6", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 36, 32]}}
?
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_3", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

nkernel
obias
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv7", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv7", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 34, 64]}}
?
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_4", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_4", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv8", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Conv8", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 32, 64]}}
?
~trainable_variables
regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "UpSampling2D", "name": "up_sampling2d", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 30, 64]}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 32, 128]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_5", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_5", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv3", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 34, 64]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_6", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_6", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "UpSampling2D", "name": "up_sampling2d_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_1", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 72, 64]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_7", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_7", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv5", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv5", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 34, 74, 32]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "UpSampling2D", "name": "up_sampling2d_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_2", "trainable": false, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv6", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv6", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 72, 152, 32]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_8", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_8", "trainable": false, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv7", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv7", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 74, 154, 32]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_9", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_9", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv8", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv8", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 76, 156, 16]}}
?

?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2DTranspose", "name": "Deconv9Finalone", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Deconv9Finalone", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 78, 158, 16]}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate*m?+m?2m?3m?8m?9m?Bm?Cm?Lm?Mm?Vm?Wm?dm?em?nm?om?xm?ym?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?*v?+v?2v?3v?8v?9v?Bv?Cv?Lv?Mv?Vv?Wv?dv?ev?nv?ov?xv?yv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
*0
+1
,2
-3
24
35
86
97
B8
C9
L10
M11
V12
W13
d14
e15
n16
o17
x18
y19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37"
trackable_list_wrapper
?
?metrics
$trainable_variables
?layers
%regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
&	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
*0
+1
,2
-3"
trackable_list_wrapper
?
?metrics
.trainable_variables
?layers
/regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
0	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$2Conv1/kernel
:2
Conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
?metrics
4trainable_variables
?layers
5regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
6	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$2Conv2/kernel
:2
Conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
?metrics
:trainable_variables
?layers
;regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
<	variables
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
?metrics
>trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
@	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$2Conv3/kernel
:2
Conv3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
?metrics
Dtrainable_variables
?layers
Eregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
F	variables
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
?metrics
Htrainable_variables
?layers
Iregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
J	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$ 2Conv4/kernel
: 2
Conv4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
?metrics
Ntrainable_variables
?layers
Oregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
P	variables
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
?metrics
Rtrainable_variables
?layers
Sregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
T	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$  2Conv5/kernel
: 2
Conv5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
?
?metrics
Xtrainable_variables
?layers
Yregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
Z	variables
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
?metrics
\trainable_variables
?layers
]regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
^	variables
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
?metrics
`trainable_variables
?layers
aregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
b	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$ @2Conv6/kernel
:@2
Conv6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
?
?metrics
ftrainable_variables
?layers
gregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
h	variables
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
?metrics
jtrainable_variables
?layers
kregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
l	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$@@2Conv7/kernel
:@2
Conv7/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
?
?metrics
ptrainable_variables
?layers
qregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
r	variables
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
?metrics
ttrainable_variables
?layers
uregularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
v	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$@@2Conv8/kernel
:@2
Conv8/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
?
?metrics
ztrainable_variables
?layers
{regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
|	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
~trainable_variables
?layers
regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'?@2Deconv1/kernel
:?2Deconv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@?2Deconv2/kernel
:@2Deconv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&@@2Deconv3/kernel
:@2Deconv3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:& @2Deconv4/kernel
: 2Deconv4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&  2Deconv5/kernel
: 2Deconv5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&  2Deconv6/kernel
: 2Deconv6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:& 2Deconv7/kernel
:2Deconv7/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&2Deconv8/kernel
:2Deconv8/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0:.2Deconv9Finalone/kernel
": 2Deconv9Finalone/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
?
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
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
*0
+1
,2
-3
24
35
86
97
B8
C9
L10
M11
V12
W13
d14
e15
n16
o17
x18
y19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
*0
+1
,2
-3"
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
20
31"
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
80
91"
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
B0
C1"
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
L0
M1"
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
V0
W1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
d0
e1"
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
n0
o1"
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
x0
y1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
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
0
?0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:*2 Adam/batch_normalization/gamma/m
+:)2Adam/batch_normalization/beta/m
+:)2Adam/Conv1/kernel/m
:2Adam/Conv1/bias/m
+:)2Adam/Conv2/kernel/m
:2Adam/Conv2/bias/m
+:)2Adam/Conv3/kernel/m
:2Adam/Conv3/bias/m
+:) 2Adam/Conv4/kernel/m
: 2Adam/Conv4/bias/m
+:)  2Adam/Conv5/kernel/m
: 2Adam/Conv5/bias/m
+:) @2Adam/Conv6/kernel/m
:@2Adam/Conv6/bias/m
+:)@@2Adam/Conv7/kernel/m
:@2Adam/Conv7/bias/m
+:)@@2Adam/Conv8/kernel/m
:@2Adam/Conv8/bias/m
.:,?@2Adam/Deconv1/kernel/m
 :?2Adam/Deconv1/bias/m
.:,@?2Adam/Deconv2/kernel/m
:@2Adam/Deconv2/bias/m
-:+@@2Adam/Deconv3/kernel/m
:@2Adam/Deconv3/bias/m
-:+ @2Adam/Deconv4/kernel/m
: 2Adam/Deconv4/bias/m
-:+  2Adam/Deconv5/kernel/m
: 2Adam/Deconv5/bias/m
-:+  2Adam/Deconv6/kernel/m
: 2Adam/Deconv6/bias/m
-:+ 2Adam/Deconv7/kernel/m
:2Adam/Deconv7/bias/m
-:+2Adam/Deconv8/kernel/m
:2Adam/Deconv8/bias/m
5:32Adam/Deconv9Finalone/kernel/m
':%2Adam/Deconv9Finalone/bias/m
,:*2 Adam/batch_normalization/gamma/v
+:)2Adam/batch_normalization/beta/v
+:)2Adam/Conv1/kernel/v
:2Adam/Conv1/bias/v
+:)2Adam/Conv2/kernel/v
:2Adam/Conv2/bias/v
+:)2Adam/Conv3/kernel/v
:2Adam/Conv3/bias/v
+:) 2Adam/Conv4/kernel/v
: 2Adam/Conv4/bias/v
+:)  2Adam/Conv5/kernel/v
: 2Adam/Conv5/bias/v
+:) @2Adam/Conv6/kernel/v
:@2Adam/Conv6/bias/v
+:)@@2Adam/Conv7/kernel/v
:@2Adam/Conv7/bias/v
+:)@@2Adam/Conv8/kernel/v
:@2Adam/Conv8/bias/v
.:,?@2Adam/Deconv1/kernel/v
 :?2Adam/Deconv1/bias/v
.:,@?2Adam/Deconv2/kernel/v
:@2Adam/Deconv2/bias/v
-:+@@2Adam/Deconv3/kernel/v
:@2Adam/Deconv3/bias/v
-:+ @2Adam/Deconv4/kernel/v
: 2Adam/Deconv4/bias/v
-:+  2Adam/Deconv5/kernel/v
: 2Adam/Deconv5/bias/v
-:+  2Adam/Deconv6/kernel/v
: 2Adam/Deconv6/bias/v
-:+ 2Adam/Deconv7/kernel/v
:2Adam/Deconv7/bias/v
-:+2Adam/Deconv8/kernel/v
:2Adam/Deconv8/bias/v
5:32Adam/Deconv9Finalone/kernel/v
':%2Adam/Deconv9Finalone/bias/v
?2?
 __inference__wrapped_model_11040?
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
annotations? *A?>
<?9
batch_normalization_input?????????P?
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_13274
E__inference_sequential_layer_call_and_return_conditional_losses_12317
E__inference_sequential_layer_call_and_return_conditional_losses_12431
E__inference_sequential_layer_call_and_return_conditional_losses_13565?
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
*__inference_sequential_layer_call_fn_12627
*__inference_sequential_layer_call_fn_13646
*__inference_sequential_layer_call_fn_12822
*__inference_sequential_layer_call_fn_13727?
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
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13763
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13745
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13807
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13825?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_batch_normalization_layer_call_fn_13789
3__inference_batch_normalization_layer_call_fn_13838
3__inference_batch_normalization_layer_call_fn_13776
3__inference_batch_normalization_layer_call_fn_13851?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_Conv1_layer_call_and_return_conditional_losses_13862?
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
%__inference_Conv1_layer_call_fn_13871?
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
@__inference_Conv2_layer_call_and_return_conditional_losses_13882?
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
%__inference_Conv2_layer_call_fn_13891?
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
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_11146?
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
-__inference_max_pooling2d_layer_call_fn_11152?
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
@__inference_Conv3_layer_call_and_return_conditional_losses_13902?
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
%__inference_Conv3_layer_call_fn_13911?
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
B__inference_dropout_layer_call_and_return_conditional_losses_13923
B__inference_dropout_layer_call_and_return_conditional_losses_13928?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dropout_layer_call_fn_13933
'__inference_dropout_layer_call_fn_13938?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_Conv4_layer_call_and_return_conditional_losses_13949?
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
%__inference_Conv4_layer_call_fn_13958?
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
D__inference_dropout_1_layer_call_and_return_conditional_losses_13975
D__inference_dropout_1_layer_call_and_return_conditional_losses_13970?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_1_layer_call_fn_13985
)__inference_dropout_1_layer_call_fn_13980?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_Conv5_layer_call_and_return_conditional_losses_13996?
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
%__inference_Conv5_layer_call_fn_14005?
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
D__inference_dropout_2_layer_call_and_return_conditional_losses_14022
D__inference_dropout_2_layer_call_and_return_conditional_losses_14017?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_2_layer_call_fn_14032
)__inference_dropout_2_layer_call_fn_14027?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_11158?
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
/__inference_max_pooling2d_1_layer_call_fn_11164?
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
@__inference_Conv6_layer_call_and_return_conditional_losses_14043?
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
%__inference_Conv6_layer_call_fn_14052?
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
D__inference_dropout_3_layer_call_and_return_conditional_losses_14069
D__inference_dropout_3_layer_call_and_return_conditional_losses_14064?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_3_layer_call_fn_14074
)__inference_dropout_3_layer_call_fn_14079?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_Conv7_layer_call_and_return_conditional_losses_14090?
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
%__inference_Conv7_layer_call_fn_14099?
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
D__inference_dropout_4_layer_call_and_return_conditional_losses_14111
D__inference_dropout_4_layer_call_and_return_conditional_losses_14116?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_4_layer_call_fn_14121
)__inference_dropout_4_layer_call_fn_14126?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_Conv8_layer_call_and_return_conditional_losses_14137?
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
%__inference_Conv8_layer_call_fn_14146?
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
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_11170?
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
/__inference_max_pooling2d_2_layer_call_fn_11176?
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
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_11189?
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
-__inference_up_sampling2d_layer_call_fn_11195?
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
B__inference_Deconv1_layer_call_and_return_conditional_losses_11234?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
'__inference_Deconv1_layer_call_fn_11244?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
B__inference_Deconv2_layer_call_and_return_conditional_losses_11283?
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
annotations? *8?5
3?0,????????????????????????????
?2?
'__inference_Deconv2_layer_call_fn_11293?
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
annotations? *8?5
3?0,????????????????????????????
?2?
D__inference_dropout_5_layer_call_and_return_conditional_losses_14158
D__inference_dropout_5_layer_call_and_return_conditional_losses_14163?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_5_layer_call_fn_14168
)__inference_dropout_5_layer_call_fn_14173?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_Deconv3_layer_call_and_return_conditional_losses_11332?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
'__inference_Deconv3_layer_call_fn_11342?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
D__inference_dropout_6_layer_call_and_return_conditional_losses_14185
D__inference_dropout_6_layer_call_and_return_conditional_losses_14190?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_6_layer_call_fn_14195
)__inference_dropout_6_layer_call_fn_14200?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_11355?
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
/__inference_up_sampling2d_1_layer_call_fn_11361?
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
B__inference_Deconv4_layer_call_and_return_conditional_losses_11400?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
'__inference_Deconv4_layer_call_fn_11410?
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
annotations? *7?4
2?/+???????????????????????????@
?2?
D__inference_dropout_7_layer_call_and_return_conditional_losses_14217
D__inference_dropout_7_layer_call_and_return_conditional_losses_14212?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_7_layer_call_fn_14222
)__inference_dropout_7_layer_call_fn_14227?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_Deconv5_layer_call_and_return_conditional_losses_11449?
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
annotations? *7?4
2?/+??????????????????????????? 
?2?
'__inference_Deconv5_layer_call_fn_11459?
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
annotations? *7?4
2?/+??????????????????????????? 
?2?
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_11472?
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
/__inference_up_sampling2d_2_layer_call_fn_11478?
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
B__inference_Deconv6_layer_call_and_return_conditional_losses_11517?
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
annotations? *7?4
2?/+??????????????????????????? 
?2?
'__inference_Deconv6_layer_call_fn_11527?
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
annotations? *7?4
2?/+??????????????????????????? 
?2?
D__inference_dropout_8_layer_call_and_return_conditional_losses_14244
D__inference_dropout_8_layer_call_and_return_conditional_losses_14239?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_8_layer_call_fn_14254
)__inference_dropout_8_layer_call_fn_14249?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_Deconv7_layer_call_and_return_conditional_losses_11566?
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
annotations? *7?4
2?/+??????????????????????????? 
?2?
'__inference_Deconv7_layer_call_fn_11576?
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
annotations? *7?4
2?/+??????????????????????????? 
?2?
D__inference_dropout_9_layer_call_and_return_conditional_losses_14271
D__inference_dropout_9_layer_call_and_return_conditional_losses_14266?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_9_layer_call_fn_14276
)__inference_dropout_9_layer_call_fn_14281?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_Deconv8_layer_call_and_return_conditional_losses_11615?
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
annotations? *7?4
2?/+???????????????????????????
?2?
'__inference_Deconv8_layer_call_fn_11625?
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
annotations? *7?4
2?/+???????????????????????????
?2?
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_11664?
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
annotations? *7?4
2?/+???????????????????????????
?2?
/__inference_Deconv9Finalone_layer_call_fn_11674?
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
annotations? *7?4
2?/+???????????????????????????
?B?
#__inference_signature_wrapper_12913batch_normalization_input"?
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
@__inference_Conv1_layer_call_and_return_conditional_losses_13862n238?5
.?+
)?&
inputs?????????P?
? ".?+
$?!
0?????????N?
? ?
%__inference_Conv1_layer_call_fn_13871a238?5
.?+
)?&
inputs?????????P?
? "!??????????N??
@__inference_Conv2_layer_call_and_return_conditional_losses_13882n898?5
.?+
)?&
inputs?????????N?
? ".?+
$?!
0?????????L?
? ?
%__inference_Conv2_layer_call_fn_13891a898?5
.?+
)?&
inputs?????????N?
? "!??????????L??
@__inference_Conv3_layer_call_and_return_conditional_losses_13902lBC7?4
-?*
(?%
inputs?????????&N
? "-?*
#? 
0?????????$L
? ?
%__inference_Conv3_layer_call_fn_13911_BC7?4
-?*
(?%
inputs?????????&N
? " ??????????$L?
@__inference_Conv4_layer_call_and_return_conditional_losses_13949lLM7?4
-?*
(?%
inputs?????????$L
? "-?*
#? 
0?????????"J 
? ?
%__inference_Conv4_layer_call_fn_13958_LM7?4
-?*
(?%
inputs?????????$L
? " ??????????"J ?
@__inference_Conv5_layer_call_and_return_conditional_losses_13996lVW7?4
-?*
(?%
inputs?????????"J 
? "-?*
#? 
0????????? H 
? ?
%__inference_Conv5_layer_call_fn_14005_VW7?4
-?*
(?%
inputs?????????"J 
? " ?????????? H ?
@__inference_Conv6_layer_call_and_return_conditional_losses_14043lde7?4
-?*
(?%
inputs?????????$ 
? "-?*
#? 
0?????????"@
? ?
%__inference_Conv6_layer_call_fn_14052_de7?4
-?*
(?%
inputs?????????$ 
? " ??????????"@?
@__inference_Conv7_layer_call_and_return_conditional_losses_14090lno7?4
-?*
(?%
inputs?????????"@
? "-?*
#? 
0????????? @
? ?
%__inference_Conv7_layer_call_fn_14099_no7?4
-?*
(?%
inputs?????????"@
? " ?????????? @?
@__inference_Conv8_layer_call_and_return_conditional_losses_14137lxy7?4
-?*
(?%
inputs????????? @
? "-?*
#? 
0?????????
@
? ?
%__inference_Conv8_layer_call_fn_14146_xy7?4
-?*
(?%
inputs????????? @
? " ??????????
@?
B__inference_Deconv1_layer_call_and_return_conditional_losses_11234???I?F
??<
:?7
inputs+???????????????????????????@
? "@?=
6?3
0,????????????????????????????
? ?
'__inference_Deconv1_layer_call_fn_11244???I?F
??<
:?7
inputs+???????????????????????????@
? "3?0,?????????????????????????????
B__inference_Deconv2_layer_call_and_return_conditional_losses_11283???J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
'__inference_Deconv2_layer_call_fn_11293???J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
B__inference_Deconv3_layer_call_and_return_conditional_losses_11332???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
'__inference_Deconv3_layer_call_fn_11342???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
B__inference_Deconv4_layer_call_and_return_conditional_losses_11400???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
'__inference_Deconv4_layer_call_fn_11410???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
B__inference_Deconv5_layer_call_and_return_conditional_losses_11449???I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+??????????????????????????? 
? ?
'__inference_Deconv5_layer_call_fn_11459???I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+??????????????????????????? ?
B__inference_Deconv6_layer_call_and_return_conditional_losses_11517???I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+??????????????????????????? 
? ?
'__inference_Deconv6_layer_call_fn_11527???I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+??????????????????????????? ?
B__inference_Deconv7_layer_call_and_return_conditional_losses_11566???I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
'__inference_Deconv7_layer_call_fn_11576???I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
B__inference_Deconv8_layer_call_and_return_conditional_losses_11615???I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
'__inference_Deconv8_layer_call_fn_11625???I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
J__inference_Deconv9Finalone_layer_call_and_return_conditional_losses_11664???I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
/__inference_Deconv9Finalone_layer_call_fn_11674???I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
 __inference__wrapped_model_11040?8*+,-2389BCLMVWdenoxy??????????????????K?H
A?>
<?9
batch_normalization_input?????????P?
? "J?G
E
Deconv9Finalone2?/
Deconv9Finalone?????????P??
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13745?*+,-M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13763?*+,-M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13807t*+,-<?9
2?/
)?&
inputs?????????P?
p
? ".?+
$?!
0?????????P?
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13825t*+,-<?9
2?/
)?&
inputs?????????P?
p 
? ".?+
$?!
0?????????P?
? ?
3__inference_batch_normalization_layer_call_fn_13776?*+,-M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
3__inference_batch_normalization_layer_call_fn_13789?*+,-M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
3__inference_batch_normalization_layer_call_fn_13838g*+,-<?9
2?/
)?&
inputs?????????P?
p
? "!??????????P??
3__inference_batch_normalization_layer_call_fn_13851g*+,-<?9
2?/
)?&
inputs?????????P?
p 
? "!??????????P??
D__inference_dropout_1_layer_call_and_return_conditional_losses_13970l;?8
1?.
(?%
inputs?????????"J 
p
? "-?*
#? 
0?????????"J 
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_13975l;?8
1?.
(?%
inputs?????????"J 
p 
? "-?*
#? 
0?????????"J 
? ?
)__inference_dropout_1_layer_call_fn_13980_;?8
1?.
(?%
inputs?????????"J 
p
? " ??????????"J ?
)__inference_dropout_1_layer_call_fn_13985_;?8
1?.
(?%
inputs?????????"J 
p 
? " ??????????"J ?
D__inference_dropout_2_layer_call_and_return_conditional_losses_14017l;?8
1?.
(?%
inputs????????? H 
p
? "-?*
#? 
0????????? H 
? ?
D__inference_dropout_2_layer_call_and_return_conditional_losses_14022l;?8
1?.
(?%
inputs????????? H 
p 
? "-?*
#? 
0????????? H 
? ?
)__inference_dropout_2_layer_call_fn_14027_;?8
1?.
(?%
inputs????????? H 
p
? " ?????????? H ?
)__inference_dropout_2_layer_call_fn_14032_;?8
1?.
(?%
inputs????????? H 
p 
? " ?????????? H ?
D__inference_dropout_3_layer_call_and_return_conditional_losses_14064l;?8
1?.
(?%
inputs?????????"@
p
? "-?*
#? 
0?????????"@
? ?
D__inference_dropout_3_layer_call_and_return_conditional_losses_14069l;?8
1?.
(?%
inputs?????????"@
p 
? "-?*
#? 
0?????????"@
? ?
)__inference_dropout_3_layer_call_fn_14074_;?8
1?.
(?%
inputs?????????"@
p
? " ??????????"@?
)__inference_dropout_3_layer_call_fn_14079_;?8
1?.
(?%
inputs?????????"@
p 
? " ??????????"@?
D__inference_dropout_4_layer_call_and_return_conditional_losses_14111l;?8
1?.
(?%
inputs????????? @
p
? "-?*
#? 
0????????? @
? ?
D__inference_dropout_4_layer_call_and_return_conditional_losses_14116l;?8
1?.
(?%
inputs????????? @
p 
? "-?*
#? 
0????????? @
? ?
)__inference_dropout_4_layer_call_fn_14121_;?8
1?.
(?%
inputs????????? @
p
? " ?????????? @?
)__inference_dropout_4_layer_call_fn_14126_;?8
1?.
(?%
inputs????????? @
p 
? " ?????????? @?
D__inference_dropout_5_layer_call_and_return_conditional_losses_14158?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
D__inference_dropout_5_layer_call_and_return_conditional_losses_14163?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
)__inference_dropout_5_layer_call_fn_14168?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
)__inference_dropout_5_layer_call_fn_14173?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
D__inference_dropout_6_layer_call_and_return_conditional_losses_14185?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
D__inference_dropout_6_layer_call_and_return_conditional_losses_14190?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
)__inference_dropout_6_layer_call_fn_14195?M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
)__inference_dropout_6_layer_call_fn_14200?M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
D__inference_dropout_7_layer_call_and_return_conditional_losses_14212?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
D__inference_dropout_7_layer_call_and_return_conditional_losses_14217?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
)__inference_dropout_7_layer_call_fn_14222?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
)__inference_dropout_7_layer_call_fn_14227?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
D__inference_dropout_8_layer_call_and_return_conditional_losses_14239?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
D__inference_dropout_8_layer_call_and_return_conditional_losses_14244?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
)__inference_dropout_8_layer_call_fn_14249?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
)__inference_dropout_8_layer_call_fn_14254?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
D__inference_dropout_9_layer_call_and_return_conditional_losses_14266?M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
D__inference_dropout_9_layer_call_and_return_conditional_losses_14271?M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
)__inference_dropout_9_layer_call_fn_14276?M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
)__inference_dropout_9_layer_call_fn_14281?M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
B__inference_dropout_layer_call_and_return_conditional_losses_13923l;?8
1?.
(?%
inputs?????????$L
p
? "-?*
#? 
0?????????$L
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_13928l;?8
1?.
(?%
inputs?????????$L
p 
? "-?*
#? 
0?????????$L
? ?
'__inference_dropout_layer_call_fn_13933_;?8
1?.
(?%
inputs?????????$L
p
? " ??????????$L?
'__inference_dropout_layer_call_fn_13938_;?8
1?.
(?%
inputs?????????$L
p 
? " ??????????$L?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_11158?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_1_layer_call_fn_11164?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_11170?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_2_layer_call_fn_11176?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_11146?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling2d_layer_call_fn_11152?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
E__inference_sequential_layer_call_and_return_conditional_losses_12317?8*+,-2389BCLMVWdenoxy??????????????????S?P
I?F
<?9
batch_normalization_input?????????P?
p

 
? "??<
5?2
0+???????????????????????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_12431?8*+,-2389BCLMVWdenoxy??????????????????S?P
I?F
<?9
batch_normalization_input?????????P?
p 

 
? "??<
5?2
0+???????????????????????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_13274?8*+,-2389BCLMVWdenoxy??????????????????@?=
6?3
)?&
inputs?????????P?
p

 
? ".?+
$?!
0?????????P?
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_13565?8*+,-2389BCLMVWdenoxy??????????????????@?=
6?3
)?&
inputs?????????P?
p 

 
? ".?+
$?!
0?????????P?
? ?
*__inference_sequential_layer_call_fn_12627?8*+,-2389BCLMVWdenoxy??????????????????S?P
I?F
<?9
batch_normalization_input?????????P?
p

 
? "2?/+????????????????????????????
*__inference_sequential_layer_call_fn_12822?8*+,-2389BCLMVWdenoxy??????????????????S?P
I?F
<?9
batch_normalization_input?????????P?
p 

 
? "2?/+????????????????????????????
*__inference_sequential_layer_call_fn_13646?8*+,-2389BCLMVWdenoxy??????????????????@?=
6?3
)?&
inputs?????????P?
p

 
? "2?/+????????????????????????????
*__inference_sequential_layer_call_fn_13727?8*+,-2389BCLMVWdenoxy??????????????????@?=
6?3
)?&
inputs?????????P?
p 

 
? "2?/+????????????????????????????
#__inference_signature_wrapper_12913?8*+,-2389BCLMVWdenoxy??????????????????h?e
? 
^?[
Y
batch_normalization_input<?9
batch_normalization_input?????????P?"J?G
E
Deconv9Finalone2?/
Deconv9Finalone?????????P??
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_11355?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_up_sampling2d_1_layer_call_fn_11361?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_11472?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_up_sampling2d_2_layer_call_fn_11478?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_11189?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_up_sampling2d_layer_call_fn_11195?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????