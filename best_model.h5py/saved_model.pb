Æ
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
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Á¶

embedding_676/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ód*)
shared_nameembedding_676/embeddings

,embedding_676/embeddings/Read/ReadVariableOpReadVariableOpembedding_676/embeddings*
_output_shapes
:	Ód*
dtype0

embedding_677/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameembedding_677/embeddings

,embedding_677/embeddings/Read/ReadVariableOpReadVariableOpembedding_677/embeddings*
_output_shapes
:	*
dtype0
~
dense_674/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ëü*!
shared_namedense_674/kernel
w
$dense_674/kernel/Read/ReadVariableOpReadVariableOpdense_674/kernel* 
_output_shapes
:
Ëü*
dtype0
u
dense_674/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*
shared_namedense_674/bias
n
"dense_674/bias/Read/ReadVariableOpReadVariableOpdense_674/bias*
_output_shapes	
:ü*
dtype0

batch_normalization_337/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*.
shared_namebatch_normalization_337/gamma

1batch_normalization_337/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_337/gamma*
_output_shapes	
:ü*
dtype0

batch_normalization_337/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*-
shared_namebatch_normalization_337/beta

0batch_normalization_337/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_337/beta*
_output_shapes	
:ü*
dtype0

#batch_normalization_337/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*4
shared_name%#batch_normalization_337/moving_mean

7batch_normalization_337/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_337/moving_mean*
_output_shapes	
:ü*
dtype0
§
'batch_normalization_337/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*8
shared_name)'batch_normalization_337/moving_variance
 
;batch_normalization_337/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_337/moving_variance*
_output_shapes	
:ü*
dtype0
}
dense_675/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*!
shared_namedense_675/kernel
v
$dense_675/kernel/Read/ReadVariableOpReadVariableOpdense_675/kernel*
_output_shapes
:	ü*
dtype0
t
dense_675/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_675/bias
m
"dense_675/bias/Read/ReadVariableOpReadVariableOpdense_675/bias*
_output_shapes
:*
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
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
 Nadam/embedding_676/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ód*1
shared_name" Nadam/embedding_676/embeddings/m

4Nadam/embedding_676/embeddings/m/Read/ReadVariableOpReadVariableOp Nadam/embedding_676/embeddings/m*
_output_shapes
:	Ód*
dtype0

 Nadam/embedding_677/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Nadam/embedding_677/embeddings/m

4Nadam/embedding_677/embeddings/m/Read/ReadVariableOpReadVariableOp Nadam/embedding_677/embeddings/m*
_output_shapes
:	*
dtype0

Nadam/dense_674/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ëü*)
shared_nameNadam/dense_674/kernel/m

,Nadam/dense_674/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_674/kernel/m* 
_output_shapes
:
Ëü*
dtype0

Nadam/dense_674/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*'
shared_nameNadam/dense_674/bias/m
~
*Nadam/dense_674/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_674/bias/m*
_output_shapes	
:ü*
dtype0
£
%Nadam/batch_normalization_337/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*6
shared_name'%Nadam/batch_normalization_337/gamma/m

9Nadam/batch_normalization_337/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_337/gamma/m*
_output_shapes	
:ü*
dtype0
¡
$Nadam/batch_normalization_337/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*5
shared_name&$Nadam/batch_normalization_337/beta/m

8Nadam/batch_normalization_337/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_337/beta/m*
_output_shapes	
:ü*
dtype0

Nadam/dense_675/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*)
shared_nameNadam/dense_675/kernel/m

,Nadam/dense_675/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_675/kernel/m*
_output_shapes
:	ü*
dtype0

Nadam/dense_675/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/dense_675/bias/m
}
*Nadam/dense_675/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_675/bias/m*
_output_shapes
:*
dtype0

 Nadam/embedding_676/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ód*1
shared_name" Nadam/embedding_676/embeddings/v

4Nadam/embedding_676/embeddings/v/Read/ReadVariableOpReadVariableOp Nadam/embedding_676/embeddings/v*
_output_shapes
:	Ód*
dtype0

 Nadam/embedding_677/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Nadam/embedding_677/embeddings/v

4Nadam/embedding_677/embeddings/v/Read/ReadVariableOpReadVariableOp Nadam/embedding_677/embeddings/v*
_output_shapes
:	*
dtype0

Nadam/dense_674/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ëü*)
shared_nameNadam/dense_674/kernel/v

,Nadam/dense_674/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_674/kernel/v* 
_output_shapes
:
Ëü*
dtype0

Nadam/dense_674/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*'
shared_nameNadam/dense_674/bias/v
~
*Nadam/dense_674/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_674/bias/v*
_output_shapes	
:ü*
dtype0
£
%Nadam/batch_normalization_337/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*6
shared_name'%Nadam/batch_normalization_337/gamma/v

9Nadam/batch_normalization_337/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_337/gamma/v*
_output_shapes	
:ü*
dtype0
¡
$Nadam/batch_normalization_337/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*5
shared_name&$Nadam/batch_normalization_337/beta/v

8Nadam/batch_normalization_337/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_337/beta/v*
_output_shapes	
:ü*
dtype0

Nadam/dense_675/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*)
shared_nameNadam/dense_675/kernel/v

,Nadam/dense_675/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_675/kernel/v*
_output_shapes
:	ü*
dtype0

Nadam/dense_675/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/dense_675/bias/v
}
*Nadam/dense_675/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_675/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
L
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*»K
value±KB®K B§K
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
ô
_iter

`beta_1

abeta_2
	bdecay
clearning_rate
dmomentum_cache mº%m»>m¼?m½Em¾Fm¿UmÀVmÁ vÂ%vÃ>vÄ?vÅEvÆFvÇUvÈVvÉ
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
enon_trainable_variables
trainable_variables
flayer_regularization_losses
	variables

glayers
hlayer_metrics
regularization_losses
imetrics
 
 
 
 
 
­
jnon_trainable_variables
trainable_variables
klayer_regularization_losses
	variables

llayers
mlayer_metrics
regularization_losses
nmetrics
 
 
 
­
onon_trainable_variables
trainable_variables
player_regularization_losses
	variables

qlayers
rlayer_metrics
regularization_losses
smetrics
hf
VARIABLE_VALUEembedding_676/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

 0

 0
 
­
tnon_trainable_variables
!trainable_variables
ulayer_regularization_losses
"	variables

vlayers
wlayer_metrics
#regularization_losses
xmetrics
hf
VARIABLE_VALUEembedding_677/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

%0

%0
 
­
ynon_trainable_variables
&trainable_variables
zlayer_regularization_losses
'	variables

{layers
|layer_metrics
(regularization_losses
}metrics
 
 
 
°
~non_trainable_variables
*trainable_variables
layer_regularization_losses
+	variables
layers
layer_metrics
,regularization_losses
metrics
 
 
 
²
non_trainable_variables
.trainable_variables
 layer_regularization_losses
/	variables
layers
layer_metrics
0regularization_losses
metrics
 
 
 
²
non_trainable_variables
2trainable_variables
 layer_regularization_losses
3	variables
layers
layer_metrics
4regularization_losses
metrics
 
 
 
²
non_trainable_variables
6trainable_variables
 layer_regularization_losses
7	variables
layers
layer_metrics
8regularization_losses
metrics
 
 
 
²
non_trainable_variables
:trainable_variables
 layer_regularization_losses
;	variables
layers
layer_metrics
<regularization_losses
metrics
\Z
VARIABLE_VALUEdense_674/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_674/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1

>0
?1
 
²
non_trainable_variables
@trainable_variables
 layer_regularization_losses
A	variables
layers
layer_metrics
Bregularization_losses
metrics
 
hf
VARIABLE_VALUEbatch_normalization_337/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_337/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_337/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_337/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

E0
F1
G2
H3
 
²
non_trainable_variables
Itrainable_variables
 layer_regularization_losses
J	variables
layers
layer_metrics
Kregularization_losses
 metrics
 
 
 
²
¡non_trainable_variables
Mtrainable_variables
 ¢layer_regularization_losses
N	variables
£layers
¤layer_metrics
Oregularization_losses
¥metrics
 
 
 
²
¦non_trainable_variables
Qtrainable_variables
 §layer_regularization_losses
R	variables
¨layers
©layer_metrics
Sregularization_losses
ªmetrics
\Z
VARIABLE_VALUEdense_675/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_675/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
²
«non_trainable_variables
Wtrainable_variables
 ¬layer_regularization_losses
X	variables
­layers
®layer_metrics
Yregularization_losses
¯metrics
 
 
 
²
°non_trainable_variables
[trainable_variables
 ±layer_regularization_losses
\	variables
²layers
³layer_metrics
]regularization_losses
´metrics
IG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE
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
µ0
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

¶total

·count
¸	variables
¹	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

¶0
·1

¸	variables

VARIABLE_VALUE Nadam/embedding_676/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Nadam/embedding_677/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_674/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_674/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE%Nadam/batch_normalization_337/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Nadam/batch_normalization_337/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_675/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_675/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Nadam/embedding_676/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Nadam/embedding_677/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_674/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_674/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE%Nadam/batch_normalization_337/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Nadam/batch_normalization_337/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_675/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_675/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_336Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿU
Ì
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_336embedding_677/embeddingsembedding_676/embeddingsdense_674/kerneldense_674/bias'batch_normalization_337/moving_variancebatch_normalization_337/gamma#batch_normalization_337/moving_meanbatch_normalization_337/betadense_675/kerneldense_675/bias*
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
GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_6553469
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Á
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,embedding_676/embeddings/Read/ReadVariableOp,embedding_677/embeddings/Read/ReadVariableOp$dense_674/kernel/Read/ReadVariableOp"dense_674/bias/Read/ReadVariableOp1batch_normalization_337/gamma/Read/ReadVariableOp0batch_normalization_337/beta/Read/ReadVariableOp7batch_normalization_337/moving_mean/Read/ReadVariableOp;batch_normalization_337/moving_variance/Read/ReadVariableOp$dense_675/kernel/Read/ReadVariableOp"dense_675/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4Nadam/embedding_676/embeddings/m/Read/ReadVariableOp4Nadam/embedding_677/embeddings/m/Read/ReadVariableOp,Nadam/dense_674/kernel/m/Read/ReadVariableOp*Nadam/dense_674/bias/m/Read/ReadVariableOp9Nadam/batch_normalization_337/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_337/beta/m/Read/ReadVariableOp,Nadam/dense_675/kernel/m/Read/ReadVariableOp*Nadam/dense_675/bias/m/Read/ReadVariableOp4Nadam/embedding_676/embeddings/v/Read/ReadVariableOp4Nadam/embedding_677/embeddings/v/Read/ReadVariableOp,Nadam/dense_674/kernel/v/Read/ReadVariableOp*Nadam/dense_674/bias/v/Read/ReadVariableOp9Nadam/batch_normalization_337/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_337/beta/v/Read/ReadVariableOp,Nadam/dense_675/kernel/v/Read/ReadVariableOp*Nadam/dense_675/bias/v/Read/ReadVariableOpConst*/
Tin(
&2$	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_6554218
	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_676/embeddingsembedding_677/embeddingsdense_674/kerneldense_674/biasbatch_normalization_337/gammabatch_normalization_337/beta#batch_normalization_337/moving_mean'batch_normalization_337/moving_variancedense_675/kerneldense_675/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcount Nadam/embedding_676/embeddings/m Nadam/embedding_677/embeddings/mNadam/dense_674/kernel/mNadam/dense_674/bias/m%Nadam/batch_normalization_337/gamma/m$Nadam/batch_normalization_337/beta/mNadam/dense_675/kernel/mNadam/dense_675/bias/m Nadam/embedding_676/embeddings/v Nadam/embedding_677/embeddings/vNadam/dense_674/kernel/vNadam/dense_674/bias/v%Nadam/batch_normalization_337/gamma/v$Nadam/batch_normalization_337/beta/vNadam/dense_675/kernel/vNadam/dense_675/bias/v*.
Tin'
%2#*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_6554330Ú
³
·
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6553971

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
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
:ü2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ü2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
á
e
I__inference_flatten_1014_layer_call_and_return_conditional_losses_6552926

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿS   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿS:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
 
_user_specified_nameinputs
È
I
-__inference_dropout_337_layer_call_fn_6554020

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_337_layer_call_and_return_conditional_losses_65529752
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs


d
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6553172

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
ÆV
ö
F__inference_model_338_layer_call_and_return_conditional_losses_6553424
	input_336(
embedding_677_6553379:	(
embedding_676_6553382:	Ód%
dense_674_6553389:
Ëü 
dense_674_6553391:	ü.
batch_normalization_337_6553394:	ü.
batch_normalization_337_6553396:	ü.
batch_normalization_337_6553398:	ü.
batch_normalization_337_6553400:	ü$
dense_675_6553405:	ü
dense_675_6553407:
identity¢/batch_normalization_337/StatefulPartitionedCall¢!dense_674/StatefulPartitionedCall¢!dense_675/StatefulPartitionedCall¢#dropout_337/StatefulPartitionedCall¢%embedding_676/StatefulPartitionedCall¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢%embedding_677/StatefulPartitionedCall¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOpá
lambda_1006/PartitionedCallPartitionedCall	input_336*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1006_layer_call_and_return_conditional_losses_65531932
lambda_1006/PartitionedCallá
lambda_1005/PartitionedCallPartitionedCall	input_336*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1005_layer_call_and_return_conditional_losses_65531722
lambda_1005/PartitionedCallå
lambda_1007/PartitionedCallPartitionedCall	input_336*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lambda_1007_layer_call_and_return_conditional_losses_65531512
lambda_1007/PartitionedCall¹
%embedding_677/StatefulPartitionedCallStatefulPartitionedCall$lambda_1006/PartitionedCall:output:0embedding_677_6553379*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_677_layer_call_and_return_conditional_losses_65528802'
%embedding_677/StatefulPartitionedCall¹
%embedding_676/StatefulPartitionedCallStatefulPartitionedCall$lambda_1005/PartitionedCall:output:0embedding_676_6553382*
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
GPU 2J 8 *S
fNRL
J__inference_embedding_676_layer_call_and_return_conditional_losses_65529002'
%embedding_676/StatefulPartitionedCall
flatten_1012/PartitionedCallPartitionedCall.embedding_676/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *R
fMRK
I__inference_flatten_1012_layer_call_and_return_conditional_losses_65529102
flatten_1012/PartitionedCall
flatten_1013/PartitionedCallPartitionedCall.embedding_677/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1013_layer_call_and_return_conditional_losses_65529182
flatten_1013/PartitionedCallÿ
flatten_1014/PartitionedCallPartitionedCall$lambda_1007/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1014_layer_call_and_return_conditional_losses_65529262
flatten_1014/PartitionedCallÚ
concatenate_337/PartitionedCallPartitionedCall%flatten_1012/PartitionedCall:output:0%flatten_1013/PartitionedCall:output:0%flatten_1014/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_concatenate_337_layer_call_and_return_conditional_losses_65529362!
concatenate_337/PartitionedCall¿
!dense_674/StatefulPartitionedCallStatefulPartitionedCall(concatenate_337/PartitionedCall:output:0dense_674_6553389dense_674_6553391*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_674_layer_call_and_return_conditional_losses_65529482#
!dense_674/StatefulPartitionedCallË
/batch_normalization_337/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0batch_normalization_337_6553394batch_normalization_337_6553396batch_normalization_337_6553398batch_normalization_337_6553400*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_655274321
/batch_normalization_337/StatefulPartitionedCall
activation_674/PartitionedCallPartitionedCall8batch_normalization_337/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_674_layer_call_and_return_conditional_losses_65529682 
activation_674/PartitionedCall
#dropout_337/StatefulPartitionedCallStatefulPartitionedCall'activation_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_337_layer_call_and_return_conditional_losses_65530722%
#dropout_337/StatefulPartitionedCallÂ
!dense_675/StatefulPartitionedCallStatefulPartitionedCall,dropout_337/StatefulPartitionedCall:output:0dense_675_6553405dense_675_6553407*
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
GPU 2J 8 *O
fJRH
F__inference_dense_675_layer_call_and_return_conditional_losses_65529872#
!dense_675/StatefulPartitionedCall
activation_675/PartitionedCallPartitionedCall*dense_675/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *T
fORM
K__inference_activation_675_layer_call_and_return_conditional_losses_65529982 
activation_675/PartitionedCallÏ
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_676_6553382*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulÏ
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_677_6553379*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mulå
IdentityIdentity'activation_675/PartitionedCall:output:00^batch_normalization_337/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall"^dense_675/StatefulPartitionedCall$^dropout_337/StatefulPartitionedCall&^embedding_676/StatefulPartitionedCall;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp&^embedding_677/StatefulPartitionedCall;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 2b
/batch_normalization_337/StatefulPartitionedCall/batch_normalization_337/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall2J
#dropout_337/StatefulPartitionedCall#dropout_337/StatefulPartitionedCall2N
%embedding_676/StatefulPartitionedCall%embedding_676/StatefulPartitionedCall2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2N
%embedding_677/StatefulPartitionedCall%embedding_677/StatefulPartitionedCall2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:R N
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
#
_user_specified_name	input_336

Ø
9__inference_batch_normalization_337_layer_call_fn_6553951

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_65527432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Î
J
.__inference_flatten_1014_layer_call_fn_6553885

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
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1014_layer_call_and_return_conditional_losses_65529262
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿS:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
 
_user_specified_nameinputs
Ó
æ
J__inference_embedding_677_layer_call_and_return_conditional_losses_6553828

inputs+
embedding_lookup_6553816:	
identity¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castÿ
embedding_lookupResourceGatherembedding_lookup_6553816Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/6553816*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/6553816*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1Ò
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_6553816*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mulÌ
IdentityIdentity$embedding_lookup/Identity_1:output:0;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
U
Í
F__inference_model_338_layer_call_and_return_conditional_losses_6553013

inputs(
embedding_677_6552881:	(
embedding_676_6552901:	Ód%
dense_674_6552949:
Ëü 
dense_674_6552951:	ü.
batch_normalization_337_6552954:	ü.
batch_normalization_337_6552956:	ü.
batch_normalization_337_6552958:	ü.
batch_normalization_337_6552960:	ü$
dense_675_6552988:	ü
dense_675_6552990:
identity¢/batch_normalization_337/StatefulPartitionedCall¢!dense_674/StatefulPartitionedCall¢!dense_675/StatefulPartitionedCall¢%embedding_676/StatefulPartitionedCall¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢%embedding_677/StatefulPartitionedCall¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÞ
lambda_1006/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1006_layer_call_and_return_conditional_losses_65528382
lambda_1006/PartitionedCallÞ
lambda_1005/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1005_layer_call_and_return_conditional_losses_65528502
lambda_1005/PartitionedCallâ
lambda_1007/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lambda_1007_layer_call_and_return_conditional_losses_65528622
lambda_1007/PartitionedCall¹
%embedding_677/StatefulPartitionedCallStatefulPartitionedCall$lambda_1006/PartitionedCall:output:0embedding_677_6552881*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_677_layer_call_and_return_conditional_losses_65528802'
%embedding_677/StatefulPartitionedCall¹
%embedding_676/StatefulPartitionedCallStatefulPartitionedCall$lambda_1005/PartitionedCall:output:0embedding_676_6552901*
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
GPU 2J 8 *S
fNRL
J__inference_embedding_676_layer_call_and_return_conditional_losses_65529002'
%embedding_676/StatefulPartitionedCall
flatten_1012/PartitionedCallPartitionedCall.embedding_676/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *R
fMRK
I__inference_flatten_1012_layer_call_and_return_conditional_losses_65529102
flatten_1012/PartitionedCall
flatten_1013/PartitionedCallPartitionedCall.embedding_677/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1013_layer_call_and_return_conditional_losses_65529182
flatten_1013/PartitionedCallÿ
flatten_1014/PartitionedCallPartitionedCall$lambda_1007/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1014_layer_call_and_return_conditional_losses_65529262
flatten_1014/PartitionedCallÚ
concatenate_337/PartitionedCallPartitionedCall%flatten_1012/PartitionedCall:output:0%flatten_1013/PartitionedCall:output:0%flatten_1014/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_concatenate_337_layer_call_and_return_conditional_losses_65529362!
concatenate_337/PartitionedCall¿
!dense_674/StatefulPartitionedCallStatefulPartitionedCall(concatenate_337/PartitionedCall:output:0dense_674_6552949dense_674_6552951*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_674_layer_call_and_return_conditional_losses_65529482#
!dense_674/StatefulPartitionedCallÍ
/batch_normalization_337/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0batch_normalization_337_6552954batch_normalization_337_6552956batch_normalization_337_6552958batch_normalization_337_6552960*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_655268321
/batch_normalization_337/StatefulPartitionedCall
activation_674/PartitionedCallPartitionedCall8batch_normalization_337/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_674_layer_call_and_return_conditional_losses_65529682 
activation_674/PartitionedCall
dropout_337/PartitionedCallPartitionedCall'activation_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_337_layer_call_and_return_conditional_losses_65529752
dropout_337/PartitionedCallº
!dense_675/StatefulPartitionedCallStatefulPartitionedCall$dropout_337/PartitionedCall:output:0dense_675_6552988dense_675_6552990*
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
GPU 2J 8 *O
fJRH
F__inference_dense_675_layer_call_and_return_conditional_losses_65529872#
!dense_675/StatefulPartitionedCall
activation_675/PartitionedCallPartitionedCall*dense_675/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *T
fORM
K__inference_activation_675_layer_call_and_return_conditional_losses_65529982 
activation_675/PartitionedCallÏ
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_676_6552901*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulÏ
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_677_6552881*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mul¿
IdentityIdentity'activation_675/PartitionedCall:output:00^batch_normalization_337/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall"^dense_675/StatefulPartitionedCall&^embedding_676/StatefulPartitionedCall;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp&^embedding_677/StatefulPartitionedCall;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 2b
/batch_normalization_337/StatefulPartitionedCall/batch_normalization_337/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall2N
%embedding_676/StatefulPartitionedCall%embedding_676/StatefulPartitionedCall2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2N
%embedding_677/StatefulPartitionedCall%embedding_677/StatefulPartitionedCall2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs


d
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6552838

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs


d
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6552850

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
Ý	
ú
F__inference_dense_674_layer_call_and_return_conditional_losses_6552948

inputs2
matmul_readvariableop_resource:
Ëü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ëü*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿË: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
 
_user_specified_nameinputs
Ä
I
-__inference_lambda_1006_layer_call_fn_6553750

inputs
identityÆ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1006_layer_call_and_return_conditional_losses_65531932
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
Ý	
ú
F__inference_dense_674_layer_call_and_return_conditional_losses_6553925

inputs2
matmul_readvariableop_resource:
Ëü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ëü*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿË: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
 
_user_specified_nameinputs
Ä
I
-__inference_lambda_1005_layer_call_fn_6553715

inputs
identityÆ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1005_layer_call_and_return_conditional_losses_65528502
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
á
e
I__inference_flatten_1012_layer_call_and_return_conditional_losses_6552910

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
Ó
æ
J__inference_embedding_676_layer_call_and_return_conditional_losses_6553799

inputs+
embedding_lookup_6553787:	Ód
identity¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castÿ
embedding_lookupResourceGatherembedding_lookup_6553787Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/6553787*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/6553787*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1Ò
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_6553787*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulÌ
IdentityIdentity$embedding_lookup/Identity_1:output:0;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

+__inference_dense_675_layer_call_fn_6554051

inputs
unknown:	ü
	unknown_0:
identity¢StatefulPartitionedCallö
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
GPU 2J 8 *O
fJRH
F__inference_dense_675_layer_call_and_return_conditional_losses_65529872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
³
·
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6552683

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
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
:ü2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ü2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ç


F__inference_model_338_layer_call_and_return_conditional_losses_6553604

inputs9
&embedding_677_embedding_lookup_6553541:	9
&embedding_676_embedding_lookup_6553547:	Ód<
(dense_674_matmul_readvariableop_resource:
Ëü8
)dense_674_biasadd_readvariableop_resource:	üH
9batch_normalization_337_batchnorm_readvariableop_resource:	üL
=batch_normalization_337_batchnorm_mul_readvariableop_resource:	üJ
;batch_normalization_337_batchnorm_readvariableop_1_resource:	üJ
;batch_normalization_337_batchnorm_readvariableop_2_resource:	ü;
(dense_675_matmul_readvariableop_resource:	ü7
)dense_675_biasadd_readvariableop_resource:
identity¢0batch_normalization_337/batchnorm/ReadVariableOp¢2batch_normalization_337/batchnorm/ReadVariableOp_1¢2batch_normalization_337/batchnorm/ReadVariableOp_2¢4batch_normalization_337/batchnorm/mul/ReadVariableOp¢ dense_674/BiasAdd/ReadVariableOp¢dense_674/MatMul/ReadVariableOp¢ dense_675/BiasAdd/ReadVariableOp¢dense_675/MatMul/ReadVariableOp¢embedding_676/embedding_lookup¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢embedding_677/embedding_lookup¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOp
lambda_1006/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_1006/strided_slice/stack
!lambda_1006/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_1006/strided_slice/stack_1
!lambda_1006/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_1006/strided_slice/stack_2Å
lambda_1006/strided_sliceStridedSliceinputs(lambda_1006/strided_slice/stack:output:0*lambda_1006/strided_slice/stack_1:output:0*lambda_1006/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_1006/strided_slice
lambda_1006/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_1006/ExpandDims/dim¹
lambda_1006/ExpandDims
ExpandDims"lambda_1006/strided_slice:output:0#lambda_1006/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_1006/ExpandDims
lambda_1005/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lambda_1005/strided_slice/stack
!lambda_1005/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_1005/strided_slice/stack_1
!lambda_1005/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_1005/strided_slice/stack_2Å
lambda_1005/strided_sliceStridedSliceinputs(lambda_1005/strided_slice/stack:output:0*lambda_1005/strided_slice/stack_1:output:0*lambda_1005/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_1005/strided_slice
lambda_1005/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_1005/ExpandDims/dim¹
lambda_1005/ExpandDims
ExpandDims"lambda_1005/strided_slice:output:0#lambda_1005/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_1005/ExpandDims
lambda_1007/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_1007/strided_slice/stack
!lambda_1007/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lambda_1007/strided_slice/stack_1
!lambda_1007/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_1007/strided_slice/stack_2±
lambda_1007/strided_sliceStridedSliceinputs(lambda_1007/strided_slice/stack:output:0*lambda_1007/strided_slice/stack_1:output:0*lambda_1007/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS*

begin_mask*
end_mask2
lambda_1007/strided_slice
lambda_1007/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_1007/ExpandDims/dim½
lambda_1007/ExpandDims
ExpandDims"lambda_1007/strided_slice:output:0#lambda_1007/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2
lambda_1007/ExpandDims
embedding_677/CastCastlambda_1006/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_677/CastÅ
embedding_677/embedding_lookupResourceGather&embedding_677_embedding_lookup_6553541embedding_677/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*9
_class/
-+loc:@embedding_677/embedding_lookup/6553541*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02 
embedding_677/embedding_lookup¦
'embedding_677/embedding_lookup/IdentityIdentity'embedding_677/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*9
_class/
-+loc:@embedding_677/embedding_lookup/6553541*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'embedding_677/embedding_lookup/IdentityÊ
)embedding_677/embedding_lookup/Identity_1Identity0embedding_677/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)embedding_677/embedding_lookup/Identity_1
embedding_676/CastCastlambda_1005/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_676/CastÅ
embedding_676/embedding_lookupResourceGather&embedding_676_embedding_lookup_6553547embedding_676/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*9
_class/
-+loc:@embedding_676/embedding_lookup/6553547*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02 
embedding_676/embedding_lookup¦
'embedding_676/embedding_lookup/IdentityIdentity'embedding_676/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*9
_class/
-+loc:@embedding_676/embedding_lookup/6553547*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'embedding_676/embedding_lookup/IdentityÊ
)embedding_676/embedding_lookup/Identity_1Identity0embedding_676/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)embedding_676/embedding_lookup/Identity_1y
flatten_1012/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
flatten_1012/Constº
flatten_1012/ReshapeReshape2embedding_676/embedding_lookup/Identity_1:output:0flatten_1012/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
flatten_1012/Reshapey
flatten_1013/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_1013/Constº
flatten_1013/ReshapeReshape2embedding_677/embedding_lookup/Identity_1:output:0flatten_1013/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_1013/Reshapey
flatten_1014/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿS   2
flatten_1014/Const§
flatten_1014/ReshapeReshapelambda_1007/ExpandDims:output:0flatten_1014/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2
flatten_1014/Reshape|
concatenate_337/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_337/concat/axisû
concatenate_337/concatConcatV2flatten_1012/Reshape:output:0flatten_1013/Reshape:output:0flatten_1014/Reshape:output:0$concatenate_337/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË2
concatenate_337/concat­
dense_674/MatMul/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource* 
_output_shapes
:
Ëü*
dtype02!
dense_674/MatMul/ReadVariableOp«
dense_674/MatMulMatMulconcatenate_337/concat:output:0'dense_674/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dense_674/MatMul«
 dense_674/BiasAdd/ReadVariableOpReadVariableOp)dense_674_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype02"
 dense_674/BiasAdd/ReadVariableOpª
dense_674/BiasAddBiasAdddense_674/MatMul:product:0(dense_674/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dense_674/BiasAddÛ
0batch_normalization_337/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_337_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype022
0batch_normalization_337/batchnorm/ReadVariableOp
'batch_normalization_337/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2)
'batch_normalization_337/batchnorm/add/yé
%batch_normalization_337/batchnorm/addAddV28batch_normalization_337/batchnorm/ReadVariableOp:value:00batch_normalization_337/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü2'
%batch_normalization_337/batchnorm/add¬
'batch_normalization_337/batchnorm/RsqrtRsqrt)batch_normalization_337/batchnorm/add:z:0*
T0*
_output_shapes	
:ü2)
'batch_normalization_337/batchnorm/Rsqrtç
4batch_normalization_337/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_337_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype026
4batch_normalization_337/batchnorm/mul/ReadVariableOpæ
%batch_normalization_337/batchnorm/mulMul+batch_normalization_337/batchnorm/Rsqrt:y:0<batch_normalization_337/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü2'
%batch_normalization_337/batchnorm/mulÓ
'batch_normalization_337/batchnorm/mul_1Muldense_674/BiasAdd:output:0)batch_normalization_337/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2)
'batch_normalization_337/batchnorm/mul_1á
2batch_normalization_337/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_337_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype024
2batch_normalization_337/batchnorm/ReadVariableOp_1æ
'batch_normalization_337/batchnorm/mul_2Mul:batch_normalization_337/batchnorm/ReadVariableOp_1:value:0)batch_normalization_337/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü2)
'batch_normalization_337/batchnorm/mul_2á
2batch_normalization_337/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_337_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype024
2batch_normalization_337/batchnorm/ReadVariableOp_2ä
%batch_normalization_337/batchnorm/subSub:batch_normalization_337/batchnorm/ReadVariableOp_2:value:0+batch_normalization_337/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ü2'
%batch_normalization_337/batchnorm/subæ
'batch_normalization_337/batchnorm/add_1AddV2+batch_normalization_337/batchnorm/mul_1:z:0)batch_normalization_337/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2)
'batch_normalization_337/batchnorm/add_1
activation_674/ReluRelu+batch_normalization_337/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
activation_674/Relu
dropout_337/IdentityIdentity!activation_674/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout_337/Identity¬
dense_675/MatMul/ReadVariableOpReadVariableOp(dense_675_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype02!
dense_675/MatMul/ReadVariableOp¨
dense_675/MatMulMatMuldropout_337/Identity:output:0'dense_675/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_675/MatMulª
 dense_675/BiasAdd/ReadVariableOpReadVariableOp)dense_675_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_675/BiasAdd/ReadVariableOp©
dense_675/BiasAddBiasAdddense_675/MatMul:product:0(dense_675/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_675/BiasAdd
activation_675/ReluReludense_675/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_675/Reluà
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp&embedding_676_embedding_lookup_6553547*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulà
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp&embedding_677_embedding_lookup_6553541*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mul
IdentityIdentity!activation_675/Relu:activations:01^batch_normalization_337/batchnorm/ReadVariableOp3^batch_normalization_337/batchnorm/ReadVariableOp_13^batch_normalization_337/batchnorm/ReadVariableOp_25^batch_normalization_337/batchnorm/mul/ReadVariableOp!^dense_674/BiasAdd/ReadVariableOp ^dense_674/MatMul/ReadVariableOp!^dense_675/BiasAdd/ReadVariableOp ^dense_675/MatMul/ReadVariableOp^embedding_676/embedding_lookup;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp^embedding_677/embedding_lookup;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 2d
0batch_normalization_337/batchnorm/ReadVariableOp0batch_normalization_337/batchnorm/ReadVariableOp2h
2batch_normalization_337/batchnorm/ReadVariableOp_12batch_normalization_337/batchnorm/ReadVariableOp_12h
2batch_normalization_337/batchnorm/ReadVariableOp_22batch_normalization_337/batchnorm/ReadVariableOp_22l
4batch_normalization_337/batchnorm/mul/ReadVariableOp4batch_normalization_337/batchnorm/mul/ReadVariableOp2D
 dense_674/BiasAdd/ReadVariableOp dense_674/BiasAdd/ReadVariableOp2B
dense_674/MatMul/ReadVariableOpdense_674/MatMul/ReadVariableOp2D
 dense_675/BiasAdd/ReadVariableOp dense_675/BiasAdd/ReadVariableOp2B
dense_675/MatMul/ReadVariableOpdense_675/MatMul/ReadVariableOp2@
embedding_676/embedding_lookupembedding_676/embedding_lookup2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2@
embedding_677/embedding_lookupembedding_677/embedding_lookup2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs


d
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6553760

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
¦

+__inference_dense_674_layer_call_fn_6553915

inputs
unknown:
Ëü
	unknown_0:	ü
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_674_layer_call_and_return_conditional_losses_65529482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿË: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
 
_user_specified_nameinputs
Ö	
ø
F__inference_dense_675_layer_call_and_return_conditional_losses_6554061

inputs1
matmul_readvariableop_resource:	ü-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ü*
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
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ØM
æ
 __inference__traced_save_6554218
file_prefix7
3savev2_embedding_676_embeddings_read_readvariableop7
3savev2_embedding_677_embeddings_read_readvariableop/
+savev2_dense_674_kernel_read_readvariableop-
)savev2_dense_674_bias_read_readvariableop<
8savev2_batch_normalization_337_gamma_read_readvariableop;
7savev2_batch_normalization_337_beta_read_readvariableopB
>savev2_batch_normalization_337_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_337_moving_variance_read_readvariableop/
+savev2_dense_675_kernel_read_readvariableop-
)savev2_dense_675_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_nadam_embedding_676_embeddings_m_read_readvariableop?
;savev2_nadam_embedding_677_embeddings_m_read_readvariableop7
3savev2_nadam_dense_674_kernel_m_read_readvariableop5
1savev2_nadam_dense_674_bias_m_read_readvariableopD
@savev2_nadam_batch_normalization_337_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_337_beta_m_read_readvariableop7
3savev2_nadam_dense_675_kernel_m_read_readvariableop5
1savev2_nadam_dense_675_bias_m_read_readvariableop?
;savev2_nadam_embedding_676_embeddings_v_read_readvariableop?
;savev2_nadam_embedding_677_embeddings_v_read_readvariableop7
3savev2_nadam_dense_674_kernel_v_read_readvariableop5
1savev2_nadam_dense_674_bias_v_read_readvariableopD
@savev2_nadam_batch_normalization_337_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_337_beta_v_read_readvariableop7
3savev2_nadam_dense_675_kernel_v_read_readvariableop5
1savev2_nadam_dense_675_bias_v_read_readvariableop
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
ShardedFilename¨
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*º
value°B­#B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÎ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÍ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_embedding_676_embeddings_read_readvariableop3savev2_embedding_677_embeddings_read_readvariableop+savev2_dense_674_kernel_read_readvariableop)savev2_dense_674_bias_read_readvariableop8savev2_batch_normalization_337_gamma_read_readvariableop7savev2_batch_normalization_337_beta_read_readvariableop>savev2_batch_normalization_337_moving_mean_read_readvariableopBsavev2_batch_normalization_337_moving_variance_read_readvariableop+savev2_dense_675_kernel_read_readvariableop)savev2_dense_675_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_nadam_embedding_676_embeddings_m_read_readvariableop;savev2_nadam_embedding_677_embeddings_m_read_readvariableop3savev2_nadam_dense_674_kernel_m_read_readvariableop1savev2_nadam_dense_674_bias_m_read_readvariableop@savev2_nadam_batch_normalization_337_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_337_beta_m_read_readvariableop3savev2_nadam_dense_675_kernel_m_read_readvariableop1savev2_nadam_dense_675_bias_m_read_readvariableop;savev2_nadam_embedding_676_embeddings_v_read_readvariableop;savev2_nadam_embedding_677_embeddings_v_read_readvariableop3savev2_nadam_dense_674_kernel_v_read_readvariableop1savev2_nadam_dense_674_bias_v_read_readvariableop@savev2_nadam_batch_normalization_337_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_337_beta_v_read_readvariableop3savev2_nadam_dense_675_kernel_v_read_readvariableop1savev2_nadam_dense_675_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#	2
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

identity_1Identity_1:output:0*
_input_shapesý
ú: :	Ód:	:
Ëü:ü:ü:ü:ü:ü:	ü:: : : : : : : : :	Ód:	:
Ëü:ü:ü:ü:	ü::	Ód:	:
Ëü:ü:ü:ü:	ü:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Ód:%!

_output_shapes
:	:&"
 
_output_shapes
:
Ëü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:%	!

_output_shapes
:	ü: 
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
: :

_output_shapes
: :%!

_output_shapes
:	Ód:%!

_output_shapes
:	:&"
 
_output_shapes
:
Ëü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:%!

_output_shapes
:	ü: 

_output_shapes
::%!

_output_shapes
:	Ód:%!

_output_shapes
:	:&"
 
_output_shapes
:
Ëü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:! 

_output_shapes	
:ü:%!!

_output_shapes
:	ü: "

_output_shapes
::#

_output_shapes
: 


d
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6553858

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
:ÿÿÿÿÿÿÿÿÿS*

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
:ÿÿÿÿÿÿÿÿÿS2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
Î
J
.__inference_flatten_1012_layer_call_fn_6553863

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
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1012_layer_call_and_return_conditional_losses_65529102
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
U
Ð
F__inference_model_338_layer_call_and_return_conditional_losses_6553373
	input_336(
embedding_677_6553328:	(
embedding_676_6553331:	Ód%
dense_674_6553338:
Ëü 
dense_674_6553340:	ü.
batch_normalization_337_6553343:	ü.
batch_normalization_337_6553345:	ü.
batch_normalization_337_6553347:	ü.
batch_normalization_337_6553349:	ü$
dense_675_6553354:	ü
dense_675_6553356:
identity¢/batch_normalization_337/StatefulPartitionedCall¢!dense_674/StatefulPartitionedCall¢!dense_675/StatefulPartitionedCall¢%embedding_676/StatefulPartitionedCall¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢%embedding_677/StatefulPartitionedCall¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOpá
lambda_1006/PartitionedCallPartitionedCall	input_336*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1006_layer_call_and_return_conditional_losses_65528382
lambda_1006/PartitionedCallá
lambda_1005/PartitionedCallPartitionedCall	input_336*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1005_layer_call_and_return_conditional_losses_65528502
lambda_1005/PartitionedCallå
lambda_1007/PartitionedCallPartitionedCall	input_336*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lambda_1007_layer_call_and_return_conditional_losses_65528622
lambda_1007/PartitionedCall¹
%embedding_677/StatefulPartitionedCallStatefulPartitionedCall$lambda_1006/PartitionedCall:output:0embedding_677_6553328*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_677_layer_call_and_return_conditional_losses_65528802'
%embedding_677/StatefulPartitionedCall¹
%embedding_676/StatefulPartitionedCallStatefulPartitionedCall$lambda_1005/PartitionedCall:output:0embedding_676_6553331*
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
GPU 2J 8 *S
fNRL
J__inference_embedding_676_layer_call_and_return_conditional_losses_65529002'
%embedding_676/StatefulPartitionedCall
flatten_1012/PartitionedCallPartitionedCall.embedding_676/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *R
fMRK
I__inference_flatten_1012_layer_call_and_return_conditional_losses_65529102
flatten_1012/PartitionedCall
flatten_1013/PartitionedCallPartitionedCall.embedding_677/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1013_layer_call_and_return_conditional_losses_65529182
flatten_1013/PartitionedCallÿ
flatten_1014/PartitionedCallPartitionedCall$lambda_1007/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1014_layer_call_and_return_conditional_losses_65529262
flatten_1014/PartitionedCallÚ
concatenate_337/PartitionedCallPartitionedCall%flatten_1012/PartitionedCall:output:0%flatten_1013/PartitionedCall:output:0%flatten_1014/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_concatenate_337_layer_call_and_return_conditional_losses_65529362!
concatenate_337/PartitionedCall¿
!dense_674/StatefulPartitionedCallStatefulPartitionedCall(concatenate_337/PartitionedCall:output:0dense_674_6553338dense_674_6553340*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_674_layer_call_and_return_conditional_losses_65529482#
!dense_674/StatefulPartitionedCallÍ
/batch_normalization_337/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0batch_normalization_337_6553343batch_normalization_337_6553345batch_normalization_337_6553347batch_normalization_337_6553349*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_655268321
/batch_normalization_337/StatefulPartitionedCall
activation_674/PartitionedCallPartitionedCall8batch_normalization_337/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_674_layer_call_and_return_conditional_losses_65529682 
activation_674/PartitionedCall
dropout_337/PartitionedCallPartitionedCall'activation_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_337_layer_call_and_return_conditional_losses_65529752
dropout_337/PartitionedCallº
!dense_675/StatefulPartitionedCallStatefulPartitionedCall$dropout_337/PartitionedCall:output:0dense_675_6553354dense_675_6553356*
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
GPU 2J 8 *O
fJRH
F__inference_dense_675_layer_call_and_return_conditional_losses_65529872#
!dense_675/StatefulPartitionedCall
activation_675/PartitionedCallPartitionedCall*dense_675/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *T
fORM
K__inference_activation_675_layer_call_and_return_conditional_losses_65529982 
activation_675/PartitionedCallÏ
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_676_6553331*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulÏ
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_677_6553328*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mul¿
IdentityIdentity'activation_675/PartitionedCall:output:00^batch_normalization_337/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall"^dense_675/StatefulPartitionedCall&^embedding_676/StatefulPartitionedCall;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp&^embedding_677/StatefulPartitionedCall;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 2b
/batch_normalization_337/StatefulPartitionedCall/batch_normalization_337/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall2N
%embedding_676/StatefulPartitionedCall%embedding_676/StatefulPartitionedCall2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2N
%embedding_677/StatefulPartitionedCall%embedding_677/StatefulPartitionedCall2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:R N
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
#
_user_specified_name	input_336
·
g
H__inference_dropout_337_layer_call_and_return_conditional_losses_6554042

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
:ÿÿÿÿÿÿÿÿÿü2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*
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
:ÿÿÿÿÿÿÿÿÿü2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs

Ø
9__inference_batch_normalization_337_layer_call_fn_6553938

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_65526832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs


/__inference_embedding_677_layer_call_fn_6553812

inputs
unknown:	
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_677_layer_call_and_return_conditional_losses_65528802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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


d
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6553848

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
:ÿÿÿÿÿÿÿÿÿS*

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
:ÿÿÿÿÿÿÿÿÿS2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
â

L__inference_concatenate_337_layer_call_and_return_conditional_losses_6552936

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
:ÿÿÿÿÿÿÿÿÿË2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿS:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
 
_user_specified_nameinputs
ç
g
K__inference_activation_674_layer_call_and_return_conditional_losses_6552968

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
¾
Å
__inference_loss_fn_0_6554082V
Cembedding_676_embeddings_regularizer_square_readvariableop_resource:	Ód
identity¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOpý
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpCembedding_676_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mul¬
IdentityIdentity,embedding_676/embeddings/Regularizer/mul:z:0;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp


d
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6553193

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
ü	
ù
+__inference_model_338_layer_call_fn_6553322
	input_336
unknown:	
	unknown_0:	Ód
	unknown_1:
Ëü
	unknown_2:	ü
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCall	input_336unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU 2J 8 *O
fJRH
F__inference_model_338_layer_call_and_return_conditional_losses_65532742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
#
_user_specified_name	input_336


d
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6553151

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
:ÿÿÿÿÿÿÿÿÿS*

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
:ÿÿÿÿÿÿÿÿÿS2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs


d
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6553730

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
*
ñ
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6554005

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
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
:	ü*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
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
:	ü*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
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
:ü*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ü2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü2
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
:ü*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü2
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
:ü2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ü2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ç
g
K__inference_activation_674_layer_call_and_return_conditional_losses_6554015

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ö	
ø
F__inference_dense_675_layer_call_and_return_conditional_losses_6552987

inputs1
matmul_readvariableop_resource:	ü-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ü*
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
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ê
L
0__inference_activation_675_layer_call_fn_6554066

inputs
identityÉ
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
GPU 2J 8 *T
fORM
K__inference_activation_675_layer_call_and_return_conditional_losses_65529982
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
á
e
I__inference_flatten_1012_layer_call_and_return_conditional_losses_6553869

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
Ô	
ó
%__inference_signature_wrapper_6553469
	input_336
unknown:	
	unknown_0:	Ód
	unknown_1:
Ëü
	unknown_2:	ü
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCall	input_336unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU 2J 8 *+
f&R$
"__inference__wrapped_model_65526592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
#
_user_specified_name	input_336
ù
f
H__inference_dropout_337_layer_call_and_return_conditional_losses_6554030

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ä
I
-__inference_lambda_1005_layer_call_fn_6553720

inputs
identityÆ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1005_layer_call_and_return_conditional_losses_65531722
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
ã
g
K__inference_activation_675_layer_call_and_return_conditional_losses_6554071

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
õ	
ö
+__inference_model_338_layer_call_fn_6553494

inputs
unknown:	
	unknown_0:	Ód
	unknown_1:
Ëü
	unknown_2:	ü
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
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
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_338_layer_call_and_return_conditional_losses_65530132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs


d
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6553740

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
ì

L__inference_concatenate_337_layer_call_and_return_conditional_losses_6553906
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
:ÿÿÿÿÿÿÿÿÿË2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿS:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
"
_user_specified_name
inputs/2
ù
f
H__inference_dropout_337_layer_call_and_return_conditional_losses_6552975

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ì
I
-__inference_lambda_1007_layer_call_fn_6553838

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lambda_1007_layer_call_and_return_conditional_losses_65531512
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
¢
§
#__inference__traced_restore_6554330
file_prefix<
)assignvariableop_embedding_676_embeddings:	Ód>
+assignvariableop_1_embedding_677_embeddings:	7
#assignvariableop_2_dense_674_kernel:
Ëü0
!assignvariableop_3_dense_674_bias:	ü?
0assignvariableop_4_batch_normalization_337_gamma:	ü>
/assignvariableop_5_batch_normalization_337_beta:	üE
6assignvariableop_6_batch_normalization_337_moving_mean:	üI
:assignvariableop_7_batch_normalization_337_moving_variance:	ü6
#assignvariableop_8_dense_675_kernel:	ü/
!assignvariableop_9_dense_675_bias:(
assignvariableop_10_nadam_iter:	 *
 assignvariableop_11_nadam_beta_1: *
 assignvariableop_12_nadam_beta_2: )
assignvariableop_13_nadam_decay: 1
'assignvariableop_14_nadam_learning_rate: 2
(assignvariableop_15_nadam_momentum_cache: #
assignvariableop_16_total: #
assignvariableop_17_count: G
4assignvariableop_18_nadam_embedding_676_embeddings_m:	ÓdG
4assignvariableop_19_nadam_embedding_677_embeddings_m:	@
,assignvariableop_20_nadam_dense_674_kernel_m:
Ëü9
*assignvariableop_21_nadam_dense_674_bias_m:	üH
9assignvariableop_22_nadam_batch_normalization_337_gamma_m:	üG
8assignvariableop_23_nadam_batch_normalization_337_beta_m:	ü?
,assignvariableop_24_nadam_dense_675_kernel_m:	ü8
*assignvariableop_25_nadam_dense_675_bias_m:G
4assignvariableop_26_nadam_embedding_676_embeddings_v:	ÓdG
4assignvariableop_27_nadam_embedding_677_embeddings_v:	@
,assignvariableop_28_nadam_dense_674_kernel_v:
Ëü9
*assignvariableop_29_nadam_dense_674_bias_v:	üH
9assignvariableop_30_nadam_batch_normalization_337_gamma_v:	üG
8assignvariableop_31_nadam_batch_normalization_337_beta_v:	ü?
,assignvariableop_32_nadam_dense_675_kernel_v:	ü8
*assignvariableop_33_nadam_dense_675_bias_v:
identity_35¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9®
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*º
value°B­#B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÔ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÝ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¢
_output_shapes
:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¨
AssignVariableOpAssignVariableOp)assignvariableop_embedding_676_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1°
AssignVariableOp_1AssignVariableOp+assignvariableop_1_embedding_677_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_674_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_674_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4µ
AssignVariableOp_4AssignVariableOp0assignvariableop_4_batch_normalization_337_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5´
AssignVariableOp_5AssignVariableOp/assignvariableop_5_batch_normalization_337_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6»
AssignVariableOp_6AssignVariableOp6assignvariableop_6_batch_normalization_337_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¿
AssignVariableOp_7AssignVariableOp:assignvariableop_7_batch_normalization_337_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¨
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_675_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¦
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_675_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¦
AssignVariableOp_10AssignVariableOpassignvariableop_10_nadam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¨
AssignVariableOp_11AssignVariableOp assignvariableop_11_nadam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¨
AssignVariableOp_12AssignVariableOp assignvariableop_12_nadam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13§
AssignVariableOp_13AssignVariableOpassignvariableop_13_nadam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¯
AssignVariableOp_14AssignVariableOp'assignvariableop_14_nadam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_nadam_momentum_cacheIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¡
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_nadam_embedding_676_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¼
AssignVariableOp_19AssignVariableOp4assignvariableop_19_nadam_embedding_677_embeddings_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20´
AssignVariableOp_20AssignVariableOp,assignvariableop_20_nadam_dense_674_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_nadam_dense_674_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Á
AssignVariableOp_22AssignVariableOp9assignvariableop_22_nadam_batch_normalization_337_gamma_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23À
AssignVariableOp_23AssignVariableOp8assignvariableop_23_nadam_batch_normalization_337_beta_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24´
AssignVariableOp_24AssignVariableOp,assignvariableop_24_nadam_dense_675_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_nadam_dense_675_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¼
AssignVariableOp_26AssignVariableOp4assignvariableop_26_nadam_embedding_676_embeddings_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_nadam_embedding_677_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28´
AssignVariableOp_28AssignVariableOp,assignvariableop_28_nadam_dense_674_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_nadam_dense_674_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Á
AssignVariableOp_30AssignVariableOp9assignvariableop_30_nadam_batch_normalization_337_gamma_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31À
AssignVariableOp_31AssignVariableOp8assignvariableop_31_nadam_batch_normalization_337_beta_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32´
AssignVariableOp_32AssignVariableOp,assignvariableop_32_nadam_dense_675_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_nadam_dense_675_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_339
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÊ
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_34½
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
á
e
I__inference_flatten_1014_layer_call_and_return_conditional_losses_6553891

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿS   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿS:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
 
_user_specified_nameinputs
·V
ó
F__inference_model_338_layer_call_and_return_conditional_losses_6553274

inputs(
embedding_677_6553229:	(
embedding_676_6553232:	Ód%
dense_674_6553239:
Ëü 
dense_674_6553241:	ü.
batch_normalization_337_6553244:	ü.
batch_normalization_337_6553246:	ü.
batch_normalization_337_6553248:	ü.
batch_normalization_337_6553250:	ü$
dense_675_6553255:	ü
dense_675_6553257:
identity¢/batch_normalization_337/StatefulPartitionedCall¢!dense_674/StatefulPartitionedCall¢!dense_675/StatefulPartitionedCall¢#dropout_337/StatefulPartitionedCall¢%embedding_676/StatefulPartitionedCall¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢%embedding_677/StatefulPartitionedCall¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÞ
lambda_1006/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1006_layer_call_and_return_conditional_losses_65531932
lambda_1006/PartitionedCallÞ
lambda_1005/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1005_layer_call_and_return_conditional_losses_65531722
lambda_1005/PartitionedCallâ
lambda_1007/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lambda_1007_layer_call_and_return_conditional_losses_65531512
lambda_1007/PartitionedCall¹
%embedding_677/StatefulPartitionedCallStatefulPartitionedCall$lambda_1006/PartitionedCall:output:0embedding_677_6553229*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_embedding_677_layer_call_and_return_conditional_losses_65528802'
%embedding_677/StatefulPartitionedCall¹
%embedding_676/StatefulPartitionedCallStatefulPartitionedCall$lambda_1005/PartitionedCall:output:0embedding_676_6553232*
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
GPU 2J 8 *S
fNRL
J__inference_embedding_676_layer_call_and_return_conditional_losses_65529002'
%embedding_676/StatefulPartitionedCall
flatten_1012/PartitionedCallPartitionedCall.embedding_676/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *R
fMRK
I__inference_flatten_1012_layer_call_and_return_conditional_losses_65529102
flatten_1012/PartitionedCall
flatten_1013/PartitionedCallPartitionedCall.embedding_677/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1013_layer_call_and_return_conditional_losses_65529182
flatten_1013/PartitionedCallÿ
flatten_1014/PartitionedCallPartitionedCall$lambda_1007/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1014_layer_call_and_return_conditional_losses_65529262
flatten_1014/PartitionedCallÚ
concatenate_337/PartitionedCallPartitionedCall%flatten_1012/PartitionedCall:output:0%flatten_1013/PartitionedCall:output:0%flatten_1014/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_concatenate_337_layer_call_and_return_conditional_losses_65529362!
concatenate_337/PartitionedCall¿
!dense_674/StatefulPartitionedCallStatefulPartitionedCall(concatenate_337/PartitionedCall:output:0dense_674_6553239dense_674_6553241*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_674_layer_call_and_return_conditional_losses_65529482#
!dense_674/StatefulPartitionedCallË
/batch_normalization_337/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0batch_normalization_337_6553244batch_normalization_337_6553246batch_normalization_337_6553248batch_normalization_337_6553250*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_655274321
/batch_normalization_337/StatefulPartitionedCall
activation_674/PartitionedCallPartitionedCall8batch_normalization_337/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_674_layer_call_and_return_conditional_losses_65529682 
activation_674/PartitionedCall
#dropout_337/StatefulPartitionedCallStatefulPartitionedCall'activation_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_337_layer_call_and_return_conditional_losses_65530722%
#dropout_337/StatefulPartitionedCallÂ
!dense_675/StatefulPartitionedCallStatefulPartitionedCall,dropout_337/StatefulPartitionedCall:output:0dense_675_6553255dense_675_6553257*
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
GPU 2J 8 *O
fJRH
F__inference_dense_675_layer_call_and_return_conditional_losses_65529872#
!dense_675/StatefulPartitionedCall
activation_675/PartitionedCallPartitionedCall*dense_675/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *T
fORM
K__inference_activation_675_layer_call_and_return_conditional_losses_65529982 
activation_675/PartitionedCallÏ
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_676_6553232*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulÏ
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_677_6553229*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mulå
IdentityIdentity'activation_675/PartitionedCall:output:00^batch_normalization_337/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall"^dense_675/StatefulPartitionedCall$^dropout_337/StatefulPartitionedCall&^embedding_676/StatefulPartitionedCall;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp&^embedding_677/StatefulPartitionedCall;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 2b
/batch_normalization_337/StatefulPartitionedCall/batch_normalization_337/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall2J
#dropout_337/StatefulPartitionedCall#dropout_337/StatefulPartitionedCall2N
%embedding_676/StatefulPartitionedCall%embedding_676/StatefulPartitionedCall2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2N
%embedding_677/StatefulPartitionedCall%embedding_677/StatefulPartitionedCall2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs


d
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6552862

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
:ÿÿÿÿÿÿÿÿÿS*

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
:ÿÿÿÿÿÿÿÿÿS2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
ë¬
ý

F__inference_model_338_layer_call_and_return_conditional_losses_6553710

inputs9
&embedding_677_embedding_lookup_6553626:	9
&embedding_676_embedding_lookup_6553632:	Ód<
(dense_674_matmul_readvariableop_resource:
Ëü8
)dense_674_biasadd_readvariableop_resource:	üN
?batch_normalization_337_assignmovingavg_readvariableop_resource:	üP
Abatch_normalization_337_assignmovingavg_1_readvariableop_resource:	üL
=batch_normalization_337_batchnorm_mul_readvariableop_resource:	üH
9batch_normalization_337_batchnorm_readvariableop_resource:	ü;
(dense_675_matmul_readvariableop_resource:	ü7
)dense_675_biasadd_readvariableop_resource:
identity¢'batch_normalization_337/AssignMovingAvg¢6batch_normalization_337/AssignMovingAvg/ReadVariableOp¢)batch_normalization_337/AssignMovingAvg_1¢8batch_normalization_337/AssignMovingAvg_1/ReadVariableOp¢0batch_normalization_337/batchnorm/ReadVariableOp¢4batch_normalization_337/batchnorm/mul/ReadVariableOp¢ dense_674/BiasAdd/ReadVariableOp¢dense_674/MatMul/ReadVariableOp¢ dense_675/BiasAdd/ReadVariableOp¢dense_675/MatMul/ReadVariableOp¢embedding_676/embedding_lookup¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢embedding_677/embedding_lookup¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOp
lambda_1006/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_1006/strided_slice/stack
!lambda_1006/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_1006/strided_slice/stack_1
!lambda_1006/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_1006/strided_slice/stack_2Å
lambda_1006/strided_sliceStridedSliceinputs(lambda_1006/strided_slice/stack:output:0*lambda_1006/strided_slice/stack_1:output:0*lambda_1006/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_1006/strided_slice
lambda_1006/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_1006/ExpandDims/dim¹
lambda_1006/ExpandDims
ExpandDims"lambda_1006/strided_slice:output:0#lambda_1006/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_1006/ExpandDims
lambda_1005/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lambda_1005/strided_slice/stack
!lambda_1005/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lambda_1005/strided_slice/stack_1
!lambda_1005/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_1005/strided_slice/stack_2Å
lambda_1005/strided_sliceStridedSliceinputs(lambda_1005/strided_slice/stack:output:0*lambda_1005/strided_slice/stack_1:output:0*lambda_1005/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
lambda_1005/strided_slice
lambda_1005/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_1005/ExpandDims/dim¹
lambda_1005/ExpandDims
ExpandDims"lambda_1005/strided_slice:output:0#lambda_1005/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_1005/ExpandDims
lambda_1007/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lambda_1007/strided_slice/stack
!lambda_1007/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lambda_1007/strided_slice/stack_1
!lambda_1007/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lambda_1007/strided_slice/stack_2±
lambda_1007/strided_sliceStridedSliceinputs(lambda_1007/strided_slice/stack:output:0*lambda_1007/strided_slice/stack_1:output:0*lambda_1007/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS*

begin_mask*
end_mask2
lambda_1007/strided_slice
lambda_1007/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
lambda_1007/ExpandDims/dim½
lambda_1007/ExpandDims
ExpandDims"lambda_1007/strided_slice:output:0#lambda_1007/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2
lambda_1007/ExpandDims
embedding_677/CastCastlambda_1006/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_677/CastÅ
embedding_677/embedding_lookupResourceGather&embedding_677_embedding_lookup_6553626embedding_677/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*9
_class/
-+loc:@embedding_677/embedding_lookup/6553626*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02 
embedding_677/embedding_lookup¦
'embedding_677/embedding_lookup/IdentityIdentity'embedding_677/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*9
_class/
-+loc:@embedding_677/embedding_lookup/6553626*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'embedding_677/embedding_lookup/IdentityÊ
)embedding_677/embedding_lookup/Identity_1Identity0embedding_677/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)embedding_677/embedding_lookup/Identity_1
embedding_676/CastCastlambda_1005/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_676/CastÅ
embedding_676/embedding_lookupResourceGather&embedding_676_embedding_lookup_6553632embedding_676/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*9
_class/
-+loc:@embedding_676/embedding_lookup/6553632*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02 
embedding_676/embedding_lookup¦
'embedding_676/embedding_lookup/IdentityIdentity'embedding_676/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*9
_class/
-+loc:@embedding_676/embedding_lookup/6553632*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'embedding_676/embedding_lookup/IdentityÊ
)embedding_676/embedding_lookup/Identity_1Identity0embedding_676/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)embedding_676/embedding_lookup/Identity_1y
flatten_1012/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
flatten_1012/Constº
flatten_1012/ReshapeReshape2embedding_676/embedding_lookup/Identity_1:output:0flatten_1012/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
flatten_1012/Reshapey
flatten_1013/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_1013/Constº
flatten_1013/ReshapeReshape2embedding_677/embedding_lookup/Identity_1:output:0flatten_1013/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_1013/Reshapey
flatten_1014/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿS   2
flatten_1014/Const§
flatten_1014/ReshapeReshapelambda_1007/ExpandDims:output:0flatten_1014/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2
flatten_1014/Reshape|
concatenate_337/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_337/concat/axisû
concatenate_337/concatConcatV2flatten_1012/Reshape:output:0flatten_1013/Reshape:output:0flatten_1014/Reshape:output:0$concatenate_337/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË2
concatenate_337/concat­
dense_674/MatMul/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource* 
_output_shapes
:
Ëü*
dtype02!
dense_674/MatMul/ReadVariableOp«
dense_674/MatMulMatMulconcatenate_337/concat:output:0'dense_674/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dense_674/MatMul«
 dense_674/BiasAdd/ReadVariableOpReadVariableOp)dense_674_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype02"
 dense_674/BiasAdd/ReadVariableOpª
dense_674/BiasAddBiasAdddense_674/MatMul:product:0(dense_674/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dense_674/BiasAddº
6batch_normalization_337/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization_337/moments/mean/reduction_indicesì
$batch_normalization_337/moments/meanMeandense_674/BiasAdd:output:0?batch_normalization_337/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(2&
$batch_normalization_337/moments/meanÅ
,batch_normalization_337/moments/StopGradientStopGradient-batch_normalization_337/moments/mean:output:0*
T0*
_output_shapes
:	ü2.
,batch_normalization_337/moments/StopGradient
1batch_normalization_337/moments/SquaredDifferenceSquaredDifferencedense_674/BiasAdd:output:05batch_normalization_337/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü23
1batch_normalization_337/moments/SquaredDifferenceÂ
:batch_normalization_337/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2<
:batch_normalization_337/moments/variance/reduction_indices
(batch_normalization_337/moments/varianceMean5batch_normalization_337/moments/SquaredDifference:z:0Cbatch_normalization_337/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(2*
(batch_normalization_337/moments/varianceÉ
'batch_normalization_337/moments/SqueezeSqueeze-batch_normalization_337/moments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 2)
'batch_normalization_337/moments/SqueezeÑ
)batch_normalization_337/moments/Squeeze_1Squeeze1batch_normalization_337/moments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 2+
)batch_normalization_337/moments/Squeeze_1£
-batch_normalization_337/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_337/AssignMovingAvg/decayí
6batch_normalization_337/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_337_assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype028
6batch_normalization_337/AssignMovingAvg/ReadVariableOpù
+batch_normalization_337/AssignMovingAvg/subSub>batch_normalization_337/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_337/moments/Squeeze:output:0*
T0*
_output_shapes	
:ü2-
+batch_normalization_337/AssignMovingAvg/subð
+batch_normalization_337/AssignMovingAvg/mulMul/batch_normalization_337/AssignMovingAvg/sub:z:06batch_normalization_337/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü2-
+batch_normalization_337/AssignMovingAvg/mul·
'batch_normalization_337/AssignMovingAvgAssignSubVariableOp?batch_normalization_337_assignmovingavg_readvariableop_resource/batch_normalization_337/AssignMovingAvg/mul:z:07^batch_normalization_337/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_337/AssignMovingAvg§
/batch_normalization_337/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<21
/batch_normalization_337/AssignMovingAvg_1/decayó
8batch_normalization_337/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_337_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype02:
8batch_normalization_337/AssignMovingAvg_1/ReadVariableOp
-batch_normalization_337/AssignMovingAvg_1/subSub@batch_normalization_337/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_337/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü2/
-batch_normalization_337/AssignMovingAvg_1/subø
-batch_normalization_337/AssignMovingAvg_1/mulMul1batch_normalization_337/AssignMovingAvg_1/sub:z:08batch_normalization_337/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü2/
-batch_normalization_337/AssignMovingAvg_1/mulÁ
)batch_normalization_337/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_337_assignmovingavg_1_readvariableop_resource1batch_normalization_337/AssignMovingAvg_1/mul:z:09^batch_normalization_337/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02+
)batch_normalization_337/AssignMovingAvg_1
'batch_normalization_337/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2)
'batch_normalization_337/batchnorm/add/yã
%batch_normalization_337/batchnorm/addAddV22batch_normalization_337/moments/Squeeze_1:output:00batch_normalization_337/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü2'
%batch_normalization_337/batchnorm/add¬
'batch_normalization_337/batchnorm/RsqrtRsqrt)batch_normalization_337/batchnorm/add:z:0*
T0*
_output_shapes	
:ü2)
'batch_normalization_337/batchnorm/Rsqrtç
4batch_normalization_337/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_337_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype026
4batch_normalization_337/batchnorm/mul/ReadVariableOpæ
%batch_normalization_337/batchnorm/mulMul+batch_normalization_337/batchnorm/Rsqrt:y:0<batch_normalization_337/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü2'
%batch_normalization_337/batchnorm/mulÓ
'batch_normalization_337/batchnorm/mul_1Muldense_674/BiasAdd:output:0)batch_normalization_337/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2)
'batch_normalization_337/batchnorm/mul_1Ü
'batch_normalization_337/batchnorm/mul_2Mul0batch_normalization_337/moments/Squeeze:output:0)batch_normalization_337/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü2)
'batch_normalization_337/batchnorm/mul_2Û
0batch_normalization_337/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_337_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype022
0batch_normalization_337/batchnorm/ReadVariableOpâ
%batch_normalization_337/batchnorm/subSub8batch_normalization_337/batchnorm/ReadVariableOp:value:0+batch_normalization_337/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ü2'
%batch_normalization_337/batchnorm/subæ
'batch_normalization_337/batchnorm/add_1AddV2+batch_normalization_337/batchnorm/mul_1:z:0)batch_normalization_337/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2)
'batch_normalization_337/batchnorm/add_1
activation_674/ReluRelu+batch_normalization_337/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
activation_674/Relu{
dropout_337/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_337/dropout/Const³
dropout_337/dropout/MulMul!activation_674/Relu:activations:0"dropout_337/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout_337/dropout/Mul
dropout_337/dropout/ShapeShape!activation_674/Relu:activations:0*
T0*
_output_shapes
:2
dropout_337/dropout/ShapeÙ
0dropout_337/dropout/random_uniform/RandomUniformRandomUniform"dropout_337/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*
dtype022
0dropout_337/dropout/random_uniform/RandomUniform
"dropout_337/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_337/dropout/GreaterEqual/yï
 dropout_337/dropout/GreaterEqualGreaterEqual9dropout_337/dropout/random_uniform/RandomUniform:output:0+dropout_337/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2"
 dropout_337/dropout/GreaterEqual¤
dropout_337/dropout/CastCast$dropout_337/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout_337/dropout/Cast«
dropout_337/dropout/Mul_1Muldropout_337/dropout/Mul:z:0dropout_337/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout_337/dropout/Mul_1¬
dense_675/MatMul/ReadVariableOpReadVariableOp(dense_675_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype02!
dense_675/MatMul/ReadVariableOp¨
dense_675/MatMulMatMuldropout_337/dropout/Mul_1:z:0'dense_675/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_675/MatMulª
 dense_675/BiasAdd/ReadVariableOpReadVariableOp)dense_675_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_675/BiasAdd/ReadVariableOp©
dense_675/BiasAddBiasAdddense_675/MatMul:product:0(dense_675/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_675/BiasAdd
activation_675/ReluReludense_675/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_675/Reluà
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp&embedding_676_embedding_lookup_6553632*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulà
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp&embedding_677_embedding_lookup_6553626*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mulï
IdentityIdentity!activation_675/Relu:activations:0(^batch_normalization_337/AssignMovingAvg7^batch_normalization_337/AssignMovingAvg/ReadVariableOp*^batch_normalization_337/AssignMovingAvg_19^batch_normalization_337/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_337/batchnorm/ReadVariableOp5^batch_normalization_337/batchnorm/mul/ReadVariableOp!^dense_674/BiasAdd/ReadVariableOp ^dense_674/MatMul/ReadVariableOp!^dense_675/BiasAdd/ReadVariableOp ^dense_675/MatMul/ReadVariableOp^embedding_676/embedding_lookup;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp^embedding_677/embedding_lookup;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 2R
'batch_normalization_337/AssignMovingAvg'batch_normalization_337/AssignMovingAvg2p
6batch_normalization_337/AssignMovingAvg/ReadVariableOp6batch_normalization_337/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_337/AssignMovingAvg_1)batch_normalization_337/AssignMovingAvg_12t
8batch_normalization_337/AssignMovingAvg_1/ReadVariableOp8batch_normalization_337/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_337/batchnorm/ReadVariableOp0batch_normalization_337/batchnorm/ReadVariableOp2l
4batch_normalization_337/batchnorm/mul/ReadVariableOp4batch_normalization_337/batchnorm/mul/ReadVariableOp2D
 dense_674/BiasAdd/ReadVariableOp dense_674/BiasAdd/ReadVariableOp2B
dense_674/MatMul/ReadVariableOpdense_674/MatMul/ReadVariableOp2D
 dense_675/BiasAdd/ReadVariableOp dense_675/BiasAdd/ReadVariableOp2B
dense_675/MatMul/ReadVariableOpdense_675/MatMul/ReadVariableOp2@
embedding_676/embedding_lookupembedding_676/embedding_lookup2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2@
embedding_677/embedding_lookupembedding_677/embedding_lookup2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
Î
L
0__inference_activation_674_layer_call_fn_6554010

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_674_layer_call_and_return_conditional_losses_65529682
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Î
J
.__inference_flatten_1013_layer_call_fn_6553874

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_flatten_1013_layer_call_and_return_conditional_losses_65529182
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
e
I__inference_flatten_1013_layer_call_and_return_conditional_losses_6553880

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
f
-__inference_dropout_337_layer_call_fn_6554025

inputs
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_337_layer_call_and_return_conditional_losses_65530722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ó
æ
J__inference_embedding_677_layer_call_and_return_conditional_losses_6552880

inputs+
embedding_lookup_6552868:	
identity¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castÿ
embedding_lookupResourceGatherembedding_lookup_6552868Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/6552868*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/6552868*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1Ò
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_6552868*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mulÌ
IdentityIdentity$embedding_lookup/Identity_1:output:0;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì
I
-__inference_lambda_1007_layer_call_fn_6553833

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lambda_1007_layer_call_and_return_conditional_losses_65528622
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
¾
Å
__inference_loss_fn_1_6554093V
Cembedding_677_embeddings_regularizer_square_readvariableop_resource:	
identity¢:embedding_677/embeddings/Regularizer/Square/ReadVariableOpý
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpCembedding_677_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02<
:embedding_677/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_677/embeddings/Regularizer/SquareSquareBembedding_677/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2-
+embedding_677/embeddings/Regularizer/Square©
*embedding_677/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_677/embeddings/Regularizer/Constâ
(embedding_677/embeddings/Regularizer/SumSum/embedding_677/embeddings/Regularizer/Square:y:03embedding_677/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/Sum
*embedding_677/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_677/embeddings/Regularizer/mul/xä
(embedding_677/embeddings/Regularizer/mulMul3embedding_677/embeddings/Regularizer/mul/x:output:01embedding_677/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_677/embeddings/Regularizer/mul¬
IdentityIdentity,embedding_677/embeddings/Regularizer/mul:z:0;^embedding_677/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:embedding_677/embeddings/Regularizer/Square/ReadVariableOp:embedding_677/embeddings/Regularizer/Square/ReadVariableOp
á
e
I__inference_flatten_1013_layer_call_and_return_conditional_losses_6552918

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó	
ö
+__inference_model_338_layer_call_fn_6553519

inputs
unknown:	
	unknown_0:	Ód
	unknown_1:
Ëü
	unknown_2:	ü
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:
identity¢StatefulPartitionedCallÜ
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
GPU 2J 8 *O
fJRH
F__inference_model_338_layer_call_and_return_conditional_losses_65532742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
Ó
æ
J__inference_embedding_676_layer_call_and_return_conditional_losses_6552900

inputs+
embedding_lookup_6552888:	Ód
identity¢:embedding_676/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castÿ
embedding_lookupResourceGatherembedding_lookup_6552888Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/6552888*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/6552888*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1Ò
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_6552888*
_output_shapes
:	Ód*
dtype02<
:embedding_676/embeddings/Regularizer/Square/ReadVariableOpÒ
+embedding_676/embeddings/Regularizer/SquareSquareBembedding_676/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ód2-
+embedding_676/embeddings/Regularizer/Square©
*embedding_676/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*embedding_676/embeddings/Regularizer/Constâ
(embedding_676/embeddings/Regularizer/SumSum/embedding_676/embeddings/Regularizer/Square:y:03embedding_676/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/Sum
*embedding_676/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752,
*embedding_676/embeddings/Regularizer/mul/xä
(embedding_676/embeddings/Regularizer/mulMul3embedding_676/embeddings/Regularizer/mul/x:output:01embedding_676/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(embedding_676/embeddings/Regularizer/mulÌ
IdentityIdentity$embedding_lookup/Identity_1:output:0;^embedding_676/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2x
:embedding_676/embeddings/Regularizer/Square/ReadVariableOp:embedding_676/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


d
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6553770

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
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
·
g
H__inference_dropout_337_layer_call_and_return_conditional_losses_6553072

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
:ÿÿÿÿÿÿÿÿÿü2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*
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
:ÿÿÿÿÿÿÿÿÿü2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ä
I
-__inference_lambda_1006_layer_call_fn_6553745

inputs
identityÆ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_1006_layer_call_and_return_conditional_losses_65528382
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿU:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
 
_user_specified_nameinputs
ã
g
K__inference_activation_675_layer_call_and_return_conditional_losses_6552998

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
*
ñ
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6552743

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
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
:	ü*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
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
:	ü*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
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
:ü*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ü2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü2
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
:ü*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü2
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
:ü2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ü2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs


/__inference_embedding_676_layer_call_fn_6553783

inputs
unknown:	Ód
identity¢StatefulPartitionedCallñ
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
GPU 2J 8 *S
fNRL
J__inference_embedding_676_layer_call_and_return_conditional_losses_65529002
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
ç}
À

"__inference__wrapped_model_6552659
	input_336C
0model_338_embedding_677_embedding_lookup_6552608:	C
0model_338_embedding_676_embedding_lookup_6552614:	ÓdF
2model_338_dense_674_matmul_readvariableop_resource:
ËüB
3model_338_dense_674_biasadd_readvariableop_resource:	üR
Cmodel_338_batch_normalization_337_batchnorm_readvariableop_resource:	üV
Gmodel_338_batch_normalization_337_batchnorm_mul_readvariableop_resource:	üT
Emodel_338_batch_normalization_337_batchnorm_readvariableop_1_resource:	üT
Emodel_338_batch_normalization_337_batchnorm_readvariableop_2_resource:	üE
2model_338_dense_675_matmul_readvariableop_resource:	üA
3model_338_dense_675_biasadd_readvariableop_resource:
identity¢:model_338/batch_normalization_337/batchnorm/ReadVariableOp¢<model_338/batch_normalization_337/batchnorm/ReadVariableOp_1¢<model_338/batch_normalization_337/batchnorm/ReadVariableOp_2¢>model_338/batch_normalization_337/batchnorm/mul/ReadVariableOp¢*model_338/dense_674/BiasAdd/ReadVariableOp¢)model_338/dense_674/MatMul/ReadVariableOp¢*model_338/dense_675/BiasAdd/ReadVariableOp¢)model_338/dense_675/MatMul/ReadVariableOp¢(model_338/embedding_676/embedding_lookup¢(model_338/embedding_677/embedding_lookup§
)model_338/lambda_1006/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_338/lambda_1006/strided_slice/stack«
+model_338/lambda_1006/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2-
+model_338/lambda_1006/strided_slice/stack_1«
+model_338/lambda_1006/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+model_338/lambda_1006/strided_slice/stack_2ú
#model_338/lambda_1006/strided_sliceStridedSlice	input_3362model_338/lambda_1006/strided_slice/stack:output:04model_338/lambda_1006/strided_slice/stack_1:output:04model_338/lambda_1006/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2%
#model_338/lambda_1006/strided_slice
$model_338/lambda_1006/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$model_338/lambda_1006/ExpandDims/dimá
 model_338/lambda_1006/ExpandDims
ExpandDims,model_338/lambda_1006/strided_slice:output:0-model_338/lambda_1006/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model_338/lambda_1006/ExpandDims§
)model_338/lambda_1005/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)model_338/lambda_1005/strided_slice/stack«
+model_338/lambda_1005/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2-
+model_338/lambda_1005/strided_slice/stack_1«
+model_338/lambda_1005/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+model_338/lambda_1005/strided_slice/stack_2ú
#model_338/lambda_1005/strided_sliceStridedSlice	input_3362model_338/lambda_1005/strided_slice/stack:output:04model_338/lambda_1005/strided_slice/stack_1:output:04model_338/lambda_1005/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2%
#model_338/lambda_1005/strided_slice
$model_338/lambda_1005/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$model_338/lambda_1005/ExpandDims/dimá
 model_338/lambda_1005/ExpandDims
ExpandDims,model_338/lambda_1005/strided_slice:output:0-model_338/lambda_1005/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model_338/lambda_1005/ExpandDims§
)model_338/lambda_1007/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2+
)model_338/lambda_1007/strided_slice/stack«
+model_338/lambda_1007/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+model_338/lambda_1007/strided_slice/stack_1«
+model_338/lambda_1007/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+model_338/lambda_1007/strided_slice/stack_2æ
#model_338/lambda_1007/strided_sliceStridedSlice	input_3362model_338/lambda_1007/strided_slice/stack:output:04model_338/lambda_1007/strided_slice/stack_1:output:04model_338/lambda_1007/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS*

begin_mask*
end_mask2%
#model_338/lambda_1007/strided_slice
$model_338/lambda_1007/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$model_338/lambda_1007/ExpandDims/dimå
 model_338/lambda_1007/ExpandDims
ExpandDims,model_338/lambda_1007/strided_slice:output:0-model_338/lambda_1007/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2"
 model_338/lambda_1007/ExpandDims°
model_338/embedding_677/CastCast)model_338/lambda_1006/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_338/embedding_677/Cast÷
(model_338/embedding_677/embedding_lookupResourceGather0model_338_embedding_677_embedding_lookup_6552608 model_338/embedding_677/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@model_338/embedding_677/embedding_lookup/6552608*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02*
(model_338/embedding_677/embedding_lookupÎ
1model_338/embedding_677/embedding_lookup/IdentityIdentity1model_338/embedding_677/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@model_338/embedding_677/embedding_lookup/6552608*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1model_338/embedding_677/embedding_lookup/Identityè
3model_338/embedding_677/embedding_lookup/Identity_1Identity:model_338/embedding_677/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3model_338/embedding_677/embedding_lookup/Identity_1°
model_338/embedding_676/CastCast)model_338/lambda_1005/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_338/embedding_676/Cast÷
(model_338/embedding_676/embedding_lookupResourceGather0model_338_embedding_676_embedding_lookup_6552614 model_338/embedding_676/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@model_338/embedding_676/embedding_lookup/6552614*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype02*
(model_338/embedding_676/embedding_lookupÎ
1model_338/embedding_676/embedding_lookup/IdentityIdentity1model_338/embedding_676/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@model_338/embedding_676/embedding_lookup/6552614*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd23
1model_338/embedding_676/embedding_lookup/Identityè
3model_338/embedding_676/embedding_lookup/Identity_1Identity:model_338/embedding_676/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd25
3model_338/embedding_676/embedding_lookup/Identity_1
model_338/flatten_1012/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2
model_338/flatten_1012/Constâ
model_338/flatten_1012/ReshapeReshape<model_338/embedding_676/embedding_lookup/Identity_1:output:0%model_338/flatten_1012/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
model_338/flatten_1012/Reshape
model_338/flatten_1013/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
model_338/flatten_1013/Constâ
model_338/flatten_1013/ReshapeReshape<model_338/embedding_677/embedding_lookup/Identity_1:output:0%model_338/flatten_1013/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model_338/flatten_1013/Reshape
model_338/flatten_1014/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿS   2
model_338/flatten_1014/ConstÏ
model_338/flatten_1014/ReshapeReshape)model_338/lambda_1007/ExpandDims:output:0%model_338/flatten_1014/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS2 
model_338/flatten_1014/Reshape
%model_338/concatenate_337/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%model_338/concatenate_337/concat/axis·
 model_338/concatenate_337/concatConcatV2'model_338/flatten_1012/Reshape:output:0'model_338/flatten_1013/Reshape:output:0'model_338/flatten_1014/Reshape:output:0.model_338/concatenate_337/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË2"
 model_338/concatenate_337/concatË
)model_338/dense_674/MatMul/ReadVariableOpReadVariableOp2model_338_dense_674_matmul_readvariableop_resource* 
_output_shapes
:
Ëü*
dtype02+
)model_338/dense_674/MatMul/ReadVariableOpÓ
model_338/dense_674/MatMulMatMul)model_338/concatenate_337/concat:output:01model_338/dense_674/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
model_338/dense_674/MatMulÉ
*model_338/dense_674/BiasAdd/ReadVariableOpReadVariableOp3model_338_dense_674_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype02,
*model_338/dense_674/BiasAdd/ReadVariableOpÒ
model_338/dense_674/BiasAddBiasAdd$model_338/dense_674/MatMul:product:02model_338/dense_674/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
model_338/dense_674/BiasAddù
:model_338/batch_normalization_337/batchnorm/ReadVariableOpReadVariableOpCmodel_338_batch_normalization_337_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype02<
:model_338/batch_normalization_337/batchnorm/ReadVariableOp«
1model_338/batch_normalization_337/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:23
1model_338/batch_normalization_337/batchnorm/add/y
/model_338/batch_normalization_337/batchnorm/addAddV2Bmodel_338/batch_normalization_337/batchnorm/ReadVariableOp:value:0:model_338/batch_normalization_337/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü21
/model_338/batch_normalization_337/batchnorm/addÊ
1model_338/batch_normalization_337/batchnorm/RsqrtRsqrt3model_338/batch_normalization_337/batchnorm/add:z:0*
T0*
_output_shapes	
:ü23
1model_338/batch_normalization_337/batchnorm/Rsqrt
>model_338/batch_normalization_337/batchnorm/mul/ReadVariableOpReadVariableOpGmodel_338_batch_normalization_337_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype02@
>model_338/batch_normalization_337/batchnorm/mul/ReadVariableOp
/model_338/batch_normalization_337/batchnorm/mulMul5model_338/batch_normalization_337/batchnorm/Rsqrt:y:0Fmodel_338/batch_normalization_337/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü21
/model_338/batch_normalization_337/batchnorm/mulû
1model_338/batch_normalization_337/batchnorm/mul_1Mul$model_338/dense_674/BiasAdd:output:03model_338/batch_normalization_337/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü23
1model_338/batch_normalization_337/batchnorm/mul_1ÿ
<model_338/batch_normalization_337/batchnorm/ReadVariableOp_1ReadVariableOpEmodel_338_batch_normalization_337_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype02>
<model_338/batch_normalization_337/batchnorm/ReadVariableOp_1
1model_338/batch_normalization_337/batchnorm/mul_2MulDmodel_338/batch_normalization_337/batchnorm/ReadVariableOp_1:value:03model_338/batch_normalization_337/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü23
1model_338/batch_normalization_337/batchnorm/mul_2ÿ
<model_338/batch_normalization_337/batchnorm/ReadVariableOp_2ReadVariableOpEmodel_338_batch_normalization_337_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype02>
<model_338/batch_normalization_337/batchnorm/ReadVariableOp_2
/model_338/batch_normalization_337/batchnorm/subSubDmodel_338/batch_normalization_337/batchnorm/ReadVariableOp_2:value:05model_338/batch_normalization_337/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ü21
/model_338/batch_normalization_337/batchnorm/sub
1model_338/batch_normalization_337/batchnorm/add_1AddV25model_338/batch_normalization_337/batchnorm/mul_1:z:03model_338/batch_normalization_337/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü23
1model_338/batch_normalization_337/batchnorm/add_1°
model_338/activation_674/ReluRelu5model_338/batch_normalization_337/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2
model_338/activation_674/Relu¬
model_338/dropout_337/IdentityIdentity+model_338/activation_674/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü2 
model_338/dropout_337/IdentityÊ
)model_338/dense_675/MatMul/ReadVariableOpReadVariableOp2model_338_dense_675_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype02+
)model_338/dense_675/MatMul/ReadVariableOpÐ
model_338/dense_675/MatMulMatMul'model_338/dropout_337/Identity:output:01model_338/dense_675/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_338/dense_675/MatMulÈ
*model_338/dense_675/BiasAdd/ReadVariableOpReadVariableOp3model_338_dense_675_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_338/dense_675/BiasAdd/ReadVariableOpÑ
model_338/dense_675/BiasAddBiasAdd$model_338/dense_675/MatMul:product:02model_338/dense_675/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_338/dense_675/BiasAdd
model_338/activation_675/ReluRelu$model_338/dense_675/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_338/activation_675/Relu
IdentityIdentity+model_338/activation_675/Relu:activations:0;^model_338/batch_normalization_337/batchnorm/ReadVariableOp=^model_338/batch_normalization_337/batchnorm/ReadVariableOp_1=^model_338/batch_normalization_337/batchnorm/ReadVariableOp_2?^model_338/batch_normalization_337/batchnorm/mul/ReadVariableOp+^model_338/dense_674/BiasAdd/ReadVariableOp*^model_338/dense_674/MatMul/ReadVariableOp+^model_338/dense_675/BiasAdd/ReadVariableOp*^model_338/dense_675/MatMul/ReadVariableOp)^model_338/embedding_676/embedding_lookup)^model_338/embedding_677/embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 2x
:model_338/batch_normalization_337/batchnorm/ReadVariableOp:model_338/batch_normalization_337/batchnorm/ReadVariableOp2|
<model_338/batch_normalization_337/batchnorm/ReadVariableOp_1<model_338/batch_normalization_337/batchnorm/ReadVariableOp_12|
<model_338/batch_normalization_337/batchnorm/ReadVariableOp_2<model_338/batch_normalization_337/batchnorm/ReadVariableOp_22
>model_338/batch_normalization_337/batchnorm/mul/ReadVariableOp>model_338/batch_normalization_337/batchnorm/mul/ReadVariableOp2X
*model_338/dense_674/BiasAdd/ReadVariableOp*model_338/dense_674/BiasAdd/ReadVariableOp2V
)model_338/dense_674/MatMul/ReadVariableOp)model_338/dense_674/MatMul/ReadVariableOp2X
*model_338/dense_675/BiasAdd/ReadVariableOp*model_338/dense_675/BiasAdd/ReadVariableOp2V
)model_338/dense_675/MatMul/ReadVariableOp)model_338/dense_675/MatMul/ReadVariableOp2T
(model_338/embedding_676/embedding_lookup(model_338/embedding_676/embedding_lookup2T
(model_338/embedding_677/embedding_lookup(model_338/embedding_677/embedding_lookup:R N
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
#
_user_specified_name	input_336
þ	
ù
+__inference_model_338_layer_call_fn_6553036
	input_336
unknown:	
	unknown_0:	Ód
	unknown_1:
Ëü
	unknown_2:	ü
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCall	input_336unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU 2J 8 *O
fJRH
F__inference_model_338_layer_call_and_return_conditional_losses_65530132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿU: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
#
_user_specified_name	input_336
Ò
k
1__inference_concatenate_337_layer_call_fn_6553898
inputs_0
inputs_1
inputs_2
identityã
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_concatenate_337_layer_call_and_return_conditional_losses_65529362
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿS:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
"
_user_specified_name
inputs/2"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
?
	input_3362
serving_default_input_336:0ÿÿÿÿÿÿÿÿÿUB
activation_6750
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÚÈ
v
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
Ê__call__
Ë_default_save_signature
+Ì&call_and_return_all_conditional_losses"ñq
_tf_keras_networkÕq{"name": "model_338", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_338", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 85]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_336"}, "name": "input_336", "inbound_nodes": []}, {"class_name": "Lambda", "config": {"name": "lambda_1005", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QAAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+AwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1005", "inbound_nodes": [[["input_336", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_1006", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QEAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+BAAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1006", "inbound_nodes": [[["input_336", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_676", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 467, "output_dim": 100, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_676", "inbound_nodes": [[["lambda_1005", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_677", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 3716, "output_dim": 20, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_677", "inbound_nodes": [[["lambda_1006", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_1007", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAUwAAAHMcAAAAdACgAXwAZABkAIUCZAFkAIUCZgIZAGQCoQJT\nACkDTukCAAAA6f////+pAtoCdGbaC2V4cGFuZF9kaW1zqQHaAXipAHIIAAAA+h88aXB5dGhvbi1p\nbnB1dC0zMS1iMGQxMDUxNzdlNGQ+2gg8bGFtYmRhPgUAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1007", "inbound_nodes": [[["input_336", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1012", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1012", "inbound_nodes": [[["embedding_676", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1013", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1013", "inbound_nodes": [[["embedding_677", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1014", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1014", "inbound_nodes": [[["lambda_1007", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_337", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_337", "inbound_nodes": [[["flatten_1012", 0, 0, {}], ["flatten_1013", 0, 0, {}], ["flatten_1014", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_674", "trainable": true, "dtype": "float32", "units": 380, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_674", "inbound_nodes": [[["concatenate_337", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_337", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_337", "inbound_nodes": [[["dense_674", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_674", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_674", "inbound_nodes": [[["batch_normalization_337", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_337", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_337", "inbound_nodes": [[["activation_674", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_675", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_675", "inbound_nodes": [[["dropout_337", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_675", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_675", "inbound_nodes": [[["dense_675", 0, 0, {}]]]}], "input_layers": [["input_336", 0, 0]], "output_layers": [["activation_675", 0, 0]]}, "shared_object_id": 28, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 85]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 85]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 85]}, "float32", "input_336"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_338", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 85]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_336"}, "name": "input_336", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Lambda", "config": {"name": "lambda_1005", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QAAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+AwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1005", "inbound_nodes": [[["input_336", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Lambda", "config": {"name": "lambda_1006", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QEAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+BAAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1006", "inbound_nodes": [[["input_336", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "Embedding", "config": {"name": "embedding_676", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 467, "output_dim": 100, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 3}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 4}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_676", "inbound_nodes": [[["lambda_1005", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Embedding", "config": {"name": "embedding_677", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 3716, "output_dim": 20, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 6}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 7}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_677", "inbound_nodes": [[["lambda_1006", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Lambda", "config": {"name": "lambda_1007", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAUwAAAHMcAAAAdACgAXwAZABkAIUCZAFkAIUCZgIZAGQCoQJT\nACkDTukCAAAA6f////+pAtoCdGbaC2V4cGFuZF9kaW1zqQHaAXipAHIIAAAA+h88aXB5dGhvbi1p\nbnB1dC0zMS1iMGQxMDUxNzdlNGQ+2gg8bGFtYmRhPgUAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_1007", "inbound_nodes": [[["input_336", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_1012", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1012", "inbound_nodes": [[["embedding_676", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Flatten", "config": {"name": "flatten_1013", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1013", "inbound_nodes": [[["embedding_677", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Flatten", "config": {"name": "flatten_1014", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1014", "inbound_nodes": [[["lambda_1007", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Concatenate", "config": {"name": "concatenate_337", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_337", "inbound_nodes": [[["flatten_1012", 0, 0, {}], ["flatten_1013", 0, 0, {}], ["flatten_1014", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_674", "trainable": true, "dtype": "float32", "units": 380, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_674", "inbound_nodes": [[["concatenate_337", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_337", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_337", "inbound_nodes": [[["dense_674", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Activation", "config": {"name": "activation_674", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_674", "inbound_nodes": [[["batch_normalization_337", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "Dropout", "config": {"name": "dropout_337", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_337", "inbound_nodes": [[["activation_674", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "dense_675", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_675", "inbound_nodes": [[["dropout_337", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "Activation", "config": {"name": "activation_675", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_675", "inbound_nodes": [[["dense_675", 0, 0, {}]]], "shared_object_id": 27}], "input_layers": [["input_336", 0, 0]], "output_layers": [["activation_675", 0, 0]]}}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Nadam", "config": {"name": "Nadam", "learning_rate": 0.0010000000474974513, "decay": 0.004, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}

_init_input_shape"ì
_tf_keras_input_layerÌ{"class_name": "InputLayer", "name": "input_336", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 85]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 85]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_336"}}
¢
trainable_variables
	variables
regularization_losses
	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"
_tf_keras_layer÷{"name": "lambda_1005", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_1005", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QAAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+AwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["input_336", 0, 0, {}]]], "shared_object_id": 1}
¢
trainable_variables
	variables
regularization_losses
	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"
_tf_keras_layer÷{"name": "lambda_1006", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_1006", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAHMYAAAAdACgAXwAZABkAIUCZAFmAhkAZAKhAlMAKQNO\n6QEAAADp/////6kC2gJ0ZtoLZXhwYW5kX2RpbXOpAdoBeKkAcggAAAD6HzxpcHl0aG9uLWlucHV0\nLTMxLWIwZDEwNTE3N2U0ZD7aCDxsYW1iZGE+BAAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["input_336", 0, 0, {}]]], "shared_object_id": 2}
»
 
embeddings
!trainable_variables
"	variables
#regularization_losses
$	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "embedding_676", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_676", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 467, "output_dim": 100, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 3}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 4}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["lambda_1005", 0, 0, {}]]], "shared_object_id": 5, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
»
%
embeddings
&trainable_variables
'	variables
(regularization_losses
)	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "embedding_677", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_677", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 3716, "output_dim": 20, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 6}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}, "shared_object_id": 7}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["lambda_1006", 0, 0, {}]]], "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
ª
*trainable_variables
+	variables
,regularization_losses
-	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"
_tf_keras_layerÿ{"name": "lambda_1007", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_1007", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAGAAAAUwAAAHMcAAAAdACgAXwAZABkAIUCZAFkAIUCZgIZAGQCoQJT\nACkDTukCAAAA6f////+pAtoCdGbaC2V4cGFuZF9kaW1zqQHaAXipAHIIAAAA+h88aXB5dGhvbi1p\nbnB1dC0zMS1iMGQxMDUxNzdlNGQ+2gg8bGFtYmRhPgUAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["input_336", 0, 0, {}]]], "shared_object_id": 9}
Ð
.trainable_variables
/	variables
0regularization_losses
1	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses"¿
_tf_keras_layer¥{"name": "flatten_1012", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1012", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["embedding_676", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 30}}
Ð
2trainable_variables
3	variables
4regularization_losses
5	keras_api
Ù__call__
+Ú&call_and_return_all_conditional_losses"¿
_tf_keras_layer¥{"name": "flatten_1013", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1013", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["embedding_677", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 31}}
Î
6trainable_variables
7	variables
8regularization_losses
9	keras_api
Û__call__
+Ü&call_and_return_all_conditional_losses"½
_tf_keras_layer£{"name": "flatten_1014", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1014", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["lambda_1007", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 32}}

:trainable_variables
;	variables
<regularization_losses
=	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses"ø
_tf_keras_layerÞ{"name": "concatenate_337", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_337", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["flatten_1012", 0, 0, {}], ["flatten_1013", 0, 0, {}], ["flatten_1014", 0, 0, {}]]], "shared_object_id": 13, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 20]}, {"class_name": "TensorShape", "items": [null, 83]}]}
	

>kernel
?bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
ß__call__
+à&call_and_return_all_conditional_losses"è
_tf_keras_layerÎ{"name": "dense_674", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_674", "trainable": true, "dtype": "float32", "units": 380, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_337", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 203}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 203]}}
ø

Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
á__call__
+â&call_and_return_all_conditional_losses"¢	
_tf_keras_layer	{"name": "batch_normalization_337", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_337", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_674", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 380}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 380]}}
¯
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
ã__call__
+ä&call_and_return_all_conditional_losses"
_tf_keras_layer{"name": "activation_674", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_674", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["batch_normalization_337", 0, 0, {}]]], "shared_object_id": 22}
¶
Qtrainable_variables
R	variables
Sregularization_losses
T	keras_api
å__call__
+æ&call_and_return_all_conditional_losses"¥
_tf_keras_layer{"name": "dropout_337", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_337", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["activation_674", 0, 0, {}]]], "shared_object_id": 23}
	

Ukernel
Vbias
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
ç__call__
+è&call_and_return_all_conditional_losses"â
_tf_keras_layerÈ{"name": "dense_675", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_675", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_337", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 380}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 380]}}
¡
[trainable_variables
\	variables
]regularization_losses
^	keras_api
é__call__
+ê&call_and_return_all_conditional_losses"
_tf_keras_layerö{"name": "activation_675", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_675", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["dense_675", 0, 0, {}]]], "shared_object_id": 27}

_iter

`beta_1

abeta_2
	bdecay
clearning_rate
dmomentum_cache mº%m»>m¼?m½Em¾Fm¿UmÀVmÁ vÂ%vÃ>vÄ?vÅEvÆFvÇUvÈVvÉ"
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
ë0
ì1"
trackable_list_wrapper
Î
enon_trainable_variables
trainable_variables
flayer_regularization_losses
	variables

glayers
hlayer_metrics
regularization_losses
imetrics
Ê__call__
Ë_default_save_signature
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
-
íserving_default"
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
jnon_trainable_variables
trainable_variables
klayer_regularization_losses
	variables

llayers
mlayer_metrics
regularization_losses
nmetrics
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
onon_trainable_variables
trainable_variables
player_regularization_losses
	variables

qlayers
rlayer_metrics
regularization_losses
smetrics
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
+:)	Ód2embedding_676/embeddings
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
(
ë0"
trackable_list_wrapper
°
tnon_trainable_variables
!trainable_variables
ulayer_regularization_losses
"	variables

vlayers
wlayer_metrics
#regularization_losses
xmetrics
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
+:)	2embedding_677/embeddings
'
%0"
trackable_list_wrapper
'
%0"
trackable_list_wrapper
(
ì0"
trackable_list_wrapper
°
ynon_trainable_variables
&trainable_variables
zlayer_regularization_losses
'	variables

{layers
|layer_metrics
(regularization_losses
}metrics
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
³
~non_trainable_variables
*trainable_variables
layer_regularization_losses
+	variables
layers
layer_metrics
,regularization_losses
metrics
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
.trainable_variables
 layer_regularization_losses
/	variables
layers
layer_metrics
0regularization_losses
metrics
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
2trainable_variables
 layer_regularization_losses
3	variables
layers
layer_metrics
4regularization_losses
metrics
Ù__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
6trainable_variables
 layer_regularization_losses
7	variables
layers
layer_metrics
8regularization_losses
metrics
Û__call__
+Ü&call_and_return_all_conditional_losses
'Ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
:trainable_variables
 layer_regularization_losses
;	variables
layers
layer_metrics
<regularization_losses
metrics
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object
$:"
Ëü2dense_674/kernel
:ü2dense_674/bias
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
non_trainable_variables
@trainable_variables
 layer_regularization_losses
A	variables
layers
layer_metrics
Bregularization_losses
metrics
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*ü2batch_normalization_337/gamma
+:)ü2batch_normalization_337/beta
4:2ü (2#batch_normalization_337/moving_mean
8:6ü (2'batch_normalization_337/moving_variance
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
non_trainable_variables
Itrainable_variables
 layer_regularization_losses
J	variables
layers
layer_metrics
Kregularization_losses
 metrics
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¡non_trainable_variables
Mtrainable_variables
 ¢layer_regularization_losses
N	variables
£layers
¤layer_metrics
Oregularization_losses
¥metrics
ã__call__
+ä&call_and_return_all_conditional_losses
'ä"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¦non_trainable_variables
Qtrainable_variables
 §layer_regularization_losses
R	variables
¨layers
©layer_metrics
Sregularization_losses
ªmetrics
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
#:!	ü2dense_675/kernel
:2dense_675/bias
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
«non_trainable_variables
Wtrainable_variables
 ¬layer_regularization_losses
X	variables
­layers
®layer_metrics
Yregularization_losses
¯metrics
ç__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
°non_trainable_variables
[trainable_variables
 ±layer_regularization_losses
\	variables
²layers
³layer_metrics
]regularization_losses
´metrics
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses"
_generic_user_object
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
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
µ0"
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
(
ì0"
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

¶total

·count
¸	variables
¹	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 36}
:  (2total
:  (2count
0
¶0
·1"
trackable_list_wrapper
.
¸	variables"
_generic_user_object
1:/	Ód2 Nadam/embedding_676/embeddings/m
1:/	2 Nadam/embedding_677/embeddings/m
*:(
Ëü2Nadam/dense_674/kernel/m
#:!ü2Nadam/dense_674/bias/m
2:0ü2%Nadam/batch_normalization_337/gamma/m
1:/ü2$Nadam/batch_normalization_337/beta/m
):'	ü2Nadam/dense_675/kernel/m
": 2Nadam/dense_675/bias/m
1:/	Ód2 Nadam/embedding_676/embeddings/v
1:/	2 Nadam/embedding_677/embeddings/v
*:(
Ëü2Nadam/dense_674/kernel/v
#:!ü2Nadam/dense_674/bias/v
2:0ü2%Nadam/batch_normalization_337/gamma/v
1:/ü2$Nadam/batch_normalization_337/beta/v
):'	ü2Nadam/dense_675/kernel/v
": 2Nadam/dense_675/bias/v
ú2÷
+__inference_model_338_layer_call_fn_6553036
+__inference_model_338_layer_call_fn_6553494
+__inference_model_338_layer_call_fn_6553519
+__inference_model_338_layer_call_fn_6553322À
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
â2ß
"__inference__wrapped_model_6552659¸
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
annotationsª *(¢%
# 
	input_336ÿÿÿÿÿÿÿÿÿU
æ2ã
F__inference_model_338_layer_call_and_return_conditional_losses_6553604
F__inference_model_338_layer_call_and_return_conditional_losses_6553710
F__inference_model_338_layer_call_and_return_conditional_losses_6553373
F__inference_model_338_layer_call_and_return_conditional_losses_6553424À
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
¤2¡
-__inference_lambda_1005_layer_call_fn_6553715
-__inference_lambda_1005_layer_call_fn_6553720À
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
Ú2×
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6553730
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6553740À
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
¤2¡
-__inference_lambda_1006_layer_call_fn_6553745
-__inference_lambda_1006_layer_call_fn_6553750À
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
Ú2×
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6553760
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6553770À
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
/__inference_embedding_676_layer_call_fn_6553783¢
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
J__inference_embedding_676_layer_call_and_return_conditional_losses_6553799¢
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
/__inference_embedding_677_layer_call_fn_6553812¢
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
J__inference_embedding_677_layer_call_and_return_conditional_losses_6553828¢
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
¤2¡
-__inference_lambda_1007_layer_call_fn_6553833
-__inference_lambda_1007_layer_call_fn_6553838À
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
Ú2×
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6553848
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6553858À
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
Ø2Õ
.__inference_flatten_1012_layer_call_fn_6553863¢
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
ó2ð
I__inference_flatten_1012_layer_call_and_return_conditional_losses_6553869¢
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
Ø2Õ
.__inference_flatten_1013_layer_call_fn_6553874¢
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
ó2ð
I__inference_flatten_1013_layer_call_and_return_conditional_losses_6553880¢
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
Ø2Õ
.__inference_flatten_1014_layer_call_fn_6553885¢
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
ó2ð
I__inference_flatten_1014_layer_call_and_return_conditional_losses_6553891¢
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
1__inference_concatenate_337_layer_call_fn_6553898¢
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
L__inference_concatenate_337_layer_call_and_return_conditional_losses_6553906¢
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
Õ2Ò
+__inference_dense_674_layer_call_fn_6553915¢
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
ð2í
F__inference_dense_674_layer_call_and_return_conditional_losses_6553925¢
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
°2­
9__inference_batch_normalization_337_layer_call_fn_6553938
9__inference_batch_normalization_337_layer_call_fn_6553951´
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
æ2ã
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6553971
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6554005´
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
Ú2×
0__inference_activation_674_layer_call_fn_6554010¢
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
õ2ò
K__inference_activation_674_layer_call_and_return_conditional_losses_6554015¢
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
2
-__inference_dropout_337_layer_call_fn_6554020
-__inference_dropout_337_layer_call_fn_6554025´
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
Î2Ë
H__inference_dropout_337_layer_call_and_return_conditional_losses_6554030
H__inference_dropout_337_layer_call_and_return_conditional_losses_6554042´
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
Õ2Ò
+__inference_dense_675_layer_call_fn_6554051¢
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
ð2í
F__inference_dense_675_layer_call_and_return_conditional_losses_6554061¢
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
Ú2×
0__inference_activation_675_layer_call_fn_6554066¢
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
õ2ò
K__inference_activation_675_layer_call_and_return_conditional_losses_6554071¢
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
´2±
__inference_loss_fn_0_6554082
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
´2±
__inference_loss_fn_1_6554093
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
ÎBË
%__inference_signature_wrapper_6553469	input_336"
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
 ¨
"__inference__wrapped_model_6552659
% >?HEGFUV2¢/
(¢%
# 
	input_336ÿÿÿÿÿÿÿÿÿU
ª "?ª<
:
activation_675(%
activation_675ÿÿÿÿÿÿÿÿÿ©
K__inference_activation_674_layer_call_and_return_conditional_losses_6554015Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
0__inference_activation_674_layer_call_fn_6554010M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿü§
K__inference_activation_675_layer_call_and_return_conditional_losses_6554071X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_activation_675_layer_call_fn_6554066K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¼
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6553971dHEGF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ¼
T__inference_batch_normalization_337_layer_call_and_return_conditional_losses_6554005dGHEF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
9__inference_batch_normalization_337_layer_call_fn_6553938WHEGF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "ÿÿÿÿÿÿÿÿÿü
9__inference_batch_normalization_337_layer_call_fn_6553951WGHEF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "ÿÿÿÿÿÿÿÿÿüù
L__inference_concatenate_337_layer_call_and_return_conditional_losses_6553906¨~¢{
t¢q
ol
"
inputs/0ÿÿÿÿÿÿÿÿÿd
"
inputs/1ÿÿÿÿÿÿÿÿÿ
"
inputs/2ÿÿÿÿÿÿÿÿÿS
ª "&¢#

0ÿÿÿÿÿÿÿÿÿË
 Ñ
1__inference_concatenate_337_layer_call_fn_6553898~¢{
t¢q
ol
"
inputs/0ÿÿÿÿÿÿÿÿÿd
"
inputs/1ÿÿÿÿÿÿÿÿÿ
"
inputs/2ÿÿÿÿÿÿÿÿÿS
ª "ÿÿÿÿÿÿÿÿÿË¨
F__inference_dense_674_layer_call_and_return_conditional_losses_6553925^>?0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿË
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
+__inference_dense_674_layer_call_fn_6553915Q>?0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿË
ª "ÿÿÿÿÿÿÿÿÿü§
F__inference_dense_675_layer_call_and_return_conditional_losses_6554061]UV0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_675_layer_call_fn_6554051PUV0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿª
H__inference_dropout_337_layer_call_and_return_conditional_losses_6554030^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ª
H__inference_dropout_337_layer_call_and_return_conditional_losses_6554042^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
-__inference_dropout_337_layer_call_fn_6554020Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "ÿÿÿÿÿÿÿÿÿü
-__inference_dropout_337_layer_call_fn_6554025Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "ÿÿÿÿÿÿÿÿÿü­
J__inference_embedding_676_layer_call_and_return_conditional_losses_6553799_ /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 
/__inference_embedding_676_layer_call_fn_6553783R /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd­
J__inference_embedding_677_layer_call_and_return_conditional_losses_6553828_%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_embedding_677_layer_call_fn_6553812R%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
I__inference_flatten_1012_layer_call_and_return_conditional_losses_6553869\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
.__inference_flatten_1012_layer_call_fn_6553863O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿd©
I__inference_flatten_1013_layer_call_and_return_conditional_losses_6553880\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_flatten_1013_layer_call_fn_6553874O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
I__inference_flatten_1014_layer_call_and_return_conditional_losses_6553891\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿS
ª "%¢"

0ÿÿÿÿÿÿÿÿÿS
 
.__inference_flatten_1014_layer_call_fn_6553885O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿS
ª "ÿÿÿÿÿÿÿÿÿS¬
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6553730`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¬
H__inference_lambda_1005_layer_call_and_return_conditional_losses_6553740`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_lambda_1005_layer_call_fn_6553715S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_lambda_1005_layer_call_fn_6553720S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p
ª "ÿÿÿÿÿÿÿÿÿ¬
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6553760`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¬
H__inference_lambda_1006_layer_call_and_return_conditional_losses_6553770`7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_lambda_1006_layer_call_fn_6553745S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_lambda_1006_layer_call_fn_6553750S7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6553848d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿS
 °
H__inference_lambda_1007_layer_call_and_return_conditional_losses_6553858d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿS
 
-__inference_lambda_1007_layer_call_fn_6553833W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p 
ª "ÿÿÿÿÿÿÿÿÿS
-__inference_lambda_1007_layer_call_fn_6553838W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU

 
p
ª "ÿÿÿÿÿÿÿÿÿS<
__inference_loss_fn_0_6554082 ¢

¢ 
ª " <
__inference_loss_fn_1_6554093%¢

¢ 
ª " ¹
F__inference_model_338_layer_call_and_return_conditional_losses_6553373o
% >?HEGFUV:¢7
0¢-
# 
	input_336ÿÿÿÿÿÿÿÿÿU
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
F__inference_model_338_layer_call_and_return_conditional_losses_6553424o
% >?GHEFUV:¢7
0¢-
# 
	input_336ÿÿÿÿÿÿÿÿÿU
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
F__inference_model_338_layer_call_and_return_conditional_losses_6553604l
% >?HEGFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
F__inference_model_338_layer_call_and_return_conditional_losses_6553710l
% >?GHEFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_model_338_layer_call_fn_6553036b
% >?HEGFUV:¢7
0¢-
# 
	input_336ÿÿÿÿÿÿÿÿÿU
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_338_layer_call_fn_6553322b
% >?GHEFUV:¢7
0¢-
# 
	input_336ÿÿÿÿÿÿÿÿÿU
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_338_layer_call_fn_6553494_
% >?HEGFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_338_layer_call_fn_6553519_
% >?GHEFUV7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿU
p

 
ª "ÿÿÿÿÿÿÿÿÿ¸
%__inference_signature_wrapper_6553469
% >?HEGFUV?¢<
¢ 
5ª2
0
	input_336# 
	input_336ÿÿÿÿÿÿÿÿÿU"?ª<
:
activation_675(%
activation_675ÿÿÿÿÿÿÿÿÿ