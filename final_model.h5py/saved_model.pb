 
¹
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
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
¾
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
ö
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718½

embedding_2600/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	úId**
shared_nameembedding_2600/embeddings

-embedding_2600/embeddings/Read/ReadVariableOpReadVariableOpembedding_2600/embeddings*
_output_shapes
:	úId*
dtype0

embedding_2601/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú=**
shared_nameembedding_2601/embeddings

-embedding_2601/embeddings/Read/ReadVariableOpReadVariableOpembedding_2601/embeddings*
_output_shapes
:	ú=*
dtype0

dense_2598/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ã¾*"
shared_namedense_2598/kernel
y
%dense_2598/kernel/Read/ReadVariableOpReadVariableOpdense_2598/kernel* 
_output_shapes
:
Ã¾*
dtype0
w
dense_2598/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾* 
shared_namedense_2598/bias
p
#dense_2598/bias/Read/ReadVariableOpReadVariableOpdense_2598/bias*
_output_shapes	
:¾*
dtype0

batch_normalization_1299/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*/
shared_name batch_normalization_1299/gamma

2batch_normalization_1299/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1299/gamma*
_output_shapes	
:¾*
dtype0

batch_normalization_1299/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*.
shared_namebatch_normalization_1299/beta

1batch_normalization_1299/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1299/beta*
_output_shapes	
:¾*
dtype0
¡
$batch_normalization_1299/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*5
shared_name&$batch_normalization_1299/moving_mean

8batch_normalization_1299/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_1299/moving_mean*
_output_shapes	
:¾*
dtype0
©
(batch_normalization_1299/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*9
shared_name*(batch_normalization_1299/moving_variance
¢
<batch_normalization_1299/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_1299/moving_variance*
_output_shapes	
:¾*
dtype0

dense_2599/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¾*"
shared_namedense_2599/kernel
x
%dense_2599/kernel/Read/ReadVariableOpReadVariableOpdense_2599/kernel*
_output_shapes
:	¾*
dtype0
v
dense_2599/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_2599/bias
o
#dense_2599/bias/Read/ReadVariableOpReadVariableOpdense_2599/bias*
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

 Adam/embedding_2600/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	úId*1
shared_name" Adam/embedding_2600/embeddings/m

4Adam/embedding_2600/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/embedding_2600/embeddings/m*
_output_shapes
:	úId*
dtype0

 Adam/embedding_2601/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú=*1
shared_name" Adam/embedding_2601/embeddings/m

4Adam/embedding_2601/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/embedding_2601/embeddings/m*
_output_shapes
:	ú=*
dtype0

Adam/dense_2598/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ã¾*)
shared_nameAdam/dense_2598/kernel/m

,Adam/dense_2598/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2598/kernel/m* 
_output_shapes
:
Ã¾*
dtype0

Adam/dense_2598/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*'
shared_nameAdam/dense_2598/bias/m
~
*Adam/dense_2598/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2598/bias/m*
_output_shapes	
:¾*
dtype0
£
%Adam/batch_normalization_1299/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*6
shared_name'%Adam/batch_normalization_1299/gamma/m

9Adam/batch_normalization_1299/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1299/gamma/m*
_output_shapes	
:¾*
dtype0
¡
$Adam/batch_normalization_1299/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*5
shared_name&$Adam/batch_normalization_1299/beta/m

8Adam/batch_normalization_1299/beta/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1299/beta/m*
_output_shapes	
:¾*
dtype0

Adam/dense_2599/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¾*)
shared_nameAdam/dense_2599/kernel/m

,Adam/dense_2599/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2599/kernel/m*
_output_shapes
:	¾*
dtype0

Adam/dense_2599/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2599/bias/m
}
*Adam/dense_2599/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2599/bias/m*
_output_shapes
:*
dtype0

 Adam/embedding_2600/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	úId*1
shared_name" Adam/embedding_2600/embeddings/v

4Adam/embedding_2600/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/embedding_2600/embeddings/v*
_output_shapes
:	úId*
dtype0

 Adam/embedding_2601/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú=*1
shared_name" Adam/embedding_2601/embeddings/v

4Adam/embedding_2601/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/embedding_2601/embeddings/v*
_output_shapes
:	ú=*
dtype0

Adam/dense_2598/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ã¾*)
shared_nameAdam/dense_2598/kernel/v

,Adam/dense_2598/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2598/kernel/v* 
_output_shapes
:
Ã¾*
dtype0

Adam/dense_2598/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*'
shared_nameAdam/dense_2598/bias/v
~
*Adam/dense_2598/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2598/bias/v*
_output_shapes	
:¾*
dtype0
£
%Adam/batch_normalization_1299/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*6
shared_name'%Adam/batch_normalization_1299/gamma/v

9Adam/batch_normalization_1299/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/batch_normalization_1299/gamma/v*
_output_shapes	
:¾*
dtype0
¡
$Adam/batch_normalization_1299/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¾*5
shared_name&$Adam/batch_normalization_1299/beta/v

8Adam/batch_normalization_1299/beta/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_1299/beta/v*
_output_shapes	
:¾*
dtype0

Adam/dense_2599/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¾*)
shared_nameAdam/dense_2599/kernel/v

,Adam/dense_2599/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2599/kernel/v*
_output_shapes
:	¾*
dtype0

Adam/dense_2599/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2599/bias/v
}
*Adam/dense_2599/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2599/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÌJ
valueÂJB¿J B¸J
É
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures

_init_input_shape
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
b
 
embeddings
!trainable_variables
"	variables
#regularization_losses
$	keras_api
b
%
embeddings
&trainable_variables
'	variables
(regularization_losses
)	keras_api
R
*trainable_variables
+	variables
,regularization_losses
-	keras_api
R
.trainable_variables
/	variables
0regularization_losses
1	keras_api
R
2trainable_variables
3	variables
4regularization_losses
5	keras_api
R
6trainable_variables
7	variables
8regularization_losses
9	keras_api
R
:trainable_variables
;	variables
<regularization_losses
=	keras_api
h

>kernel
?bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api

Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
R
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
R
Qtrainable_variables
R	variables
Sregularization_losses
T	keras_api
h

Ukernel
Vbias
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
R
[trainable_variables
\	variables
]regularization_losses
^	keras_api
à
_iter

`beta_1

abeta_2
	bdecay
clearning_rate m¹%mº>m»?m¼Em½Fm¾Um¿VmÀ vÁ%vÂ>vÃ?vÄEvÅFvÆUvÇVvÈ
8
 0
%1
>2
?3
E4
F5
U6
V7
F
 0
%1
>2
?3
E4
F5
G6
H7
U8
V9
 
­
dnon_trainable_variables
trainable_variables
elayer_regularization_losses
	variables

flayers
glayer_metrics
regularization_losses
hmetrics
 
 
 
 
 
­
inon_trainable_variables
trainable_variables
jlayer_regularization_losses
	variables

klayers
llayer_metrics
regularization_losses
mmetrics
 
 
 
­
nnon_trainable_variables
trainable_variables
olayer_regularization_losses
	variables

players
qlayer_metrics
regularization_losses
rmetrics
ig
VARIABLE_VALUEembedding_2600/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

 0

 0
 
­
snon_trainable_variables
!trainable_variables
tlayer_regularization_losses
"	variables

ulayers
vlayer_metrics
#regularization_losses
wmetrics
ig
VARIABLE_VALUEembedding_2601/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

%0

%0
 
­
xnon_trainable_variables
&trainable_variables
ylayer_regularization_losses
'	variables

zlayers
{layer_metrics
(regularization_losses
|metrics
 
 
 
¯
}non_trainable_variables
*trainable_variables
~layer_regularization_losses
+	variables

layers
layer_metrics
,regularization_losses
metrics
 
 
 
²
non_trainable_variables
.trainable_variables
 layer_regularization_losses
/	variables
layers
layer_metrics
0regularization_losses
metrics
 
 
 
²
non_trainable_variables
2trainable_variables
 layer_regularization_losses
3	variables
layers
layer_metrics
4regularization_losses
metrics
 
 
 
²
non_trainable_variables
6trainable_variables
 layer_regularization_losses
7	variables
layers
layer_metrics
8regularization_losses
metrics
 
 
 
²
non_trainable_variables
:trainable_variables
 layer_regularization_losses
;	variables
layers
layer_metrics
<regularization_losses
metrics
][
VARIABLE_VALUEdense_2598/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_2598/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1

>0
?1
 
²
non_trainable_variables
@trainable_variables
 layer_regularization_losses
A	variables
layers
layer_metrics
Bregularization_losses
metrics
 
ig
VARIABLE_VALUEbatch_normalization_1299/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_1299/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$batch_normalization_1299/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(batch_normalization_1299/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

E0
F1
G2
H3
 
²
non_trainable_variables
Itrainable_variables
 layer_regularization_losses
J	variables
layers
layer_metrics
Kregularization_losses
metrics
 
 
 
²
 non_trainable_variables
Mtrainable_variables
 ¡layer_regularization_losses
N	variables
¢layers
£layer_metrics
Oregularization_losses
¤metrics
 
 
 
²
¥non_trainable_variables
Qtrainable_variables
 ¦layer_regularization_losses
R	variables
§layers
¨layer_metrics
Sregularization_losses
©metrics
][
VARIABLE_VALUEdense_2599/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_2599/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
²
ªnon_trainable_variables
Wtrainable_variables
 «layer_regularization_losses
X	variables
¬layers
­layer_metrics
Yregularization_losses
®metrics
 
 
 
²
¯non_trainable_variables
[trainable_variables
 °layer_regularization_losses
\	variables
±layers
²layer_metrics
]regularization_losses
³metrics
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

G0
H1
 
v
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
 

´0
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
 
 
 
 
 

G0
H1
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

µtotal

¶count
·	variables
¸	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

µ0
¶1

·	variables

VARIABLE_VALUE Adam/embedding_2600/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/embedding_2601/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/dense_2598/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2598/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE%Adam/batch_normalization_1299/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adam/batch_normalization_1299/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/dense_2599/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2599/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/embedding_2600/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/embedding_2601/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/dense_2598/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2598/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE%Adam/batch_normalization_1299/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adam/batch_normalization_1299/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/dense_2599/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2599/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
serving_default_input_1298Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ\
Ø
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1298embedding_2601/embeddingsembedding_2600/embeddingsdense_2598/kerneldense_2598/bias(batch_normalization_1299/moving_variancebatch_normalization_1299/gamma$batch_normalization_1299/moving_meanbatch_normalization_1299/betadense_2599/kerneldense_2599/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_25264087
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-embedding_2600/embeddings/Read/ReadVariableOp-embedding_2601/embeddings/Read/ReadVariableOp%dense_2598/kernel/Read/ReadVariableOp#dense_2598/bias/Read/ReadVariableOp2batch_normalization_1299/gamma/Read/ReadVariableOp1batch_normalization_1299/beta/Read/ReadVariableOp8batch_normalization_1299/moving_mean/Read/ReadVariableOp<batch_normalization_1299/moving_variance/Read/ReadVariableOp%dense_2599/kernel/Read/ReadVariableOp#dense_2599/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4Adam/embedding_2600/embeddings/m/Read/ReadVariableOp4Adam/embedding_2601/embeddings/m/Read/ReadVariableOp,Adam/dense_2598/kernel/m/Read/ReadVariableOp*Adam/dense_2598/bias/m/Read/ReadVariableOp9Adam/batch_normalization_1299/gamma/m/Read/ReadVariableOp8Adam/batch_normalization_1299/beta/m/Read/ReadVariableOp,Adam/dense_2599/kernel/m/Read/ReadVariableOp*Adam/dense_2599/bias/m/Read/ReadVariableOp4Adam/embedding_2600/embeddings/v/Read/ReadVariableOp4Adam/embedding_2601/embeddings/v/Read/ReadVariableOp,Adam/dense_2598/kernel/v/Read/ReadVariableOp*Adam/dense_2598/bias/v/Read/ReadVariableOp9Adam/batch_normalization_1299/gamma/v/Read/ReadVariableOp8Adam/batch_normalization_1299/beta/v/Read/ReadVariableOp,Adam/dense_2599/kernel/v/Read/ReadVariableOp*Adam/dense_2599/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8 **
f%R#
!__inference__traced_save_25264833
	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_2600/embeddingsembedding_2601/embeddingsdense_2598/kerneldense_2598/biasbatch_normalization_1299/gammabatch_normalization_1299/beta$batch_normalization_1299/moving_mean(batch_normalization_1299/moving_variancedense_2599/kerneldense_2599/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount Adam/embedding_2600/embeddings/m Adam/embedding_2601/embeddings/mAdam/dense_2598/kernel/mAdam/dense_2598/bias/m%Adam/batch_normalization_1299/gamma/m$Adam/batch_normalization_1299/beta/mAdam/dense_2599/kernel/mAdam/dense_2599/bias/m Adam/embedding_2600/embeddings/v Adam/embedding_2601/embeddings/vAdam/dense_2598/kernel/vAdam/dense_2598/bias/v%Adam/batch_normalization_1299/gamma/v$Adam/batch_normalization_1299/beta/vAdam/dense_2599/kernel/vAdam/dense_2599/bias/v*-
Tin&
$2"*
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
GPU 2J 8 *-
f(R&
$__inference__traced_restore_25264942


e
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25264466

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2õ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*

begin_mask*
end_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
û
h
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25263593

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
é
i
M__inference_activation_2598_layer_call_and_return_conditional_losses_25263586

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
Æ
J
.__inference_lambda_3892_layer_call_fn_25264368

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3892_layer_call_and_return_conditional_losses_252638112
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs

ì

#__inference__wrapped_model_25263277

input_1298F
3model_1300_embedding_2601_embedding_lookup_25263226:	ú=F
3model_1300_embedding_2600_embedding_lookup_25263232:	úIdH
4model_1300_dense_2598_matmul_readvariableop_resource:
Ã¾D
5model_1300_dense_2598_biasadd_readvariableop_resource:	¾T
Emodel_1300_batch_normalization_1299_batchnorm_readvariableop_resource:	¾X
Imodel_1300_batch_normalization_1299_batchnorm_mul_readvariableop_resource:	¾V
Gmodel_1300_batch_normalization_1299_batchnorm_readvariableop_1_resource:	¾V
Gmodel_1300_batch_normalization_1299_batchnorm_readvariableop_2_resource:	¾G
4model_1300_dense_2599_matmul_readvariableop_resource:	¾C
5model_1300_dense_2599_biasadd_readvariableop_resource:
identity¢<model_1300/batch_normalization_1299/batchnorm/ReadVariableOp¢>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_1¢>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_2¢@model_1300/batch_normalization_1299/batchnorm/mul/ReadVariableOp¢,model_1300/dense_2598/BiasAdd/ReadVariableOp¢+model_1300/dense_2598/MatMul/ReadVariableOp¢,model_1300/dense_2599/BiasAdd/ReadVariableOp¢+model_1300/dense_2599/MatMul/ReadVariableOp¢*model_1300/embedding_2600/embedding_lookup¢*model_1300/embedding_2601/embedding_lookup©
*model_1300/lambda_3892/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*model_1300/lambda_3892/strided_slice/stack­
,model_1300/lambda_3892/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_1300/lambda_3892/strided_slice/stack_1­
,model_1300/lambda_3892/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_1300/lambda_3892/strided_slice/stack_2
$model_1300/lambda_3892/strided_sliceStridedSlice
input_12983model_1300/lambda_3892/strided_slice/stack:output:05model_1300/lambda_3892/strided_slice/stack_1:output:05model_1300/lambda_3892/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_1300/lambda_3892/strided_slice
%model_1300/lambda_3892/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%model_1300/lambda_3892/ExpandDims/dimå
!model_1300/lambda_3892/ExpandDims
ExpandDims-model_1300/lambda_3892/strided_slice:output:0.model_1300/lambda_3892/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!model_1300/lambda_3892/ExpandDims©
*model_1300/lambda_3891/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_1300/lambda_3891/strided_slice/stack­
,model_1300/lambda_3891/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_1300/lambda_3891/strided_slice/stack_1­
,model_1300/lambda_3891/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_1300/lambda_3891/strided_slice/stack_2
$model_1300/lambda_3891/strided_sliceStridedSlice
input_12983model_1300/lambda_3891/strided_slice/stack:output:05model_1300/lambda_3891/strided_slice/stack_1:output:05model_1300/lambda_3891/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_1300/lambda_3891/strided_slice
%model_1300/lambda_3891/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%model_1300/lambda_3891/ExpandDims/dimå
!model_1300/lambda_3891/ExpandDims
ExpandDims-model_1300/lambda_3891/strided_slice:output:0.model_1300/lambda_3891/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!model_1300/lambda_3891/ExpandDims©
*model_1300/lambda_3893/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*model_1300/lambda_3893/strided_slice/stack­
,model_1300/lambda_3893/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,model_1300/lambda_3893/strided_slice/stack_1­
,model_1300/lambda_3893/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_1300/lambda_3893/strided_slice/stack_2ì
$model_1300/lambda_3893/strided_sliceStridedSlice
input_12983model_1300/lambda_3893/strided_slice/stack:output:05model_1300/lambda_3893/strided_slice/stack_1:output:05model_1300/lambda_3893/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*

begin_mask*
end_mask2&
$model_1300/lambda_3893/strided_slice
%model_1300/lambda_3893/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%model_1300/lambda_3893/ExpandDims/dimé
!model_1300/lambda_3893/ExpandDims
ExpandDims-model_1300/lambda_3893/strided_slice:output:0.model_1300/lambda_3893/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2#
!model_1300/lambda_3893/ExpandDimsµ
model_1300/embedding_2601/CastCast*model_1300/lambda_3892/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model_1300/embedding_2601/Cast
*model_1300/embedding_2601/embedding_lookupResourceGather3model_1300_embedding_2601_embedding_lookup_25263226"model_1300/embedding_2601/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*F
_class<
:8loc:@model_1300/embedding_2601/embedding_lookup/25263226*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02,
*model_1300/embedding_2601/embedding_lookup×
3model_1300/embedding_2601/embedding_lookup/IdentityIdentity3model_1300/embedding_2601/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*F
_class<
:8loc:@model_1300/embedding_2601/embedding_lookup/25263226*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3model_1300/embedding_2601/embedding_lookup/Identityî
5model_1300/embedding_2601/embedding_lookup/Identity_1Identity<model_1300/embedding_2601/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5model_1300/embedding_2601/embedding_lookup/Identity_1µ
model_1300/embedding_2600/CastCast*model_1300/lambda_3891/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model_1300/embedding_2600/Cast
*model_1300/embedding_2600/embedding_lookupResourceGather3model_1300_embedding_2600_embedding_lookup_25263232"model_1300/embedding_2600/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*F
_class<
:8loc:@model_1300/embedding_2600/embedding_lookup/25263232*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02,
*model_1300/embedding_2600/embedding_lookup×
3model_1300/embedding_2600/embedding_lookup/IdentityIdentity3model_1300/embedding_2600/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*F
_class<
:8loc:@model_1300/embedding_2600/embedding_lookup/25263232*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd25
3model_1300/embedding_2600/embedding_lookup/Identityî
5model_1300/embedding_2600/embedding_lookup/Identity_1Identity<model_1300/embedding_2600/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd27
5model_1300/embedding_2600/embedding_lookup/Identity_1
model_1300/flatten_3898/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
model_1300/flatten_3898/Constç
model_1300/flatten_3898/ReshapeReshape>model_1300/embedding_2600/embedding_lookup/Identity_1:output:0&model_1300/flatten_3898/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
model_1300/flatten_3898/Reshape
model_1300/flatten_3899/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
model_1300/flatten_3899/Constç
model_1300/flatten_3899/ReshapeReshape>model_1300/embedding_2601/embedding_lookup/Identity_1:output:0&model_1300/flatten_3899/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
model_1300/flatten_3899/Reshape
model_1300/flatten_3900/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2
model_1300/flatten_3900/ConstÓ
model_1300/flatten_3900/ReshapeReshape*model_1300/lambda_3893/ExpandDims:output:0&model_1300/flatten_3900/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2!
model_1300/flatten_3900/Reshape
'model_1300/concatenate_1299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2)
'model_1300/concatenate_1299/concat/axisÀ
"model_1300/concatenate_1299/concatConcatV2(model_1300/flatten_3898/Reshape:output:0(model_1300/flatten_3899/Reshape:output:0(model_1300/flatten_3900/Reshape:output:00model_1300/concatenate_1299/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2$
"model_1300/concatenate_1299/concatÑ
+model_1300/dense_2598/MatMul/ReadVariableOpReadVariableOp4model_1300_dense_2598_matmul_readvariableop_resource* 
_output_shapes
:
Ã¾*
dtype02-
+model_1300/dense_2598/MatMul/ReadVariableOpÛ
model_1300/dense_2598/MatMulMatMul+model_1300/concatenate_1299/concat:output:03model_1300/dense_2598/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
model_1300/dense_2598/MatMulÏ
,model_1300/dense_2598/BiasAdd/ReadVariableOpReadVariableOp5model_1300_dense_2598_biasadd_readvariableop_resource*
_output_shapes	
:¾*
dtype02.
,model_1300/dense_2598/BiasAdd/ReadVariableOpÚ
model_1300/dense_2598/BiasAddBiasAdd&model_1300/dense_2598/MatMul:product:04model_1300/dense_2598/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
model_1300/dense_2598/BiasAddÿ
<model_1300/batch_normalization_1299/batchnorm/ReadVariableOpReadVariableOpEmodel_1300_batch_normalization_1299_batchnorm_readvariableop_resource*
_output_shapes	
:¾*
dtype02>
<model_1300/batch_normalization_1299/batchnorm/ReadVariableOp¯
3model_1300/batch_normalization_1299/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:25
3model_1300/batch_normalization_1299/batchnorm/add/y
1model_1300/batch_normalization_1299/batchnorm/addAddV2Dmodel_1300/batch_normalization_1299/batchnorm/ReadVariableOp:value:0<model_1300/batch_normalization_1299/batchnorm/add/y:output:0*
T0*
_output_shapes	
:¾23
1model_1300/batch_normalization_1299/batchnorm/addÐ
3model_1300/batch_normalization_1299/batchnorm/RsqrtRsqrt5model_1300/batch_normalization_1299/batchnorm/add:z:0*
T0*
_output_shapes	
:¾25
3model_1300/batch_normalization_1299/batchnorm/Rsqrt
@model_1300/batch_normalization_1299/batchnorm/mul/ReadVariableOpReadVariableOpImodel_1300_batch_normalization_1299_batchnorm_mul_readvariableop_resource*
_output_shapes	
:¾*
dtype02B
@model_1300/batch_normalization_1299/batchnorm/mul/ReadVariableOp
1model_1300/batch_normalization_1299/batchnorm/mulMul7model_1300/batch_normalization_1299/batchnorm/Rsqrt:y:0Hmodel_1300/batch_normalization_1299/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¾23
1model_1300/batch_normalization_1299/batchnorm/mul
3model_1300/batch_normalization_1299/batchnorm/mul_1Mul&model_1300/dense_2598/BiasAdd:output:05model_1300/batch_normalization_1299/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾25
3model_1300/batch_normalization_1299/batchnorm/mul_1
>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_1ReadVariableOpGmodel_1300_batch_normalization_1299_batchnorm_readvariableop_1_resource*
_output_shapes	
:¾*
dtype02@
>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_1
3model_1300/batch_normalization_1299/batchnorm/mul_2MulFmodel_1300/batch_normalization_1299/batchnorm/ReadVariableOp_1:value:05model_1300/batch_normalization_1299/batchnorm/mul:z:0*
T0*
_output_shapes	
:¾25
3model_1300/batch_normalization_1299/batchnorm/mul_2
>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_2ReadVariableOpGmodel_1300_batch_normalization_1299_batchnorm_readvariableop_2_resource*
_output_shapes	
:¾*
dtype02@
>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_2
1model_1300/batch_normalization_1299/batchnorm/subSubFmodel_1300/batch_normalization_1299/batchnorm/ReadVariableOp_2:value:07model_1300/batch_normalization_1299/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¾23
1model_1300/batch_normalization_1299/batchnorm/sub
3model_1300/batch_normalization_1299/batchnorm/add_1AddV27model_1300/batch_normalization_1299/batchnorm/mul_1:z:05model_1300/batch_normalization_1299/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾25
3model_1300/batch_normalization_1299/batchnorm/add_1¶
model_1300/activation_2598/ReluRelu7model_1300/batch_normalization_1299/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2!
model_1300/activation_2598/Relu²
 model_1300/dropout_1299/IdentityIdentity-model_1300/activation_2598/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2"
 model_1300/dropout_1299/IdentityÐ
+model_1300/dense_2599/MatMul/ReadVariableOpReadVariableOp4model_1300_dense_2599_matmul_readvariableop_resource*
_output_shapes
:	¾*
dtype02-
+model_1300/dense_2599/MatMul/ReadVariableOpØ
model_1300/dense_2599/MatMulMatMul)model_1300/dropout_1299/Identity:output:03model_1300/dense_2599/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1300/dense_2599/MatMulÎ
,model_1300/dense_2599/BiasAdd/ReadVariableOpReadVariableOp5model_1300_dense_2599_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model_1300/dense_2599/BiasAdd/ReadVariableOpÙ
model_1300/dense_2599/BiasAddBiasAdd&model_1300/dense_2599/MatMul:product:04model_1300/dense_2599/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1300/dense_2599/BiasAdd¤
model_1300/activation_2599/ReluRelu&model_1300/dense_2599/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
model_1300/activation_2599/Relu
IdentityIdentity-model_1300/activation_2599/Relu:activations:0=^model_1300/batch_normalization_1299/batchnorm/ReadVariableOp?^model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_1?^model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_2A^model_1300/batch_normalization_1299/batchnorm/mul/ReadVariableOp-^model_1300/dense_2598/BiasAdd/ReadVariableOp,^model_1300/dense_2598/MatMul/ReadVariableOp-^model_1300/dense_2599/BiasAdd/ReadVariableOp,^model_1300/dense_2599/MatMul/ReadVariableOp+^model_1300/embedding_2600/embedding_lookup+^model_1300/embedding_2601/embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 2|
<model_1300/batch_normalization_1299/batchnorm/ReadVariableOp<model_1300/batch_normalization_1299/batchnorm/ReadVariableOp2
>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_1>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_12
>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_2>model_1300/batch_normalization_1299/batchnorm/ReadVariableOp_22
@model_1300/batch_normalization_1299/batchnorm/mul/ReadVariableOp@model_1300/batch_normalization_1299/batchnorm/mul/ReadVariableOp2\
,model_1300/dense_2598/BiasAdd/ReadVariableOp,model_1300/dense_2598/BiasAdd/ReadVariableOp2Z
+model_1300/dense_2598/MatMul/ReadVariableOp+model_1300/dense_2598/MatMul/ReadVariableOp2\
,model_1300/dense_2599/BiasAdd/ReadVariableOp,model_1300/dense_2599/BiasAdd/ReadVariableOp2Z
+model_1300/dense_2599/MatMul/ReadVariableOp+model_1300/dense_2599/MatMul/ReadVariableOp2X
*model_1300/embedding_2600/embedding_lookup*model_1300/embedding_2600/embedding_lookup2X
*model_1300/embedding_2601/embedding_lookup*model_1300/embedding_2601/embedding_lookup:S O
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
$
_user_specified_name
input_1298


e
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25263811

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
ß	
ü
H__inference_dense_2598_layer_call_and_return_conditional_losses_25263566

inputs2
matmul_readvariableop_resource:
Ã¾.
biasadd_readvariableop_resource:	¾
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ã¾*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¾*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÃ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
 
_user_specified_nameinputs


ü
-__inference_model_1300_layer_call_fn_25263654

input_1298
unknown:	ú=
	unknown_0:	úId
	unknown_1:
Ã¾
	unknown_2:	¾
	unknown_3:	¾
	unknown_4:	¾
	unknown_5:	¾
	unknown_6:	¾
	unknown_7:	¾
	unknown_8:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCall
input_1298unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_model_1300_layer_call_and_return_conditional_losses_252636312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
$
_user_specified_name
input_1298


e
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25264378

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
å
i
M__inference_activation_2599_layer_call_and_return_conditional_losses_25263616

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
J
.__inference_lambda_3893_layer_call_fn_25264456

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3893_layer_call_and_return_conditional_losses_252637692
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
ª

-__inference_dense_2598_layer_call_fn_25264533

inputs
unknown:
Ã¾
	unknown_0:	¾
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2598_layer_call_and_return_conditional_losses_252635662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÃ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
 
_user_specified_nameinputs
Ò
N
2__inference_activation_2598_layer_call_fn_25264628

inputs
identityÌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2598_layer_call_and_return_conditional_losses_252635862
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs


e
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25263769

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2õ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*

begin_mask*
end_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs


1__inference_embedding_2600_layer_call_fn_25264401

inputs
unknown:	úId
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2600_layer_call_and_return_conditional_losses_252635182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø	
ú
H__inference_dense_2599_layer_call_and_return_conditional_losses_25263605

inputs1
matmul_readvariableop_resource:	¾-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¾*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
Î
J
.__inference_lambda_3893_layer_call_fn_25264451

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3893_layer_call_and_return_conditional_losses_252634802
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
â
f
J__inference_flatten_3900_layer_call_and_return_conditional_losses_25264509

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿZ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs


e
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25264348

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
Ð
K
/__inference_flatten_3898_layer_call_fn_25264481

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3898_layer_call_and_return_conditional_losses_252635282
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
*
ó
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25264623

inputs6
'assignmovingavg_readvariableop_resource:	¾8
)assignmovingavg_1_readvariableop_resource:	¾4
%batchnorm_mul_readvariableop_resource:	¾0
!batchnorm_readvariableop_resource:	¾
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	¾*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	¾2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	¾*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:¾*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:¾*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:¾*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:¾*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¾2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¾2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¾2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¾2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¾2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs

Ú
;__inference_batch_normalization_1299_layer_call_fn_25264556

inputs
unknown:	¾
	unknown_0:	¾
	unknown_1:	¾
	unknown_2:	¾
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_252633012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
Ð
K
/__inference_flatten_3899_layer_call_fn_25264492

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3899_layer_call_and_return_conditional_losses_252635362
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


e
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25263480

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2õ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*

begin_mask*
end_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs


ü
-__inference_model_1300_layer_call_fn_25263940

input_1298
unknown:	ú=
	unknown_0:	úId
	unknown_1:
Ã¾
	unknown_2:	¾
	unknown_3:	¾
	unknown_4:	¾
	unknown_5:	¾
	unknown_6:	¾
	unknown_7:	¾
	unknown_8:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCall
input_1298unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_model_1300_layer_call_and_return_conditional_losses_252638922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
$
_user_specified_name
input_1298
î

N__inference_concatenate_1299_layer_call_and_return_conditional_losses_25264524
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿZ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
"
_user_specified_name
inputs/2
ß	
ü
H__inference_dense_2598_layer_call_and_return_conditional_losses_25264543

inputs2
matmul_readvariableop_resource:
Ã¾.
biasadd_readvariableop_resource:	¾
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ã¾*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¾*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÃ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
 
_user_specified_nameinputs
ï
ê
L__inference_embedding_2601_layer_call_and_return_conditional_losses_25263498

inputs,
embedding_lookup_25263486:	ú=
identity¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_25263486Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/25263486*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupï
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/25263486*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1Õ
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_25263486*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mulÍ
IdentityIdentity$embedding_lookup/Identity_1:output:0<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù	
õ
&__inference_signature_wrapper_25264087

input_1298
unknown:	ú=
	unknown_0:	úId
	unknown_1:
Ã¾
	unknown_2:	¾
	unknown_3:	¾
	unknown_4:	¾
	unknown_5:	¾
	unknown_6:	¾
	unknown_7:	¾
	unknown_8:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCall
input_1298unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_252632772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
$
_user_specified_name
input_1298
ù	
ø
-__inference_model_1300_layer_call_fn_25264112

inputs
unknown:	ú=
	unknown_0:	úId
	unknown_1:
Ã¾
	unknown_2:	¾
	unknown_3:	¾
	unknown_4:	¾
	unknown_5:	¾
	unknown_6:	¾
	unknown_7:	¾
	unknown_8:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_model_1300_layer_call_and_return_conditional_losses_252636312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
Æ
J
.__inference_lambda_3891_layer_call_fn_25264333

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3891_layer_call_and_return_conditional_losses_252634682
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs


e
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25263456

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
Ø	
ú
H__inference_dense_2599_layer_call_and_return_conditional_losses_25264679

inputs1
matmul_readvariableop_resource:	¾-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¾*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs


e
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25264476

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2õ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*

begin_mask*
end_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
´V
î
H__inference_model_1300_layer_call_and_return_conditional_losses_25263991

input_1298*
embedding_2601_25263946:	ú=*
embedding_2600_25263949:	úId'
dense_2598_25263956:
Ã¾"
dense_2598_25263958:	¾0
!batch_normalization_1299_25263961:	¾0
!batch_normalization_1299_25263963:	¾0
!batch_normalization_1299_25263965:	¾0
!batch_normalization_1299_25263967:	¾&
dense_2599_25263972:	¾!
dense_2599_25263974:
identity¢0batch_normalization_1299/StatefulPartitionedCall¢"dense_2598/StatefulPartitionedCall¢"dense_2599/StatefulPartitionedCall¢&embedding_2600/StatefulPartitionedCall¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢&embedding_2601/StatefulPartitionedCall¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpã
lambda_3892/PartitionedCallPartitionedCall
input_1298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3892_layer_call_and_return_conditional_losses_252634562
lambda_3892/PartitionedCallã
lambda_3891/PartitionedCallPartitionedCall
input_1298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3891_layer_call_and_return_conditional_losses_252634682
lambda_3891/PartitionedCallç
lambda_3893/PartitionedCallPartitionedCall
input_1298*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3893_layer_call_and_return_conditional_losses_252634802
lambda_3893/PartitionedCall¿
&embedding_2601/StatefulPartitionedCallStatefulPartitionedCall$lambda_3892/PartitionedCall:output:0embedding_2601_25263946*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2601_layer_call_and_return_conditional_losses_252634982(
&embedding_2601/StatefulPartitionedCall¿
&embedding_2600/StatefulPartitionedCallStatefulPartitionedCall$lambda_3891/PartitionedCall:output:0embedding_2600_25263949*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2600_layer_call_and_return_conditional_losses_252635182(
&embedding_2600/StatefulPartitionedCall
flatten_3898/PartitionedCallPartitionedCall/embedding_2600/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3898_layer_call_and_return_conditional_losses_252635282
flatten_3898/PartitionedCall
flatten_3899/PartitionedCallPartitionedCall/embedding_2601/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3899_layer_call_and_return_conditional_losses_252635362
flatten_3899/PartitionedCall
flatten_3900/PartitionedCallPartitionedCall$lambda_3893/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3900_layer_call_and_return_conditional_losses_252635442
flatten_3900/PartitionedCallÞ
 concatenate_1299/PartitionedCallPartitionedCall%flatten_3898/PartitionedCall:output:0%flatten_3899/PartitionedCall:output:0%flatten_3900/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_concatenate_1299_layer_call_and_return_conditional_losses_252635542"
 concatenate_1299/PartitionedCallÈ
"dense_2598/StatefulPartitionedCallStatefulPartitionedCall)concatenate_1299/PartitionedCall:output:0dense_2598_25263956dense_2598_25263958*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2598_layer_call_and_return_conditional_losses_252635662$
"dense_2598/StatefulPartitionedCallÚ
0batch_normalization_1299/StatefulPartitionedCallStatefulPartitionedCall+dense_2598/StatefulPartitionedCall:output:0!batch_normalization_1299_25263961!batch_normalization_1299_25263963!batch_normalization_1299_25263965!batch_normalization_1299_25263967*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_2526330122
0batch_normalization_1299/StatefulPartitionedCall
activation_2598/PartitionedCallPartitionedCall9batch_normalization_1299/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2598_layer_call_and_return_conditional_losses_252635862!
activation_2598/PartitionedCall
dropout_1299/PartitionedCallPartitionedCall(activation_2598/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_dropout_1299_layer_call_and_return_conditional_losses_252635932
dropout_1299/PartitionedCallÃ
"dense_2599/StatefulPartitionedCallStatefulPartitionedCall%dropout_1299/PartitionedCall:output:0dense_2599_25263972dense_2599_25263974*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2599_layer_call_and_return_conditional_losses_252636052$
"dense_2599/StatefulPartitionedCall
activation_2599/PartitionedCallPartitionedCall+dense_2599/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2599_layer_call_and_return_conditional_losses_252636162!
activation_2599/PartitionedCallÓ
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2600_25263949*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulÓ
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2601_25263946*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mulÇ
IdentityIdentity(activation_2599/PartitionedCall:output:01^batch_normalization_1299/StatefulPartitionedCall#^dense_2598/StatefulPartitionedCall#^dense_2599/StatefulPartitionedCall'^embedding_2600/StatefulPartitionedCall<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp'^embedding_2601/StatefulPartitionedCall<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 2d
0batch_normalization_1299/StatefulPartitionedCall0batch_normalization_1299/StatefulPartitionedCall2H
"dense_2598/StatefulPartitionedCall"dense_2598/StatefulPartitionedCall2H
"dense_2599/StatefulPartitionedCall"dense_2599/StatefulPartitionedCall2P
&embedding_2600/StatefulPartitionedCall&embedding_2600/StatefulPartitionedCall2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2P
&embedding_2601/StatefulPartitionedCall&embedding_2601/StatefulPartitionedCall2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp:S O
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
$
_user_specified_name
input_1298
µ
¹
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25264589

inputs0
!batchnorm_readvariableop_resource:	¾4
%batchnorm_mul_readvariableop_resource:	¾2
#batchnorm_readvariableop_1_resource:	¾2
#batchnorm_readvariableop_2_resource:	¾
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¾2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¾2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¾2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¾2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¾2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
ï
ê
L__inference_embedding_2600_layer_call_and_return_conditional_losses_25263518

inputs,
embedding_lookup_25263506:	úId
identity¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_25263506Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/25263506*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupï
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/25263506*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1Õ
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_25263506*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulÍ
IdentityIdentity$embedding_lookup/Identity_1:output:0<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
i
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25263690

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
â
f
J__inference_flatten_3899_layer_call_and_return_conditional_losses_25264498

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


e
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25263790

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
Ð
K
/__inference_flatten_3900_layer_call_fn_25264503

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3900_layer_call_and_return_conditional_losses_252635442
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿZ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs
¯

H__inference_model_1300_layer_call_and_return_conditional_losses_25264328

inputs;
(embedding_2601_embedding_lookup_25264244:	ú=;
(embedding_2600_embedding_lookup_25264250:	úId=
)dense_2598_matmul_readvariableop_resource:
Ã¾9
*dense_2598_biasadd_readvariableop_resource:	¾O
@batch_normalization_1299_assignmovingavg_readvariableop_resource:	¾Q
Bbatch_normalization_1299_assignmovingavg_1_readvariableop_resource:	¾M
>batch_normalization_1299_batchnorm_mul_readvariableop_resource:	¾I
:batch_normalization_1299_batchnorm_readvariableop_resource:	¾<
)dense_2599_matmul_readvariableop_resource:	¾8
*dense_2599_biasadd_readvariableop_resource:
identity¢(batch_normalization_1299/AssignMovingAvg¢7batch_normalization_1299/AssignMovingAvg/ReadVariableOp¢*batch_normalization_1299/AssignMovingAvg_1¢9batch_normalization_1299/AssignMovingAvg_1/ReadVariableOp¢1batch_normalization_1299/batchnorm/ReadVariableOp¢5batch_normalization_1299/batchnorm/mul/ReadVariableOp¢!dense_2598/BiasAdd/ReadVariableOp¢ dense_2598/MatMul/ReadVariableOp¢!dense_2599/BiasAdd/ReadVariableOp¢ dense_2599/MatMul/ReadVariableOp¢embedding_2600/embedding_lookup¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢embedding_2601/embedding_lookup¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp
lambda_3892/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_3892/strided_slice/stack
!lambda_3892/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_3892/strided_slice/stack_1
!lambda_3892/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_3892/strided_slice/stack_2Å
lambda_3892/strided_sliceStridedSliceinputs(lambda_3892/strided_slice/stack:output:0*lambda_3892/strided_slice/stack_1:output:0*lambda_3892/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_3892/strided_slice
lambda_3892/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_3892/ExpandDims/dim¹
lambda_3892/ExpandDims
ExpandDims"lambda_3892/strided_slice:output:0#lambda_3892/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_3892/ExpandDims
lambda_3891/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lambda_3891/strided_slice/stack
!lambda_3891/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_3891/strided_slice/stack_1
!lambda_3891/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_3891/strided_slice/stack_2Å
lambda_3891/strided_sliceStridedSliceinputs(lambda_3891/strided_slice/stack:output:0*lambda_3891/strided_slice/stack_1:output:0*lambda_3891/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_3891/strided_slice
lambda_3891/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_3891/ExpandDims/dim¹
lambda_3891/ExpandDims
ExpandDims"lambda_3891/strided_slice:output:0#lambda_3891/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_3891/ExpandDims
lambda_3893/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_3893/strided_slice/stack
!lambda_3893/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lambda_3893/strided_slice/stack_1
!lambda_3893/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_3893/strided_slice/stack_2±
lambda_3893/strided_sliceStridedSliceinputs(lambda_3893/strided_slice/stack:output:0*lambda_3893/strided_slice/stack_1:output:0*lambda_3893/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*

begin_mask*
end_mask2
lambda_3893/strided_slice
lambda_3893/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_3893/ExpandDims/dim½
lambda_3893/ExpandDims
ExpandDims"lambda_3893/strided_slice:output:0#lambda_3893/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2
lambda_3893/ExpandDims
embedding_2601/CastCastlambda_3892/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_2601/CastÌ
embedding_2601/embedding_lookupResourceGather(embedding_2601_embedding_lookup_25264244embedding_2601/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*;
_class1
/-loc:@embedding_2601/embedding_lookup/25264244*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02!
embedding_2601/embedding_lookup«
(embedding_2601/embedding_lookup/IdentityIdentity(embedding_2601/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*;
_class1
/-loc:@embedding_2601/embedding_lookup/25264244*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(embedding_2601/embedding_lookup/IdentityÍ
*embedding_2601/embedding_lookup/Identity_1Identity1embedding_2601/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*embedding_2601/embedding_lookup/Identity_1
embedding_2600/CastCastlambda_3891/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_2600/CastÌ
embedding_2600/embedding_lookupResourceGather(embedding_2600_embedding_lookup_25264250embedding_2600/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*;
_class1
/-loc:@embedding_2600/embedding_lookup/25264250*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02!
embedding_2600/embedding_lookup«
(embedding_2600/embedding_lookup/IdentityIdentity(embedding_2600/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*;
_class1
/-loc:@embedding_2600/embedding_lookup/25264250*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(embedding_2600/embedding_lookup/IdentityÍ
*embedding_2600/embedding_lookup/Identity_1Identity1embedding_2600/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*embedding_2600/embedding_lookup/Identity_1y
flatten_3898/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
flatten_3898/Const»
flatten_3898/ReshapeReshape3embedding_2600/embedding_lookup/Identity_1:output:0flatten_3898/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
flatten_3898/Reshapey
flatten_3899/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_3899/Const»
flatten_3899/ReshapeReshape3embedding_2601/embedding_lookup/Identity_1:output:0flatten_3899/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_3899/Reshapey
flatten_3900/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2
flatten_3900/Const§
flatten_3900/ReshapeReshapelambda_3893/ExpandDims:output:0flatten_3900/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2
flatten_3900/Reshape~
concatenate_1299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1299/concat/axisþ
concatenate_1299/concatConcatV2flatten_3898/Reshape:output:0flatten_3899/Reshape:output:0flatten_3900/Reshape:output:0%concatenate_1299/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2
concatenate_1299/concat°
 dense_2598/MatMul/ReadVariableOpReadVariableOp)dense_2598_matmul_readvariableop_resource* 
_output_shapes
:
Ã¾*
dtype02"
 dense_2598/MatMul/ReadVariableOp¯
dense_2598/MatMulMatMul concatenate_1299/concat:output:0(dense_2598/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dense_2598/MatMul®
!dense_2598/BiasAdd/ReadVariableOpReadVariableOp*dense_2598_biasadd_readvariableop_resource*
_output_shapes	
:¾*
dtype02#
!dense_2598/BiasAdd/ReadVariableOp®
dense_2598/BiasAddBiasAdddense_2598/MatMul:product:0)dense_2598/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dense_2598/BiasAdd¼
7batch_normalization_1299/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 29
7batch_normalization_1299/moments/mean/reduction_indicesð
%batch_normalization_1299/moments/meanMeandense_2598/BiasAdd:output:0@batch_normalization_1299/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	¾*
	keep_dims(2'
%batch_normalization_1299/moments/meanÈ
-batch_normalization_1299/moments/StopGradientStopGradient.batch_normalization_1299/moments/mean:output:0*
T0*
_output_shapes
:	¾2/
-batch_normalization_1299/moments/StopGradient
2batch_normalization_1299/moments/SquaredDifferenceSquaredDifferencedense_2598/BiasAdd:output:06batch_normalization_1299/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾24
2batch_normalization_1299/moments/SquaredDifferenceÄ
;batch_normalization_1299/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2=
;batch_normalization_1299/moments/variance/reduction_indices
)batch_normalization_1299/moments/varianceMean6batch_normalization_1299/moments/SquaredDifference:z:0Dbatch_normalization_1299/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	¾*
	keep_dims(2+
)batch_normalization_1299/moments/varianceÌ
(batch_normalization_1299/moments/SqueezeSqueeze.batch_normalization_1299/moments/mean:output:0*
T0*
_output_shapes	
:¾*
squeeze_dims
 2*
(batch_normalization_1299/moments/SqueezeÔ
*batch_normalization_1299/moments/Squeeze_1Squeeze2batch_normalization_1299/moments/variance:output:0*
T0*
_output_shapes	
:¾*
squeeze_dims
 2,
*batch_normalization_1299/moments/Squeeze_1¥
.batch_normalization_1299/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_1299/AssignMovingAvg/decayð
7batch_normalization_1299/AssignMovingAvg/ReadVariableOpReadVariableOp@batch_normalization_1299_assignmovingavg_readvariableop_resource*
_output_shapes	
:¾*
dtype029
7batch_normalization_1299/AssignMovingAvg/ReadVariableOpý
,batch_normalization_1299/AssignMovingAvg/subSub?batch_normalization_1299/AssignMovingAvg/ReadVariableOp:value:01batch_normalization_1299/moments/Squeeze:output:0*
T0*
_output_shapes	
:¾2.
,batch_normalization_1299/AssignMovingAvg/subô
,batch_normalization_1299/AssignMovingAvg/mulMul0batch_normalization_1299/AssignMovingAvg/sub:z:07batch_normalization_1299/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¾2.
,batch_normalization_1299/AssignMovingAvg/mul¼
(batch_normalization_1299/AssignMovingAvgAssignSubVariableOp@batch_normalization_1299_assignmovingavg_readvariableop_resource0batch_normalization_1299/AssignMovingAvg/mul:z:08^batch_normalization_1299/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_1299/AssignMovingAvg©
0batch_normalization_1299/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<22
0batch_normalization_1299/AssignMovingAvg_1/decayö
9batch_normalization_1299/AssignMovingAvg_1/ReadVariableOpReadVariableOpBbatch_normalization_1299_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:¾*
dtype02;
9batch_normalization_1299/AssignMovingAvg_1/ReadVariableOp
.batch_normalization_1299/AssignMovingAvg_1/subSubAbatch_normalization_1299/AssignMovingAvg_1/ReadVariableOp:value:03batch_normalization_1299/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:¾20
.batch_normalization_1299/AssignMovingAvg_1/subü
.batch_normalization_1299/AssignMovingAvg_1/mulMul2batch_normalization_1299/AssignMovingAvg_1/sub:z:09batch_normalization_1299/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:¾20
.batch_normalization_1299/AssignMovingAvg_1/mulÆ
*batch_normalization_1299/AssignMovingAvg_1AssignSubVariableOpBbatch_normalization_1299_assignmovingavg_1_readvariableop_resource2batch_normalization_1299/AssignMovingAvg_1/mul:z:0:^batch_normalization_1299/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02,
*batch_normalization_1299/AssignMovingAvg_1
(batch_normalization_1299/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2*
(batch_normalization_1299/batchnorm/add/yç
&batch_normalization_1299/batchnorm/addAddV23batch_normalization_1299/moments/Squeeze_1:output:01batch_normalization_1299/batchnorm/add/y:output:0*
T0*
_output_shapes	
:¾2(
&batch_normalization_1299/batchnorm/add¯
(batch_normalization_1299/batchnorm/RsqrtRsqrt*batch_normalization_1299/batchnorm/add:z:0*
T0*
_output_shapes	
:¾2*
(batch_normalization_1299/batchnorm/Rsqrtê
5batch_normalization_1299/batchnorm/mul/ReadVariableOpReadVariableOp>batch_normalization_1299_batchnorm_mul_readvariableop_resource*
_output_shapes	
:¾*
dtype027
5batch_normalization_1299/batchnorm/mul/ReadVariableOpê
&batch_normalization_1299/batchnorm/mulMul,batch_normalization_1299/batchnorm/Rsqrt:y:0=batch_normalization_1299/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¾2(
&batch_normalization_1299/batchnorm/mul×
(batch_normalization_1299/batchnorm/mul_1Muldense_2598/BiasAdd:output:0*batch_normalization_1299/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2*
(batch_normalization_1299/batchnorm/mul_1à
(batch_normalization_1299/batchnorm/mul_2Mul1batch_normalization_1299/moments/Squeeze:output:0*batch_normalization_1299/batchnorm/mul:z:0*
T0*
_output_shapes	
:¾2*
(batch_normalization_1299/batchnorm/mul_2Þ
1batch_normalization_1299/batchnorm/ReadVariableOpReadVariableOp:batch_normalization_1299_batchnorm_readvariableop_resource*
_output_shapes	
:¾*
dtype023
1batch_normalization_1299/batchnorm/ReadVariableOpæ
&batch_normalization_1299/batchnorm/subSub9batch_normalization_1299/batchnorm/ReadVariableOp:value:0,batch_normalization_1299/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¾2(
&batch_normalization_1299/batchnorm/subê
(batch_normalization_1299/batchnorm/add_1AddV2,batch_normalization_1299/batchnorm/mul_1:z:0*batch_normalization_1299/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2*
(batch_normalization_1299/batchnorm/add_1
activation_2598/ReluRelu,batch_normalization_1299/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
activation_2598/Relu}
dropout_1299/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1299/dropout/Const·
dropout_1299/dropout/MulMul"activation_2598/Relu:activations:0#dropout_1299/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout_1299/dropout/Mul
dropout_1299/dropout/ShapeShape"activation_2598/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1299/dropout/ShapeÜ
1dropout_1299/dropout/random_uniform/RandomUniformRandomUniform#dropout_1299/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*
dtype023
1dropout_1299/dropout/random_uniform/RandomUniform
#dropout_1299/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2%
#dropout_1299/dropout/GreaterEqual/yó
!dropout_1299/dropout/GreaterEqualGreaterEqual:dropout_1299/dropout/random_uniform/RandomUniform:output:0,dropout_1299/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2#
!dropout_1299/dropout/GreaterEqual§
dropout_1299/dropout/CastCast%dropout_1299/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout_1299/dropout/Cast¯
dropout_1299/dropout/Mul_1Muldropout_1299/dropout/Mul:z:0dropout_1299/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout_1299/dropout/Mul_1¯
 dense_2599/MatMul/ReadVariableOpReadVariableOp)dense_2599_matmul_readvariableop_resource*
_output_shapes
:	¾*
dtype02"
 dense_2599/MatMul/ReadVariableOp¬
dense_2599/MatMulMatMuldropout_1299/dropout/Mul_1:z:0(dense_2599/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2599/MatMul­
!dense_2599/BiasAdd/ReadVariableOpReadVariableOp*dense_2599_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_2599/BiasAdd/ReadVariableOp­
dense_2599/BiasAddBiasAdddense_2599/MatMul:product:0)dense_2599/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2599/BiasAdd
activation_2599/ReluReludense_2599/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_2599/Reluä
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_2600_embedding_lookup_25264250*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulä
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_2601_embedding_lookup_25264244*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mulþ
IdentityIdentity"activation_2599/Relu:activations:0)^batch_normalization_1299/AssignMovingAvg8^batch_normalization_1299/AssignMovingAvg/ReadVariableOp+^batch_normalization_1299/AssignMovingAvg_1:^batch_normalization_1299/AssignMovingAvg_1/ReadVariableOp2^batch_normalization_1299/batchnorm/ReadVariableOp6^batch_normalization_1299/batchnorm/mul/ReadVariableOp"^dense_2598/BiasAdd/ReadVariableOp!^dense_2598/MatMul/ReadVariableOp"^dense_2599/BiasAdd/ReadVariableOp!^dense_2599/MatMul/ReadVariableOp ^embedding_2600/embedding_lookup<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp ^embedding_2601/embedding_lookup<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 2T
(batch_normalization_1299/AssignMovingAvg(batch_normalization_1299/AssignMovingAvg2r
7batch_normalization_1299/AssignMovingAvg/ReadVariableOp7batch_normalization_1299/AssignMovingAvg/ReadVariableOp2X
*batch_normalization_1299/AssignMovingAvg_1*batch_normalization_1299/AssignMovingAvg_12v
9batch_normalization_1299/AssignMovingAvg_1/ReadVariableOp9batch_normalization_1299/AssignMovingAvg_1/ReadVariableOp2f
1batch_normalization_1299/batchnorm/ReadVariableOp1batch_normalization_1299/batchnorm/ReadVariableOp2n
5batch_normalization_1299/batchnorm/mul/ReadVariableOp5batch_normalization_1299/batchnorm/mul/ReadVariableOp2F
!dense_2598/BiasAdd/ReadVariableOp!dense_2598/BiasAdd/ReadVariableOp2D
 dense_2598/MatMul/ReadVariableOp dense_2598/MatMul/ReadVariableOp2F
!dense_2599/BiasAdd/ReadVariableOp!dense_2599/BiasAdd/ReadVariableOp2D
 dense_2599/MatMul/ReadVariableOp dense_2599/MatMul/ReadVariableOp2B
embedding_2600/embedding_lookupembedding_2600/embedding_lookup2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2B
embedding_2601/embedding_lookupembedding_2601/embedding_lookup2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
ä

N__inference_concatenate_1299_layer_call_and_return_conditional_losses_25263554

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿZ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs
Ì
K
/__inference_dropout_1299_layer_call_fn_25264638

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_dropout_1299_layer_call_and_return_conditional_losses_252635932
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
å
i
M__inference_activation_2599_layer_call_and_return_conditional_losses_25264689

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
ê
L__inference_embedding_2601_layer_call_and_return_conditional_losses_25264446

inputs,
embedding_lookup_25264434:	ú=
identity¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_25264434Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/25264434*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupï
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/25264434*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1Õ
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_25264434*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mulÍ
IdentityIdentity$embedding_lookup/Identity_1:output:0<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


e
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25263468

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
 V
ê
H__inference_model_1300_layer_call_and_return_conditional_losses_25263631

inputs*
embedding_2601_25263499:	ú=*
embedding_2600_25263519:	úId'
dense_2598_25263567:
Ã¾"
dense_2598_25263569:	¾0
!batch_normalization_1299_25263572:	¾0
!batch_normalization_1299_25263574:	¾0
!batch_normalization_1299_25263576:	¾0
!batch_normalization_1299_25263578:	¾&
dense_2599_25263606:	¾!
dense_2599_25263608:
identity¢0batch_normalization_1299/StatefulPartitionedCall¢"dense_2598/StatefulPartitionedCall¢"dense_2599/StatefulPartitionedCall¢&embedding_2600/StatefulPartitionedCall¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢&embedding_2601/StatefulPartitionedCall¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpß
lambda_3892/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3892_layer_call_and_return_conditional_losses_252634562
lambda_3892/PartitionedCallß
lambda_3891/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3891_layer_call_and_return_conditional_losses_252634682
lambda_3891/PartitionedCallã
lambda_3893/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3893_layer_call_and_return_conditional_losses_252634802
lambda_3893/PartitionedCall¿
&embedding_2601/StatefulPartitionedCallStatefulPartitionedCall$lambda_3892/PartitionedCall:output:0embedding_2601_25263499*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2601_layer_call_and_return_conditional_losses_252634982(
&embedding_2601/StatefulPartitionedCall¿
&embedding_2600/StatefulPartitionedCallStatefulPartitionedCall$lambda_3891/PartitionedCall:output:0embedding_2600_25263519*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2600_layer_call_and_return_conditional_losses_252635182(
&embedding_2600/StatefulPartitionedCall
flatten_3898/PartitionedCallPartitionedCall/embedding_2600/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3898_layer_call_and_return_conditional_losses_252635282
flatten_3898/PartitionedCall
flatten_3899/PartitionedCallPartitionedCall/embedding_2601/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3899_layer_call_and_return_conditional_losses_252635362
flatten_3899/PartitionedCall
flatten_3900/PartitionedCallPartitionedCall$lambda_3893/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3900_layer_call_and_return_conditional_losses_252635442
flatten_3900/PartitionedCallÞ
 concatenate_1299/PartitionedCallPartitionedCall%flatten_3898/PartitionedCall:output:0%flatten_3899/PartitionedCall:output:0%flatten_3900/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_concatenate_1299_layer_call_and_return_conditional_losses_252635542"
 concatenate_1299/PartitionedCallÈ
"dense_2598/StatefulPartitionedCallStatefulPartitionedCall)concatenate_1299/PartitionedCall:output:0dense_2598_25263567dense_2598_25263569*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2598_layer_call_and_return_conditional_losses_252635662$
"dense_2598/StatefulPartitionedCallÚ
0batch_normalization_1299/StatefulPartitionedCallStatefulPartitionedCall+dense_2598/StatefulPartitionedCall:output:0!batch_normalization_1299_25263572!batch_normalization_1299_25263574!batch_normalization_1299_25263576!batch_normalization_1299_25263578*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_2526330122
0batch_normalization_1299/StatefulPartitionedCall
activation_2598/PartitionedCallPartitionedCall9batch_normalization_1299/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2598_layer_call_and_return_conditional_losses_252635862!
activation_2598/PartitionedCall
dropout_1299/PartitionedCallPartitionedCall(activation_2598/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_dropout_1299_layer_call_and_return_conditional_losses_252635932
dropout_1299/PartitionedCallÃ
"dense_2599/StatefulPartitionedCallStatefulPartitionedCall%dropout_1299/PartitionedCall:output:0dense_2599_25263606dense_2599_25263608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2599_layer_call_and_return_conditional_losses_252636052$
"dense_2599/StatefulPartitionedCall
activation_2599/PartitionedCallPartitionedCall+dense_2599/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2599_layer_call_and_return_conditional_losses_252636162!
activation_2599/PartitionedCallÓ
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2600_25263519*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulÓ
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2601_25263499*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mulÇ
IdentityIdentity(activation_2599/PartitionedCall:output:01^batch_normalization_1299/StatefulPartitionedCall#^dense_2598/StatefulPartitionedCall#^dense_2599/StatefulPartitionedCall'^embedding_2600/StatefulPartitionedCall<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp'^embedding_2601/StatefulPartitionedCall<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 2d
0batch_normalization_1299/StatefulPartitionedCall0batch_normalization_1299/StatefulPartitionedCall2H
"dense_2598/StatefulPartitionedCall"dense_2598/StatefulPartitionedCall2H
"dense_2599/StatefulPartitionedCall"dense_2599/StatefulPartitionedCall2P
&embedding_2600/StatefulPartitionedCall&embedding_2600/StatefulPartitionedCall2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2P
&embedding_2601/StatefulPartitionedCall&embedding_2601/StatefulPartitionedCall2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
Î
N
2__inference_activation_2599_layer_call_fn_25264684

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2599_layer_call_and_return_conditional_losses_252636162
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
ó
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25263361

inputs6
'assignmovingavg_readvariableop_resource:	¾8
)assignmovingavg_1_readvariableop_resource:	¾4
%batchnorm_mul_readvariableop_resource:	¾0
!batchnorm_readvariableop_resource:	¾
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	¾*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	¾2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	¾*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:¾*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:¾*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:¾*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:¾*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:¾2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¾2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¾2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¾2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¾2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¾2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
ÚW

H__inference_model_1300_layer_call_and_return_conditional_losses_25263892

inputs*
embedding_2601_25263847:	ú=*
embedding_2600_25263850:	úId'
dense_2598_25263857:
Ã¾"
dense_2598_25263859:	¾0
!batch_normalization_1299_25263862:	¾0
!batch_normalization_1299_25263864:	¾0
!batch_normalization_1299_25263866:	¾0
!batch_normalization_1299_25263868:	¾&
dense_2599_25263873:	¾!
dense_2599_25263875:
identity¢0batch_normalization_1299/StatefulPartitionedCall¢"dense_2598/StatefulPartitionedCall¢"dense_2599/StatefulPartitionedCall¢$dropout_1299/StatefulPartitionedCall¢&embedding_2600/StatefulPartitionedCall¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢&embedding_2601/StatefulPartitionedCall¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpß
lambda_3892/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3892_layer_call_and_return_conditional_losses_252638112
lambda_3892/PartitionedCallß
lambda_3891/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3891_layer_call_and_return_conditional_losses_252637902
lambda_3891/PartitionedCallã
lambda_3893/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3893_layer_call_and_return_conditional_losses_252637692
lambda_3893/PartitionedCall¿
&embedding_2601/StatefulPartitionedCallStatefulPartitionedCall$lambda_3892/PartitionedCall:output:0embedding_2601_25263847*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2601_layer_call_and_return_conditional_losses_252634982(
&embedding_2601/StatefulPartitionedCall¿
&embedding_2600/StatefulPartitionedCallStatefulPartitionedCall$lambda_3891/PartitionedCall:output:0embedding_2600_25263850*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2600_layer_call_and_return_conditional_losses_252635182(
&embedding_2600/StatefulPartitionedCall
flatten_3898/PartitionedCallPartitionedCall/embedding_2600/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3898_layer_call_and_return_conditional_losses_252635282
flatten_3898/PartitionedCall
flatten_3899/PartitionedCallPartitionedCall/embedding_2601/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3899_layer_call_and_return_conditional_losses_252635362
flatten_3899/PartitionedCall
flatten_3900/PartitionedCallPartitionedCall$lambda_3893/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3900_layer_call_and_return_conditional_losses_252635442
flatten_3900/PartitionedCallÞ
 concatenate_1299/PartitionedCallPartitionedCall%flatten_3898/PartitionedCall:output:0%flatten_3899/PartitionedCall:output:0%flatten_3900/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_concatenate_1299_layer_call_and_return_conditional_losses_252635542"
 concatenate_1299/PartitionedCallÈ
"dense_2598/StatefulPartitionedCallStatefulPartitionedCall)concatenate_1299/PartitionedCall:output:0dense_2598_25263857dense_2598_25263859*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2598_layer_call_and_return_conditional_losses_252635662$
"dense_2598/StatefulPartitionedCallØ
0batch_normalization_1299/StatefulPartitionedCallStatefulPartitionedCall+dense_2598/StatefulPartitionedCall:output:0!batch_normalization_1299_25263862!batch_normalization_1299_25263864!batch_normalization_1299_25263866!batch_normalization_1299_25263868*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_2526336122
0batch_normalization_1299/StatefulPartitionedCall
activation_2598/PartitionedCallPartitionedCall9batch_normalization_1299/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2598_layer_call_and_return_conditional_losses_252635862!
activation_2598/PartitionedCall
$dropout_1299/StatefulPartitionedCallStatefulPartitionedCall(activation_2598/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_dropout_1299_layer_call_and_return_conditional_losses_252636902&
$dropout_1299/StatefulPartitionedCallË
"dense_2599/StatefulPartitionedCallStatefulPartitionedCall-dropout_1299/StatefulPartitionedCall:output:0dense_2599_25263873dense_2599_25263875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2599_layer_call_and_return_conditional_losses_252636052$
"dense_2599/StatefulPartitionedCall
activation_2599/PartitionedCallPartitionedCall+dense_2599/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2599_layer_call_and_return_conditional_losses_252636162!
activation_2599/PartitionedCallÓ
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2600_25263850*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulÓ
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2601_25263847*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mulî
IdentityIdentity(activation_2599/PartitionedCall:output:01^batch_normalization_1299/StatefulPartitionedCall#^dense_2598/StatefulPartitionedCall#^dense_2599/StatefulPartitionedCall%^dropout_1299/StatefulPartitionedCall'^embedding_2600/StatefulPartitionedCall<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp'^embedding_2601/StatefulPartitionedCall<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 2d
0batch_normalization_1299/StatefulPartitionedCall0batch_normalization_1299/StatefulPartitionedCall2H
"dense_2598/StatefulPartitionedCall"dense_2598/StatefulPartitionedCall2H
"dense_2599/StatefulPartitionedCall"dense_2599/StatefulPartitionedCall2L
$dropout_1299/StatefulPartitionedCall$dropout_1299/StatefulPartitionedCall2P
&embedding_2600/StatefulPartitionedCall&embedding_2600/StatefulPartitionedCall2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2P
&embedding_2601/StatefulPartitionedCall&embedding_2601/StatefulPartitionedCall2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
é
i
M__inference_activation_2598_layer_call_and_return_conditional_losses_25264633

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
â
f
J__inference_flatten_3898_layer_call_and_return_conditional_losses_25263528

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
û
h
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25264648

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
¹
i
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25264660

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs

Ú
;__inference_batch_normalization_1299_layer_call_fn_25264569

inputs
unknown:	¾
	unknown_0:	¾
	unknown_1:	¾
	unknown_2:	¾
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_252633612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
÷	
ø
-__inference_model_1300_layer_call_fn_25264137

inputs
unknown:	ú=
	unknown_0:	úId
	unknown_1:
Ã¾
	unknown_2:	¾
	unknown_3:	¾
	unknown_4:	¾
	unknown_5:	¾
	unknown_6:	¾
	unknown_7:	¾
	unknown_8:
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_model_1300_layer_call_and_return_conditional_losses_252638922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs


e
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25264358

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
Ö
m
3__inference_concatenate_1299_layer_call_fn_25264516
inputs_0
inputs_1
inputs_2
identityå
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_concatenate_1299_layer_call_and_return_conditional_losses_252635542
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿZ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
"
_user_specified_name
inputs/2
îW

H__inference_model_1300_layer_call_and_return_conditional_losses_25264042

input_1298*
embedding_2601_25263997:	ú=*
embedding_2600_25264000:	úId'
dense_2598_25264007:
Ã¾"
dense_2598_25264009:	¾0
!batch_normalization_1299_25264012:	¾0
!batch_normalization_1299_25264014:	¾0
!batch_normalization_1299_25264016:	¾0
!batch_normalization_1299_25264018:	¾&
dense_2599_25264023:	¾!
dense_2599_25264025:
identity¢0batch_normalization_1299/StatefulPartitionedCall¢"dense_2598/StatefulPartitionedCall¢"dense_2599/StatefulPartitionedCall¢$dropout_1299/StatefulPartitionedCall¢&embedding_2600/StatefulPartitionedCall¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢&embedding_2601/StatefulPartitionedCall¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpã
lambda_3892/PartitionedCallPartitionedCall
input_1298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3892_layer_call_and_return_conditional_losses_252638112
lambda_3892/PartitionedCallã
lambda_3891/PartitionedCallPartitionedCall
input_1298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3891_layer_call_and_return_conditional_losses_252637902
lambda_3891/PartitionedCallç
lambda_3893/PartitionedCallPartitionedCall
input_1298*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3893_layer_call_and_return_conditional_losses_252637692
lambda_3893/PartitionedCall¿
&embedding_2601/StatefulPartitionedCallStatefulPartitionedCall$lambda_3892/PartitionedCall:output:0embedding_2601_25263997*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2601_layer_call_and_return_conditional_losses_252634982(
&embedding_2601/StatefulPartitionedCall¿
&embedding_2600/StatefulPartitionedCallStatefulPartitionedCall$lambda_3891/PartitionedCall:output:0embedding_2600_25264000*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2600_layer_call_and_return_conditional_losses_252635182(
&embedding_2600/StatefulPartitionedCall
flatten_3898/PartitionedCallPartitionedCall/embedding_2600/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3898_layer_call_and_return_conditional_losses_252635282
flatten_3898/PartitionedCall
flatten_3899/PartitionedCallPartitionedCall/embedding_2601/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3899_layer_call_and_return_conditional_losses_252635362
flatten_3899/PartitionedCall
flatten_3900/PartitionedCallPartitionedCall$lambda_3893/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_flatten_3900_layer_call_and_return_conditional_losses_252635442
flatten_3900/PartitionedCallÞ
 concatenate_1299/PartitionedCallPartitionedCall%flatten_3898/PartitionedCall:output:0%flatten_3899/PartitionedCall:output:0%flatten_3900/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_concatenate_1299_layer_call_and_return_conditional_losses_252635542"
 concatenate_1299/PartitionedCallÈ
"dense_2598/StatefulPartitionedCallStatefulPartitionedCall)concatenate_1299/PartitionedCall:output:0dense_2598_25264007dense_2598_25264009*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2598_layer_call_and_return_conditional_losses_252635662$
"dense_2598/StatefulPartitionedCallØ
0batch_normalization_1299/StatefulPartitionedCallStatefulPartitionedCall+dense_2598/StatefulPartitionedCall:output:0!batch_normalization_1299_25264012!batch_normalization_1299_25264014!batch_normalization_1299_25264016!batch_normalization_1299_25264018*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_2526336122
0batch_normalization_1299/StatefulPartitionedCall
activation_2598/PartitionedCallPartitionedCall9batch_normalization_1299/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2598_layer_call_and_return_conditional_losses_252635862!
activation_2598/PartitionedCall
$dropout_1299/StatefulPartitionedCallStatefulPartitionedCall(activation_2598/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_dropout_1299_layer_call_and_return_conditional_losses_252636902&
$dropout_1299/StatefulPartitionedCallË
"dense_2599/StatefulPartitionedCallStatefulPartitionedCall-dropout_1299/StatefulPartitionedCall:output:0dense_2599_25264023dense_2599_25264025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2599_layer_call_and_return_conditional_losses_252636052$
"dense_2599/StatefulPartitionedCall
activation_2599/PartitionedCallPartitionedCall+dense_2599/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_activation_2599_layer_call_and_return_conditional_losses_252636162!
activation_2599/PartitionedCallÓ
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2600_25264000*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulÓ
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2601_25263997*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mulî
IdentityIdentity(activation_2599/PartitionedCall:output:01^batch_normalization_1299/StatefulPartitionedCall#^dense_2598/StatefulPartitionedCall#^dense_2599/StatefulPartitionedCall%^dropout_1299/StatefulPartitionedCall'^embedding_2600/StatefulPartitionedCall<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp'^embedding_2601/StatefulPartitionedCall<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 2d
0batch_normalization_1299/StatefulPartitionedCall0batch_normalization_1299/StatefulPartitionedCall2H
"dense_2598/StatefulPartitionedCall"dense_2598/StatefulPartitionedCall2H
"dense_2599/StatefulPartitionedCall"dense_2599/StatefulPartitionedCall2L
$dropout_1299/StatefulPartitionedCall$dropout_1299/StatefulPartitionedCall2P
&embedding_2600/StatefulPartitionedCall&embedding_2600/StatefulPartitionedCall2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2P
&embedding_2601/StatefulPartitionedCall&embedding_2601/StatefulPartitionedCall2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp:S O
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
$
_user_specified_name
input_1298
£
­

H__inference_model_1300_layer_call_and_return_conditional_losses_25264222

inputs;
(embedding_2601_embedding_lookup_25264159:	ú=;
(embedding_2600_embedding_lookup_25264165:	úId=
)dense_2598_matmul_readvariableop_resource:
Ã¾9
*dense_2598_biasadd_readvariableop_resource:	¾I
:batch_normalization_1299_batchnorm_readvariableop_resource:	¾M
>batch_normalization_1299_batchnorm_mul_readvariableop_resource:	¾K
<batch_normalization_1299_batchnorm_readvariableop_1_resource:	¾K
<batch_normalization_1299_batchnorm_readvariableop_2_resource:	¾<
)dense_2599_matmul_readvariableop_resource:	¾8
*dense_2599_biasadd_readvariableop_resource:
identity¢1batch_normalization_1299/batchnorm/ReadVariableOp¢3batch_normalization_1299/batchnorm/ReadVariableOp_1¢3batch_normalization_1299/batchnorm/ReadVariableOp_2¢5batch_normalization_1299/batchnorm/mul/ReadVariableOp¢!dense_2598/BiasAdd/ReadVariableOp¢ dense_2598/MatMul/ReadVariableOp¢!dense_2599/BiasAdd/ReadVariableOp¢ dense_2599/MatMul/ReadVariableOp¢embedding_2600/embedding_lookup¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢embedding_2601/embedding_lookup¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp
lambda_3892/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_3892/strided_slice/stack
!lambda_3892/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_3892/strided_slice/stack_1
!lambda_3892/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_3892/strided_slice/stack_2Å
lambda_3892/strided_sliceStridedSliceinputs(lambda_3892/strided_slice/stack:output:0*lambda_3892/strided_slice/stack_1:output:0*lambda_3892/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_3892/strided_slice
lambda_3892/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_3892/ExpandDims/dim¹
lambda_3892/ExpandDims
ExpandDims"lambda_3892/strided_slice:output:0#lambda_3892/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_3892/ExpandDims
lambda_3891/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lambda_3891/strided_slice/stack
!lambda_3891/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_3891/strided_slice/stack_1
!lambda_3891/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_3891/strided_slice/stack_2Å
lambda_3891/strided_sliceStridedSliceinputs(lambda_3891/strided_slice/stack:output:0*lambda_3891/strided_slice/stack_1:output:0*lambda_3891/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_3891/strided_slice
lambda_3891/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_3891/ExpandDims/dim¹
lambda_3891/ExpandDims
ExpandDims"lambda_3891/strided_slice:output:0#lambda_3891/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_3891/ExpandDims
lambda_3893/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_3893/strided_slice/stack
!lambda_3893/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lambda_3893/strided_slice/stack_1
!lambda_3893/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_3893/strided_slice/stack_2±
lambda_3893/strided_sliceStridedSliceinputs(lambda_3893/strided_slice/stack:output:0*lambda_3893/strided_slice/stack_1:output:0*lambda_3893/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ*

begin_mask*
end_mask2
lambda_3893/strided_slice
lambda_3893/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_3893/ExpandDims/dim½
lambda_3893/ExpandDims
ExpandDims"lambda_3893/strided_slice:output:0#lambda_3893/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2
lambda_3893/ExpandDims
embedding_2601/CastCastlambda_3892/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_2601/CastÌ
embedding_2601/embedding_lookupResourceGather(embedding_2601_embedding_lookup_25264159embedding_2601/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*;
_class1
/-loc:@embedding_2601/embedding_lookup/25264159*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02!
embedding_2601/embedding_lookup«
(embedding_2601/embedding_lookup/IdentityIdentity(embedding_2601/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*;
_class1
/-loc:@embedding_2601/embedding_lookup/25264159*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(embedding_2601/embedding_lookup/IdentityÍ
*embedding_2601/embedding_lookup/Identity_1Identity1embedding_2601/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*embedding_2601/embedding_lookup/Identity_1
embedding_2600/CastCastlambda_3891/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_2600/CastÌ
embedding_2600/embedding_lookupResourceGather(embedding_2600_embedding_lookup_25264165embedding_2600/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*;
_class1
/-loc:@embedding_2600/embedding_lookup/25264165*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02!
embedding_2600/embedding_lookup«
(embedding_2600/embedding_lookup/IdentityIdentity(embedding_2600/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*;
_class1
/-loc:@embedding_2600/embedding_lookup/25264165*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(embedding_2600/embedding_lookup/IdentityÍ
*embedding_2600/embedding_lookup/Identity_1Identity1embedding_2600/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*embedding_2600/embedding_lookup/Identity_1y
flatten_3898/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
flatten_3898/Const»
flatten_3898/ReshapeReshape3embedding_2600/embedding_lookup/Identity_1:output:0flatten_3898/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
flatten_3898/Reshapey
flatten_3899/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_3899/Const»
flatten_3899/ReshapeReshape3embedding_2601/embedding_lookup/Identity_1:output:0flatten_3899/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_3899/Reshapey
flatten_3900/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2
flatten_3900/Const§
flatten_3900/ReshapeReshapelambda_3893/ExpandDims:output:0flatten_3900/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2
flatten_3900/Reshape~
concatenate_1299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1299/concat/axisþ
concatenate_1299/concatConcatV2flatten_3898/Reshape:output:0flatten_3899/Reshape:output:0flatten_3900/Reshape:output:0%concatenate_1299/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ2
concatenate_1299/concat°
 dense_2598/MatMul/ReadVariableOpReadVariableOp)dense_2598_matmul_readvariableop_resource* 
_output_shapes
:
Ã¾*
dtype02"
 dense_2598/MatMul/ReadVariableOp¯
dense_2598/MatMulMatMul concatenate_1299/concat:output:0(dense_2598/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dense_2598/MatMul®
!dense_2598/BiasAdd/ReadVariableOpReadVariableOp*dense_2598_biasadd_readvariableop_resource*
_output_shapes	
:¾*
dtype02#
!dense_2598/BiasAdd/ReadVariableOp®
dense_2598/BiasAddBiasAdddense_2598/MatMul:product:0)dense_2598/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dense_2598/BiasAddÞ
1batch_normalization_1299/batchnorm/ReadVariableOpReadVariableOp:batch_normalization_1299_batchnorm_readvariableop_resource*
_output_shapes	
:¾*
dtype023
1batch_normalization_1299/batchnorm/ReadVariableOp
(batch_normalization_1299/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2*
(batch_normalization_1299/batchnorm/add/yí
&batch_normalization_1299/batchnorm/addAddV29batch_normalization_1299/batchnorm/ReadVariableOp:value:01batch_normalization_1299/batchnorm/add/y:output:0*
T0*
_output_shapes	
:¾2(
&batch_normalization_1299/batchnorm/add¯
(batch_normalization_1299/batchnorm/RsqrtRsqrt*batch_normalization_1299/batchnorm/add:z:0*
T0*
_output_shapes	
:¾2*
(batch_normalization_1299/batchnorm/Rsqrtê
5batch_normalization_1299/batchnorm/mul/ReadVariableOpReadVariableOp>batch_normalization_1299_batchnorm_mul_readvariableop_resource*
_output_shapes	
:¾*
dtype027
5batch_normalization_1299/batchnorm/mul/ReadVariableOpê
&batch_normalization_1299/batchnorm/mulMul,batch_normalization_1299/batchnorm/Rsqrt:y:0=batch_normalization_1299/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¾2(
&batch_normalization_1299/batchnorm/mul×
(batch_normalization_1299/batchnorm/mul_1Muldense_2598/BiasAdd:output:0*batch_normalization_1299/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2*
(batch_normalization_1299/batchnorm/mul_1ä
3batch_normalization_1299/batchnorm/ReadVariableOp_1ReadVariableOp<batch_normalization_1299_batchnorm_readvariableop_1_resource*
_output_shapes	
:¾*
dtype025
3batch_normalization_1299/batchnorm/ReadVariableOp_1ê
(batch_normalization_1299/batchnorm/mul_2Mul;batch_normalization_1299/batchnorm/ReadVariableOp_1:value:0*batch_normalization_1299/batchnorm/mul:z:0*
T0*
_output_shapes	
:¾2*
(batch_normalization_1299/batchnorm/mul_2ä
3batch_normalization_1299/batchnorm/ReadVariableOp_2ReadVariableOp<batch_normalization_1299_batchnorm_readvariableop_2_resource*
_output_shapes	
:¾*
dtype025
3batch_normalization_1299/batchnorm/ReadVariableOp_2è
&batch_normalization_1299/batchnorm/subSub;batch_normalization_1299/batchnorm/ReadVariableOp_2:value:0,batch_normalization_1299/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¾2(
&batch_normalization_1299/batchnorm/subê
(batch_normalization_1299/batchnorm/add_1AddV2,batch_normalization_1299/batchnorm/mul_1:z:0*batch_normalization_1299/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2*
(batch_normalization_1299/batchnorm/add_1
activation_2598/ReluRelu,batch_normalization_1299/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
activation_2598/Relu
dropout_1299/IdentityIdentity"activation_2598/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
dropout_1299/Identity¯
 dense_2599/MatMul/ReadVariableOpReadVariableOp)dense_2599_matmul_readvariableop_resource*
_output_shapes
:	¾*
dtype02"
 dense_2599/MatMul/ReadVariableOp¬
dense_2599/MatMulMatMuldropout_1299/Identity:output:0(dense_2599/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2599/MatMul­
!dense_2599/BiasAdd/ReadVariableOpReadVariableOp*dense_2599_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_2599/BiasAdd/ReadVariableOp­
dense_2599/BiasAddBiasAdddense_2599/MatMul:product:0)dense_2599/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2599/BiasAdd
activation_2599/ReluReludense_2599/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_2599/Reluä
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_2600_embedding_lookup_25264165*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulä
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_2601_embedding_lookup_25264159*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mul
IdentityIdentity"activation_2599/Relu:activations:02^batch_normalization_1299/batchnorm/ReadVariableOp4^batch_normalization_1299/batchnorm/ReadVariableOp_14^batch_normalization_1299/batchnorm/ReadVariableOp_26^batch_normalization_1299/batchnorm/mul/ReadVariableOp"^dense_2598/BiasAdd/ReadVariableOp!^dense_2598/MatMul/ReadVariableOp"^dense_2599/BiasAdd/ReadVariableOp!^dense_2599/MatMul/ReadVariableOp ^embedding_2600/embedding_lookup<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp ^embedding_2601/embedding_lookup<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ\: : : : : : : : : : 2f
1batch_normalization_1299/batchnorm/ReadVariableOp1batch_normalization_1299/batchnorm/ReadVariableOp2j
3batch_normalization_1299/batchnorm/ReadVariableOp_13batch_normalization_1299/batchnorm/ReadVariableOp_12j
3batch_normalization_1299/batchnorm/ReadVariableOp_23batch_normalization_1299/batchnorm/ReadVariableOp_22n
5batch_normalization_1299/batchnorm/mul/ReadVariableOp5batch_normalization_1299/batchnorm/mul/ReadVariableOp2F
!dense_2598/BiasAdd/ReadVariableOp!dense_2598/BiasAdd/ReadVariableOp2D
 dense_2598/MatMul/ReadVariableOp dense_2598/MatMul/ReadVariableOp2F
!dense_2599/BiasAdd/ReadVariableOp!dense_2599/BiasAdd/ReadVariableOp2D
 dense_2599/MatMul/ReadVariableOp dense_2599/MatMul/ReadVariableOp2B
embedding_2600/embedding_lookupembedding_2600/embedding_lookup2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2B
embedding_2601/embedding_lookupembedding_2601/embedding_lookup2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
µ
¹
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25263301

inputs0
!batchnorm_readvariableop_resource:	¾4
%batchnorm_mul_readvariableop_resource:	¾2
#batchnorm_readvariableop_1_resource:	¾2
#batchnorm_readvariableop_2_resource:	¾
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:¾2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:¾2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:¾*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¾2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:¾2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:¾*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¾2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
ï
ê
L__inference_embedding_2600_layer_call_and_return_conditional_losses_25264417

inputs,
embedding_lookup_25264405:	úId
identity¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_25264405Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/25264405*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupï
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/25264405*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1Õ
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_25264405*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mulÍ
IdentityIdentity$embedding_lookup/Identity_1:output:0<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


e
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25264388

inputs
identity{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsg
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
×
È
__inference_loss_fn_0_25264700W
Dembedding_2600_embeddings_regularizer_square_readvariableop_resource:	úId
identity¢;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpDembedding_2600_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	úId*
dtype02=
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2600/embeddings/Regularizer/SquareSquareCembedding_2600/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	úId2.
,embedding_2600/embeddings/Regularizer/Square«
+embedding_2600/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2600/embeddings/Regularizer/Constæ
)embedding_2600/embeddings/Regularizer/SumSum0embedding_2600/embeddings/Regularizer/Square:y:04embedding_2600/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/Sum
+embedding_2600/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2600/embeddings/Regularizer/mul/xè
)embedding_2600/embeddings/Regularizer/mulMul4embedding_2600/embeddings/Regularizer/mul/x:output:02embedding_2600/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2600/embeddings/Regularizer/mul®
IdentityIdentity-embedding_2600/embeddings/Regularizer/mul:z:0<^embedding_2600/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp;embedding_2600/embeddings/Regularizer/Square/ReadVariableOp
Ø
h
/__inference_dropout_1299_layer_call_fn_25264643

inputs
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_dropout_1299_layer_call_and_return_conditional_losses_252636902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs
â
f
J__inference_flatten_3898_layer_call_and_return_conditional_losses_25264487

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
â
f
J__inference_flatten_3899_layer_call_and_return_conditional_losses_25263536

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
ã
$__inference__traced_restore_25264942
file_prefix=
*assignvariableop_embedding_2600_embeddings:	úId?
,assignvariableop_1_embedding_2601_embeddings:	ú=8
$assignvariableop_2_dense_2598_kernel:
Ã¾1
"assignvariableop_3_dense_2598_bias:	¾@
1assignvariableop_4_batch_normalization_1299_gamma:	¾?
0assignvariableop_5_batch_normalization_1299_beta:	¾F
7assignvariableop_6_batch_normalization_1299_moving_mean:	¾J
;assignvariableop_7_batch_normalization_1299_moving_variance:	¾7
$assignvariableop_8_dense_2599_kernel:	¾0
"assignvariableop_9_dense_2599_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: G
4assignvariableop_17_adam_embedding_2600_embeddings_m:	úIdG
4assignvariableop_18_adam_embedding_2601_embeddings_m:	ú=@
,assignvariableop_19_adam_dense_2598_kernel_m:
Ã¾9
*assignvariableop_20_adam_dense_2598_bias_m:	¾H
9assignvariableop_21_adam_batch_normalization_1299_gamma_m:	¾G
8assignvariableop_22_adam_batch_normalization_1299_beta_m:	¾?
,assignvariableop_23_adam_dense_2599_kernel_m:	¾8
*assignvariableop_24_adam_dense_2599_bias_m:G
4assignvariableop_25_adam_embedding_2600_embeddings_v:	úIdG
4assignvariableop_26_adam_embedding_2601_embeddings_v:	ú=@
,assignvariableop_27_adam_dense_2598_kernel_v:
Ã¾9
*assignvariableop_28_adam_dense_2598_bias_v:	¾H
9assignvariableop_29_adam_batch_normalization_1299_gamma_v:	¾G
8assignvariableop_30_adam_batch_normalization_1299_beta_v:	¾?
,assignvariableop_31_adam_dense_2599_kernel_v:	¾8
*assignvariableop_32_adam_dense_2599_bias_v:
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ù
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*
valueûBø"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÒ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesØ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity©
AssignVariableOpAssignVariableOp*assignvariableop_embedding_2600_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1±
AssignVariableOp_1AssignVariableOp,assignvariableop_1_embedding_2601_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2©
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2598_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2598_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¶
AssignVariableOp_4AssignVariableOp1assignvariableop_4_batch_normalization_1299_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5µ
AssignVariableOp_5AssignVariableOp0assignvariableop_5_batch_normalization_1299_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¼
AssignVariableOp_6AssignVariableOp7assignvariableop_6_batch_normalization_1299_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7À
AssignVariableOp_7AssignVariableOp;assignvariableop_7_batch_normalization_1299_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8©
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_2599_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9§
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_2599_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¥
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¦
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¼
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_embedding_2600_embeddings_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_embedding_2601_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19´
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2598_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20²
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2598_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Á
AssignVariableOp_21AssignVariableOp9assignvariableop_21_adam_batch_normalization_1299_gamma_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22À
AssignVariableOp_22AssignVariableOp8assignvariableop_22_adam_batch_normalization_1299_beta_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23´
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_2599_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24²
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_2599_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¼
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_embedding_2600_embeddings_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¼
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_embedding_2601_embeddings_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27´
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_dense_2598_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28²
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_2598_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Á
AssignVariableOp_29AssignVariableOp9assignvariableop_29_adam_batch_normalization_1299_gamma_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30À
AssignVariableOp_30AssignVariableOp8assignvariableop_30_adam_batch_normalization_1299_beta_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31´
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_dense_2599_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32²
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_2599_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp´
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33§
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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
Æ
J
.__inference_lambda_3891_layer_call_fn_25264338

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3891_layer_call_and_return_conditional_losses_252637902
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
Æ
J
.__inference_lambda_3892_layer_call_fn_25264363

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lambda_3892_layer_call_and_return_conditional_losses_252634562
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ\:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
 
_user_specified_nameinputs
â
f
J__inference_flatten_3900_layer_call_and_return_conditional_losses_25263544

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿZ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿZ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
 
_user_specified_nameinputs
×
È
__inference_loss_fn_1_25264711W
Dembedding_2601_embeddings_regularizer_square_readvariableop_resource:	ú=
identity¢;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpDembedding_2601_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	ú=*
dtype02=
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOpÕ
,embedding_2601/embeddings/Regularizer/SquareSquareCembedding_2601/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ú=2.
,embedding_2601/embeddings/Regularizer/Square«
+embedding_2601/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+embedding_2601/embeddings/Regularizer/Constæ
)embedding_2601/embeddings/Regularizer/SumSum0embedding_2601/embeddings/Regularizer/Square:y:04embedding_2601/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/Sum
+embedding_2601/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752-
+embedding_2601/embeddings/Regularizer/mul/xè
)embedding_2601/embeddings/Regularizer/mulMul4embedding_2601/embeddings/Regularizer/mul/x:output:02embedding_2601/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)embedding_2601/embeddings/Regularizer/mul®
IdentityIdentity-embedding_2601/embeddings/Regularizer/mul:z:0<^embedding_2601/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp;embedding_2601/embeddings/Regularizer/Square/ReadVariableOp
¥L
·
!__inference__traced_save_25264833
file_prefix8
4savev2_embedding_2600_embeddings_read_readvariableop8
4savev2_embedding_2601_embeddings_read_readvariableop0
,savev2_dense_2598_kernel_read_readvariableop.
*savev2_dense_2598_bias_read_readvariableop=
9savev2_batch_normalization_1299_gamma_read_readvariableop<
8savev2_batch_normalization_1299_beta_read_readvariableopC
?savev2_batch_normalization_1299_moving_mean_read_readvariableopG
Csavev2_batch_normalization_1299_moving_variance_read_readvariableop0
,savev2_dense_2599_kernel_read_readvariableop.
*savev2_dense_2599_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_adam_embedding_2600_embeddings_m_read_readvariableop?
;savev2_adam_embedding_2601_embeddings_m_read_readvariableop7
3savev2_adam_dense_2598_kernel_m_read_readvariableop5
1savev2_adam_dense_2598_bias_m_read_readvariableopD
@savev2_adam_batch_normalization_1299_gamma_m_read_readvariableopC
?savev2_adam_batch_normalization_1299_beta_m_read_readvariableop7
3savev2_adam_dense_2599_kernel_m_read_readvariableop5
1savev2_adam_dense_2599_bias_m_read_readvariableop?
;savev2_adam_embedding_2600_embeddings_v_read_readvariableop?
;savev2_adam_embedding_2601_embeddings_v_read_readvariableop7
3savev2_adam_dense_2598_kernel_v_read_readvariableop5
1savev2_adam_dense_2598_bias_v_read_readvariableopD
@savev2_adam_batch_normalization_1299_gamma_v_read_readvariableopC
?savev2_adam_batch_normalization_1299_beta_v_read_readvariableop7
3savev2_adam_dense_2599_kernel_v_read_readvariableop5
1savev2_adam_dense_2599_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameó
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*
valueûBø"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÌ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_embedding_2600_embeddings_read_readvariableop4savev2_embedding_2601_embeddings_read_readvariableop,savev2_dense_2598_kernel_read_readvariableop*savev2_dense_2598_bias_read_readvariableop9savev2_batch_normalization_1299_gamma_read_readvariableop8savev2_batch_normalization_1299_beta_read_readvariableop?savev2_batch_normalization_1299_moving_mean_read_readvariableopCsavev2_batch_normalization_1299_moving_variance_read_readvariableop,savev2_dense_2599_kernel_read_readvariableop*savev2_dense_2599_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_adam_embedding_2600_embeddings_m_read_readvariableop;savev2_adam_embedding_2601_embeddings_m_read_readvariableop3savev2_adam_dense_2598_kernel_m_read_readvariableop1savev2_adam_dense_2598_bias_m_read_readvariableop@savev2_adam_batch_normalization_1299_gamma_m_read_readvariableop?savev2_adam_batch_normalization_1299_beta_m_read_readvariableop3savev2_adam_dense_2599_kernel_m_read_readvariableop1savev2_adam_dense_2599_bias_m_read_readvariableop;savev2_adam_embedding_2600_embeddings_v_read_readvariableop;savev2_adam_embedding_2601_embeddings_v_read_readvariableop3savev2_adam_dense_2598_kernel_v_read_readvariableop1savev2_adam_dense_2598_bias_v_read_readvariableop@savev2_adam_batch_normalization_1299_gamma_v_read_readvariableop?savev2_adam_batch_normalization_1299_beta_v_read_readvariableop3savev2_adam_dense_2599_kernel_v_read_readvariableop1savev2_adam_dense_2599_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*
_input_shapesû
ø: :	úId:	ú=:
Ã¾:¾:¾:¾:¾:¾:	¾:: : : : : : : :	úId:	ú=:
Ã¾:¾:¾:¾:	¾::	úId:	ú=:
Ã¾:¾:¾:¾:	¾:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	úId:%!

_output_shapes
:	ú=:&"
 
_output_shapes
:
Ã¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:%	!

_output_shapes
:	¾: 


_output_shapes
::
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
: :

_output_shapes
: :%!

_output_shapes
:	úId:%!

_output_shapes
:	ú=:&"
 
_output_shapes
:
Ã¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:%!

_output_shapes
:	¾: 

_output_shapes
::%!

_output_shapes
:	úId:%!

_output_shapes
:	ú=:&"
 
_output_shapes
:
Ã¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:!

_output_shapes	
:¾:% !

_output_shapes
:	¾: !

_output_shapes
::"

_output_shapes
: 
¦

-__inference_dense_2599_layer_call_fn_25264669

inputs
unknown:	¾
	unknown_0:
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_2599_layer_call_and_return_conditional_losses_252636052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¾: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
 
_user_specified_nameinputs


1__inference_embedding_2601_layer_call_fn_25264430

inputs
unknown:	ú=
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_embedding_2601_layer_call_and_return_conditional_losses_252634982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¸
serving_default¤
A

input_12983
serving_default_input_1298:0ÿÿÿÿÿÿÿÿÿ\C
activation_25990
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÏÊ
ëv
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
É__call__
Ê_default_save_signature
+Ë&call_and_return_all_conditional_losses"År
_tf_keras_network©r{"name": "model_1300", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1300", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 92]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1298"}, "name": "input_1298", "inbound_nodes": []}, {"class_name": "Lambda", "config": {"name": "lambda_3891", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QAAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+AwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_3891", "inbound_nodes": [[["input_1298", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_3892", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QEAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+BAAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_3892", "inbound_nodes": [[["input_1298", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_2600", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9466, "output_dim": 100, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_2600", "inbound_nodes": [[["lambda_3891", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_2601", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 7930, "output_dim": 5, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_2601", "inbound_nodes": [[["lambda_3892", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_3893", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAUwAAAHMcAAAAdACgAXwAZABkAIUCZAFkAIUCZgIZAGQCoQJT\nACkDTukCAAAA6f////+pAtoCdGbaC2V4cGFuZF9kaW1zqQHaAXipAHIIAAAA+h88aXB5dGhvbi1p\nbnB1dC0zMS1iMGQxMDUxNzdlNGQ+2gg8bGFtYmRhPgUAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_3893", "inbound_nodes": [[["input_1298", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3898", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3898", "inbound_nodes": [[["embedding_2600", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3899", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3899", "inbound_nodes": [[["embedding_2601", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3900", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3900", "inbound_nodes": [[["lambda_3893", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1299", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1299", "inbound_nodes": [[["flatten_3898", 0, 0, {}], ["flatten_3899", 0, 0, {}], ["flatten_3900", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2598", "trainable": true, "dtype": "float32", "units": 190, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2598", "inbound_nodes": [[["concatenate_1299", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1299", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1299", "inbound_nodes": [[["dense_2598", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_2598", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_2598", "inbound_nodes": [[["batch_normalization_1299", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1299", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1299", "inbound_nodes": [[["activation_2598", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2599", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2599", "inbound_nodes": [[["dropout_1299", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_2599", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_2599", "inbound_nodes": [[["dense_2599", 0, 0, {}]]]}], "input_layers": [["input_1298", 0, 0]], "output_layers": [["activation_2599", 0, 0]]}, "shared_object_id": 28, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 92]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 92]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 92]}, "float32", "input_1298"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1300", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 92]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1298"}, "name": "input_1298", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Lambda", "config": {"name": "lambda_3891", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QAAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+AwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_3891", "inbound_nodes": [[["input_1298", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Lambda", "config": {"name": "lambda_3892", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QEAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+BAAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_3892", "inbound_nodes": [[["input_1298", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "Embedding", "config": {"name": "embedding_2600", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9466, "output_dim": 100, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 3}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 4}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_2600", "inbound_nodes": [[["lambda_3891", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Embedding", "config": {"name": "embedding_2601", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 7930, "output_dim": 5, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 6}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 7}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_2601", "inbound_nodes": [[["lambda_3892", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Lambda", "config": {"name": "lambda_3893", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAUwAAAHMcAAAAdACgAXwAZABkAIUCZAFkAIUCZgIZAGQCoQJT\nACkDTukCAAAA6f////+pAtoCdGbaC2V4cGFuZF9kaW1zqQHaAXipAHIIAAAA+h88aXB5dGhvbi1p\nbnB1dC0zMS1iMGQxMDUxNzdlNGQ+2gg8bGFtYmRhPgUAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_3893", "inbound_nodes": [[["input_1298", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_3898", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3898", "inbound_nodes": [[["embedding_2600", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Flatten", "config": {"name": "flatten_3899", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3899", "inbound_nodes": [[["embedding_2601", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Flatten", "config": {"name": "flatten_3900", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3900", "inbound_nodes": [[["lambda_3893", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Concatenate", "config": {"name": "concatenate_1299", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1299", "inbound_nodes": [[["flatten_3898", 0, 0, {}], ["flatten_3899", 0, 0, {}], ["flatten_3900", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_2598", "trainable": true, "dtype": "float32", "units": 190, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2598", "inbound_nodes": [[["concatenate_1299", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1299", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1299", "inbound_nodes": [[["dense_2598", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Activation", "config": {"name": "activation_2598", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_2598", "inbound_nodes": [[["batch_normalization_1299", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "Dropout", "config": {"name": "dropout_1299", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1299", "inbound_nodes": [[["activation_2598", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "dense_2599", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2599", "inbound_nodes": [[["dropout_1299", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "Activation", "config": {"name": "activation_2599", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_2599", "inbound_nodes": [[["dense_2599", 0, 0, {}]]], "shared_object_id": 27}], "input_layers": [["input_1298", 0, 0]], "output_layers": [["activation_2599", 0, 0]]}}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}

_init_input_shape"î
_tf_keras_input_layerÎ{"class_name": "InputLayer", "name": "input_1298", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 92]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 92]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1298"}}
£
trainable_variables
	variables
regularization_losses
	keras_api
Ì__call__
+Í&call_and_return_all_conditional_losses"
_tf_keras_layerø{"name": "lambda_3891", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_3891", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QAAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+AwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["input_1298", 0, 0, {}]]], "shared_object_id": 1}
£
trainable_variables
	variables
regularization_losses
	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses"
_tf_keras_layerø{"name": "lambda_3892", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_3892", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QEAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+BAAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["input_1298", 0, 0, {}]]], "shared_object_id": 2}
¾
 
embeddings
!trainable_variables
"	variables
#regularization_losses
$	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "embedding_2600", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_2600", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9466, "output_dim": 100, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 3}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 4}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["lambda_3891", 0, 0, {}]]], "shared_object_id": 5, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
¼
%
embeddings
&trainable_variables
'	variables
(regularization_losses
)	keras_api
Ò__call__
+Ó&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "embedding_2601", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_2601", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 7930, "output_dim": 5, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 6}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 7}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["lambda_3892", 0, 0, {}]]], "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
«
*trainable_variables
+	variables
,regularization_losses
-	keras_api
Ô__call__
+Õ&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "lambda_3893", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_3893", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAUwAAAHMcAAAAdACgAXwAZABkAIUCZAFkAIUCZgIZAGQCoQJT\nACkDTukCAAAA6f////+pAtoCdGbaC2V4cGFuZF9kaW1zqQHaAXipAHIIAAAA+h88aXB5dGhvbi1p\nbnB1dC0zMS1iMGQxMDUxNzdlNGQ+2gg8bGFtYmRhPgUAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["input_1298", 0, 0, {}]]], "shared_object_id": 9}
Ñ
.trainable_variables
/	variables
0regularization_losses
1	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses"À
_tf_keras_layer¦{"name": "flatten_3898", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_3898", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["embedding_2600", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 30}}
Ñ
2trainable_variables
3	variables
4regularization_losses
5	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses"À
_tf_keras_layer¦{"name": "flatten_3899", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_3899", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["embedding_2601", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 31}}
Î
6trainable_variables
7	variables
8regularization_losses
9	keras_api
Ú__call__
+Û&call_and_return_all_conditional_losses"½
_tf_keras_layer£{"name": "flatten_3900", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_3900", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["lambda_3893", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 32}}

:trainable_variables
;	variables
<regularization_losses
=	keras_api
Ü__call__
+Ý&call_and_return_all_conditional_losses"ù
_tf_keras_layerß{"name": "concatenate_1299", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1299", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["flatten_3898", 0, 0, {}], ["flatten_3899", 0, 0, {}], ["flatten_3900", 0, 0, {}]]], "shared_object_id": 13, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 5]}, {"class_name": "TensorShape", "items": [null, 90]}]}
	

>kernel
?bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
Þ__call__
+ß&call_and_return_all_conditional_losses"ë
_tf_keras_layerÑ{"name": "dense_2598", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2598", "trainable": true, "dtype": "float32", "units": 190, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_1299", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 195}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 195]}}
û

Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
à__call__
+á&call_and_return_all_conditional_losses"¥	
_tf_keras_layer	{"name": "batch_normalization_1299", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1299", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_2598", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 190}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 190]}}
²
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
â__call__
+ã&call_and_return_all_conditional_losses"¡
_tf_keras_layer{"name": "activation_2598", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_2598", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["batch_normalization_1299", 0, 0, {}]]], "shared_object_id": 22}
¹
Qtrainable_variables
R	variables
Sregularization_losses
T	keras_api
ä__call__
+å&call_and_return_all_conditional_losses"¨
_tf_keras_layer{"name": "dropout_1299", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1299", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["activation_2598", 0, 0, {}]]], "shared_object_id": 23}
	

Ukernel
Vbias
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses"å
_tf_keras_layerË{"name": "dense_2599", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2599", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_1299", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 190}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 190]}}
¤
[trainable_variables
\	variables
]regularization_losses
^	keras_api
è__call__
+é&call_and_return_all_conditional_losses"
_tf_keras_layerù{"name": "activation_2599", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_2599", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["dense_2599", 0, 0, {}]]], "shared_object_id": 27}
ó
_iter

`beta_1

abeta_2
	bdecay
clearning_rate m¹%mº>m»?m¼Em½Fm¾Um¿VmÀ vÁ%vÂ>vÃ?vÄEvÅFvÆUvÇVvÈ"
	optimizer
X
 0
%1
>2
?3
E4
F5
U6
V7"
trackable_list_wrapper
f
 0
%1
>2
?3
E4
F5
G6
H7
U8
V9"
trackable_list_wrapper
0
ê0
ë1"
trackable_list_wrapper
Î
dnon_trainable_variables
trainable_variables
elayer_regularization_losses
	variables

flayers
glayer_metrics
regularization_losses
hmetrics
É__call__
Ê_default_save_signature
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
_generic_user_object
-
ìserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
inon_trainable_variables
trainable_variables
jlayer_regularization_losses
	variables

klayers
llayer_metrics
regularization_losses
mmetrics
Ì__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
nnon_trainable_variables
trainable_variables
olayer_regularization_losses
	variables

players
qlayer_metrics
regularization_losses
rmetrics
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
,:*	úId2embedding_2600/embeddings
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
(
ê0"
trackable_list_wrapper
°
snon_trainable_variables
!trainable_variables
tlayer_regularization_losses
"	variables

ulayers
vlayer_metrics
#regularization_losses
wmetrics
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
,:*	ú=2embedding_2601/embeddings
'
%0"
trackable_list_wrapper
'
%0"
trackable_list_wrapper
(
ë0"
trackable_list_wrapper
°
xnon_trainable_variables
&trainable_variables
ylayer_regularization_losses
'	variables

zlayers
{layer_metrics
(regularization_losses
|metrics
Ò__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
}non_trainable_variables
*trainable_variables
~layer_regularization_losses
+	variables

layers
layer_metrics
,regularization_losses
metrics
Ô__call__
+Õ&call_and_return_all_conditional_losses
'Õ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
.trainable_variables
 layer_regularization_losses
/	variables
layers
layer_metrics
0regularization_losses
metrics
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
2trainable_variables
 layer_regularization_losses
3	variables
layers
layer_metrics
4regularization_losses
metrics
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
6trainable_variables
 layer_regularization_losses
7	variables
layers
layer_metrics
8regularization_losses
metrics
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
:trainable_variables
 layer_regularization_losses
;	variables
layers
layer_metrics
<regularization_losses
metrics
Ü__call__
+Ý&call_and_return_all_conditional_losses
'Ý"call_and_return_conditional_losses"
_generic_user_object
%:#
Ã¾2dense_2598/kernel
:¾2dense_2598/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
@trainable_variables
 layer_regularization_losses
A	variables
layers
layer_metrics
Bregularization_losses
metrics
Þ__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+¾2batch_normalization_1299/gamma
,:*¾2batch_normalization_1299/beta
5:3¾ (2$batch_normalization_1299/moving_mean
9:7¾ (2(batch_normalization_1299/moving_variance
.
E0
F1"
trackable_list_wrapper
<
E0
F1
G2
H3"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
Itrainable_variables
 layer_regularization_losses
J	variables
layers
layer_metrics
Kregularization_losses
metrics
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 non_trainable_variables
Mtrainable_variables
 ¡layer_regularization_losses
N	variables
¢layers
£layer_metrics
Oregularization_losses
¤metrics
â__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¥non_trainable_variables
Qtrainable_variables
 ¦layer_regularization_losses
R	variables
§layers
¨layer_metrics
Sregularization_losses
©metrics
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
$:"	¾2dense_2599/kernel
:2dense_2599/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ªnon_trainable_variables
Wtrainable_variables
 «layer_regularization_losses
X	variables
¬layers
­layer_metrics
Yregularization_losses
®metrics
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¯non_trainable_variables
[trainable_variables
 °layer_regularization_losses
\	variables
±layers
²layer_metrics
]regularization_losses
³metrics
è__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper

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
15"
trackable_list_wrapper
 "
trackable_dict_wrapper
(
´0"
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
(
ê0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
ë0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
G0
H1"
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
Ø

µtotal

¶count
·	variables
¸	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 36}
:  (2total
:  (2count
0
µ0
¶1"
trackable_list_wrapper
.
·	variables"
_generic_user_object
1:/	úId2 Adam/embedding_2600/embeddings/m
1:/	ú=2 Adam/embedding_2601/embeddings/m
*:(
Ã¾2Adam/dense_2598/kernel/m
#:!¾2Adam/dense_2598/bias/m
2:0¾2%Adam/batch_normalization_1299/gamma/m
1:/¾2$Adam/batch_normalization_1299/beta/m
):'	¾2Adam/dense_2599/kernel/m
": 2Adam/dense_2599/bias/m
1:/	úId2 Adam/embedding_2600/embeddings/v
1:/	ú=2 Adam/embedding_2601/embeddings/v
*:(
Ã¾2Adam/dense_2598/kernel/v
#:!¾2Adam/dense_2598/bias/v
2:0¾2%Adam/batch_normalization_1299/gamma/v
1:/¾2$Adam/batch_normalization_1299/beta/v
):'	¾2Adam/dense_2599/kernel/v
": 2Adam/dense_2599/bias/v
2ÿ
-__inference_model_1300_layer_call_fn_25263654
-__inference_model_1300_layer_call_fn_25264112
-__inference_model_1300_layer_call_fn_25264137
-__inference_model_1300_layer_call_fn_25263940À
·²³
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
kwonlydefaultsª 
annotationsª *
 
ä2á
#__inference__wrapped_model_25263277¹
²
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
annotationsª *)¢&
$!

input_1298ÿÿÿÿÿÿÿÿÿ\
î2ë
H__inference_model_1300_layer_call_and_return_conditional_losses_25264222
H__inference_model_1300_layer_call_and_return_conditional_losses_25264328
H__inference_model_1300_layer_call_and_return_conditional_losses_25263991
H__inference_model_1300_layer_call_and_return_conditional_losses_25264042À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦2£
.__inference_lambda_3891_layer_call_fn_25264333
.__inference_lambda_3891_layer_call_fn_25264338À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25264348
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25264358À
·²³
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
kwonlydefaultsª 
annotationsª *
 
¦2£
.__inference_lambda_3892_layer_call_fn_25264363
.__inference_lambda_3892_layer_call_fn_25264368À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25264378
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25264388À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Û2Ø
1__inference_embedding_2600_layer_call_fn_25264401¢
²
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
annotationsª *
 
ö2ó
L__inference_embedding_2600_layer_call_and_return_conditional_losses_25264417¢
²
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
annotationsª *
 
Û2Ø
1__inference_embedding_2601_layer_call_fn_25264430¢
²
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
annotationsª *
 
ö2ó
L__inference_embedding_2601_layer_call_and_return_conditional_losses_25264446¢
²
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
annotationsª *
 
¦2£
.__inference_lambda_3893_layer_call_fn_25264451
.__inference_lambda_3893_layer_call_fn_25264456À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25264466
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25264476À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Ù2Ö
/__inference_flatten_3898_layer_call_fn_25264481¢
²
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
annotationsª *
 
ô2ñ
J__inference_flatten_3898_layer_call_and_return_conditional_losses_25264487¢
²
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
annotationsª *
 
Ù2Ö
/__inference_flatten_3899_layer_call_fn_25264492¢
²
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
annotationsª *
 
ô2ñ
J__inference_flatten_3899_layer_call_and_return_conditional_losses_25264498¢
²
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
annotationsª *
 
Ù2Ö
/__inference_flatten_3900_layer_call_fn_25264503¢
²
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
annotationsª *
 
ô2ñ
J__inference_flatten_3900_layer_call_and_return_conditional_losses_25264509¢
²
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
annotationsª *
 
Ý2Ú
3__inference_concatenate_1299_layer_call_fn_25264516¢
²
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
annotationsª *
 
ø2õ
N__inference_concatenate_1299_layer_call_and_return_conditional_losses_25264524¢
²
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
annotationsª *
 
×2Ô
-__inference_dense_2598_layer_call_fn_25264533¢
²
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
annotationsª *
 
ò2ï
H__inference_dense_2598_layer_call_and_return_conditional_losses_25264543¢
²
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
annotationsª *
 
´2±
;__inference_batch_normalization_1299_layer_call_fn_25264556
;__inference_batch_normalization_1299_layer_call_fn_25264569´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25264589
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25264623´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
2__inference_activation_2598_layer_call_fn_25264628¢
²
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
annotationsª *
 
÷2ô
M__inference_activation_2598_layer_call_and_return_conditional_losses_25264633¢
²
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
annotationsª *
 
2
/__inference_dropout_1299_layer_call_fn_25264638
/__inference_dropout_1299_layer_call_fn_25264643´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25264648
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25264660´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×2Ô
-__inference_dense_2599_layer_call_fn_25264669¢
²
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
annotationsª *
 
ò2ï
H__inference_dense_2599_layer_call_and_return_conditional_losses_25264679¢
²
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
annotationsª *
 
Ü2Ù
2__inference_activation_2599_layer_call_fn_25264684¢
²
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
annotationsª *
 
÷2ô
M__inference_activation_2599_layer_call_and_return_conditional_losses_25264689¢
²
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
annotationsª *
 
µ2²
__inference_loss_fn_0_25264700
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
µ2²
__inference_loss_fn_1_25264711
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÐBÍ
&__inference_signature_wrapper_25264087
input_1298"
²
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
annotationsª *
 ¬
#__inference__wrapped_model_25263277
% >?HEGFUV3¢0
)¢&
$!

input_1298ÿÿÿÿÿÿÿÿÿ\
ª "Aª>
<
activation_2599)&
activation_2599ÿÿÿÿÿÿÿÿÿ«
M__inference_activation_2598_layer_call_and_return_conditional_losses_25264633Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¾
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¾
 
2__inference_activation_2598_layer_call_fn_25264628M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¾
ª "ÿÿÿÿÿÿÿÿÿ¾©
M__inference_activation_2599_layer_call_and_return_conditional_losses_25264689X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_activation_2599_layer_call_fn_25264684K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25264589dHEGF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¾
 ¾
V__inference_batch_normalization_1299_layer_call_and_return_conditional_losses_25264623dGHEF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¾
 
;__inference_batch_normalization_1299_layer_call_fn_25264556WHEGF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p 
ª "ÿÿÿÿÿÿÿÿÿ¾
;__inference_batch_normalization_1299_layer_call_fn_25264569WGHEF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p
ª "ÿÿÿÿÿÿÿÿÿ¾û
N__inference_concatenate_1299_layer_call_and_return_conditional_losses_25264524¨~¢{
t¢q
ol
"
inputs/0ÿÿÿÿÿÿÿÿÿd
"
inputs/1ÿÿÿÿÿÿÿÿÿ
"
inputs/2ÿÿÿÿÿÿÿÿÿZ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÃ
 Ó
3__inference_concatenate_1299_layer_call_fn_25264516~¢{
t¢q
ol
"
inputs/0ÿÿÿÿÿÿÿÿÿd
"
inputs/1ÿÿÿÿÿÿÿÿÿ
"
inputs/2ÿÿÿÿÿÿÿÿÿZ
ª "ÿÿÿÿÿÿÿÿÿÃª
H__inference_dense_2598_layer_call_and_return_conditional_losses_25264543^>?0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÃ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¾
 
-__inference_dense_2598_layer_call_fn_25264533Q>?0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÃ
ª "ÿÿÿÿÿÿÿÿÿ¾©
H__inference_dense_2599_layer_call_and_return_conditional_losses_25264679]UV0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¾
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_2599_layer_call_fn_25264669PUV0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¾
ª "ÿÿÿÿÿÿÿÿÿ¬
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25264648^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¾
 ¬
J__inference_dropout_1299_layer_call_and_return_conditional_losses_25264660^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¾
 
/__inference_dropout_1299_layer_call_fn_25264638Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p 
ª "ÿÿÿÿÿÿÿÿÿ¾
/__inference_dropout_1299_layer_call_fn_25264643Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¾
p
ª "ÿÿÿÿÿÿÿÿÿ¾¯
L__inference_embedding_2600_layer_call_and_return_conditional_losses_25264417_ /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 
1__inference_embedding_2600_layer_call_fn_25264401R /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd¯
L__inference_embedding_2601_layer_call_and_return_conditional_losses_25264446_%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
1__inference_embedding_2601_layer_call_fn_25264430R%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿª
J__inference_flatten_3898_layer_call_and_return_conditional_losses_25264487\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
/__inference_flatten_3898_layer_call_fn_25264481O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿdª
J__inference_flatten_3899_layer_call_and_return_conditional_losses_25264498\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_flatten_3899_layer_call_fn_25264492O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿª
J__inference_flatten_3900_layer_call_and_return_conditional_losses_25264509\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿZ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿZ
 
/__inference_flatten_3900_layer_call_fn_25264503O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿZ
ª "ÿÿÿÿÿÿÿÿÿZ­
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25264348`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
I__inference_lambda_3891_layer_call_and_return_conditional_losses_25264358`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_lambda_3891_layer_call_fn_25264333S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_lambda_3891_layer_call_fn_25264338S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p
ª "ÿÿÿÿÿÿÿÿÿ­
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25264378`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
I__inference_lambda_3892_layer_call_and_return_conditional_losses_25264388`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_lambda_3892_layer_call_fn_25264363S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_lambda_3892_layer_call_fn_25264368S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p
ª "ÿÿÿÿÿÿÿÿÿ±
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25264466d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿZ
 ±
I__inference_lambda_3893_layer_call_and_return_conditional_losses_25264476d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿZ
 
.__inference_lambda_3893_layer_call_fn_25264451W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p 
ª "ÿÿÿÿÿÿÿÿÿZ
.__inference_lambda_3893_layer_call_fn_25264456W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\

 
p
ª "ÿÿÿÿÿÿÿÿÿZ=
__inference_loss_fn_0_25264700 ¢

¢ 
ª " =
__inference_loss_fn_1_25264711%¢

¢ 
ª " ¼
H__inference_model_1300_layer_call_and_return_conditional_losses_25263991p
% >?HEGFUV;¢8
1¢.
$!

input_1298ÿÿÿÿÿÿÿÿÿ\
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
H__inference_model_1300_layer_call_and_return_conditional_losses_25264042p
% >?GHEFUV;¢8
1¢.
$!

input_1298ÿÿÿÿÿÿÿÿÿ\
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
H__inference_model_1300_layer_call_and_return_conditional_losses_25264222l
% >?HEGFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
H__inference_model_1300_layer_call_and_return_conditional_losses_25264328l
% >?GHEFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_model_1300_layer_call_fn_25263654c
% >?HEGFUV;¢8
1¢.
$!

input_1298ÿÿÿÿÿÿÿÿÿ\
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_model_1300_layer_call_fn_25263940c
% >?GHEFUV;¢8
1¢.
$!

input_1298ÿÿÿÿÿÿÿÿÿ\
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_model_1300_layer_call_fn_25264112_
% >?HEGFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_model_1300_layer_call_fn_25264137_
% >?GHEFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ\
p

 
ª "ÿÿÿÿÿÿÿÿÿ½
&__inference_signature_wrapper_25264087
% >?HEGFUVA¢>
¢ 
7ª4
2

input_1298$!

input_1298ÿÿÿÿÿÿÿÿÿ\"Aª>
<
activation_2599)&
activation_2599ÿÿÿÿÿÿÿÿÿ