       ЃK"	  @DяOзAbrain.Event:2gmрБf}     Zp@	A\DяOзA"йњ
z
input_1Placeholder*
dtype0*/
_output_shapes
:џџџџџџџџџ``*$
shape:џџџџџџџџџ``
z
input_2Placeholder*
dtype0*/
_output_shapes
:џџџџџџџџџ``*$
shape:џџџџџџџџџ``
_
subtract/subSubinput_2input_1*/
_output_shapes
:џџџџџџџџџ``*
T0
Љ
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            * 
_class
loc:@conv2d/kernel

,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *№7'О* 
_class
loc:@conv2d/kernel

,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *№7'>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
№
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0* 
_class
loc:@conv2d/kernel
в
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
о
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
Б
conv2d/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 

conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0

!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:* 
_class
loc:@conv2d/kernel

conv2d/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:

conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0*
_class
loc:@conv2d/bias

conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
ы
conv2d/Conv2DConv2Dsubtract/subconv2d/Conv2D/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:

conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``*
T0
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *я[ёН*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
к
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
є
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
З
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 

conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0

#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
:

conv2d_1/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
	container *
shape:
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 

conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_1/bias

!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
g
conv2d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:
ю
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:

conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
e
add/addAddsubtract/subconv2d_1/Relu*/
_output_shapes
:џџџџџџџџџ``*
T0
Е
max_pooling2d/MaxPoolMaxPooladd/add*
ksize
*
paddingSAME*/
_output_shapes
:џџџџџџџџџ00*
T0*
data_formatNHWC*
strides

­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЭО*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:Э>*"
_class
loc:@conv2d_2/kernel
і
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_2/kernel*
seed2 
к
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_2/kernel
є
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0
З
conv2d_2/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
	container *
shape:0
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 

conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0

#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0*"
_class
loc:@conv2d_2/kernel

conv2d_2/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
Ѕ
conv2d_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
	container *
shape:0
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 

conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0

!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0
ј
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ000*
	dilations

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0

conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ000
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ000
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         0   *"
_class
loc:@conv2d_3/kernel

.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *ЃХН*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 

.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЃХ=*"
_class
loc:@conv2d_3/kernel
і
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 
к
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
є
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_3/kernel
З
conv2d_3/kernelVarHandleOp*"
_class
loc:@conv2d_3/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_3/kernel
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 

conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_3/kernel*
dtype0

#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
:0

conv2d_3/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
Ѕ
conv2d_3/biasVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_3/bias* 
_class
loc:@conv2d_3/bias
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 

conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros* 
_class
loc:@conv2d_3/bias*
dtype0

!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
g
conv2d_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0
ј
conv2d_3/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ000*
	dilations
*
T0
i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0

conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ000
a
conv2d_3/ReluReluconv2d_3/BiasAdd*/
_output_shapes
:џџџџџџџџџ000*
T0
­
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   0   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:

.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *ЋЊЊН*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 

.conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *ЋЊЊ=*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:00*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
к
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
є
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_4/kernel
ц
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
З
conv2d_4/kernelVarHandleOp* 
shared_nameconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
	container *
shape:00*
dtype0*
_output_shapes
: 
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 

conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
dtype0

#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*&
_output_shapes
:00

conv2d_4/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:0*
valueB0*    * 
_class
loc:@conv2d_4/bias
Ѕ
conv2d_4/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
	container *
shape:0
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 

conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros* 
_class
loc:@conv2d_4/bias*
dtype0

!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:0
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00
№
conv2d_4/Conv2DConv2Dconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ000*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0

conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ000*
T0
a
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ000
h
	add_1/addAddconv2d_2/Reluconv2d_4/Relu*/
_output_shapes
:џџџџџџџџџ000*
T0
\
up_sampling2d/ShapeShape	add_1/add*
T0*
out_type0*
_output_shapes
:
k
!up_sampling2d/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape!up_sampling2d/strided_slice/stack#up_sampling2d/strided_slice/stack_1#up_sampling2d/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
d
up_sampling2d/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
o
up_sampling2d/mulMulup_sampling2d/strided_sliceup_sampling2d/Const*
T0*
_output_shapes
:
Љ
#up_sampling2d/ResizeNearestNeighborResizeNearestNeighbor	add_1/addup_sampling2d/mul*
align_corners( *
T0*/
_output_shapes
:џџџџџџџџџ``0
­
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:

.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЭО*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 

.conv2d_5/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:Э>*"
_class
loc:@conv2d_5/kernel
і
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_5/kernel*
seed2 
к
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
є
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:0
ц
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_5/kernel
З
conv2d_5/kernelVarHandleOp* 
shared_nameconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: 
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 

conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_5/kernel*
dtype0

#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0*"
_class
loc:@conv2d_5/kernel

conv2d_5/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    * 
_class
loc:@conv2d_5/bias
Ѕ
conv2d_5/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_5/bias* 
_class
loc:@conv2d_5/bias*
	container *
shape:
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 

conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_5/bias

!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_5/bias
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0

conv2d_5/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:

conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``
a
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
­
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      0      *"
_class
loc:@conv2d_6/kernel

.conv2d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *ЃХН*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 

.conv2d_6/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЃХ=*"
_class
loc:@conv2d_6/kernel
і
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_6/kernel*
seed2 *
dtype0*&
_output_shapes
:0
к
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
є
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
ц
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_6/kernel
З
conv2d_6/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
	container *
shape:0
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 

conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_6/kernel*
dtype0

#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0*"
_class
loc:@conv2d_6/kernel

conv2d_6/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_6/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
	container *
shape:
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 

conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0

!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
g
conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0

conv2d_6/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:

conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
­
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
:

.conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *я[ёН*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 

.conv2d_7/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *я[ё=*"
_class
loc:@conv2d_7/kernel
і
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_7/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
к
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
є
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
ц
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
З
conv2d_7/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: * 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
	container 
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 

conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_7/kernel*
dtype0

#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*&
_output_shapes
:

conv2d_7/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_7/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
	container *
shape:
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 

conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_7/bias

!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_7/bias
g
conv2d_7/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:
№
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:

conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``*
T0
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
h
	add_2/addAddconv2d_5/Reluconv2d_7/Relu*/
_output_shapes
:џџџџџџџџџ``*
T0
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

concatenate/concatConcatV2add/add	add_2/addconcatenate/concat/axis*
T0*
N*/
_output_shapes
:џџџџџџџџџ``0*

Tidx0
­
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
:

.conv2d_8/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *Ѕ)ГО*"
_class
loc:@conv2d_8/kernel

.conv2d_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ѕ)Г>*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
к
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
є
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:0
ц
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:0
З
conv2d_8/kernelVarHandleOp*"
_class
loc:@conv2d_8/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 

conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_8/kernel

#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
dtype0*&
_output_shapes
:0

conv2d_8/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_8/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
	container *
shape:
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 

conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros* 
_class
loc:@conv2d_8/bias*
dtype0

!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes
:
g
conv2d_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0
ѕ
conv2d_8/Conv2DConv2Dconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:

conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``
a
conv2d_8/ReluReluconv2d_8/BiasAdd*/
_output_shapes
:џџџџџџџџџ``*
T0
b
	add_3/addAddinput_1conv2d_8/Relu*
T0*/
_output_shapes
:џџџџџџџџџ``

(SGD/iterations/Initializer/initial_valueConst*
value	B	 R *!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
Є
SGD/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *
shared_nameSGD/iterations*!
_class
loc:@SGD/iterations*
	container *
shape: 
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 

SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*
dtype0	*!
_class
loc:@SGD/iterations

"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*
dtype0	*
_output_shapes
: *!
_class
loc:@SGD/iterations

 SGD/lr/Initializer/initial_valueConst*
valueB
 *
з#<*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

SGD/lrVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSGD/lr*
_class
loc:@SGD/lr*
	container *
shape: 
]
'SGD/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/lr*
_output_shapes
: 
s
SGD/lr/AssignAssignVariableOpSGD/lr SGD/lr/Initializer/initial_value*
dtype0*
_class
loc:@SGD/lr
t
SGD/lr/Read/ReadVariableOpReadVariableOpSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

&SGD/momentum/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

SGD/momentumVarHandleOp*
_class
loc:@SGD/momentum*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameSGD/momentum
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 

SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
_class
loc:@SGD/momentum*
dtype0

 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

#SGD/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *Н75*
_class
loc:@SGD/decay

	SGD/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	SGD/decay*
_class
loc:@SGD/decay
c
*SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp	SGD/decay*
_output_shapes
: 

SGD/decay/AssignAssignVariableOp	SGD/decay#SGD/decay/Initializer/initial_value*
_class
loc:@SGD/decay*
dtype0
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 

)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
Ї
Adam/iterationsVarHandleOp*
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*
dtype0	*"
_class
loc:@Adam/iterations

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: *"
_class
loc:@Adam/iterations

!Adam/lr/Initializer/initial_valueConst*
valueB
 *o:*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

Adam/lrVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	Adam/lr*
_class
loc:@Adam/lr*
	container 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wО?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

Adam/beta_2VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 


Adam/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
Е
add_3_targetPlaceholder*
dtype0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*?
shape6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
R
ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:

add_3_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
v
total/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class

loc:@total

totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: *
_class

loc:@total
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 

countVarHandleOp*
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
z
total_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@total_1*
dtype0*
_output_shapes
: 

total_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	total_1*
_class
loc:@total_1*
	container *
shape: 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_1*
dtype0*
_output_shapes
: 

count_1VarHandleOp*
_class
loc:@count_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	count_1
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
p
loss/add_3_loss/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

loss/add_3_loss/ReshapeReshapeadd_3_targetloss/add_3_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
r
loss/add_3_loss/Reshape_1/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

loss/add_3_loss/Reshape_1Reshape	add_3/addloss/add_3_loss/Reshape_1/shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
|
loss/add_3_loss/mulMulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
_
loss/add_3_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

loss/add_3_loss/SumSumloss/add_3_loss/mulloss/add_3_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
\
loss/add_3_loss/mul_1/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
k
loss/add_3_loss/mul_1Mulloss/add_3_loss/mul_1/xloss/add_3_loss/Sum*
T0*
_output_shapes
: 
Z
loss/add_3_loss/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
i
loss/add_3_loss/addAddloss/add_3_loss/mul_1loss/add_3_loss/add/y*
_output_shapes
: *
T0
|
loss/add_3_loss/mul_2Mulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/add_3_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/add_3_loss/Sum_1Sumloss/add_3_loss/mul_2loss/add_3_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss/add_3_loss/mul_3Mulloss/add_3_loss/Reshape_1loss/add_3_loss/Reshape_1*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/add_3_loss/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 

loss/add_3_loss/Sum_2Sumloss/add_3_loss/mul_3loss/add_3_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
loss/add_3_loss/add_1Addloss/add_3_loss/Sum_1loss/add_3_loss/Sum_2*
T0*
_output_shapes
: 
\
loss/add_3_loss/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
m
loss/add_3_loss/add_2Addloss/add_3_loss/add_1loss/add_3_loss/add_2/y*
T0*
_output_shapes
: 
o
loss/add_3_loss/truedivRealDivloss/add_3_loss/addloss/add_3_loss/add_2*
T0*
_output_shapes
: 
Z
loss/add_3_loss/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
k
loss/add_3_loss/subSubloss/add_3_loss/sub/xloss/add_3_loss/truediv*
T0*
_output_shapes
: 
y
loss/add_3_loss/SqueezeSqueezeadd_3_sample_weights*
T0*
_output_shapes
: *
squeeze_dims

џџџџџџџџџ
k
loss/add_3_loss/Mul_4Mulloss/add_3_loss/subloss/add_3_loss/Squeeze*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 

loss/add_3_loss/Sum_3Sumloss/add_3_loss/Mul_4loss/add_3_loss/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Z
loss/add_3_loss/Const_4Const*
valueB *
dtype0*
_output_shapes
: 

loss/add_3_loss/Sum_4Sumloss/add_3_loss/Squeezeloss/add_3_loss/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
u
loss/add_3_loss/div_no_nanDivNoNanloss/add_3_loss/Sum_3loss/add_3_loss/Sum_4*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_5Const*
valueB *
dtype0*
_output_shapes
: 

loss/add_3_loss/MeanMeanloss/add_3_loss/div_no_nanloss/add_3_loss/Const_5*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
R
loss/mulMul
loss/mul/xloss/add_3_loss/Mean*
T0*
_output_shapes
: 
s
metrics/psnr/subSub	add_3/addadd_3_target*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ*
T0
r
metrics/psnr/SquareSquaremetrics/psnr/sub*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
k
metrics/psnr/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:

metrics/psnr/MeanMeanmetrics/psnr/Squaremetrics/psnr/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
K
metrics/psnr/LogLogmetrics/psnr/Mean*
T0*
_output_shapes
: 
Y
metrics/psnr/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *   A
P
metrics/psnr/Log_1Logmetrics/psnr/Const_1*
T0*
_output_shapes
: 
f
metrics/psnr/truedivRealDivmetrics/psnr/Logmetrics/psnr/Log_1*
T0*
_output_shapes
: 
W
metrics/psnr/mul/xConst*
valueB
 *   С*
dtype0*
_output_shapes
: 
b
metrics/psnr/mulMulmetrics/psnr/mul/xmetrics/psnr/truediv*
T0*
_output_shapes
: 
S
metrics/psnr/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
l
metrics/psnr/CastCastmetrics/psnr/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
W
metrics/psnr/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
}
metrics/psnr/SumSummetrics/psnr/mulmetrics/psnr/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
]
 metrics/psnr/AssignAddVariableOpAssignAddVariableOptotalmetrics/psnr/Sum*
dtype0
|
metrics/psnr/ReadVariableOpReadVariableOptotal!^metrics/psnr/AssignAddVariableOp*
dtype0*
_output_shapes
: 
~
"metrics/psnr/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/psnr/Cast^metrics/psnr/ReadVariableOp*
dtype0

metrics/psnr/ReadVariableOp_1ReadVariableOpcount#^metrics/psnr/AssignAddVariableOp_1^metrics/psnr/ReadVariableOp*
dtype0*
_output_shapes
: 

&metrics/psnr/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 

(metrics/psnr/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/psnr/div_no_nanDivNoNan&metrics/psnr/div_no_nan/ReadVariableOp(metrics/psnr/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
u
metrics/psnr/sub_1Sub	add_3/addadd_3_target*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
v
metrics/psnr/Square_1Squaremetrics/psnr/sub_1*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
m
metrics/psnr/Const_3Const*%
valueB"             *
dtype0*
_output_shapes
:

metrics/psnr/Mean_1Meanmetrics/psnr/Square_1metrics/psnr/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O
metrics/psnr/Log_2Logmetrics/psnr/Mean_1*
T0*
_output_shapes
: 
Y
metrics/psnr/Const_4Const*
valueB
 *   A*
dtype0*
_output_shapes
: 
P
metrics/psnr/Log_3Logmetrics/psnr/Const_4*
_output_shapes
: *
T0
j
metrics/psnr/truediv_1RealDivmetrics/psnr/Log_2metrics/psnr/Log_3*
_output_shapes
: *
T0
Y
metrics/psnr/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   С
h
metrics/psnr/mul_1Mulmetrics/psnr/mul_1/xmetrics/psnr/truediv_1*
T0*
_output_shapes
: 
W
metrics/psnr/Const_5Const*
valueB *
dtype0*
_output_shapes
: 

metrics/psnr/Mean_2Meanmetrics/psnr/mul_1metrics/psnr/Const_5*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
z
metrics/ssim/ShapeNShapeNadd_3_target	add_3/add*
T0*
out_type0*
N* 
_output_shapes
::
S
metrics/ssim/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
]
metrics/ssim/GreaterEqual/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
metrics/ssim/GreaterEqualGreaterEqualmetrics/ssim/Sizemetrics/ssim/GreaterEqual/y*
T0*
_output_shapes
: 

metrics/ssim/Assert/AssertAssertmetrics/ssim/GreaterEqualmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

s
 metrics/ssim/strided_slice/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
l
"metrics/ssim/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
l
"metrics/ssim/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
metrics/ssim/strided_sliceStridedSlicemetrics/ssim/ShapeN metrics/ssim/strided_slice/stack"metrics/ssim/strided_slice/stack_1"metrics/ssim/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
u
"metrics/ssim/strided_slice_1/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Щ
metrics/ssim/strided_slice_1StridedSlicemetrics/ssim/ShapeN:1"metrics/ssim/strided_slice_1/stack$metrics/ssim/strided_slice_1/stack_1$metrics/ssim/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
z
metrics/ssim/EqualEqualmetrics/ssim/strided_slicemetrics/ssim/strided_slice_1*
_output_shapes
:*
T0
\
metrics/ssim/ConstConst*
valueB: *
dtype0*
_output_shapes
:
t
metrics/ssim/AllAllmetrics/ssim/Equalmetrics/ssim/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 

metrics/ssim/Assert_1/AssertAssertmetrics/ssim/Allmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

Р
metrics/ssim/IdentityIdentityadd_3_target^metrics/ssim/Assert/Assert^metrics/ssim/Assert_1/Assert*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
X
metrics/ssim/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
metrics/ssim/Identity_1Identitymetrics/ssim/Cast/x*
T0*
_output_shapes
: 

metrics/ssim/Identity_2Identitymetrics/ssim/Identity*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
h
metrics/ssim/Identity_3Identity	add_3/add*
T0*/
_output_shapes
:џџџџџџџџџ``
V
metrics/ssim/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
Y
metrics/ssim/Const_2Const*
valueB
 *  Р?*
dtype0*
_output_shapes
: 

metrics/ssim/ShapeN_1ShapeNmetrics/ssim/Identity_2metrics/ssim/Identity_3*
T0*
out_type0*
N* 
_output_shapes
::
u
"metrics/ssim/strided_slice_2/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
n
$metrics/ssim/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
metrics/ssim/strided_slice_2StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_2/stack$metrics/ssim/strided_slice_2/stack_1$metrics/ssim/strided_slice_2/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0

metrics/ssim/GreaterEqual_1GreaterEqualmetrics/ssim/strided_slice_2metrics/ssim/Const_1*
T0*
_output_shapes
:
^
metrics/ssim/Const_3Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_1Allmetrics/ssim/GreaterEqual_1metrics/ssim/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_2/AssertAssertmetrics/ssim/All_1metrics/ssim/ShapeN_1metrics/ssim/Const_1*
T
2*
	summarize
u
"metrics/ssim/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
w
$metrics/ssim/strided_slice_3/stack_1Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ы
metrics/ssim/strided_slice_3StridedSlicemetrics/ssim/ShapeN_1:1"metrics/ssim/strided_slice_3/stack$metrics/ssim/strided_slice_3/stack_1$metrics/ssim/strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0

metrics/ssim/GreaterEqual_2GreaterEqualmetrics/ssim/strided_slice_3metrics/ssim/Const_1*
T0*
_output_shapes
:
^
metrics/ssim/Const_4Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_2Allmetrics/ssim/GreaterEqual_2metrics/ssim/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_3/AssertAssertmetrics/ssim/All_2metrics/ssim/ShapeN_1:1metrics/ssim/Const_1*
T
2*
	summarize
Я
metrics/ssim/Identity_4Identitymetrics/ssim/Identity_2^metrics/ssim/Assert_2/Assert^metrics/ssim/Assert_3/Assert*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Z
metrics/ssim/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Z
metrics/ssim/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

metrics/ssim/rangeRangemetrics/ssim/range/startmetrics/ssim/Const_1metrics/ssim/range/delta*
_output_shapes
:*

Tidx0
s
metrics/ssim/Cast_1Castmetrics/ssim/range*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0
T
metrics/ssim/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
b
metrics/ssim/subSubmetrics/ssim/Const_1metrics/ssim/sub/y*
T0*
_output_shapes
: 
m
metrics/ssim/Cast_2Castmetrics/ssim/sub*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
[
metrics/ssim/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
m
metrics/ssim/truedivRealDivmetrics/ssim/Cast_2metrics/ssim/truediv/y*
T0*
_output_shapes
: 
i
metrics/ssim/sub_1Submetrics/ssim/Cast_1metrics/ssim/truediv*
T0*
_output_shapes
:
V
metrics/ssim/SquareSquaremetrics/ssim/sub_1*
_output_shapes
:*
T0
V
metrics/ssim/Square_1Squaremetrics/ssim/Const_2*
T0*
_output_shapes
: 
]
metrics/ssim/truediv_1/xConst*
valueB
 *   П*
dtype0*
_output_shapes
: 
s
metrics/ssim/truediv_1RealDivmetrics/ssim/truediv_1/xmetrics/ssim/Square_1*
_output_shapes
: *
T0
i
metrics/ssim/mulMulmetrics/ssim/Squaremetrics/ssim/truediv_1*
T0*
_output_shapes
:
k
metrics/ssim/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"   џџџџ

metrics/ssim/ReshapeReshapemetrics/ssim/mulmetrics/ssim/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
m
metrics/ssim/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

metrics/ssim/Reshape_1Reshapemetrics/ssim/mulmetrics/ssim/Reshape_1/shape*
_output_shapes

:*
T0*
Tshape0
n
metrics/ssim/addAddmetrics/ssim/Reshapemetrics/ssim/Reshape_1*
T0*
_output_shapes

:
m
metrics/ssim/Reshape_2/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/ssim/Reshape_2Reshapemetrics/ssim/addmetrics/ssim/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:y
`
metrics/ssim/SoftmaxSoftmaxmetrics/ssim/Reshape_2*
T0*
_output_shapes

:y
`
metrics/ssim/Reshape_3/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
`
metrics/ssim/Reshape_3/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
metrics/ssim/Reshape_3/shapePackmetrics/ssim/Const_1metrics/ssim/Const_1metrics/ssim/Reshape_3/shape/2metrics/ssim/Reshape_3/shape/3*
T0*

axis *
N*
_output_shapes
:

metrics/ssim/Reshape_3Reshapemetrics/ssim/Softmaxmetrics/ssim/Reshape_3/shape*
T0*
Tshape0*&
_output_shapes
:
u
"metrics/ssim/strided_slice_4/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_4/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
n
$metrics/ssim/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
metrics/ssim/strided_slice_4StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_4/stack$metrics/ssim/strided_slice_4/stack_1$metrics/ssim/strided_slice_4/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
_
metrics/ssim/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/Tile/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 
и
metrics/ssim/Tile/multiplesPackmetrics/ssim/Tile/multiples/0metrics/ssim/Tile/multiples/1metrics/ssim/strided_slice_4metrics/ssim/Tile/multiples/3*
T0*

axis *
N*
_output_shapes
:

metrics/ssim/TileTilemetrics/ssim/Reshape_3metrics/ssim/Tile/multiples*/
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
Y
metrics/ssim/mul_1/xConst*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
i
metrics/ssim/mul_1Mulmetrics/ssim/mul_1/xmetrics/ssim/Identity_1*
T0*
_output_shapes
: 
W
metrics/ssim/pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
`
metrics/ssim/powPowmetrics/ssim/mul_1metrics/ssim/pow/y*
_output_shapes
: *
T0
Y
metrics/ssim/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *Тѕ<
i
metrics/ssim/mul_2Mulmetrics/ssim/mul_2/xmetrics/ssim/Identity_1*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
d
metrics/ssim/pow_1Powmetrics/ssim/mul_2metrics/ssim/pow_1/y*
_output_shapes
: *
T0
i
metrics/ssim/ShapeShapemetrics/ssim/Identity_4*
T0*
out_type0*
_output_shapes
:
u
"metrics/ssim/strided_slice_5/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
n
$metrics/ssim/strided_slice_5/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_5/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ц
metrics/ssim/strided_slice_5StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_5/stack$metrics/ssim/strided_slice_5/stack_1$metrics/ssim/strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
o
metrics/ssim/concat/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Z
metrics/ssim/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Џ
metrics/ssim/concatConcatV2metrics/ssim/concat/values_0metrics/ssim/strided_slice_5metrics/ssim/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
В
metrics/ssim/Reshape_4Reshapemetrics/ssim/Identity_4metrics/ssim/concat*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0*
Tshape0
m
metrics/ssim/depthwise/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
u
$metrics/ssim/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

metrics/ssim/depthwiseDepthwiseConv2dNativemetrics/ssim/Reshape_4metrics/ssim/Tile*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
l
"metrics/ssim/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_6/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
metrics/ssim/strided_slice_6StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_6/stack$metrics/ssim/strided_slice_6/stack_1$metrics/ssim/strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
j
metrics/ssim/Shape_1Shapemetrics/ssim/depthwise*
T0*
out_type0*
_output_shapes
:
l
"metrics/ssim/strided_slice_7/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_7/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ш
metrics/ssim/strided_slice_7StridedSlicemetrics/ssim/Shape_1"metrics/ssim/strided_slice_7/stack$metrics/ssim/strided_slice_7/stack_1$metrics/ssim/strided_slice_7/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Г
metrics/ssim/concat_1ConcatV2metrics/ssim/strided_slice_6metrics/ssim/strided_slice_7metrics/ssim/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Г
metrics/ssim/Reshape_5Reshapemetrics/ssim/depthwisemetrics/ssim/concat_1*
T0*
Tshape0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
k
metrics/ssim/Shape_2Shapemetrics/ssim/Identity_3*
T0*
out_type0*
_output_shapes
:
u
"metrics/ssim/strided_slice_8/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
metrics/ssim/strided_slice_8StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_8/stack$metrics/ssim/strided_slice_8/stack_1$metrics/ssim/strided_slice_8/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
q
metrics/ssim/concat_2/values_0Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
\
metrics/ssim/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
metrics/ssim/concat_2ConcatV2metrics/ssim/concat_2/values_0metrics/ssim/strided_slice_8metrics/ssim/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0

metrics/ssim/Reshape_6Reshapemetrics/ssim/Identity_3metrics/ssim/concat_2*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ``
o
metrics/ssim/depthwise_1/ShapeShapemetrics/ssim/Tile*
_output_shapes
:*
T0*
out_type0
w
&metrics/ssim/depthwise_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
э
metrics/ssim/depthwise_1DepthwiseConv2dNativemetrics/ssim/Reshape_6metrics/ssim/Tile*
paddingVALID*/
_output_shapes
:џџџџџџџџџVV*
	dilations
*
T0*
data_formatNHWC*
strides

l
"metrics/ssim/strided_slice_9/stackConst*
dtype0*
_output_shapes
:*
valueB: 
w
$metrics/ssim/strided_slice_9/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
metrics/ssim/strided_slice_9StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_9/stack$metrics/ssim/strided_slice_9/stack_1$metrics/ssim/strided_slice_9/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
l
metrics/ssim/Shape_3Shapemetrics/ssim/depthwise_1*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_10/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_10/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_10StridedSlicemetrics/ssim/Shape_3#metrics/ssim/strided_slice_10/stack%metrics/ssim/strided_slice_10/stack_1%metrics/ssim/strided_slice_10/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_3/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Д
metrics/ssim/concat_3ConcatV2metrics/ssim/strided_slice_9metrics/ssim/strided_slice_10metrics/ssim/concat_3/axis*

Tidx0*
T0*
N*
_output_shapes
:

metrics/ssim/Reshape_7Reshapemetrics/ssim/depthwise_1metrics/ssim/concat_3*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџVV

metrics/ssim/mul_3Mulmetrics/ssim/Reshape_5metrics/ssim/Reshape_7*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0
Y
metrics/ssim/mul_4/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/ssim/mul_4Mulmetrics/ssim/mul_3metrics/ssim/mul_4/y*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Square_2Squaremetrics/ssim/Reshape_5*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
q
metrics/ssim/Square_3Squaremetrics/ssim/Reshape_7*/
_output_shapes
:џџџџџџџџџVV*
T0

metrics/ssim/add_1Addmetrics/ssim/Square_2metrics/ssim/Square_3*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_2Addmetrics/ssim/mul_4metrics/ssim/pow*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_3Addmetrics/ssim/add_1metrics/ssim/pow*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/truediv_2RealDivmetrics/ssim/add_2metrics/ssim/add_3*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/mul_5Mulmetrics/ssim/Identity_4metrics/ssim/Identity_3*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
f
metrics/ssim/Shape_4Shapemetrics/ssim/mul_5*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_11/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_11/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_11StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_11/stack%metrics/ssim/strided_slice_11/stack_1%metrics/ssim/strided_slice_11/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
q
metrics/ssim/concat_4/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
metrics/ssim/concat_4ConcatV2metrics/ssim/concat_4/values_0metrics/ssim/strided_slice_11metrics/ssim/concat_4/axis*
N*
_output_shapes
:*

Tidx0*
T0

metrics/ssim/Reshape_8Reshapemetrics/ssim/mul_5metrics/ssim/concat_4*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
o
metrics/ssim/depthwise_2/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
і
metrics/ssim/depthwise_2DepthwiseConv2dNativemetrics/ssim/Reshape_8metrics/ssim/Tile*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
m
#metrics/ssim/strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_12/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_12StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_12/stack%metrics/ssim/strided_slice_12/stack_1%metrics/ssim/strided_slice_12/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
l
metrics/ssim/Shape_5Shapemetrics/ssim/depthwise_2*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_13/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_13StridedSlicemetrics/ssim/Shape_5#metrics/ssim/strided_slice_13/stack%metrics/ssim/strided_slice_13/stack_1%metrics/ssim/strided_slice_13/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
\
metrics/ssim/concat_5/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Е
metrics/ssim/concat_5ConcatV2metrics/ssim/strided_slice_12metrics/ssim/strided_slice_13metrics/ssim/concat_5/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ѓ
metrics/ssim/Reshape_9Reshapemetrics/ssim/depthwise_2metrics/ssim/concat_5*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Y
metrics/ssim/mul_6/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/ssim/mul_6Mulmetrics/ssim/Reshape_9metrics/ssim/mul_6/y*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/Square_4Squaremetrics/ssim/Identity_4*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
r
metrics/ssim/Square_5Squaremetrics/ssim/Identity_3*/
_output_shapes
:џџџџџџџџџ``*
T0

metrics/ssim/add_4Addmetrics/ssim/Square_4metrics/ssim/Square_5*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ*
T0
f
metrics/ssim/Shape_6Shapemetrics/ssim/add_4*
_output_shapes
:*
T0*
out_type0
v
#metrics/ssim/strided_slice_14/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_14/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_14StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_14/stack%metrics/ssim/strided_slice_14/stack_1%metrics/ssim/strided_slice_14/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
q
metrics/ssim/concat_6/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_6/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
metrics/ssim/concat_6ConcatV2metrics/ssim/concat_6/values_0metrics/ssim/strided_slice_14metrics/ssim/concat_6/axis*
N*
_output_shapes
:*

Tidx0*
T0

metrics/ssim/Reshape_10Reshapemetrics/ssim/add_4metrics/ssim/concat_6*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ*
T0*
Tshape0
o
metrics/ssim/depthwise_3/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ї
metrics/ssim/depthwise_3DepthwiseConv2dNativemetrics/ssim/Reshape_10metrics/ssim/Tile*
paddingVALID*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides

m
#metrics/ssim/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_15/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_15StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_15/stack%metrics/ssim/strided_slice_15/stack_1%metrics/ssim/strided_slice_15/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
l
metrics/ssim/Shape_7Shapemetrics/ssim/depthwise_3*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_16/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_16/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_16StridedSlicemetrics/ssim/Shape_7#metrics/ssim/strided_slice_16/stack%metrics/ssim/strided_slice_16/stack_1%metrics/ssim/strided_slice_16/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_7/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
metrics/ssim/concat_7ConcatV2metrics/ssim/strided_slice_15metrics/ssim/strided_slice_16metrics/ssim/concat_7/axis*
T0*
N*
_output_shapes
:*

Tidx0
Є
metrics/ssim/Reshape_11Reshapemetrics/ssim/depthwise_3metrics/ssim/concat_7*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Y
metrics/ssim/mul_7/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
metrics/ssim/mul_7Mulmetrics/ssim/pow_1metrics/ssim/mul_7/y*
T0*
_output_shapes
: 

metrics/ssim/sub_2Submetrics/ssim/mul_6metrics/ssim/mul_4*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/add_5Addmetrics/ssim/sub_2metrics/ssim/mul_7*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/sub_3Submetrics/ssim/Reshape_11metrics/ssim/add_1*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_6Addmetrics/ssim/sub_3metrics/ssim/mul_7*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/truediv_3RealDivmetrics/ssim/add_5metrics/ssim/add_6*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
e
metrics/ssim/Const_5Const*
valueB"§џџџўџџџ*
dtype0*
_output_shapes
:

metrics/ssim/mul_8Mulmetrics/ssim/truediv_2metrics/ssim/truediv_3*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/MeanMeanmetrics/ssim/mul_8metrics/ssim/Const_5*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
Ё
metrics/ssim/Mean_1Meanmetrics/ssim/truediv_3metrics/ssim/Const_5*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
x
%metrics/ssim/Mean_2/reduction_indicesConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
metrics/ssim/Mean_2Meanmetrics/ssim/Mean%metrics/ssim/Mean_2/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
^
metrics/ssim/Const_6Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/Mean_3Meanmetrics/ssim/Mean_2metrics/ssim/Const_6*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
U
metrics/ssim/Size_1Const*
value	B :*
dtype0*
_output_shapes
: 
p
metrics/ssim/Cast_3Castmetrics/ssim/Size_1*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
W
metrics/ssim/Const_7Const*
valueB *
dtype0*
_output_shapes
: 

metrics/ssim/SumSummetrics/ssim/Mean_3metrics/ssim/Const_7*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
 metrics/ssim/AssignAddVariableOpAssignAddVariableOptotal_1metrics/ssim/Sum*
dtype0
~
metrics/ssim/ReadVariableOpReadVariableOptotal_1!^metrics/ssim/AssignAddVariableOp*
dtype0*
_output_shapes
: 

"metrics/ssim/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics/ssim/Cast_3^metrics/ssim/ReadVariableOp*
dtype0
 
metrics/ssim/ReadVariableOp_1ReadVariableOpcount_1#^metrics/ssim/AssignAddVariableOp_1^metrics/ssim/ReadVariableOp*
dtype0*
_output_shapes
: 

&metrics/ssim/div_no_nan/ReadVariableOpReadVariableOptotal_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 

(metrics/ssim/div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/ssim/div_no_nanDivNoNan&metrics/ssim/div_no_nan/ReadVariableOp(metrics/ssim/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
|
metrics/ssim/ShapeN_2ShapeNadd_3_target	add_3/add*
N* 
_output_shapes
::*
T0*
out_type0
U
metrics/ssim/Size_2Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/GreaterEqual_3/yConst*
value	B :*
dtype0*
_output_shapes
: 

metrics/ssim/GreaterEqual_3GreaterEqualmetrics/ssim/Size_2metrics/ssim/GreaterEqual_3/y*
_output_shapes
: *
T0

metrics/ssim/Assert_4/AssertAssertmetrics/ssim/GreaterEqual_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

v
#metrics/ssim/strided_slice_17/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_17/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_17StridedSlicemetrics/ssim/ShapeN_2#metrics/ssim/strided_slice_17/stack%metrics/ssim/strided_slice_17/stack_1%metrics/ssim/strided_slice_17/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
v
#metrics/ssim/strided_slice_18/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_18/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_18/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Я
metrics/ssim/strided_slice_18StridedSlicemetrics/ssim/ShapeN_2:1#metrics/ssim/strided_slice_18/stack%metrics/ssim/strided_slice_18/stack_1%metrics/ssim/strided_slice_18/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0

metrics/ssim/Equal_1Equalmetrics/ssim/strided_slice_17metrics/ssim/strided_slice_18*
T0*
_output_shapes
:
^
metrics/ssim/Const_8Const*
valueB: *
dtype0*
_output_shapes
:
z
metrics/ssim/All_3Allmetrics/ssim/Equal_1metrics/ssim/Const_8*
	keep_dims( *

Tidx0*
_output_shapes
: 

metrics/ssim/Assert_5/AssertAssertmetrics/ssim/All_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

Ф
metrics/ssim/Identity_5Identityadd_3_target^metrics/ssim/Assert_4/Assert^metrics/ssim/Assert_5/Assert*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Z
metrics/ssim/Cast_4/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
metrics/ssim/Identity_6Identitymetrics/ssim/Cast_4/x*
T0*
_output_shapes
: 

metrics/ssim/Identity_7Identitymetrics/ssim/Identity_5*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
h
metrics/ssim/Identity_8Identity	add_3/add*/
_output_shapes
:џџџџџџџџџ``*
T0
V
metrics/ssim/Const_9Const*
value	B :*
dtype0*
_output_shapes
: 
Z
metrics/ssim/Const_10Const*
valueB
 *  Р?*
dtype0*
_output_shapes
: 

metrics/ssim/ShapeN_3ShapeNmetrics/ssim/Identity_7metrics/ssim/Identity_8*
N* 
_output_shapes
::*
T0*
out_type0
v
#metrics/ssim/strided_slice_19/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_19/stack_1Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_19/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_19StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_19/stack%metrics/ssim/strided_slice_19/stack_1%metrics/ssim/strided_slice_19/stack_2*
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 

metrics/ssim/GreaterEqual_4GreaterEqualmetrics/ssim/strided_slice_19metrics/ssim/Const_9*
T0*
_output_shapes
:
_
metrics/ssim/Const_11Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_4Allmetrics/ssim/GreaterEqual_4metrics/ssim/Const_11*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_6/AssertAssertmetrics/ssim/All_4metrics/ssim/ShapeN_3metrics/ssim/Const_9*
T
2*
	summarize
v
#metrics/ssim/strided_slice_20/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_20/stack_1Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_20/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Я
metrics/ssim/strided_slice_20StridedSlicemetrics/ssim/ShapeN_3:1#metrics/ssim/strided_slice_20/stack%metrics/ssim/strided_slice_20/stack_1%metrics/ssim/strided_slice_20/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0

metrics/ssim/GreaterEqual_5GreaterEqualmetrics/ssim/strided_slice_20metrics/ssim/Const_9*
T0*
_output_shapes
:
_
metrics/ssim/Const_12Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_5Allmetrics/ssim/GreaterEqual_5metrics/ssim/Const_12*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_7/AssertAssertmetrics/ssim/All_5metrics/ssim/ShapeN_3:1metrics/ssim/Const_9*
T
2*
	summarize
Я
metrics/ssim/Identity_9Identitymetrics/ssim/Identity_7^metrics/ssim/Assert_6/Assert^metrics/ssim/Assert_7/Assert*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
\
metrics/ssim/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
\
metrics/ssim/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :

metrics/ssim/range_1Rangemetrics/ssim/range_1/startmetrics/ssim/Const_9metrics/ssim/range_1/delta*
_output_shapes
:*

Tidx0
u
metrics/ssim/Cast_5Castmetrics/ssim/range_1*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0
V
metrics/ssim/sub_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
f
metrics/ssim/sub_4Submetrics/ssim/Const_9metrics/ssim/sub_4/y*
T0*
_output_shapes
: 
o
metrics/ssim/Cast_6Castmetrics/ssim/sub_4*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
]
metrics/ssim/truediv_4/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
q
metrics/ssim/truediv_4RealDivmetrics/ssim/Cast_6metrics/ssim/truediv_4/y*
T0*
_output_shapes
: 
k
metrics/ssim/sub_5Submetrics/ssim/Cast_5metrics/ssim/truediv_4*
_output_shapes
:*
T0
X
metrics/ssim/Square_6Squaremetrics/ssim/sub_5*
_output_shapes
:*
T0
W
metrics/ssim/Square_7Squaremetrics/ssim/Const_10*
T0*
_output_shapes
: 
]
metrics/ssim/truediv_5/xConst*
valueB
 *   П*
dtype0*
_output_shapes
: 
s
metrics/ssim/truediv_5RealDivmetrics/ssim/truediv_5/xmetrics/ssim/Square_7*
T0*
_output_shapes
: 
m
metrics/ssim/mul_9Mulmetrics/ssim/Square_6metrics/ssim/truediv_5*
_output_shapes
:*
T0
n
metrics/ssim/Reshape_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"   џџџџ

metrics/ssim/Reshape_12Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_12/shape*
T0*
Tshape0*
_output_shapes

:
n
metrics/ssim/Reshape_13/shapeConst*
dtype0*
_output_shapes
:*
valueB"џџџџ   

metrics/ssim/Reshape_13Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_13/shape*
T0*
Tshape0*
_output_shapes

:
t
metrics/ssim/add_7Addmetrics/ssim/Reshape_12metrics/ssim/Reshape_13*
_output_shapes

:*
T0
n
metrics/ssim/Reshape_14/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/ssim/Reshape_14Reshapemetrics/ssim/add_7metrics/ssim/Reshape_14/shape*
_output_shapes

:y*
T0*
Tshape0
c
metrics/ssim/Softmax_1Softmaxmetrics/ssim/Reshape_14*
_output_shapes

:y*
T0
a
metrics/ssim/Reshape_15/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Reshape_15/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Э
metrics/ssim/Reshape_15/shapePackmetrics/ssim/Const_9metrics/ssim/Const_9metrics/ssim/Reshape_15/shape/2metrics/ssim/Reshape_15/shape/3*
T0*

axis *
N*
_output_shapes
:

metrics/ssim/Reshape_15Reshapemetrics/ssim/Softmax_1metrics/ssim/Reshape_15/shape*
T0*
Tshape0*&
_output_shapes
:
v
#metrics/ssim/strided_slice_21/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_21/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_21/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
metrics/ssim/strided_slice_21StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_21/stack%metrics/ssim/strided_slice_21/stack_1%metrics/ssim/strided_slice_21/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
a
metrics/ssim/Tile_1/multiples/0Const*
dtype0*
_output_shapes
: *
value	B :
a
metrics/ssim/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Tile_1/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 
с
metrics/ssim/Tile_1/multiplesPackmetrics/ssim/Tile_1/multiples/0metrics/ssim/Tile_1/multiples/1metrics/ssim/strided_slice_21metrics/ssim/Tile_1/multiples/3*
N*
_output_shapes
:*
T0*

axis 

metrics/ssim/Tile_1Tilemetrics/ssim/Reshape_15metrics/ssim/Tile_1/multiples*/
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
Z
metrics/ssim/mul_10/xConst*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_10Mulmetrics/ssim/mul_10/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_2/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
e
metrics/ssim/pow_2Powmetrics/ssim/mul_10metrics/ssim/pow_2/y*
T0*
_output_shapes
: 
Z
metrics/ssim/mul_11/xConst*
valueB
 *Тѕ<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_11Mulmetrics/ssim/mul_11/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
e
metrics/ssim/pow_3Powmetrics/ssim/mul_11metrics/ssim/pow_3/y*
T0*
_output_shapes
: 
k
metrics/ssim/Shape_8Shapemetrics/ssim/Identity_9*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_22/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_22/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_22/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_22StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_22/stack%metrics/ssim/strided_slice_22/stack_1%metrics/ssim/strided_slice_22/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
q
metrics/ssim/concat_8/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_8/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
metrics/ssim/concat_8ConcatV2metrics/ssim/concat_8/values_0metrics/ssim/strided_slice_22metrics/ssim/concat_8/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
metrics/ssim/Reshape_16Reshapemetrics/ssim/Identity_9metrics/ssim/concat_8*
T0*
Tshape0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
q
metrics/ssim/depthwise_4/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

metrics/ssim/depthwise_4DepthwiseConv2dNativemetrics/ssim/Reshape_16metrics/ssim/Tile_1*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
m
#metrics/ssim/strided_slice_23/stackConst*
dtype0*
_output_shapes
:*
valueB: 
x
%metrics/ssim/strided_slice_23/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_23/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_23StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_23/stack%metrics/ssim/strided_slice_23/stack_1%metrics/ssim/strided_slice_23/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
l
metrics/ssim/Shape_9Shapemetrics/ssim/depthwise_4*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_24/stackConst*
dtype0*
_output_shapes
:*
valueB:
o
%metrics/ssim/strided_slice_24/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_24/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_24StridedSlicemetrics/ssim/Shape_9#metrics/ssim/strided_slice_24/stack%metrics/ssim/strided_slice_24/stack_1%metrics/ssim/strided_slice_24/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
\
metrics/ssim/concat_9/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Е
metrics/ssim/concat_9ConcatV2metrics/ssim/strided_slice_23metrics/ssim/strided_slice_24metrics/ssim/concat_9/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ж
metrics/ssim/Reshape_17Reshapemetrics/ssim/depthwise_4metrics/ssim/concat_9*
T0*
Tshape0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
l
metrics/ssim/Shape_10Shapemetrics/ssim/Identity_8*
_output_shapes
:*
T0*
out_type0
v
#metrics/ssim/strided_slice_25/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_25/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_25/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_25StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_25/stack%metrics/ssim/strided_slice_25/stack_1%metrics/ssim/strided_slice_25/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
r
metrics/ssim/concat_10/values_0Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
]
metrics/ssim/concat_10/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Й
metrics/ssim/concat_10ConcatV2metrics/ssim/concat_10/values_0metrics/ssim/strided_slice_25metrics/ssim/concat_10/axis*
N*
_output_shapes
:*

Tidx0*
T0

metrics/ssim/Reshape_18Reshapemetrics/ssim/Identity_8metrics/ssim/concat_10*/
_output_shapes
:џџџџџџџџџ``*
T0*
Tshape0
q
metrics/ssim/depthwise_5/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
№
metrics/ssim/depthwise_5DepthwiseConv2dNativemetrics/ssim/Reshape_18metrics/ssim/Tile_1*
data_formatNHWC*
strides
*
paddingVALID*/
_output_shapes
:џџџџџџџџџVV*
	dilations
*
T0
m
#metrics/ssim/strided_slice_26/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_26/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_26/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_26StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_26/stack%metrics/ssim/strided_slice_26/stack_1%metrics/ssim/strided_slice_26/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
m
metrics/ssim/Shape_11Shapemetrics/ssim/depthwise_5*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_27/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_27/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_27/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_27StridedSlicemetrics/ssim/Shape_11#metrics/ssim/strided_slice_27/stack%metrics/ssim/strided_slice_27/stack_1%metrics/ssim/strided_slice_27/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
]
metrics/ssim/concat_11/axisConst*
value	B : *
dtype0*
_output_shapes
: 
З
metrics/ssim/concat_11ConcatV2metrics/ssim/strided_slice_26metrics/ssim/strided_slice_27metrics/ssim/concat_11/axis*
T0*
N*
_output_shapes
:*

Tidx0

metrics/ssim/Reshape_19Reshapemetrics/ssim/depthwise_5metrics/ssim/concat_11*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџVV

metrics/ssim/mul_12Mulmetrics/ssim/Reshape_17metrics/ssim/Reshape_19*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Z
metrics/ssim/mul_13/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/ssim/mul_13Mulmetrics/ssim/mul_12metrics/ssim/mul_13/y*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Square_8Squaremetrics/ssim/Reshape_17*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
r
metrics/ssim/Square_9Squaremetrics/ssim/Reshape_19*
T0*/
_output_shapes
:џџџџџџџџџVV

metrics/ssim/add_8Addmetrics/ssim/Square_8metrics/ssim/Square_9*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_9Addmetrics/ssim/mul_13metrics/ssim/pow_2*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_10Addmetrics/ssim/add_8metrics/ssim/pow_2*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/truediv_6RealDivmetrics/ssim/add_9metrics/ssim/add_10*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/mul_14Mulmetrics/ssim/Identity_9metrics/ssim/Identity_8*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
h
metrics/ssim/Shape_12Shapemetrics/ssim/mul_14*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_28/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_28/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_28/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
metrics/ssim/strided_slice_28StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_28/stack%metrics/ssim/strided_slice_28/stack_1%metrics/ssim/strided_slice_28/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
r
metrics/ssim/concat_12/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
]
metrics/ssim/concat_12/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
metrics/ssim/concat_12ConcatV2metrics/ssim/concat_12/values_0metrics/ssim/strided_slice_28metrics/ssim/concat_12/axis*
N*
_output_shapes
:*

Tidx0*
T0
 
metrics/ssim/Reshape_20Reshapemetrics/ssim/mul_14metrics/ssim/concat_12*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
q
metrics/ssim/depthwise_6/ShapeShapemetrics/ssim/Tile_1*
_output_shapes
:*
T0*
out_type0
w
&metrics/ssim/depthwise_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
љ
metrics/ssim/depthwise_6DepthwiseConv2dNativemetrics/ssim/Reshape_20metrics/ssim/Tile_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
m
#metrics/ssim/strided_slice_29/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_29/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_29/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
metrics/ssim/strided_slice_29StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_29/stack%metrics/ssim/strided_slice_29/stack_1%metrics/ssim/strided_slice_29/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
m
metrics/ssim/Shape_13Shapemetrics/ssim/depthwise_6*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_30/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_30/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_30/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_30StridedSlicemetrics/ssim/Shape_13#metrics/ssim/strided_slice_30/stack%metrics/ssim/strided_slice_30/stack_1%metrics/ssim/strided_slice_30/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
]
metrics/ssim/concat_13/axisConst*
value	B : *
dtype0*
_output_shapes
: 
З
metrics/ssim/concat_13ConcatV2metrics/ssim/strided_slice_29metrics/ssim/strided_slice_30metrics/ssim/concat_13/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ѕ
metrics/ssim/Reshape_21Reshapemetrics/ssim/depthwise_6metrics/ssim/concat_13*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Z
metrics/ssim/mul_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @

metrics/ssim/mul_15Mulmetrics/ssim/Reshape_21metrics/ssim/mul_15/y*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Square_10Squaremetrics/ssim/Identity_9*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
s
metrics/ssim/Square_11Squaremetrics/ssim/Identity_8*
T0*/
_output_shapes
:џџџџџџџџџ``

metrics/ssim/add_11Addmetrics/ssim/Square_10metrics/ssim/Square_11*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
h
metrics/ssim/Shape_14Shapemetrics/ssim/add_11*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_31/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_31/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_31/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
metrics/ssim/strided_slice_31StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_31/stack%metrics/ssim/strided_slice_31/stack_1%metrics/ssim/strided_slice_31/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
r
metrics/ssim/concat_14/values_0Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
]
metrics/ssim/concat_14/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Й
metrics/ssim/concat_14ConcatV2metrics/ssim/concat_14/values_0metrics/ssim/strided_slice_31metrics/ssim/concat_14/axis*
T0*
N*
_output_shapes
:*

Tidx0
 
metrics/ssim/Reshape_22Reshapemetrics/ssim/add_11metrics/ssim/concat_14*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
q
metrics/ssim/depthwise_7/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
љ
metrics/ssim/depthwise_7DepthwiseConv2dNativemetrics/ssim/Reshape_22metrics/ssim/Tile_1*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
	dilations
*
T0
m
#metrics/ssim/strided_slice_32/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_32/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_32/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_32StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_32/stack%metrics/ssim/strided_slice_32/stack_1%metrics/ssim/strided_slice_32/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
m
metrics/ssim/Shape_15Shapemetrics/ssim/depthwise_7*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_33/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_33/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_33/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_33StridedSlicemetrics/ssim/Shape_15#metrics/ssim/strided_slice_33/stack%metrics/ssim/strided_slice_33/stack_1%metrics/ssim/strided_slice_33/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
]
metrics/ssim/concat_15/axisConst*
value	B : *
dtype0*
_output_shapes
: 
З
metrics/ssim/concat_15ConcatV2metrics/ssim/strided_slice_32metrics/ssim/strided_slice_33metrics/ssim/concat_15/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ѕ
metrics/ssim/Reshape_23Reshapemetrics/ssim/depthwise_7metrics/ssim/concat_15*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Z
metrics/ssim/mul_16/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
metrics/ssim/mul_16Mulmetrics/ssim/pow_3metrics/ssim/mul_16/y*
T0*
_output_shapes
: 

metrics/ssim/sub_6Submetrics/ssim/mul_15metrics/ssim/mul_13*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/add_12Addmetrics/ssim/sub_6metrics/ssim/mul_16*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/sub_7Submetrics/ssim/Reshape_23metrics/ssim/add_8*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/add_13Addmetrics/ssim/sub_7metrics/ssim/mul_16*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/truediv_7RealDivmetrics/ssim/add_12metrics/ssim/add_13*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0
f
metrics/ssim/Const_13Const*
valueB"§џџџўџџџ*
dtype0*
_output_shapes
:

metrics/ssim/mul_17Mulmetrics/ssim/truediv_6metrics/ssim/truediv_7*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Mean_4Meanmetrics/ssim/mul_17metrics/ssim/Const_13*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
Ђ
metrics/ssim/Mean_5Meanmetrics/ssim/truediv_7metrics/ssim/Const_13*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
x
%metrics/ssim/Mean_6/reduction_indicesConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ђ
metrics/ssim/Mean_6Meanmetrics/ssim/Mean_4%metrics/ssim/Mean_6/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
_
metrics/ssim/Const_14Const*
dtype0*
_output_shapes
:*
valueB: 

metrics/ssim/Mean_7Meanmetrics/ssim/Mean_6metrics/ssim/Const_14*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
metrics/ssim/Const_15Const*
dtype0*
_output_shapes
: *
valueB 

metrics/ssim/Mean_8Meanmetrics/ssim/Mean_7metrics/ssim/Const_15*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
\
keras_learning_phase/inputConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@loss/mul
Ж
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
Ђ
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/add_3_loss/Mean*
_output_shapes
: *
T0*
_class
loc:@loss/mul

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ћ
?training/Adam/gradients/loss/add_3_loss/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@loss/add_3_loss/Mean

9training/Adam/gradients/loss/add_3_loss/Mean_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1?training/Adam/gradients/loss/add_3_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: 
Ѓ
7training/Adam/gradients/loss/add_3_loss/Mean_grad/ConstConst*
valueB *'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 

6training/Adam/gradients/loss/add_3_loss/Mean_grad/TileTile9training/Adam/gradients/loss/add_3_loss/Mean_grad/Reshape7training/Adam/gradients/loss/add_3_loss/Mean_grad/Const*

Tmultiples0*
T0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: 
Ї
9training/Adam/gradients/loss/add_3_loss/Mean_grad/Const_1Const*
valueB
 *  ?*'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 

9training/Adam/gradients/loss/add_3_loss/Mean_grad/truedivRealDiv6training/Adam/gradients/loss/add_3_loss/Mean_grad/Tile9training/Adam/gradients/loss/add_3_loss/Mean_grad/Const_1*
T0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: 
Џ
=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/ShapeConst*
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan*
dtype0*
_output_shapes
: 
Б
?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan
в
Mtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Btraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanDivNoNan9training/Adam/gradients/loss/add_3_loss/Mean_grad/truedivloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Т
;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/SumSumBtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanMtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( 
Є
?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/ReshapeReshape;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Sum=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Љ
;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/NegNegloss/add_3_loss/Sum_3*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
є
Dtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1DivNoNan;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Negloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
§
Dtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2DivNoNanDtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1loss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 

;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/mulMul9training/Adam/gradients/loss/add_3_loss/Mean_grad/truedivDtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2*
_output_shapes
: *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
П
=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1Sum;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/mulOtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( 
Њ
Atraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Reshape_1Reshape=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
­
@training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shapeConst*
valueB *(
_class
loc:@loss/add_3_loss/Sum_3*
dtype0*
_output_shapes
: 
Ё
:training/Adam/gradients/loss/add_3_loss/Sum_3_grad/ReshapeReshape?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Reshape@training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shape*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_3*
_output_shapes
: 
Ѕ
8training/Adam/gradients/loss/add_3_loss/Sum_3_grad/ConstConst*
valueB *(
_class
loc:@loss/add_3_loss/Sum_3*
dtype0*
_output_shapes
: 

7training/Adam/gradients/loss/add_3_loss/Sum_3_grad/TileTile:training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Reshape8training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Const*
T0*(
_class
loc:@loss/add_3_loss/Sum_3*
_output_shapes
: *

Tmultiples0
к
6training/Adam/gradients/loss/add_3_loss/Mul_4_grad/MulMul7training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/Squeeze*
T0*(
_class
loc:@loss/add_3_loss/Mul_4*
_output_shapes
: 
и
8training/Adam/gradients/loss/add_3_loss/Mul_4_grad/Mul_1Mul7training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/sub*
T0*(
_class
loc:@loss/add_3_loss/Mul_4*
_output_shapes
: 
М
4training/Adam/gradients/loss/add_3_loss/sub_grad/NegNeg6training/Adam/gradients/loss/add_3_loss/Mul_4_grad/Mul*
T0*&
_class
loc:@loss/add_3_loss/sub*
_output_shapes
: 
Љ
:training/Adam/gradients/loss/add_3_loss/truediv_grad/ShapeConst*
valueB **
_class 
loc:@loss/add_3_loss/truediv*
dtype0*
_output_shapes
: 
Ћ
<training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape_1Const*
valueB **
_class 
loc:@loss/add_3_loss/truediv*
dtype0*
_output_shapes
: 
Ц
Jtraining/Adam/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape<training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape_1*
T0**
_class 
loc:@loss/add_3_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
с
<training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDivRealDiv4training/Adam/gradients/loss/add_3_loss/sub_grad/Negloss/add_3_loss/add_2*
_output_shapes
: *
T0**
_class 
loc:@loss/add_3_loss/truediv
Г
8training/Adam/gradients/loss/add_3_loss/truediv_grad/SumSum<training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDivJtraining/Adam/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/add_3_loss/truediv

<training/Adam/gradients/loss/add_3_loss/truediv_grad/ReshapeReshape8training/Adam/gradients/loss/add_3_loss/truediv_grad/Sum:training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
Ё
8training/Adam/gradients/loss/add_3_loss/truediv_grad/NegNegloss/add_3_loss/add*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
ч
>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_1RealDiv8training/Adam/gradients/loss/add_3_loss/truediv_grad/Negloss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
э
>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_2RealDiv>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_1loss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 

8training/Adam/gradients/loss/add_3_loss/truediv_grad/mulMul4training/Adam/gradients/loss/add_3_loss/sub_grad/Neg>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
Г
:training/Adam/gradients/loss/add_3_loss/truediv_grad/Sum_1Sum8training/Adam/gradients/loss/add_3_loss/truediv_grad/mulLtraining/Adam/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 

>training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshape_1Reshape:training/Adam/gradients/loss/add_3_loss/truediv_grad/Sum_1<training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
л
6training/Adam/gradients/loss/add_3_loss/mul_1_grad/MulMul<training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/Sum*
T0*(
_class
loc:@loss/add_3_loss/mul_1*
_output_shapes
: 
с
8training/Adam/gradients/loss/add_3_loss/mul_1_grad/Mul_1Mul<training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/mul_1/x*
_output_shapes
: *
T0*(
_class
loc:@loss/add_3_loss/mul_1
А
>training/Adam/gradients/loss/add_3_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*&
_class
loc:@loss/add_3_loss/Sum

8training/Adam/gradients/loss/add_3_loss/Sum_grad/ReshapeReshape8training/Adam/gradients/loss/add_3_loss/mul_1_grad/Mul_1>training/Adam/gradients/loss/add_3_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/Sum*
_output_shapes
:
Б
6training/Adam/gradients/loss/add_3_loss/Sum_grad/ShapeShapeloss/add_3_loss/mul*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/Sum*
_output_shapes
:

5training/Adam/gradients/loss/add_3_loss/Sum_grad/TileTile8training/Adam/gradients/loss/add_3_loss/Sum_grad/Reshape6training/Adam/gradients/loss/add_3_loss/Sum_grad/Shape*

Tmultiples0*
T0*&
_class
loc:@loss/add_3_loss/Sum*#
_output_shapes
:џџџџџџџџџ
Д
@training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*(
_class
loc:@loss/add_3_loss/Sum_2
Є
:training/Adam/gradients/loss/add_3_loss/Sum_2_grad/ReshapeReshape>training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shape*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_2*
_output_shapes
:
З
8training/Adam/gradients/loss/add_3_loss/Sum_2_grad/ShapeShapeloss/add_3_loss/mul_3*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/Sum_2*
_output_shapes
:

7training/Adam/gradients/loss/add_3_loss/Sum_2_grad/TileTile:training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Reshape8training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Shape*

Tmultiples0*
T0*(
_class
loc:@loss/add_3_loss/Sum_2*#
_output_shapes
:џџџџџџџџџ
Е
6training/Adam/gradients/loss/add_3_loss/mul_grad/ShapeShapeloss/add_3_loss/Reshape*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul
Й
8training/Adam/gradients/loss/add_3_loss/mul_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul
Ж
Ftraining/Adam/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6training/Adam/gradients/loss/add_3_loss/mul_grad/Shape8training/Adam/gradients/loss/add_3_loss/mul_grad/Shape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
у
4training/Adam/gradients/loss/add_3_loss/mul_grad/MulMul5training/Adam/gradients/loss/add_3_loss/Sum_grad/Tileloss/add_3_loss/Reshape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:џџџџџџџџџ
Ё
4training/Adam/gradients/loss/add_3_loss/mul_grad/SumSum4training/Adam/gradients/loss/add_3_loss/mul_grad/MulFtraining/Adam/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs*
T0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 

8training/Adam/gradients/loss/add_3_loss/mul_grad/ReshapeReshape4training/Adam/gradients/loss/add_3_loss/mul_grad/Sum6training/Adam/gradients/loss/add_3_loss/mul_grad/Shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:џџџџџџџџџ
у
6training/Adam/gradients/loss/add_3_loss/mul_grad/Mul_1Mulloss/add_3_loss/Reshape5training/Adam/gradients/loss/add_3_loss/Sum_grad/Tile*
T0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:џџџџџџџџџ
Ї
6training/Adam/gradients/loss/add_3_loss/mul_grad/Sum_1Sum6training/Adam/gradients/loss/add_3_loss/mul_grad/Mul_1Htraining/Adam/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs:1*
T0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 

:training/Adam/gradients/loss/add_3_loss/mul_grad/Reshape_1Reshape6training/Adam/gradients/loss/add_3_loss/mul_grad/Sum_18training/Adam/gradients/loss/add_3_loss/mul_grad/Shape_1*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:џџџџџџџџџ
Л
8training/Adam/gradients/loss/add_3_loss/mul_3_grad/ShapeShapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
Н
:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
О
Htraining/Adam/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*(
_class
loc:@loss/add_3_loss/mul_3
щ
6training/Adam/gradients/loss/add_3_loss/mul_3_grad/MulMul7training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Tileloss/add_3_loss/Reshape_1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:џџџџџџџџџ
Љ
6training/Adam/gradients/loss/add_3_loss/mul_3_grad/SumSum6training/Adam/gradients/loss/add_3_loss/mul_3_grad/MulHtraining/Adam/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/add_3_loss/mul_3

:training/Adam/gradients/loss/add_3_loss/mul_3_grad/ReshapeReshape6training/Adam/gradients/loss/add_3_loss/mul_3_grad/Sum8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3
ы
8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Mul_1Mulloss/add_3_loss/Reshape_17training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Tile*#
_output_shapes
:џџџџџџџџџ*
T0*(
_class
loc:@loss/add_3_loss/mul_3
Џ
8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Sum_1Sum8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Mul_1Jtraining/Adam/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
Ѓ
<training/Adam/gradients/loss/add_3_loss/mul_3_grad/Reshape_1Reshape8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Sum_1:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:џџџџџџџџџ
Й
training/Adam/gradients/AddNAddN:training/Adam/gradients/loss/add_3_loss/mul_grad/Reshape_1:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Reshape<training/Adam/gradients/loss/add_3_loss/mul_3_grad/Reshape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*
N*#
_output_shapes
:џџџџџџџџџ
Г
<training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/ShapeShape	add_3/add*
_output_shapes
:*
T0*
out_type0*,
_class"
 loc:@loss/add_3_loss/Reshape_1

>training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/ReshapeReshapetraining/Adam/gradients/AddN<training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/Shape*/
_output_shapes
:џџџџџџџџџ``*
T0*
Tshape0*,
_class"
 loc:@loss/add_3_loss/Reshape_1

,training/Adam/gradients/add_3/add_grad/ShapeShapeinput_1*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:

.training/Adam/gradients/add_3/add_grad/Shape_1Shapeconv2d_8/Relu*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:

<training/Adam/gradients/add_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs,training/Adam/gradients/add_3/add_grad/Shape.training/Adam/gradients/add_3/add_grad/Shape_1*
T0*
_class
loc:@add_3/add*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

*training/Adam/gradients/add_3/add_grad/SumSum>training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/Reshape<training/Adam/gradients/add_3/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_3/add*
_output_shapes
:
љ
.training/Adam/gradients/add_3/add_grad/ReshapeReshape*training/Adam/gradients/add_3/add_grad/Sum,training/Adam/gradients/add_3/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_3/add*/
_output_shapes
:џџџџџџџџџ``

,training/Adam/gradients/add_3/add_grad/Sum_1Sum>training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/Reshape>training/Adam/gradients/add_3/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_3/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
џ
0training/Adam/gradients/add_3/add_grad/Reshape_1Reshape,training/Adam/gradients/add_3/add_grad/Sum_1.training/Adam/gradients/add_3/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_3/add*/
_output_shapes
:џџџџџџџџџ``
м
3training/Adam/gradients/conv2d_8/Relu_grad/ReluGradReluGrad0training/Adam/gradients/add_3/add_grad/Reshape_1conv2d_8/Relu*/
_output_shapes
:џџџџџџџџџ``*
T0* 
_class
loc:@conv2d_8/Relu
о
9training/Adam/gradients/conv2d_8/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_8/BiasAdd*
data_formatNHWC*
_output_shapes
:
й
3training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_8/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_8/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ``0*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

Atraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate/concat5training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_8/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(

4training/Adam/gradients/concatenate/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :*%
_class
loc:@concatenate/concat
ж
3training/Adam/gradients/concatenate/concat_grad/modFloorModconcatenate/concat/axis4training/Adam/gradients/concatenate/concat_grad/Rank*
T0*%
_class
loc:@concatenate/concat*
_output_shapes
: 
Ѓ
5training/Adam/gradients/concatenate/concat_grad/ShapeShapeadd/add*
T0*
out_type0*%
_class
loc:@concatenate/concat*
_output_shapes
:
П
6training/Adam/gradients/concatenate/concat_grad/ShapeNShapeNadd/add	add_2/add*
N* 
_output_shapes
::*
T0*
out_type0*%
_class
loc:@concatenate/concat
Х
<training/Adam/gradients/concatenate/concat_grad/ConcatOffsetConcatOffset3training/Adam/gradients/concatenate/concat_grad/mod6training/Adam/gradients/concatenate/concat_grad/ShapeN8training/Adam/gradients/concatenate/concat_grad/ShapeN:1*%
_class
loc:@concatenate/concat*
N* 
_output_shapes
::
ф
5training/Adam/gradients/concatenate/concat_grad/SliceSlice@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput<training/Adam/gradients/concatenate/concat_grad/ConcatOffset6training/Adam/gradients/concatenate/concat_grad/ShapeN*
T0*
Index0*%
_class
loc:@concatenate/concat*/
_output_shapes
:џџџџџџџџџ``
ъ
7training/Adam/gradients/concatenate/concat_grad/Slice_1Slice@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput>training/Adam/gradients/concatenate/concat_grad/ConcatOffset:18training/Adam/gradients/concatenate/concat_grad/ShapeN:1*
T0*
Index0*%
_class
loc:@concatenate/concat*/
_output_shapes
:џџџџџџџџџ``

,training/Adam/gradients/add_2/add_grad/ShapeShapeconv2d_5/Relu*
T0*
out_type0*
_class
loc:@add_2/add*
_output_shapes
:

.training/Adam/gradients/add_2/add_grad/Shape_1Shapeconv2d_7/Relu*
T0*
out_type0*
_class
loc:@add_2/add*
_output_shapes
:

<training/Adam/gradients/add_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs,training/Adam/gradients/add_2/add_grad/Shape.training/Adam/gradients/add_2/add_grad/Shape_1*
T0*
_class
loc:@add_2/add*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

*training/Adam/gradients/add_2/add_grad/SumSum7training/Adam/gradients/concatenate/concat_grad/Slice_1<training/Adam/gradients/add_2/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_2/add
љ
.training/Adam/gradients/add_2/add_grad/ReshapeReshape*training/Adam/gradients/add_2/add_grad/Sum,training/Adam/gradients/add_2/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:џџџџџџџџџ``

,training/Adam/gradients/add_2/add_grad/Sum_1Sum7training/Adam/gradients/concatenate/concat_grad/Slice_1>training/Adam/gradients/add_2/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_2/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
џ
0training/Adam/gradients/add_2/add_grad/Reshape_1Reshape,training/Adam/gradients/add_2/add_grad/Sum_1.training/Adam/gradients/add_2/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:џџџџџџџџџ``
к
3training/Adam/gradients/conv2d_5/Relu_grad/ReluGradReluGrad.training/Adam/gradients/add_2/add_grad/Reshapeconv2d_5/Relu*
T0* 
_class
loc:@conv2d_5/Relu*/
_output_shapes
:џџџџџџџџџ``
м
3training/Adam/gradients/conv2d_7/Relu_grad/ReluGradReluGrad0training/Adam/gradients/add_2/add_grad/Reshape_1conv2d_7/Relu*
T0* 
_class
loc:@conv2d_7/Relu*/
_output_shapes
:џџџџџџџџџ``
о
9training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_5/BiasAdd*
data_formatNHWC*
_output_shapes
:
о
9training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*#
_class
loc:@conv2d_7/BiasAdd
ъ
3training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_5/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``0*
	dilations

­
Atraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor5training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_5/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0
д
3training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_7/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_7/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

Atraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6/Relu5training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
ь
3training/Adam/gradients/conv2d_6/Relu_grad/ReluGradReluGrad@training/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputconv2d_6/Relu*
T0* 
_class
loc:@conv2d_6/Relu*/
_output_shapes
:џџџџџџџџџ``
о
9training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_6/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*#
_class
loc:@conv2d_6/BiasAdd
ъ
3training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_6/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_6/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``0
­
Atraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor5training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_6/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

training/Adam/gradients/AddN_1AddN@training/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_5/Conv2D*
N*/
_output_shapes
:џџџџџџџџџ``0
ш
_training/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"0   0   *6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
џ
Ztraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGradtraining/Adam/gradients/AddN_1_training/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*/
_output_shapes
:џџџџџџџџџ000*
align_corners( *
T0*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor

,training/Adam/gradients/add_1/add_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:

.training/Adam/gradients/add_1/add_grad/Shape_1Shapeconv2d_4/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_1/add

<training/Adam/gradients/add_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs,training/Adam/gradients/add_1/add_grad/Shape.training/Adam/gradients/add_1/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*
_class
loc:@add_1/add
Љ
*training/Adam/gradients/add_1/add_grad/SumSumZtraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad<training/Adam/gradients/add_1/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_1/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
љ
.training/Adam/gradients/add_1/add_grad/ReshapeReshape*training/Adam/gradients/add_1/add_grad/Sum,training/Adam/gradients/add_1/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:џџџџџџџџџ000
­
,training/Adam/gradients/add_1/add_grad/Sum_1SumZtraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad>training/Adam/gradients/add_1/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_1/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
џ
0training/Adam/gradients/add_1/add_grad/Reshape_1Reshape,training/Adam/gradients/add_1/add_grad/Sum_1.training/Adam/gradients/add_1/add_grad/Shape_1*/
_output_shapes
:џџџџџџџџџ000*
T0*
Tshape0*
_class
loc:@add_1/add
к
3training/Adam/gradients/conv2d_2/Relu_grad/ReluGradReluGrad.training/Adam/gradients/add_1/add_grad/Reshapeconv2d_2/Relu*
T0* 
_class
loc:@conv2d_2/Relu*/
_output_shapes
:џџџџџџџџџ000
м
3training/Adam/gradients/conv2d_4/Relu_grad/ReluGradReluGrad0training/Adam/gradients/add_1/add_grad/Reshape_1conv2d_4/Relu*/
_output_shapes
:џџџџџџџџџ000*
T0* 
_class
loc:@conv2d_4/Relu
о
9training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*#
_class
loc:@conv2d_2/BiasAdd
о
9training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_4/BiasAdd*
data_formatNHWC*
_output_shapes
:0
м
3training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_2/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_2/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ00*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

Atraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool5training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0
д
3training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_4/Conv2D
­
@training/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_4/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ000*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

Atraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_3/Relu5training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_4/Relu_grad/ReluGrad*&
_output_shapes
:00*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ь
3training/Adam/gradients/conv2d_3/Relu_grad/ReluGradReluGrad@training/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputconv2d_3/Relu*/
_output_shapes
:џџџџџџџџџ000*
T0* 
_class
loc:@conv2d_3/Relu
о
9training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_3/BiasAdd*
data_formatNHWC*
_output_shapes
:0
м
3training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_3/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_3/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ00

Atraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool5training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_3/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

training/Adam/gradients/AddN_2AddN@training/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_2/Conv2D*
N*/
_output_shapes
:џџџџџџџџџ00
У
>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradadd/addmax_pooling2d/MaxPooltraining/Adam/gradients/AddN_2*
T0*(
_class
loc:@max_pooling2d/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``

training/Adam/gradients/AddN_3AddN5training/Adam/gradients/concatenate/concat_grad/Slice>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*
N*/
_output_shapes
:џџџџџџџџџ``*
T0*%
_class
loc:@concatenate/concat

*training/Adam/gradients/add/add_grad/ShapeShapesubtract/sub*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:

,training/Adam/gradients/add/add_grad/Shape_1Shapeconv2d_1/Relu*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:

:training/Adam/gradients/add/add_grad/BroadcastGradientArgsBroadcastGradientArgs*training/Adam/gradients/add/add_grad/Shape,training/Adam/gradients/add/add_grad/Shape_1*
T0*
_class
loc:@add/add*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
(training/Adam/gradients/add/add_grad/SumSumtraining/Adam/gradients/AddN_3:training/Adam/gradients/add/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ё
,training/Adam/gradients/add/add_grad/ReshapeReshape(training/Adam/gradients/add/add_grad/Sum*training/Adam/gradients/add/add_grad/Shape*/
_output_shapes
:џџџџџџџџџ``*
T0*
Tshape0*
_class
loc:@add/add
ы
*training/Adam/gradients/add/add_grad/Sum_1Sumtraining/Adam/gradients/AddN_3<training/Adam/gradients/add/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ї
.training/Adam/gradients/add/add_grad/Reshape_1Reshape*training/Adam/gradients/add/add_grad/Sum_1,training/Adam/gradients/add/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add/add*/
_output_shapes
:џџџџџџџџџ``
к
3training/Adam/gradients/conv2d_1/Relu_grad/ReluGradReluGrad.training/Adam/gradients/add/add_grad/Reshape_1conv2d_1/Relu*
T0* 
_class
loc:@conv2d_1/Relu*/
_output_shapes
:џџџџџџџџџ``
о
9training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
в
3training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_1/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``

Atraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu5training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ц
1training/Adam/gradients/conv2d/Relu_grad/ReluGradReluGrad@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputconv2d/Relu*
T0*
_class
loc:@conv2d/Relu*/
_output_shapes
:џџџџџџџџџ``
и
7training/Adam/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv2d/Relu_grad/ReluGrad*
T0*!
_class
loc:@conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:
Э
1training/Adam/gradients/conv2d/Conv2D_grad/ShapeNShapeNsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
out_type0* 
_class
loc:@conv2d/Conv2D*
N* 
_output_shapes
::
Ѓ
>training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput1training/Adam/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp1training/Adam/gradients/conv2d/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltersubtract/sub3training/Adam/gradients/conv2d/Conv2D_grad/ShapeN:11training/Adam/gradients/conv2d/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 

!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations^training/Adam/ReadVariableOp*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
o
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/Cast*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
Z
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_2Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/Cast*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
x
training/Adam/zerosConst*%
valueB*    *
dtype0*&
_output_shapes
:
Ь
training/Adam/VariableVarHandleOp*)
_class
loc:@training/Adam/Variable*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/Variable
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
Д
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*&
_output_shapes
:
b
training/Adam/zeros_1Const*
dtype0*
_output_shapes
:*
valueB*    
Ц
training/Adam/Variable_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
Ў
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
:
~
%training/Adam/zeros_2/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*&
_output_shapes
:*
T0*

index_type0
в
training/Adam/Variable_2VarHandleOp*)
shared_nametraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
	container *
shape:*
dtype0*
_output_shapes
: 

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0
К
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*&
_output_shapes
:
b
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
Ц
training/Adam/Variable_3VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*
dtype0*+
_class!
loc:@training/Adam/Variable_3
Ў
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
:
~
%training/Adam/zeros_4/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:0
в
training/Adam/Variable_4VarHandleOp*
shape:0*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
	container 

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
К
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*&
_output_shapes
:0
b
training/Adam/zeros_5Const*
valueB0*    *
dtype0*
_output_shapes
:0
Ц
training/Adam/Variable_5VarHandleOp*)
shared_nametraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
	container *
shape:0*
dtype0*
_output_shapes
: 

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
Ў
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
:0
~
%training/Adam/zeros_6/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Є
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*&
_output_shapes
:0*
T0*

index_type0
в
training/Adam/Variable_6VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
	container *
shape:0

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6
К
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*&
_output_shapes
:0*+
_class!
loc:@training/Adam/Variable_6
b
training/Adam/zeros_7Const*
valueB0*    *
dtype0*
_output_shapes
:0
Ц
training/Adam/Variable_7VarHandleOp*)
shared_nametraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
	container *
shape:0*
dtype0*
_output_shapes
: 

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7
Ў
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
:0
~
%training/Adam/zeros_8/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Є
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*&
_output_shapes
:00
в
training/Adam/Variable_8VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
	container *
shape:00

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0
К
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*&
_output_shapes
:00*+
_class!
loc:@training/Adam/Variable_8
b
training/Adam/zeros_9Const*
valueB0*    *
dtype0*
_output_shapes
:0
Ц
training/Adam/Variable_9VarHandleOp*
shape:0*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
	container 

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0
Ў
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
:0

&training/Adam/zeros_10/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ї
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_10VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
	container *
shape:0

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
Ђ
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
Н
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_11Const*
dtype0*
_output_shapes
:*
valueB*    
Щ
training/Adam/Variable_11VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
	container *
shape:

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
Ђ
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0
Б
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
:

&training/Adam/zeros_12/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_12VarHandleOp**
shared_nametraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
Ђ
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*
dtype0*,
_class"
 loc:@training/Adam/Variable_12
Н
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
dtype0*&
_output_shapes
:0*,
_class"
 loc:@training/Adam/Variable_12
c
training/Adam/zeros_13Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_13VarHandleOp*,
_class"
 loc:@training/Adam/Variable_13*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_13

:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
Ђ
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0
Б
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0*
_output_shapes
:

&training/Adam/zeros_14/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ї
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:
е
training/Adam/Variable_14VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
	container 

:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
Ђ
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*
dtype0*,
_class"
 loc:@training/Adam/Variable_14
Н
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*&
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_14
c
training/Adam/zeros_15Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_15VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
	container *
shape:

:training/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
Ђ
 training/Adam/Variable_15/AssignAssignVariableOptraining/Adam/Variable_15training/Adam/zeros_15*
dtype0*,
_class"
 loc:@training/Adam/Variable_15
Б
-training/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_15
{
training/Adam/zeros_16Const*%
valueB0*    *
dtype0*&
_output_shapes
:0
е
training/Adam/Variable_16VarHandleOp*
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
	container 

:training/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
Ђ
 training/Adam/Variable_16/AssignAssignVariableOptraining/Adam/Variable_16training/Adam/zeros_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0
Н
-training/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_17Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_17VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
	container *
shape:

:training/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
Ђ
 training/Adam/Variable_17/AssignAssignVariableOptraining/Adam/Variable_17training/Adam/zeros_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0
Б
-training/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
:
{
training/Adam/zeros_18Const*%
valueB*    *
dtype0*&
_output_shapes
:
е
training/Adam/Variable_18VarHandleOp*,
_class"
 loc:@training/Adam/Variable_18*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_18

:training/Adam/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
Ђ
 training/Adam/Variable_18/AssignAssignVariableOptraining/Adam/Variable_18training/Adam/zeros_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0
Н
-training/Adam/Variable_18/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_18*
dtype0*&
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_18
c
training/Adam/zeros_19Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_19VarHandleOp**
shared_nametraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
Ђ
 training/Adam/Variable_19/AssignAssignVariableOptraining/Adam/Variable_19training/Adam/zeros_19*
dtype0*,
_class"
 loc:@training/Adam/Variable_19
Б
-training/Adam/Variable_19/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_19*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_19

&training/Adam/zeros_20/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"            
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*&
_output_shapes
:
е
training/Adam/Variable_20VarHandleOp**
shared_nametraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
Ђ
 training/Adam/Variable_20/AssignAssignVariableOptraining/Adam/Variable_20training/Adam/zeros_20*
dtype0*,
_class"
 loc:@training/Adam/Variable_20
Н
-training/Adam/Variable_20/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*&
_output_shapes
:
c
training/Adam/zeros_21Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_21VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21

:training/Adam/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
Ђ
 training/Adam/Variable_21/AssignAssignVariableOptraining/Adam/Variable_21training/Adam/zeros_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0
Б
-training/Adam/Variable_21/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_21*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_21

&training/Adam/zeros_22/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*&
_output_shapes
:0*
T0*

index_type0
е
training/Adam/Variable_22VarHandleOp**
shared_nametraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
Ђ
 training/Adam/Variable_22/AssignAssignVariableOptraining/Adam/Variable_22training/Adam/zeros_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0
Н
-training/Adam/Variable_22/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_23Const*
valueB0*    *
dtype0*
_output_shapes
:0
Щ
training/Adam/Variable_23VarHandleOp**
shared_nametraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
Ђ
 training/Adam/Variable_23/AssignAssignVariableOptraining/Adam/Variable_23training/Adam/zeros_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0
Б
-training/Adam/Variable_23/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0*
_output_shapes
:0

&training/Adam/zeros_24/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ї
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_24VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24

:training/Adam/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
Ђ
 training/Adam/Variable_24/AssignAssignVariableOptraining/Adam/Variable_24training/Adam/zeros_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0
Н
-training/Adam/Variable_24/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_25Const*
valueB0*    *
dtype0*
_output_shapes
:0
Щ
training/Adam/Variable_25VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
	container *
shape:0

:training/Adam/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
Ђ
 training/Adam/Variable_25/AssignAssignVariableOptraining/Adam/Variable_25training/Adam/zeros_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0
Б
-training/Adam/Variable_25/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0*
_output_shapes
:0

&training/Adam/zeros_26/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*&
_output_shapes
:00*
T0*

index_type0
е
training/Adam/Variable_26VarHandleOp*
shape:00*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
	container 

:training/Adam/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
Ђ
 training/Adam/Variable_26/AssignAssignVariableOptraining/Adam/Variable_26training/Adam/zeros_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0
Н
-training/Adam/Variable_26/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0*&
_output_shapes
:00
c
training/Adam/zeros_27Const*
valueB0*    *
dtype0*
_output_shapes
:0
Щ
training/Adam/Variable_27VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
	container *
shape:0

:training/Adam/Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
Ђ
 training/Adam/Variable_27/AssignAssignVariableOptraining/Adam/Variable_27training/Adam/zeros_27*
dtype0*,
_class"
 loc:@training/Adam/Variable_27
Б
-training/Adam/Variable_27/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0*
_output_shapes
:0

&training/Adam/zeros_28/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_28/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_28VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28

:training/Adam/Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
Ђ
 training/Adam/Variable_28/AssignAssignVariableOptraining/Adam/Variable_28training/Adam/zeros_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0
Н
-training/Adam/Variable_28/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_28*
dtype0*&
_output_shapes
:0*,
_class"
 loc:@training/Adam/Variable_28
c
training/Adam/zeros_29Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_29VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
	container *
shape:

:training/Adam/Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
Ђ
 training/Adam/Variable_29/AssignAssignVariableOptraining/Adam/Variable_29training/Adam/zeros_29*,
_class"
 loc:@training/Adam/Variable_29*
dtype0
Б
-training/Adam/Variable_29/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_29*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_29

&training/Adam/zeros_30/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0      
a
training/Adam/zeros_30/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ї
training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_30VarHandleOp**
shared_nametraining/Adam/Variable_30*,
_class"
 loc:@training/Adam/Variable_30*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_30*
_output_shapes
: 
Ђ
 training/Adam/Variable_30/AssignAssignVariableOptraining/Adam/Variable_30training/Adam/zeros_30*,
_class"
 loc:@training/Adam/Variable_30*
dtype0
Н
-training/Adam/Variable_30/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_30*,
_class"
 loc:@training/Adam/Variable_30*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_31Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_31VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_31*,
_class"
 loc:@training/Adam/Variable_31

:training/Adam/Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_31*
_output_shapes
: 
Ђ
 training/Adam/Variable_31/AssignAssignVariableOptraining/Adam/Variable_31training/Adam/zeros_31*
dtype0*,
_class"
 loc:@training/Adam/Variable_31
Б
-training/Adam/Variable_31/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_31*,
_class"
 loc:@training/Adam/Variable_31*
dtype0*
_output_shapes
:

&training/Adam/zeros_32/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*
T0*

index_type0*&
_output_shapes
:
е
training/Adam/Variable_32VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32*
	container 

:training/Adam/Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_32*
_output_shapes
: 
Ђ
 training/Adam/Variable_32/AssignAssignVariableOptraining/Adam/Variable_32training/Adam/zeros_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0
Н
-training/Adam/Variable_32/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0*&
_output_shapes
:
c
training/Adam/zeros_33Const*
dtype0*
_output_shapes
:*
valueB*    
Щ
training/Adam/Variable_33VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_33*,
_class"
 loc:@training/Adam/Variable_33*
	container 

:training/Adam/Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_33*
_output_shapes
: 
Ђ
 training/Adam/Variable_33/AssignAssignVariableOptraining/Adam/Variable_33training/Adam/zeros_33*,
_class"
 loc:@training/Adam/Variable_33*
dtype0
Б
-training/Adam/Variable_33/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_33*,
_class"
 loc:@training/Adam/Variable_33*
dtype0*
_output_shapes
:
{
training/Adam/zeros_34Const*%
valueB0*    *
dtype0*&
_output_shapes
:0
е
training/Adam/Variable_34VarHandleOp*,
_class"
 loc:@training/Adam/Variable_34*
	container *
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_34

:training/Adam/Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_34*
_output_shapes
: 
Ђ
 training/Adam/Variable_34/AssignAssignVariableOptraining/Adam/Variable_34training/Adam/zeros_34*,
_class"
 loc:@training/Adam/Variable_34*
dtype0
Н
-training/Adam/Variable_34/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_34*
dtype0*&
_output_shapes
:0*,
_class"
 loc:@training/Adam/Variable_34
c
training/Adam/zeros_35Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_35VarHandleOp**
shared_nametraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_35*
_output_shapes
: 
Ђ
 training/Adam/Variable_35/AssignAssignVariableOptraining/Adam/Variable_35training/Adam/zeros_35*
dtype0*,
_class"
 loc:@training/Adam/Variable_35
Б
-training/Adam/Variable_35/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_36/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_36/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_36Fill&training/Adam/zeros_36/shape_as_tensortraining/Adam/zeros_36/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_36VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_36*,
_class"
 loc:@training/Adam/Variable_36*
	container *
shape:

:training/Adam/Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_36*
_output_shapes
: 
Ђ
 training/Adam/Variable_36/AssignAssignVariableOptraining/Adam/Variable_36training/Adam/zeros_36*
dtype0*,
_class"
 loc:@training/Adam/Variable_36
Б
-training/Adam/Variable_36/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_36*,
_class"
 loc:@training/Adam/Variable_36*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_37/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_37/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_37Fill&training/Adam/zeros_37/shape_as_tensortraining/Adam/zeros_37/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_37VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_37*,
_class"
 loc:@training/Adam/Variable_37*
	container *
shape:

:training/Adam/Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_37*
_output_shapes
: 
Ђ
 training/Adam/Variable_37/AssignAssignVariableOptraining/Adam/Variable_37training/Adam/zeros_37*,
_class"
 loc:@training/Adam/Variable_37*
dtype0
Б
-training/Adam/Variable_37/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_37*,
_class"
 loc:@training/Adam/Variable_37*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_38/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_38Fill&training/Adam/zeros_38/shape_as_tensortraining/Adam/zeros_38/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_38VarHandleOp**
shared_nametraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_38*
_output_shapes
: 
Ђ
 training/Adam/Variable_38/AssignAssignVariableOptraining/Adam/Variable_38training/Adam/zeros_38*,
_class"
 loc:@training/Adam/Variable_38*
dtype0
Б
-training/Adam/Variable_38/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_38*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_38
p
&training/Adam/zeros_39/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_39/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_39Fill&training/Adam/zeros_39/shape_as_tensortraining/Adam/zeros_39/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_39VarHandleOp**
shared_nametraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_39*
_output_shapes
: 
Ђ
 training/Adam/Variable_39/AssignAssignVariableOptraining/Adam/Variable_39training/Adam/zeros_39*,
_class"
 loc:@training/Adam/Variable_39*
dtype0
Б
-training/Adam/Variable_39/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_40/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_40/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_40Fill&training/Adam/zeros_40/shape_as_tensortraining/Adam/zeros_40/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_40VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_40*,
_class"
 loc:@training/Adam/Variable_40*
	container 

:training/Adam/Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_40*
_output_shapes
: 
Ђ
 training/Adam/Variable_40/AssignAssignVariableOptraining/Adam/Variable_40training/Adam/zeros_40*,
_class"
 loc:@training/Adam/Variable_40*
dtype0
Б
-training/Adam/Variable_40/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_40*,
_class"
 loc:@training/Adam/Variable_40*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_41/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_41/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_41Fill&training/Adam/zeros_41/shape_as_tensortraining/Adam/zeros_41/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_41VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_41*,
_class"
 loc:@training/Adam/Variable_41

:training/Adam/Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_41*
_output_shapes
: 
Ђ
 training/Adam/Variable_41/AssignAssignVariableOptraining/Adam/Variable_41training/Adam/zeros_41*,
_class"
 loc:@training/Adam/Variable_41*
dtype0
Б
-training/Adam/Variable_41/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_41*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_41
p
&training/Adam/zeros_42/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_42/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_42Fill&training/Adam/zeros_42/shape_as_tensortraining/Adam/zeros_42/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_42VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_42*,
_class"
 loc:@training/Adam/Variable_42*
	container *
shape:

:training/Adam/Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_42*
_output_shapes
: 
Ђ
 training/Adam/Variable_42/AssignAssignVariableOptraining/Adam/Variable_42training/Adam/zeros_42*,
_class"
 loc:@training/Adam/Variable_42*
dtype0
Б
-training/Adam/Variable_42/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_42*,
_class"
 loc:@training/Adam/Variable_42*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_43/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_43/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_43Fill&training/Adam/zeros_43/shape_as_tensortraining/Adam/zeros_43/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_43VarHandleOp*,
_class"
 loc:@training/Adam/Variable_43*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_43

:training/Adam/Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_43*
_output_shapes
: 
Ђ
 training/Adam/Variable_43/AssignAssignVariableOptraining/Adam/Variable_43training/Adam/zeros_43*,
_class"
 loc:@training/Adam/Variable_43*
dtype0
Б
-training/Adam/Variable_43/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_43*,
_class"
 loc:@training/Adam/Variable_43*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_44/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_44/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_44Fill&training/Adam/zeros_44/shape_as_tensortraining/Adam/zeros_44/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_44VarHandleOp**
shared_nametraining/Adam/Variable_44*,
_class"
 loc:@training/Adam/Variable_44*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_44/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_44*
_output_shapes
: 
Ђ
 training/Adam/Variable_44/AssignAssignVariableOptraining/Adam/Variable_44training/Adam/zeros_44*,
_class"
 loc:@training/Adam/Variable_44*
dtype0
Б
-training/Adam/Variable_44/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_44*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_44
p
&training/Adam/zeros_45/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_45/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_45Fill&training/Adam/zeros_45/shape_as_tensortraining/Adam/zeros_45/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_45VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_45*,
_class"
 loc:@training/Adam/Variable_45*
	container 

:training/Adam/Variable_45/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_45*
_output_shapes
: 
Ђ
 training/Adam/Variable_45/AssignAssignVariableOptraining/Adam/Variable_45training/Adam/zeros_45*,
_class"
 loc:@training/Adam/Variable_45*
dtype0
Б
-training/Adam/Variable_45/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_45*,
_class"
 loc:@training/Adam/Variable_45*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_46/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_46/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_46Fill&training/Adam/zeros_46/shape_as_tensortraining/Adam/zeros_46/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_46VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_46*,
_class"
 loc:@training/Adam/Variable_46*
	container *
shape:

:training/Adam/Variable_46/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_46*
_output_shapes
: 
Ђ
 training/Adam/Variable_46/AssignAssignVariableOptraining/Adam/Variable_46training/Adam/zeros_46*,
_class"
 loc:@training/Adam/Variable_46*
dtype0
Б
-training/Adam/Variable_46/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_46*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_46
p
&training/Adam/zeros_47/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_47/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_47Fill&training/Adam/zeros_47/shape_as_tensortraining/Adam/zeros_47/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_47VarHandleOp*,
_class"
 loc:@training/Adam/Variable_47*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_47

:training/Adam/Variable_47/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_47*
_output_shapes
: 
Ђ
 training/Adam/Variable_47/AssignAssignVariableOptraining/Adam/Variable_47training/Adam/zeros_47*,
_class"
 loc:@training/Adam/Variable_47*
dtype0
Б
-training/Adam/Variable_47/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_47*,
_class"
 loc:@training/Adam/Variable_47*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_48/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_48/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_48Fill&training/Adam/zeros_48/shape_as_tensortraining/Adam/zeros_48/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_48VarHandleOp*,
_class"
 loc:@training/Adam/Variable_48*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_48

:training/Adam/Variable_48/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_48*
_output_shapes
: 
Ђ
 training/Adam/Variable_48/AssignAssignVariableOptraining/Adam/Variable_48training/Adam/zeros_48*,
_class"
 loc:@training/Adam/Variable_48*
dtype0
Б
-training/Adam/Variable_48/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_48*,
_class"
 loc:@training/Adam/Variable_48*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_49/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_49/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_49Fill&training/Adam/zeros_49/shape_as_tensortraining/Adam/zeros_49/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_49VarHandleOp**
shared_nametraining/Adam/Variable_49*,
_class"
 loc:@training/Adam/Variable_49*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_49/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_49*
_output_shapes
: 
Ђ
 training/Adam/Variable_49/AssignAssignVariableOptraining/Adam/Variable_49training/Adam/zeros_49*,
_class"
 loc:@training/Adam/Variable_49*
dtype0
Б
-training/Adam/Variable_49/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_49*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_49
p
&training/Adam/zeros_50/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_50/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_50Fill&training/Adam/zeros_50/shape_as_tensortraining/Adam/zeros_50/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_50VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_50*,
_class"
 loc:@training/Adam/Variable_50*
	container *
shape:

:training/Adam/Variable_50/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_50*
_output_shapes
: 
Ђ
 training/Adam/Variable_50/AssignAssignVariableOptraining/Adam/Variable_50training/Adam/zeros_50*,
_class"
 loc:@training/Adam/Variable_50*
dtype0
Б
-training/Adam/Variable_50/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_50*,
_class"
 loc:@training/Adam/Variable_50*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_51/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_51/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_51Fill&training/Adam/zeros_51/shape_as_tensortraining/Adam/zeros_51/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_51VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_51*,
_class"
 loc:@training/Adam/Variable_51

:training/Adam/Variable_51/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_51*
_output_shapes
: 
Ђ
 training/Adam/Variable_51/AssignAssignVariableOptraining/Adam/Variable_51training/Adam/zeros_51*,
_class"
 loc:@training/Adam/Variable_51*
dtype0
Б
-training/Adam/Variable_51/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_51*,
_class"
 loc:@training/Adam/Variable_51*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_52/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_52/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_52Fill&training/Adam/zeros_52/shape_as_tensortraining/Adam/zeros_52/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_52VarHandleOp*,
_class"
 loc:@training/Adam/Variable_52*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_52

:training/Adam/Variable_52/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_52*
_output_shapes
: 
Ђ
 training/Adam/Variable_52/AssignAssignVariableOptraining/Adam/Variable_52training/Adam/zeros_52*,
_class"
 loc:@training/Adam/Variable_52*
dtype0
Б
-training/Adam/Variable_52/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_52*,
_class"
 loc:@training/Adam/Variable_52*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_53/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_53/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_53Fill&training/Adam/zeros_53/shape_as_tensortraining/Adam/zeros_53/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_53VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_53*,
_class"
 loc:@training/Adam/Variable_53*
	container *
shape:

:training/Adam/Variable_53/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_53*
_output_shapes
: 
Ђ
 training/Adam/Variable_53/AssignAssignVariableOptraining/Adam/Variable_53training/Adam/zeros_53*,
_class"
 loc:@training/Adam/Variable_53*
dtype0
Б
-training/Adam/Variable_53/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_53*,
_class"
 loc:@training/Adam/Variable_53*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*&
_output_shapes
:

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0*&
_output_shapes
:
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
_output_shapes
: *
T0
Ё
training/Adam/mul_2Multraining/Adam/sub_2?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
s
training/Adam/addAddtraining/Adam/mul_1training/Adam/mul_2*&
_output_shapes
:*
T0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_18*
dtype0*&
_output_shapes
:

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*&
_output_shapes
:*
T0
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0

training/Adam/SquareSquare?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
v
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*&
_output_shapes
:
u
training/Adam/add_1Addtraining/Adam/mul_3training/Adam/mul_4*
T0*&
_output_shapes
:
q
training/Adam/mul_5Multraining/Adam/multraining/Adam/add*&
_output_shapes
:*
T0
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_1training/Adam/Const_4*&
_output_shapes
:*
T0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0*&
_output_shapes
:
l
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*&
_output_shapes
:*
T0
Z
training/Adam/add_2/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
x
training/Adam/add_2Addtraining/Adam/Sqrt_1training/Adam/add_2/y*
T0*&
_output_shapes
:
}
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_2*&
_output_shapes
:*
T0
t
training/Adam/ReadVariableOp_6ReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:

training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*&
_output_shapes
:
j
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*&
_output_shapes
:
q
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_18training/Adam/add_1*
dtype0
Ѓ
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_18!^training/Adam/AssignVariableOp_1*
dtype0*&
_output_shapes
:
e
 training/Adam/AssignVariableOp_2AssignVariableOpconv2d/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpconv2d/kernel!^training/Adam/AssignVariableOp_2*
dtype0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes
:

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_57training/Adam/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/Adam/add_3Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_19*
dtype0*
_output_shapes
:

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
~
training/Adam/Square_1Square7training/Adam/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:
i
training/Adam/add_4Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_3*
T0*
_output_shapes
:
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_4training/Adam/Const_6*
T0*
_output_shapes
:

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes
:
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:
Z
training/Adam/add_5/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
l
training/Adam/add_5Addtraining/Adam/Sqrt_2training/Adam/add_5/y*
T0*
_output_shapes
:
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_5*
T0*
_output_shapes
:
g
training/Adam/ReadVariableOp_14ReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_3*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:
q
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_19training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_19!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
:
c
 training/Adam/AssignVariableOp_5AssignVariableOpconv2d/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpconv2d/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*&
_output_shapes
:

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
Є
training/Adam/mul_12Multraining/Adam/sub_8Atraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
w
training/Adam/add_6Addtraining/Adam/mul_11training/Adam/mul_12*
T0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_20*
dtype0*&
_output_shapes
:

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2SquareAtraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
y
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*&
_output_shapes
:
w
training/Adam/add_7Addtraining/Adam/mul_13training/Adam/mul_14*
T0*&
_output_shapes
:
t
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_6*
T0*&
_output_shapes
:
Z
training/Adam/Const_7Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_8Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_7training/Adam/Const_8*
T0*&
_output_shapes
:

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*&
_output_shapes
:*
T0
l
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*&
_output_shapes
:
Z
training/Adam/add_8/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
x
training/Adam/add_8Addtraining/Adam/Sqrt_3training/Adam/add_8/y*
T0*&
_output_shapes
:
~
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_8*
T0*&
_output_shapes
:
w
training/Adam/ReadVariableOp_22ReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*&
_output_shapes
:
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_6*
dtype0
Ѓ
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*&
_output_shapes
:
q
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_20training/Adam/add_7*
dtype0
Є
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_20!^training/Adam/AssignVariableOp_7*
dtype0*&
_output_shapes
:
h
 training/Adam/AssignVariableOp_8AssignVariableOpconv2d_1/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpconv2d_1/kernel!^training/Adam/AssignVariableOp_8*
dtype0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes
:

training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_119training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
k
training/Adam/add_9Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_21*
dtype0*
_output_shapes
:

training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

training/Adam/Square_3Square9training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:
l
training/Adam/add_10Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:
h
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_9*
T0*
_output_shapes
:
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_10training/Adam/Const_10*
T0*
_output_shapes
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
_output_shapes
:*
T0
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:
[
training/Adam/add_11/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_11Addtraining/Adam/Sqrt_4training/Adam/add_11/y*
T0*
_output_shapes
:
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_11*
T0*
_output_shapes
:
i
training/Adam/ReadVariableOp_30ReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
T0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_9*
dtype0

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_21training/Adam/add_10*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_21"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_11AssignVariableOpconv2d_1/biastraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpconv2d_1/bias"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*&
_output_shapes
:0

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*&
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_22Multraining/Adam/sub_14Atraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_12Addtraining/Adam/mul_21training/Adam/mul_22*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_22*
dtype0*&
_output_shapes
:0

training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4SquareAtraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
z
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*&
_output_shapes
:0*
T0
x
training/Adam/add_13Addtraining/Adam/mul_23training/Adam/mul_24*
T0*&
_output_shapes
:0
u
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_12*
T0*&
_output_shapes
:0
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_13training/Adam/Const_12*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*&
_output_shapes
:0
l
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*&
_output_shapes
:0
[
training/Adam/add_14/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
z
training/Adam/add_14Addtraining/Adam/Sqrt_5training/Adam/add_14/y*
T0*&
_output_shapes
:0

training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_14*
T0*&
_output_shapes
:0
w
training/Adam/ReadVariableOp_38ReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0*&
_output_shapes
:0
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_12*
dtype0
Є
training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_22training/Adam/add_13*
dtype0
Ѕ
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_22"^training/Adam/AssignVariableOp_13*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_14AssignVariableOpconv2d_3/kerneltraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOpconv2d_3/kernel"^training/Adam/AssignVariableOp_14*
dtype0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:0

training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_179training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
l
training/Adam/add_15Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/Variable_23*
dtype0*
_output_shapes
:0

training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

training/Adam/Square_5Square9training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
:0*
T0
l
training/Adam/add_16Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
:0
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_15*
T0*
_output_shapes
:0
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_16training/Adam/Const_14*
_output_shapes
:0*
T0

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
T0*
_output_shapes
:0
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:0
[
training/Adam/add_17/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_17Addtraining/Adam/Sqrt_6training/Adam/add_17/y*
T0*
_output_shapes
:0
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_17*
T0*
_output_shapes
:0
i
training/Adam/ReadVariableOp_46ReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
_output_shapes
:0*
T0
r
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_5training/Adam/add_15*
dtype0

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/Variable_5"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:0
s
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_23training/Adam/add_16*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/Variable_23"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:0
g
!training/Adam/AssignVariableOp_17AssignVariableOpconv2d_3/biastraining/Adam/sub_19*
dtype0

training/Adam/ReadVariableOp_49ReadVariableOpconv2d_3/bias"^training/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*&
_output_shapes
:0

training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_32Multraining/Adam/sub_20Atraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_18Addtraining/Adam/mul_31training/Adam/mul_32*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/Variable_24*
dtype0*&
_output_shapes
:0

training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training/Adam/Square_6SquareAtraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
z
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*&
_output_shapes
:0
x
training/Adam/add_19Addtraining/Adam/mul_33training/Adam/mul_34*&
_output_shapes
:0*
T0
u
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_18*&
_output_shapes
:0*
T0
[
training/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_19training/Adam/Const_16*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*&
_output_shapes
:0*
T0
l
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*&
_output_shapes
:0*
T0
[
training/Adam/add_20/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
z
training/Adam/add_20Addtraining/Adam/Sqrt_7training/Adam/add_20/y*
T0*&
_output_shapes
:0

training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_20*&
_output_shapes
:0*
T0
w
training/Adam/ReadVariableOp_54ReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
T0*&
_output_shapes
:0
r
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_6training/Adam/add_18*
dtype0
Є
training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/Variable_6"^training/Adam/AssignVariableOp_18*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_24training/Adam/add_19*
dtype0
Ѕ
training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/Variable_24"^training/Adam/AssignVariableOp_19*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_20AssignVariableOpconv2d_2/kerneltraining/Adam/sub_22*
dtype0

training/Adam/ReadVariableOp_57ReadVariableOpconv2d_2/kernel"^training/Adam/AssignVariableOp_20*
dtype0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:0

training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

training/Adam/mul_37Multraining/Adam/sub_239training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
l
training/Adam/add_21Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/Variable_25*
dtype0*
_output_shapes
:0

training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training/Adam/Square_7Square9training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:0
l
training/Adam/add_22Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
:0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_21*
T0*
_output_shapes
:0
[
training/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_22training/Adam/Const_18*
_output_shapes
:0*
T0

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
T0*
_output_shapes
:0
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
:0
[
training/Adam/add_23/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_23Addtraining/Adam/Sqrt_8training/Adam/add_23/y*
_output_shapes
:0*
T0
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_23*
_output_shapes
:0*
T0
i
training/Adam/ReadVariableOp_62ReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
z
training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
T0*
_output_shapes
:0
r
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_7training/Adam/add_21*
dtype0

training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:0
s
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_25training/Adam/add_22*
dtype0

training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/Variable_25"^training/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:0
g
!training/Adam/AssignVariableOp_23AssignVariableOpconv2d_2/biastraining/Adam/sub_25*
dtype0

training/Adam/ReadVariableOp_65ReadVariableOpconv2d_2/bias"^training/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_66ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_41/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*&
_output_shapes
:00

training/Adam/mul_41Multraining/Adam/ReadVariableOp_66#training/Adam/mul_41/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_67ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_26Subtraining/Adam/sub_26/xtraining/Adam/ReadVariableOp_67*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_42Multraining/Adam/sub_26Atraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
x
training/Adam/add_24Addtraining/Adam/mul_41training/Adam/mul_42*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_68ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_43/ReadVariableOpReadVariableOptraining/Adam/Variable_26*
dtype0*&
_output_shapes
:00

training/Adam/mul_43Multraining/Adam/ReadVariableOp_68#training/Adam/mul_43/ReadVariableOp*&
_output_shapes
:00*
T0
c
training/Adam/ReadVariableOp_69ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_27/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_27Subtraining/Adam/sub_27/xtraining/Adam/ReadVariableOp_69*
T0*
_output_shapes
: 

training/Adam/Square_8SquareAtraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:00*
T0
z
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*&
_output_shapes
:00*
T0
x
training/Adam/add_25Addtraining/Adam/mul_43training/Adam/mul_44*
T0*&
_output_shapes
:00
u
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_24*
T0*&
_output_shapes
:00
[
training/Adam/Const_19Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_20Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_25training/Adam/Const_20*&
_output_shapes
:00*
T0

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_19*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*&
_output_shapes
:00
[
training/Adam/add_26/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
z
training/Adam/add_26Addtraining/Adam/Sqrt_9training/Adam/add_26/y*
T0*&
_output_shapes
:00

training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_26*
T0*&
_output_shapes
:00
w
training/Adam/ReadVariableOp_70ReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_28Subtraining/Adam/ReadVariableOp_70training/Adam/truediv_9*
T0*&
_output_shapes
:00
r
!training/Adam/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_8training/Adam/add_24*
dtype0
Є
training/Adam/ReadVariableOp_71ReadVariableOptraining/Adam/Variable_8"^training/Adam/AssignVariableOp_24*
dtype0*&
_output_shapes
:00
s
!training/Adam/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_26training/Adam/add_25*
dtype0
Ѕ
training/Adam/ReadVariableOp_72ReadVariableOptraining/Adam/Variable_26"^training/Adam/AssignVariableOp_25*
dtype0*&
_output_shapes
:00
i
!training/Adam/AssignVariableOp_26AssignVariableOpconv2d_4/kerneltraining/Adam/sub_28*
dtype0

training/Adam/ReadVariableOp_73ReadVariableOpconv2d_4/kernel"^training/Adam/AssignVariableOp_26*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_74ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_46/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
dtype0*
_output_shapes
:0

training/Adam/mul_46Multraining/Adam/ReadVariableOp_74#training/Adam/mul_46/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_75ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_29Subtraining/Adam/sub_29/xtraining/Adam/ReadVariableOp_75*
_output_shapes
: *
T0

training/Adam/mul_47Multraining/Adam/sub_299training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
l
training/Adam/add_27Addtraining/Adam/mul_46training/Adam/mul_47*
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_76ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_48/ReadVariableOpReadVariableOptraining/Adam/Variable_27*
dtype0*
_output_shapes
:0

training/Adam/mul_48Multraining/Adam/ReadVariableOp_76#training/Adam/mul_48/ReadVariableOp*
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_77ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_30/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_30Subtraining/Adam/sub_30/xtraining/Adam/ReadVariableOp_77*
_output_shapes
: *
T0

training/Adam/Square_9Square9training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
n
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes
:0
l
training/Adam/add_28Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes
:0
i
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_27*
T0*
_output_shapes
:0
[
training/Adam/Const_21Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_22Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_28training/Adam/Const_22*
T0*
_output_shapes
:0

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_21*
T0*
_output_shapes
:0
b
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes
:0
[
training/Adam/add_29/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_29Addtraining/Adam/Sqrt_10training/Adam/add_29/y*
T0*
_output_shapes
:0
t
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_29*
T0*
_output_shapes
:0
i
training/Adam/ReadVariableOp_78ReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
{
training/Adam/sub_31Subtraining/Adam/ReadVariableOp_78training/Adam/truediv_10*
T0*
_output_shapes
:0
r
!training/Adam/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_9training/Adam/add_27*
dtype0

training/Adam/ReadVariableOp_79ReadVariableOptraining/Adam/Variable_9"^training/Adam/AssignVariableOp_27*
dtype0*
_output_shapes
:0
s
!training/Adam/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_27training/Adam/add_28*
dtype0

training/Adam/ReadVariableOp_80ReadVariableOptraining/Adam/Variable_27"^training/Adam/AssignVariableOp_28*
dtype0*
_output_shapes
:0
g
!training/Adam/AssignVariableOp_29AssignVariableOpconv2d_4/biastraining/Adam/sub_31*
dtype0

training/Adam/ReadVariableOp_81ReadVariableOpconv2d_4/bias"^training/Adam/AssignVariableOp_29*
dtype0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_82ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_51/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
dtype0*&
_output_shapes
:0

training/Adam/mul_51Multraining/Adam/ReadVariableOp_82#training/Adam/mul_51/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_83ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_32/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_32Subtraining/Adam/sub_32/xtraining/Adam/ReadVariableOp_83*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_52Multraining/Adam/sub_32Atraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_30Addtraining/Adam/mul_51training/Adam/mul_52*&
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_84ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_53/ReadVariableOpReadVariableOptraining/Adam/Variable_28*
dtype0*&
_output_shapes
:0

training/Adam/mul_53Multraining/Adam/ReadVariableOp_84#training/Adam/mul_53/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_85ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_33/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_33Subtraining/Adam/sub_33/xtraining/Adam/ReadVariableOp_85*
T0*
_output_shapes
: 

training/Adam/Square_10SquareAtraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
{
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*&
_output_shapes
:0*
T0
x
training/Adam/add_31Addtraining/Adam/mul_53training/Adam/mul_54*
T0*&
_output_shapes
:0
u
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_30*
T0*&
_output_shapes
:0
[
training/Adam/Const_23Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_24Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_31training/Adam/Const_24*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_23*
T0*&
_output_shapes
:0
n
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
T0*&
_output_shapes
:0
[
training/Adam/add_32/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
{
training/Adam/add_32Addtraining/Adam/Sqrt_11training/Adam/add_32/y*
T0*&
_output_shapes
:0

training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_32*
T0*&
_output_shapes
:0
w
training/Adam/ReadVariableOp_86ReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_34Subtraining/Adam/ReadVariableOp_86training/Adam/truediv_11*
T0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_30AssignVariableOptraining/Adam/Variable_10training/Adam/add_30*
dtype0
Ѕ
training/Adam/ReadVariableOp_87ReadVariableOptraining/Adam/Variable_10"^training/Adam/AssignVariableOp_30*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_31AssignVariableOptraining/Adam/Variable_28training/Adam/add_31*
dtype0
Ѕ
training/Adam/ReadVariableOp_88ReadVariableOptraining/Adam/Variable_28"^training/Adam/AssignVariableOp_31*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_32AssignVariableOpconv2d_6/kerneltraining/Adam/sub_34*
dtype0

training/Adam/ReadVariableOp_89ReadVariableOpconv2d_6/kernel"^training/Adam/AssignVariableOp_32*
dtype0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_90ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_56/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
dtype0*
_output_shapes
:

training/Adam/mul_56Multraining/Adam/ReadVariableOp_90#training/Adam/mul_56/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_91ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_35/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_35Subtraining/Adam/sub_35/xtraining/Adam/ReadVariableOp_91*
T0*
_output_shapes
: 

training/Adam/mul_57Multraining/Adam/sub_359training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_33Addtraining/Adam/mul_56training/Adam/mul_57*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_92ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_58/ReadVariableOpReadVariableOptraining/Adam/Variable_29*
dtype0*
_output_shapes
:

training/Adam/mul_58Multraining/Adam/ReadVariableOp_92#training/Adam/mul_58/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_93ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_36/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_36Subtraining/Adam/sub_36/xtraining/Adam/ReadVariableOp_93*
_output_shapes
: *
T0

training/Adam/Square_11Square9training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
T0*
_output_shapes
:
l
training/Adam/add_34Addtraining/Adam/mul_58training/Adam/mul_59*
T0*
_output_shapes
:
i
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_33*
T0*
_output_shapes
:
[
training/Adam/Const_25Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_26Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_34training/Adam/Const_26*
T0*
_output_shapes
:

training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_25*
T0*
_output_shapes
:
b
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
_output_shapes
:*
T0
[
training/Adam/add_35/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
o
training/Adam/add_35Addtraining/Adam/Sqrt_12training/Adam/add_35/y*
_output_shapes
:*
T0
t
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_35*
T0*
_output_shapes
:
i
training/Adam/ReadVariableOp_94ReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:
{
training/Adam/sub_37Subtraining/Adam/ReadVariableOp_94training/Adam/truediv_12*
_output_shapes
:*
T0
s
!training/Adam/AssignVariableOp_33AssignVariableOptraining/Adam/Variable_11training/Adam/add_33*
dtype0

training/Adam/ReadVariableOp_95ReadVariableOptraining/Adam/Variable_11"^training/Adam/AssignVariableOp_33*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_34AssignVariableOptraining/Adam/Variable_29training/Adam/add_34*
dtype0

training/Adam/ReadVariableOp_96ReadVariableOptraining/Adam/Variable_29"^training/Adam/AssignVariableOp_34*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_35AssignVariableOpconv2d_6/biastraining/Adam/sub_37*
dtype0

training/Adam/ReadVariableOp_97ReadVariableOpconv2d_6/bias"^training/Adam/AssignVariableOp_35*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_98ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_61/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
dtype0*&
_output_shapes
:0

training/Adam/mul_61Multraining/Adam/ReadVariableOp_98#training/Adam/mul_61/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_99ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_38/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_38Subtraining/Adam/sub_38/xtraining/Adam/ReadVariableOp_99*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_62Multraining/Adam/sub_38Atraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
x
training/Adam/add_36Addtraining/Adam/mul_61training/Adam/mul_62*&
_output_shapes
:0*
T0
d
 training/Adam/ReadVariableOp_100ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_63/ReadVariableOpReadVariableOptraining/Adam/Variable_30*
dtype0*&
_output_shapes
:0

training/Adam/mul_63Mul training/Adam/ReadVariableOp_100#training/Adam/mul_63/ReadVariableOp*
T0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_101ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_39/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_39Subtraining/Adam/sub_39/x training/Adam/ReadVariableOp_101*
T0*
_output_shapes
: 

training/Adam/Square_12SquareAtraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
{
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
T0*&
_output_shapes
:0
x
training/Adam/add_37Addtraining/Adam/mul_63training/Adam/mul_64*&
_output_shapes
:0*
T0
u
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_36*
T0*&
_output_shapes
:0
[
training/Adam/Const_27Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_28Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_37training/Adam/Const_28*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_27*&
_output_shapes
:0*
T0
n
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*&
_output_shapes
:0*
T0
[
training/Adam/add_38/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
{
training/Adam/add_38Addtraining/Adam/Sqrt_13training/Adam/add_38/y*
T0*&
_output_shapes
:0

training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_38*
T0*&
_output_shapes
:0
x
 training/Adam/ReadVariableOp_102ReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_40Sub training/Adam/ReadVariableOp_102training/Adam/truediv_13*
T0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_36AssignVariableOptraining/Adam/Variable_12training/Adam/add_36*
dtype0
І
 training/Adam/ReadVariableOp_103ReadVariableOptraining/Adam/Variable_12"^training/Adam/AssignVariableOp_36*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_37AssignVariableOptraining/Adam/Variable_30training/Adam/add_37*
dtype0
І
 training/Adam/ReadVariableOp_104ReadVariableOptraining/Adam/Variable_30"^training/Adam/AssignVariableOp_37*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_38AssignVariableOpconv2d_5/kerneltraining/Adam/sub_40*
dtype0

 training/Adam/ReadVariableOp_105ReadVariableOpconv2d_5/kernel"^training/Adam/AssignVariableOp_38*
dtype0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_106ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_66/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*
_output_shapes
:

training/Adam/mul_66Mul training/Adam/ReadVariableOp_106#training/Adam/mul_66/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_107ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_41/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_41Subtraining/Adam/sub_41/x training/Adam/ReadVariableOp_107*
T0*
_output_shapes
: 

training/Adam/mul_67Multraining/Adam/sub_419training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_39Addtraining/Adam/mul_66training/Adam/mul_67*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_108ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_68/ReadVariableOpReadVariableOptraining/Adam/Variable_31*
dtype0*
_output_shapes
:

training/Adam/mul_68Mul training/Adam/ReadVariableOp_108#training/Adam/mul_68/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_109ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_42/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_42Subtraining/Adam/sub_42/x training/Adam/ReadVariableOp_109*
T0*
_output_shapes
: 

training/Adam/Square_13Square9training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
T0*
_output_shapes
:
l
training/Adam/add_40Addtraining/Adam/mul_68training/Adam/mul_69*
_output_shapes
:*
T0
i
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_39*
_output_shapes
:*
T0
[
training/Adam/Const_29Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_30Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_40training/Adam/Const_30*
_output_shapes
:*
T0

training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_29*
T0*
_output_shapes
:
b
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
T0*
_output_shapes
:
[
training/Adam/add_41/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_41Addtraining/Adam/Sqrt_14training/Adam/add_41/y*
T0*
_output_shapes
:
t
training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_41*
T0*
_output_shapes
:
j
 training/Adam/ReadVariableOp_110ReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:
|
training/Adam/sub_43Sub training/Adam/ReadVariableOp_110training/Adam/truediv_14*
T0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_39AssignVariableOptraining/Adam/Variable_13training/Adam/add_39*
dtype0

 training/Adam/ReadVariableOp_111ReadVariableOptraining/Adam/Variable_13"^training/Adam/AssignVariableOp_39*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_40AssignVariableOptraining/Adam/Variable_31training/Adam/add_40*
dtype0

 training/Adam/ReadVariableOp_112ReadVariableOptraining/Adam/Variable_31"^training/Adam/AssignVariableOp_40*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_41AssignVariableOpconv2d_5/biastraining/Adam/sub_43*
dtype0

 training/Adam/ReadVariableOp_113ReadVariableOpconv2d_5/bias"^training/Adam/AssignVariableOp_41*
dtype0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_114ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_71/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*&
_output_shapes
:

training/Adam/mul_71Mul training/Adam/ReadVariableOp_114#training/Adam/mul_71/ReadVariableOp*
T0*&
_output_shapes
:
d
 training/Adam/ReadVariableOp_115ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_44/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_44Subtraining/Adam/sub_44/x training/Adam/ReadVariableOp_115*
_output_shapes
: *
T0
Ѕ
training/Adam/mul_72Multraining/Adam/sub_44Atraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
x
training/Adam/add_42Addtraining/Adam/mul_71training/Adam/mul_72*
T0*&
_output_shapes
:
d
 training/Adam/ReadVariableOp_116ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_73/ReadVariableOpReadVariableOptraining/Adam/Variable_32*
dtype0*&
_output_shapes
:

training/Adam/mul_73Mul training/Adam/ReadVariableOp_116#training/Adam/mul_73/ReadVariableOp*
T0*&
_output_shapes
:
d
 training/Adam/ReadVariableOp_117ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_45/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_45Subtraining/Adam/sub_45/x training/Adam/ReadVariableOp_117*
T0*
_output_shapes
: 

training/Adam/Square_14SquareAtraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
{
training/Adam/mul_74Multraining/Adam/sub_45training/Adam/Square_14*
T0*&
_output_shapes
:
x
training/Adam/add_43Addtraining/Adam/mul_73training/Adam/mul_74*&
_output_shapes
:*
T0
u
training/Adam/mul_75Multraining/Adam/multraining/Adam/add_42*&
_output_shapes
:*
T0
[
training/Adam/Const_31Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_32Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_15/MinimumMinimumtraining/Adam/add_43training/Adam/Const_32*
T0*&
_output_shapes
:

training/Adam/clip_by_value_15Maximum&training/Adam/clip_by_value_15/Minimumtraining/Adam/Const_31*
T0*&
_output_shapes
:
n
training/Adam/Sqrt_15Sqrttraining/Adam/clip_by_value_15*&
_output_shapes
:*
T0
[
training/Adam/add_44/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
{
training/Adam/add_44Addtraining/Adam/Sqrt_15training/Adam/add_44/y*
T0*&
_output_shapes
:

training/Adam/truediv_15RealDivtraining/Adam/mul_75training/Adam/add_44*
T0*&
_output_shapes
:
x
 training/Adam/ReadVariableOp_118ReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:

training/Adam/sub_46Sub training/Adam/ReadVariableOp_118training/Adam/truediv_15*
T0*&
_output_shapes
:
s
!training/Adam/AssignVariableOp_42AssignVariableOptraining/Adam/Variable_14training/Adam/add_42*
dtype0
І
 training/Adam/ReadVariableOp_119ReadVariableOptraining/Adam/Variable_14"^training/Adam/AssignVariableOp_42*
dtype0*&
_output_shapes
:
s
!training/Adam/AssignVariableOp_43AssignVariableOptraining/Adam/Variable_32training/Adam/add_43*
dtype0
І
 training/Adam/ReadVariableOp_120ReadVariableOptraining/Adam/Variable_32"^training/Adam/AssignVariableOp_43*
dtype0*&
_output_shapes
:
i
!training/Adam/AssignVariableOp_44AssignVariableOpconv2d_7/kerneltraining/Adam/sub_46*
dtype0

 training/Adam/ReadVariableOp_121ReadVariableOpconv2d_7/kernel"^training/Adam/AssignVariableOp_44*
dtype0*&
_output_shapes
:
d
 training/Adam/ReadVariableOp_122ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_76/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
dtype0*
_output_shapes
:

training/Adam/mul_76Mul training/Adam/ReadVariableOp_122#training/Adam/mul_76/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_123ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_47/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_47Subtraining/Adam/sub_47/x training/Adam/ReadVariableOp_123*
T0*
_output_shapes
: 

training/Adam/mul_77Multraining/Adam/sub_479training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/add_45Addtraining/Adam/mul_76training/Adam/mul_77*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_124ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_78/ReadVariableOpReadVariableOptraining/Adam/Variable_33*
dtype0*
_output_shapes
:

training/Adam/mul_78Mul training/Adam/ReadVariableOp_124#training/Adam/mul_78/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_125ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_48/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_48Subtraining/Adam/sub_48/x training/Adam/ReadVariableOp_125*
T0*
_output_shapes
: 

training/Adam/Square_15Square9training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_79Multraining/Adam/sub_48training/Adam/Square_15*
T0*
_output_shapes
:
l
training/Adam/add_46Addtraining/Adam/mul_78training/Adam/mul_79*
T0*
_output_shapes
:
i
training/Adam/mul_80Multraining/Adam/multraining/Adam/add_45*
T0*
_output_shapes
:
[
training/Adam/Const_33Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_34Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_16/MinimumMinimumtraining/Adam/add_46training/Adam/Const_34*
T0*
_output_shapes
:

training/Adam/clip_by_value_16Maximum&training/Adam/clip_by_value_16/Minimumtraining/Adam/Const_33*
T0*
_output_shapes
:
b
training/Adam/Sqrt_16Sqrttraining/Adam/clip_by_value_16*
T0*
_output_shapes
:
[
training/Adam/add_47/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
o
training/Adam/add_47Addtraining/Adam/Sqrt_16training/Adam/add_47/y*
T0*
_output_shapes
:
t
training/Adam/truediv_16RealDivtraining/Adam/mul_80training/Adam/add_47*
T0*
_output_shapes
:
j
 training/Adam/ReadVariableOp_126ReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:
|
training/Adam/sub_49Sub training/Adam/ReadVariableOp_126training/Adam/truediv_16*
T0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_45AssignVariableOptraining/Adam/Variable_15training/Adam/add_45*
dtype0

 training/Adam/ReadVariableOp_127ReadVariableOptraining/Adam/Variable_15"^training/Adam/AssignVariableOp_45*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_46AssignVariableOptraining/Adam/Variable_33training/Adam/add_46*
dtype0

 training/Adam/ReadVariableOp_128ReadVariableOptraining/Adam/Variable_33"^training/Adam/AssignVariableOp_46*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_47AssignVariableOpconv2d_7/biastraining/Adam/sub_49*
dtype0

 training/Adam/ReadVariableOp_129ReadVariableOpconv2d_7/bias"^training/Adam/AssignVariableOp_47*
dtype0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_130ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_81/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
dtype0*&
_output_shapes
:0

training/Adam/mul_81Mul training/Adam/ReadVariableOp_130#training/Adam/mul_81/ReadVariableOp*&
_output_shapes
:0*
T0
d
 training/Adam/ReadVariableOp_131ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_50/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_50Subtraining/Adam/sub_50/x training/Adam/ReadVariableOp_131*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_82Multraining/Adam/sub_50Atraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_48Addtraining/Adam/mul_81training/Adam/mul_82*&
_output_shapes
:0*
T0
d
 training/Adam/ReadVariableOp_132ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_83/ReadVariableOpReadVariableOptraining/Adam/Variable_34*
dtype0*&
_output_shapes
:0

training/Adam/mul_83Mul training/Adam/ReadVariableOp_132#training/Adam/mul_83/ReadVariableOp*
T0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_133ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_51/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_51Subtraining/Adam/sub_51/x training/Adam/ReadVariableOp_133*
T0*
_output_shapes
: 

training/Adam/Square_16SquareAtraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
{
training/Adam/mul_84Multraining/Adam/sub_51training/Adam/Square_16*
T0*&
_output_shapes
:0
x
training/Adam/add_49Addtraining/Adam/mul_83training/Adam/mul_84*
T0*&
_output_shapes
:0
u
training/Adam/mul_85Multraining/Adam/multraining/Adam/add_48*
T0*&
_output_shapes
:0
[
training/Adam/Const_35Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_36Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_17/MinimumMinimumtraining/Adam/add_49training/Adam/Const_36*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_17Maximum&training/Adam/clip_by_value_17/Minimumtraining/Adam/Const_35*
T0*&
_output_shapes
:0
n
training/Adam/Sqrt_17Sqrttraining/Adam/clip_by_value_17*
T0*&
_output_shapes
:0
[
training/Adam/add_50/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
{
training/Adam/add_50Addtraining/Adam/Sqrt_17training/Adam/add_50/y*
T0*&
_output_shapes
:0

training/Adam/truediv_17RealDivtraining/Adam/mul_85training/Adam/add_50*
T0*&
_output_shapes
:0
x
 training/Adam/ReadVariableOp_134ReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_52Sub training/Adam/ReadVariableOp_134training/Adam/truediv_17*
T0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_48AssignVariableOptraining/Adam/Variable_16training/Adam/add_48*
dtype0
І
 training/Adam/ReadVariableOp_135ReadVariableOptraining/Adam/Variable_16"^training/Adam/AssignVariableOp_48*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_49AssignVariableOptraining/Adam/Variable_34training/Adam/add_49*
dtype0
І
 training/Adam/ReadVariableOp_136ReadVariableOptraining/Adam/Variable_34"^training/Adam/AssignVariableOp_49*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_50AssignVariableOpconv2d_8/kerneltraining/Adam/sub_52*
dtype0

 training/Adam/ReadVariableOp_137ReadVariableOpconv2d_8/kernel"^training/Adam/AssignVariableOp_50*
dtype0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_138ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_86/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
dtype0*
_output_shapes
:

training/Adam/mul_86Mul training/Adam/ReadVariableOp_138#training/Adam/mul_86/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_139ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_53/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_53Subtraining/Adam/sub_53/x training/Adam/ReadVariableOp_139*
_output_shapes
: *
T0

training/Adam/mul_87Multraining/Adam/sub_539training/Adam/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_51Addtraining/Adam/mul_86training/Adam/mul_87*
_output_shapes
:*
T0
d
 training/Adam/ReadVariableOp_140ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_88/ReadVariableOpReadVariableOptraining/Adam/Variable_35*
dtype0*
_output_shapes
:

training/Adam/mul_88Mul training/Adam/ReadVariableOp_140#training/Adam/mul_88/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_141ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_54/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_54Subtraining/Adam/sub_54/x training/Adam/ReadVariableOp_141*
T0*
_output_shapes
: 

training/Adam/Square_17Square9training/Adam/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_89Multraining/Adam/sub_54training/Adam/Square_17*
T0*
_output_shapes
:
l
training/Adam/add_52Addtraining/Adam/mul_88training/Adam/mul_89*
_output_shapes
:*
T0
i
training/Adam/mul_90Multraining/Adam/multraining/Adam/add_51*
_output_shapes
:*
T0
[
training/Adam/Const_37Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_38Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_18/MinimumMinimumtraining/Adam/add_52training/Adam/Const_38*
T0*
_output_shapes
:

training/Adam/clip_by_value_18Maximum&training/Adam/clip_by_value_18/Minimumtraining/Adam/Const_37*
_output_shapes
:*
T0
b
training/Adam/Sqrt_18Sqrttraining/Adam/clip_by_value_18*
_output_shapes
:*
T0
[
training/Adam/add_53/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_53Addtraining/Adam/Sqrt_18training/Adam/add_53/y*
T0*
_output_shapes
:
t
training/Adam/truediv_18RealDivtraining/Adam/mul_90training/Adam/add_53*
T0*
_output_shapes
:
j
 training/Adam/ReadVariableOp_142ReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:
|
training/Adam/sub_55Sub training/Adam/ReadVariableOp_142training/Adam/truediv_18*
T0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_51AssignVariableOptraining/Adam/Variable_17training/Adam/add_51*
dtype0

 training/Adam/ReadVariableOp_143ReadVariableOptraining/Adam/Variable_17"^training/Adam/AssignVariableOp_51*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_52AssignVariableOptraining/Adam/Variable_35training/Adam/add_52*
dtype0

 training/Adam/ReadVariableOp_144ReadVariableOptraining/Adam/Variable_35"^training/Adam/AssignVariableOp_52*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_53AssignVariableOpconv2d_8/biastraining/Adam/sub_55*
dtype0

 training/Adam/ReadVariableOp_145ReadVariableOpconv2d_8/bias"^training/Adam/AssignVariableOp_53*
dtype0*
_output_shapes
:

training_1/group_depsNoOp	^loss/mul^metrics/psnr/div_no_nan^metrics/ssim/div_no_nan!^training/Adam/ReadVariableOp_103!^training/Adam/ReadVariableOp_104!^training/Adam/ReadVariableOp_105!^training/Adam/ReadVariableOp_111!^training/Adam/ReadVariableOp_112!^training/Adam/ReadVariableOp_113!^training/Adam/ReadVariableOp_119!^training/Adam/ReadVariableOp_120!^training/Adam/ReadVariableOp_121!^training/Adam/ReadVariableOp_127!^training/Adam/ReadVariableOp_128!^training/Adam/ReadVariableOp_129!^training/Adam/ReadVariableOp_135!^training/Adam/ReadVariableOp_136!^training/Adam/ReadVariableOp_137!^training/Adam/ReadVariableOp_143!^training/Adam/ReadVariableOp_144!^training/Adam/ReadVariableOp_145 ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7 ^training/Adam/ReadVariableOp_71 ^training/Adam/ReadVariableOp_72 ^training/Adam/ReadVariableOp_73 ^training/Adam/ReadVariableOp_79^training/Adam/ReadVariableOp_8 ^training/Adam/ReadVariableOp_80 ^training/Adam/ReadVariableOp_81 ^training/Adam/ReadVariableOp_87 ^training/Adam/ReadVariableOp_88 ^training/Adam/ReadVariableOp_89^training/Adam/ReadVariableOp_9 ^training/Adam/ReadVariableOp_95 ^training/Adam/ReadVariableOp_96 ^training/Adam/ReadVariableOp_97
P
VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 
J
VarIsInitializedOp_1VarIsInitializedOpSGD/lr*
_output_shapes
: 
]
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/Variable_34*
_output_shapes
: 
M
VarIsInitializedOp_3VarIsInitializedOp	SGD/decay*
_output_shapes
: 
]
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
]
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOptotal*
_output_shapes
: 
\
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
]
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
]
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
R
VarIsInitializedOp_10VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
O
VarIsInitializedOp_11VarIsInitializedOp
Adam/decay*
_output_shapes
: 
^
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable_40*
_output_shapes
: 
T
VarIsInitializedOp_13VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
L
VarIsInitializedOp_14VarIsInitializedOpAdam/lr*
_output_shapes
: 
^
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_51*
_output_shapes
: 
T
VarIsInitializedOp_16VarIsInitializedOpAdam/iterations*
_output_shapes
: 
^
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
P
VarIsInitializedOp_18VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
^
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_50*
_output_shapes
: 
P
VarIsInitializedOp_20VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
^
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
L
VarIsInitializedOp_22VarIsInitializedOpcount_1*
_output_shapes
: 
]
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
^
VarIsInitializedOp_24VarIsInitializedOptraining/Adam/Variable_45*
_output_shapes
: 
^
VarIsInitializedOp_25VarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
^
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/Variable_35*
_output_shapes
: 
^
VarIsInitializedOp_27VarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
Q
VarIsInitializedOp_28VarIsInitializedOpSGD/momentum*
_output_shapes
: 
R
VarIsInitializedOp_29VarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
[
VarIsInitializedOp_30VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
]
VarIsInitializedOp_31VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
L
VarIsInitializedOp_32VarIsInitializedOptotal_1*
_output_shapes
: 
^
VarIsInitializedOp_33VarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
R
VarIsInitializedOp_34VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
^
VarIsInitializedOp_35VarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
^
VarIsInitializedOp_36VarIsInitializedOptraining/Adam/Variable_30*
_output_shapes
: 
^
VarIsInitializedOp_37VarIsInitializedOptraining/Adam/Variable_37*
_output_shapes
: 
^
VarIsInitializedOp_38VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
]
VarIsInitializedOp_39VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
^
VarIsInitializedOp_40VarIsInitializedOptraining/Adam/Variable_44*
_output_shapes
: 
^
VarIsInitializedOp_41VarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
T
VarIsInitializedOp_42VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
]
VarIsInitializedOp_43VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
^
VarIsInitializedOp_44VarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
^
VarIsInitializedOp_45VarIsInitializedOptraining/Adam/Variable_36*
_output_shapes
: 
^
VarIsInitializedOp_46VarIsInitializedOptraining/Adam/Variable_42*
_output_shapes
: 
T
VarIsInitializedOp_47VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
]
VarIsInitializedOp_48VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
^
VarIsInitializedOp_49VarIsInitializedOptraining/Adam/Variable_31*
_output_shapes
: 
^
VarIsInitializedOp_50VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
^
VarIsInitializedOp_51VarIsInitializedOptraining/Adam/Variable_43*
_output_shapes
: 
^
VarIsInitializedOp_52VarIsInitializedOptraining/Adam/Variable_38*
_output_shapes
: 
]
VarIsInitializedOp_53VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
^
VarIsInitializedOp_54VarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
^
VarIsInitializedOp_55VarIsInitializedOptraining/Adam/Variable_41*
_output_shapes
: 
^
VarIsInitializedOp_56VarIsInitializedOptraining/Adam/Variable_39*
_output_shapes
: 
^
VarIsInitializedOp_57VarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
^
VarIsInitializedOp_58VarIsInitializedOptraining/Adam/Variable_52*
_output_shapes
: 
^
VarIsInitializedOp_59VarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
^
VarIsInitializedOp_60VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
T
VarIsInitializedOp_61VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
J
VarIsInitializedOp_62VarIsInitializedOpcount*
_output_shapes
: 
]
VarIsInitializedOp_63VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
^
VarIsInitializedOp_64VarIsInitializedOptraining/Adam/Variable_32*
_output_shapes
: 
^
VarIsInitializedOp_65VarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
^
VarIsInitializedOp_66VarIsInitializedOptraining/Adam/Variable_49*
_output_shapes
: 
^
VarIsInitializedOp_67VarIsInitializedOptraining/Adam/Variable_47*
_output_shapes
: 
R
VarIsInitializedOp_68VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
^
VarIsInitializedOp_69VarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
]
VarIsInitializedOp_70VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
^
VarIsInitializedOp_71VarIsInitializedOptraining/Adam/Variable_48*
_output_shapes
: 
^
VarIsInitializedOp_72VarIsInitializedOptraining/Adam/Variable_46*
_output_shapes
: 
^
VarIsInitializedOp_73VarIsInitializedOptraining/Adam/Variable_33*
_output_shapes
: 
R
VarIsInitializedOp_74VarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
^
VarIsInitializedOp_75VarIsInitializedOptraining/Adam/Variable_53*
_output_shapes
: 
R
VarIsInitializedOp_76VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
T
VarIsInitializedOp_77VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
T
VarIsInitializedOp_78VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
R
VarIsInitializedOp_79VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
R
VarIsInitializedOp_80VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
T
VarIsInitializedOp_81VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
T
VarIsInitializedOp_82VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_83VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
P
VarIsInitializedOp_84VarIsInitializedOpconv2d/bias*
_output_shapes
: 

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^count/Assign^count_1/Assign^total/Assign^total_1/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign ^training/Adam/Variable_4/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign!^training/Adam/Variable_42/Assign!^training/Adam/Variable_43/Assign!^training/Adam/Variable_44/Assign!^training/Adam/Variable_45/Assign!^training/Adam/Variable_46/Assign!^training/Adam/Variable_47/Assign!^training/Adam/Variable_48/Assign!^training/Adam/Variable_49/Assign ^training/Adam/Variable_5/Assign!^training/Adam/Variable_50/Assign!^training/Adam/Variable_51/Assign!^training/Adam/Variable_52/Assign!^training/Adam/Variable_53/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign",щяъ     §ЛЦ	ПckDяOзAJте
в-Л-
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
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
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

н
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
д
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
x
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2		"
align_cornersbool( 
p
ResizeNearestNeighborGrad

grads"T
size
output"T"
Ttype:

2"
align_cornersbool( 
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
і
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
*1.13.12
b'unknown'йњ
z
input_1Placeholder*$
shape:џџџџџџџџџ``*
dtype0*/
_output_shapes
:џџџџџџџџџ``
z
input_2Placeholder*$
shape:џџџџџџџџџ``*
dtype0*/
_output_shapes
:џџџџџџџџџ``
_
subtract/subSubinput_2input_1*/
_output_shapes
:џџџџџџџџџ``*
T0
Љ
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *№7'О* 
_class
loc:@conv2d/kernel

,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *№7'>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
№
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
в
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
о
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
Б
conv2d/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel*
	container *
shape:
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 

conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0

!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:* 
_class
loc:@conv2d/kernel

conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@conv2d/bias

conv2d/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
	container *
shape:
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0

conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
e
conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
ы
conv2d/Conv2DConv2Dsubtract/subconv2d/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:

conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``*
T0
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *я[ёН*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 *
dtype0*&
_output_shapes
:
к
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_1/kernel
є
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_1/kernel
З
conv2d_1/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
	container *
shape:
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 

conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0

#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
:

conv2d_1/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_1/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 

conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0

!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:
ю
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:

conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``*
T0
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
e
add/addAddsubtract/subconv2d_1/Relu*
T0*/
_output_shapes
:џџџџџџџџџ``
Е
max_pooling2d/MaxPoolMaxPooladd/add*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:џџџџџџџџџ00*
T0
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЭО*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *:Э>*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_2/kernel*
seed2 
к
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
є
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_2/kernel
З
conv2d_2/kernelVarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 

conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0

#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0*"
_class
loc:@conv2d_2/kernel

conv2d_2/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
Ѕ
conv2d_2/biasVarHandleOp*
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
	container 
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 

conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0

!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0* 
_class
loc:@conv2d_2/bias
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0
ј
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ000
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0

conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ000
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ000
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:

.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЃХН*"
_class
loc:@conv2d_3/kernel

.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *ЃХ=*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 
к
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
є
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
З
conv2d_3/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
	container *
shape:0
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 

conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_3/kernel

#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
:0

conv2d_3/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
Ѕ
conv2d_3/biasVarHandleOp*
shared_nameconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
	container *
shape:0*
dtype0*
_output_shapes
: 
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 

conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_3/bias

!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_3/Conv2D/ReadVariableOpReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0
ј
conv2d_3/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ000*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0

conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ000*
T0
a
conv2d_3/ReluReluconv2d_3/BiasAdd*/
_output_shapes
:џџџџџџџџџ000*
T0
­
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   0   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:

.conv2d_4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЋЊЊН*"
_class
loc:@conv2d_4/kernel

.conv2d_4/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЋЊЊ=*"
_class
loc:@conv2d_4/kernel
і
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:00*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
к
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
є
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_4/kernel
ц
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
З
conv2d_4/kernelVarHandleOp*
shape:00*
dtype0*
_output_shapes
: * 
shared_nameconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
	container 
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 

conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
dtype0

#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*&
_output_shapes
:00

conv2d_4/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:0
Ѕ
conv2d_4/biasVarHandleOp*
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
	container 
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 

conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_4/bias

!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:0
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_4/Conv2D/ReadVariableOpReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00
№
conv2d_4/Conv2DConv2Dconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ000*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0

conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ000
a
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ000
h
	add_1/addAddconv2d_2/Reluconv2d_4/Relu*
T0*/
_output_shapes
:џџџџџџџџџ000
\
up_sampling2d/ShapeShape	add_1/add*
T0*
out_type0*
_output_shapes
:
k
!up_sampling2d/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape!up_sampling2d/strided_slice/stack#up_sampling2d/strided_slice/stack_1#up_sampling2d/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
d
up_sampling2d/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
o
up_sampling2d/mulMulup_sampling2d/strided_sliceup_sampling2d/Const*
T0*
_output_shapes
:
Љ
#up_sampling2d/ResizeNearestNeighborResizeNearestNeighbor	add_1/addup_sampling2d/mul*
align_corners( *
T0*/
_output_shapes
:џџџџџџџџџ``0
­
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:

.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЭО*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 

.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *:Э>*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_5/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
к
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
є
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:0
ц
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:0
З
conv2d_5/kernelVarHandleOp*
shape:0*
dtype0*
_output_shapes
: * 
shared_nameconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
	container 
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 

conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_5/kernel*
dtype0

#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
dtype0*&
_output_shapes
:0

conv2d_5/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_5/biasVarHandleOp* 
_class
loc:@conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_5/bias
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 

conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros* 
_class
loc:@conv2d_5/bias*
dtype0

!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_5/bias
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_5/Conv2D/ReadVariableOpReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0

conv2d_5/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:

conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``
a
conv2d_5/ReluReluconv2d_5/BiasAdd*/
_output_shapes
:џџџџџџџџџ``*
T0
­
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:

.conv2d_6/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЃХН*"
_class
loc:@conv2d_6/kernel

.conv2d_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *ЃХ=*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_6/kernel*
seed2 
к
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
є
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
ц
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0
З
conv2d_6/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
	container *
shape:0
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 

conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_6/kernel*
dtype0

#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
:0

conv2d_6/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_6/biasVarHandleOp* 
_class
loc:@conv2d_6/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_6/bias
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 

conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0

!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:
g
conv2d_6/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0

conv2d_6/Conv2DConv2D#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations

i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:

conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``*
T0
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
­
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
:

.conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *я[ёН*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 

.conv2d_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_7/kernel*
seed2 
к
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
є
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
ц
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:
З
conv2d_7/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
	container *
shape:
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 

conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_7/kernel*
dtype0

#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*&
_output_shapes
:

conv2d_7/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_7/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
	container *
shape:
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 

conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_7/bias

!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:
g
conv2d_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:
№
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0
i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:

conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
h
	add_2/addAddconv2d_5/Reluconv2d_7/Relu*/
_output_shapes
:џџџџџџџџџ``*
T0
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

concatenate/concatConcatV2add/add	add_2/addconcatenate/concat/axis*
T0*
N*/
_output_shapes
:џџџџџџџџџ``0*

Tidx0
­
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0      *"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
:

.conv2d_8/kernel/Initializer/random_uniform/minConst*
valueB
 *Ѕ)ГО*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 

.conv2d_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ѕ)Г>*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
к
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
є
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:0
ц
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*&
_output_shapes
:0
З
conv2d_8/kernelVarHandleOp* 
shared_nameconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: 
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 

conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_8/kernel*
dtype0

#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0*"
_class
loc:@conv2d_8/kernel

conv2d_8/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes
:
Ѕ
conv2d_8/biasVarHandleOp* 
_class
loc:@conv2d_8/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d_8/bias
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 

conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros* 
_class
loc:@conv2d_8/bias*
dtype0

!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes
:
g
conv2d_8/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0
ѕ
conv2d_8/Conv2DConv2Dconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:

conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ``
a
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ``
b
	add_3/addAddinput_1conv2d_8/Relu*
T0*/
_output_shapes
:џџџџџџџџџ``

(SGD/iterations/Initializer/initial_valueConst*
value	B	 R *!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
Є
SGD/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *
shared_nameSGD/iterations*!
_class
loc:@SGD/iterations*
	container *
shape: 
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 

SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*!
_class
loc:@SGD/iterations*
dtype0	

"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 

 SGD/lr/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *
з#<*
_class
loc:@SGD/lr

SGD/lrVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSGD/lr*
_class
loc:@SGD/lr*
	container *
shape: 
]
'SGD/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/lr*
_output_shapes
: 
s
SGD/lr/AssignAssignVariableOpSGD/lr SGD/lr/Initializer/initial_value*
_class
loc:@SGD/lr*
dtype0
t
SGD/lr/Read/ReadVariableOpReadVariableOpSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

&SGD/momentum/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@SGD/momentum

SGD/momentumVarHandleOp*
shared_nameSGD/momentum*
_class
loc:@SGD/momentum*
	container *
shape: *
dtype0*
_output_shapes
: 
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 

SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
_class
loc:@SGD/momentum*
dtype0

 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

#SGD/decay/Initializer/initial_valueConst*
valueB
 *Н75*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 

	SGD/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name	SGD/decay*
_class
loc:@SGD/decay*
	container *
shape: 
c
*SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp	SGD/decay*
_output_shapes
: 

SGD/decay/AssignAssignVariableOp	SGD/decay#SGD/decay/Initializer/initial_value*
_class
loc:@SGD/decay*
dtype0
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 

)Adam/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R *"
_class
loc:@Adam/iterations
Ї
Adam/iterationsVarHandleOp* 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

!Adam/lr/Initializer/initial_valueConst*
valueB
 *o:*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

Adam/lrVarHandleOp*
dtype0*
_output_shapes
: *
shared_name	Adam/lr*
_class
loc:@Adam/lr*
	container *
shape: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
dtype0*
_class
loc:@Adam/lr
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1

%Adam/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *wО?*
_class
loc:@Adam/beta_2

Adam/beta_2VarHandleOp*
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 


Adam/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam/decay

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
Е
add_3_targetPlaceholder*
dtype0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*?
shape6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
R
ConstConst*
dtype0*
_output_shapes
:*
valueB*  ?

add_3_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 

totalVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 

countVarHandleOp*
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
z
total_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@total_1

total_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	total_1*
_class
loc:@total_1*
	container 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
dtype0*
_class
loc:@total_1
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_1*
dtype0*
_output_shapes
: 

count_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	count_1*
_class
loc:@count_1
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
dtype0*
_class
loc:@count_1
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
dtype0*
_output_shapes
: *
_class
loc:@count_1
p
loss/add_3_loss/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

loss/add_3_loss/ReshapeReshapeadd_3_targetloss/add_3_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
r
loss/add_3_loss/Reshape_1/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

loss/add_3_loss/Reshape_1Reshape	add_3/addloss/add_3_loss/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
|
loss/add_3_loss/mulMulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape_1*
T0*#
_output_shapes
:џџџџџџџџџ
_
loss/add_3_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/add_3_loss/SumSumloss/add_3_loss/mulloss/add_3_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
\
loss/add_3_loss/mul_1/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
k
loss/add_3_loss/mul_1Mulloss/add_3_loss/mul_1/xloss/add_3_loss/Sum*
T0*
_output_shapes
: 
Z
loss/add_3_loss/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
i
loss/add_3_loss/addAddloss/add_3_loss/mul_1loss/add_3_loss/add/y*
_output_shapes
: *
T0
|
loss/add_3_loss/mul_2Mulloss/add_3_loss/Reshapeloss/add_3_loss/Reshape*#
_output_shapes
:џџџџџџџџџ*
T0
a
loss/add_3_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/add_3_loss/Sum_1Sumloss/add_3_loss/mul_2loss/add_3_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss/add_3_loss/mul_3Mulloss/add_3_loss/Reshape_1loss/add_3_loss/Reshape_1*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/add_3_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/add_3_loss/Sum_2Sumloss/add_3_loss/mul_3loss/add_3_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
loss/add_3_loss/add_1Addloss/add_3_loss/Sum_1loss/add_3_loss/Sum_2*
T0*
_output_shapes
: 
\
loss/add_3_loss/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
m
loss/add_3_loss/add_2Addloss/add_3_loss/add_1loss/add_3_loss/add_2/y*
_output_shapes
: *
T0
o
loss/add_3_loss/truedivRealDivloss/add_3_loss/addloss/add_3_loss/add_2*
T0*
_output_shapes
: 
Z
loss/add_3_loss/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
k
loss/add_3_loss/subSubloss/add_3_loss/sub/xloss/add_3_loss/truediv*
T0*
_output_shapes
: 
y
loss/add_3_loss/SqueezeSqueezeadd_3_sample_weights*
squeeze_dims

џџџџџџџџџ*
T0*
_output_shapes
: 
k
loss/add_3_loss/Mul_4Mulloss/add_3_loss/subloss/add_3_loss/Squeeze*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_3Const*
dtype0*
_output_shapes
: *
valueB 

loss/add_3_loss/Sum_3Sumloss/add_3_loss/Mul_4loss/add_3_loss/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Z
loss/add_3_loss/Const_4Const*
valueB *
dtype0*
_output_shapes
: 

loss/add_3_loss/Sum_4Sumloss/add_3_loss/Squeezeloss/add_3_loss/Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
u
loss/add_3_loss/div_no_nanDivNoNanloss/add_3_loss/Sum_3loss/add_3_loss/Sum_4*
T0*
_output_shapes
: 
Z
loss/add_3_loss/Const_5Const*
valueB *
dtype0*
_output_shapes
: 

loss/add_3_loss/MeanMeanloss/add_3_loss/div_no_nanloss/add_3_loss/Const_5*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
R
loss/mulMul
loss/mul/xloss/add_3_loss/Mean*
T0*
_output_shapes
: 
s
metrics/psnr/subSub	add_3/addadd_3_target*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
r
metrics/psnr/SquareSquaremetrics/psnr/sub*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
k
metrics/psnr/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:

metrics/psnr/MeanMeanmetrics/psnr/Squaremetrics/psnr/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
K
metrics/psnr/LogLogmetrics/psnr/Mean*
T0*
_output_shapes
: 
Y
metrics/psnr/Const_1Const*
valueB
 *   A*
dtype0*
_output_shapes
: 
P
metrics/psnr/Log_1Logmetrics/psnr/Const_1*
T0*
_output_shapes
: 
f
metrics/psnr/truedivRealDivmetrics/psnr/Logmetrics/psnr/Log_1*
T0*
_output_shapes
: 
W
metrics/psnr/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *   С
b
metrics/psnr/mulMulmetrics/psnr/mul/xmetrics/psnr/truediv*
T0*
_output_shapes
: 
S
metrics/psnr/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
l
metrics/psnr/CastCastmetrics/psnr/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
W
metrics/psnr/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
}
metrics/psnr/SumSummetrics/psnr/mulmetrics/psnr/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
]
 metrics/psnr/AssignAddVariableOpAssignAddVariableOptotalmetrics/psnr/Sum*
dtype0
|
metrics/psnr/ReadVariableOpReadVariableOptotal!^metrics/psnr/AssignAddVariableOp*
dtype0*
_output_shapes
: 
~
"metrics/psnr/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/psnr/Cast^metrics/psnr/ReadVariableOp*
dtype0

metrics/psnr/ReadVariableOp_1ReadVariableOpcount#^metrics/psnr/AssignAddVariableOp_1^metrics/psnr/ReadVariableOp*
dtype0*
_output_shapes
: 

&metrics/psnr/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 

(metrics/psnr/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/psnr/div_no_nanDivNoNan&metrics/psnr/div_no_nan/ReadVariableOp(metrics/psnr/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
u
metrics/psnr/sub_1Sub	add_3/addadd_3_target*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
v
metrics/psnr/Square_1Squaremetrics/psnr/sub_1*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
m
metrics/psnr/Const_3Const*%
valueB"             *
dtype0*
_output_shapes
:

metrics/psnr/Mean_1Meanmetrics/psnr/Square_1metrics/psnr/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O
metrics/psnr/Log_2Logmetrics/psnr/Mean_1*
T0*
_output_shapes
: 
Y
metrics/psnr/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *   A
P
metrics/psnr/Log_3Logmetrics/psnr/Const_4*
T0*
_output_shapes
: 
j
metrics/psnr/truediv_1RealDivmetrics/psnr/Log_2metrics/psnr/Log_3*
T0*
_output_shapes
: 
Y
metrics/psnr/mul_1/xConst*
valueB
 *   С*
dtype0*
_output_shapes
: 
h
metrics/psnr/mul_1Mulmetrics/psnr/mul_1/xmetrics/psnr/truediv_1*
T0*
_output_shapes
: 
W
metrics/psnr/Const_5Const*
dtype0*
_output_shapes
: *
valueB 

metrics/psnr/Mean_2Meanmetrics/psnr/mul_1metrics/psnr/Const_5*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
z
metrics/ssim/ShapeNShapeNadd_3_target	add_3/add*
N* 
_output_shapes
::*
T0*
out_type0
S
metrics/ssim/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
]
metrics/ssim/GreaterEqual/yConst*
value	B :*
dtype0*
_output_shapes
: 
z
metrics/ssim/GreaterEqualGreaterEqualmetrics/ssim/Sizemetrics/ssim/GreaterEqual/y*
_output_shapes
: *
T0

metrics/ssim/Assert/AssertAssertmetrics/ssim/GreaterEqualmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

s
 metrics/ssim/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
l
"metrics/ssim/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
l
"metrics/ssim/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
metrics/ssim/strided_sliceStridedSlicemetrics/ssim/ShapeN metrics/ssim/strided_slice/stack"metrics/ssim/strided_slice/stack_1"metrics/ssim/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
u
"metrics/ssim/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
n
$metrics/ssim/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
metrics/ssim/strided_slice_1StridedSlicemetrics/ssim/ShapeN:1"metrics/ssim/strided_slice_1/stack$metrics/ssim/strided_slice_1/stack_1$metrics/ssim/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
z
metrics/ssim/EqualEqualmetrics/ssim/strided_slicemetrics/ssim/strided_slice_1*
T0*
_output_shapes
:
\
metrics/ssim/ConstConst*
valueB: *
dtype0*
_output_shapes
:
t
metrics/ssim/AllAllmetrics/ssim/Equalmetrics/ssim/Const*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_1/AssertAssertmetrics/ssim/Allmetrics/ssim/ShapeNmetrics/ssim/ShapeN:1*
T
2*
	summarize

Р
metrics/ssim/IdentityIdentityadd_3_target^metrics/ssim/Assert/Assert^metrics/ssim/Assert_1/Assert*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
X
metrics/ssim/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
metrics/ssim/Identity_1Identitymetrics/ssim/Cast/x*
_output_shapes
: *
T0

metrics/ssim/Identity_2Identitymetrics/ssim/Identity*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
h
metrics/ssim/Identity_3Identity	add_3/add*/
_output_shapes
:џџџџџџџџџ``*
T0
V
metrics/ssim/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
Y
metrics/ssim/Const_2Const*
valueB
 *  Р?*
dtype0*
_output_shapes
: 

metrics/ssim/ShapeN_1ShapeNmetrics/ssim/Identity_2metrics/ssim/Identity_3*
T0*
out_type0*
N* 
_output_shapes
::
u
"metrics/ssim/strided_slice_2/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
n
$metrics/ssim/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
metrics/ssim/strided_slice_2StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_2/stack$metrics/ssim/strided_slice_2/stack_1$metrics/ssim/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 

metrics/ssim/GreaterEqual_1GreaterEqualmetrics/ssim/strided_slice_2metrics/ssim/Const_1*
_output_shapes
:*
T0
^
metrics/ssim/Const_3Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_1Allmetrics/ssim/GreaterEqual_1metrics/ssim/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_2/AssertAssertmetrics/ssim/All_1metrics/ssim/ShapeN_1metrics/ssim/Const_1*
T
2*
	summarize
u
"metrics/ssim/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
w
$metrics/ssim/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
n
$metrics/ssim/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ы
metrics/ssim/strided_slice_3StridedSlicemetrics/ssim/ShapeN_1:1"metrics/ssim/strided_slice_3/stack$metrics/ssim/strided_slice_3/stack_1$metrics/ssim/strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:

metrics/ssim/GreaterEqual_2GreaterEqualmetrics/ssim/strided_slice_3metrics/ssim/Const_1*
T0*
_output_shapes
:
^
metrics/ssim/Const_4Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_2Allmetrics/ssim/GreaterEqual_2metrics/ssim/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_3/AssertAssertmetrics/ssim/All_2metrics/ssim/ShapeN_1:1metrics/ssim/Const_1*
T
2*
	summarize
Я
metrics/ssim/Identity_4Identitymetrics/ssim/Identity_2^metrics/ssim/Assert_2/Assert^metrics/ssim/Assert_3/Assert*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
Z
metrics/ssim/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Z
metrics/ssim/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

metrics/ssim/rangeRangemetrics/ssim/range/startmetrics/ssim/Const_1metrics/ssim/range/delta*

Tidx0*
_output_shapes
:
s
metrics/ssim/Cast_1Castmetrics/ssim/range*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0
T
metrics/ssim/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
b
metrics/ssim/subSubmetrics/ssim/Const_1metrics/ssim/sub/y*
T0*
_output_shapes
: 
m
metrics/ssim/Cast_2Castmetrics/ssim/sub*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
[
metrics/ssim/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
m
metrics/ssim/truedivRealDivmetrics/ssim/Cast_2metrics/ssim/truediv/y*
T0*
_output_shapes
: 
i
metrics/ssim/sub_1Submetrics/ssim/Cast_1metrics/ssim/truediv*
_output_shapes
:*
T0
V
metrics/ssim/SquareSquaremetrics/ssim/sub_1*
T0*
_output_shapes
:
V
metrics/ssim/Square_1Squaremetrics/ssim/Const_2*
T0*
_output_shapes
: 
]
metrics/ssim/truediv_1/xConst*
valueB
 *   П*
dtype0*
_output_shapes
: 
s
metrics/ssim/truediv_1RealDivmetrics/ssim/truediv_1/xmetrics/ssim/Square_1*
T0*
_output_shapes
: 
i
metrics/ssim/mulMulmetrics/ssim/Squaremetrics/ssim/truediv_1*
T0*
_output_shapes
:
k
metrics/ssim/Reshape/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/ssim/ReshapeReshapemetrics/ssim/mulmetrics/ssim/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
m
metrics/ssim/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

metrics/ssim/Reshape_1Reshapemetrics/ssim/mulmetrics/ssim/Reshape_1/shape*
_output_shapes

:*
T0*
Tshape0
n
metrics/ssim/addAddmetrics/ssim/Reshapemetrics/ssim/Reshape_1*
T0*
_output_shapes

:
m
metrics/ssim/Reshape_2/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/ssim/Reshape_2Reshapemetrics/ssim/addmetrics/ssim/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:y
`
metrics/ssim/SoftmaxSoftmaxmetrics/ssim/Reshape_2*
T0*
_output_shapes

:y
`
metrics/ssim/Reshape_3/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
`
metrics/ssim/Reshape_3/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
metrics/ssim/Reshape_3/shapePackmetrics/ssim/Const_1metrics/ssim/Const_1metrics/ssim/Reshape_3/shape/2metrics/ssim/Reshape_3/shape/3*
T0*

axis *
N*
_output_shapes
:

metrics/ssim/Reshape_3Reshapemetrics/ssim/Softmaxmetrics/ssim/Reshape_3/shape*
T0*
Tshape0*&
_output_shapes
:
u
"metrics/ssim/strided_slice_4/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
metrics/ssim/strided_slice_4StridedSlicemetrics/ssim/ShapeN_1"metrics/ssim/strided_slice_4/stack$metrics/ssim/strided_slice_4/stack_1$metrics/ssim/strided_slice_4/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
_
metrics/ssim/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/Tile/multiples/3Const*
value	B :*
dtype0*
_output_shapes
: 
и
metrics/ssim/Tile/multiplesPackmetrics/ssim/Tile/multiples/0metrics/ssim/Tile/multiples/1metrics/ssim/strided_slice_4metrics/ssim/Tile/multiples/3*
N*
_output_shapes
:*
T0*

axis 

metrics/ssim/TileTilemetrics/ssim/Reshape_3metrics/ssim/Tile/multiples*/
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
Y
metrics/ssim/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *
з#<
i
metrics/ssim/mul_1Mulmetrics/ssim/mul_1/xmetrics/ssim/Identity_1*
T0*
_output_shapes
: 
W
metrics/ssim/pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
`
metrics/ssim/powPowmetrics/ssim/mul_1metrics/ssim/pow/y*
T0*
_output_shapes
: 
Y
metrics/ssim/mul_2/xConst*
valueB
 *Тѕ<*
dtype0*
_output_shapes
: 
i
metrics/ssim/mul_2Mulmetrics/ssim/mul_2/xmetrics/ssim/Identity_1*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
d
metrics/ssim/pow_1Powmetrics/ssim/mul_2metrics/ssim/pow_1/y*
T0*
_output_shapes
: 
i
metrics/ssim/ShapeShapemetrics/ssim/Identity_4*
_output_shapes
:*
T0*
out_type0
u
"metrics/ssim/strided_slice_5/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_5/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
metrics/ssim/strided_slice_5StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_5/stack$metrics/ssim/strided_slice_5/stack_1$metrics/ssim/strided_slice_5/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
o
metrics/ssim/concat/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Z
metrics/ssim/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Џ
metrics/ssim/concatConcatV2metrics/ssim/concat/values_0metrics/ssim/strided_slice_5metrics/ssim/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
В
metrics/ssim/Reshape_4Reshapemetrics/ssim/Identity_4metrics/ssim/concat*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0*
Tshape0
m
metrics/ssim/depthwise/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
u
$metrics/ssim/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

metrics/ssim/depthwiseDepthwiseConv2dNativemetrics/ssim/Reshape_4metrics/ssim/Tile*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
l
"metrics/ssim/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_6/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
metrics/ssim/strided_slice_6StridedSlicemetrics/ssim/Shape"metrics/ssim/strided_slice_6/stack$metrics/ssim/strided_slice_6/stack_1$metrics/ssim/strided_slice_6/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
j
metrics/ssim/Shape_1Shapemetrics/ssim/depthwise*
T0*
out_type0*
_output_shapes
:
l
"metrics/ssim/strided_slice_7/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
metrics/ssim/strided_slice_7StridedSlicemetrics/ssim/Shape_1"metrics/ssim/strided_slice_7/stack$metrics/ssim/strided_slice_7/stack_1$metrics/ssim/strided_slice_7/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Г
metrics/ssim/concat_1ConcatV2metrics/ssim/strided_slice_6metrics/ssim/strided_slice_7metrics/ssim/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Г
metrics/ssim/Reshape_5Reshapemetrics/ssim/depthwisemetrics/ssim/concat_1*
T0*
Tshape0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
k
metrics/ssim/Shape_2Shapemetrics/ssim/Identity_3*
T0*
out_type0*
_output_shapes
:
u
"metrics/ssim/strided_slice_8/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
n
$metrics/ssim/strided_slice_8/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
n
$metrics/ssim/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
metrics/ssim/strided_slice_8StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_8/stack$metrics/ssim/strided_slice_8/stack_1$metrics/ssim/strided_slice_8/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
q
metrics/ssim/concat_2/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
metrics/ssim/concat_2ConcatV2metrics/ssim/concat_2/values_0metrics/ssim/strided_slice_8metrics/ssim/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0

metrics/ssim/Reshape_6Reshapemetrics/ssim/Identity_3metrics/ssim/concat_2*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ``
o
metrics/ssim/depthwise_1/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
э
metrics/ssim/depthwise_1DepthwiseConv2dNativemetrics/ssim/Reshape_6metrics/ssim/Tile*/
_output_shapes
:џџџџџџџџџVV*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
l
"metrics/ssim/strided_slice_9/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
$metrics/ssim/strided_slice_9/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
n
$metrics/ssim/strided_slice_9/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ш
metrics/ssim/strided_slice_9StridedSlicemetrics/ssim/Shape_2"metrics/ssim/strided_slice_9/stack$metrics/ssim/strided_slice_9/stack_1$metrics/ssim/strided_slice_9/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
l
metrics/ssim/Shape_3Shapemetrics/ssim/depthwise_1*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_10/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_10/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_10StridedSlicemetrics/ssim/Shape_3#metrics/ssim/strided_slice_10/stack%metrics/ssim/strided_slice_10/stack_1%metrics/ssim/strided_slice_10/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_3/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Д
metrics/ssim/concat_3ConcatV2metrics/ssim/strided_slice_9metrics/ssim/strided_slice_10metrics/ssim/concat_3/axis*
N*
_output_shapes
:*

Tidx0*
T0

metrics/ssim/Reshape_7Reshapemetrics/ssim/depthwise_1metrics/ssim/concat_3*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџVV

metrics/ssim/mul_3Mulmetrics/ssim/Reshape_5metrics/ssim/Reshape_7*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Y
metrics/ssim/mul_4/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/ssim/mul_4Mulmetrics/ssim/mul_3metrics/ssim/mul_4/y*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Square_2Squaremetrics/ssim/Reshape_5*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
q
metrics/ssim/Square_3Squaremetrics/ssim/Reshape_7*/
_output_shapes
:џџџџџџџџџVV*
T0

metrics/ssim/add_1Addmetrics/ssim/Square_2metrics/ssim/Square_3*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_2Addmetrics/ssim/mul_4metrics/ssim/pow*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/add_3Addmetrics/ssim/add_1metrics/ssim/pow*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/truediv_2RealDivmetrics/ssim/add_2metrics/ssim/add_3*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/mul_5Mulmetrics/ssim/Identity_4metrics/ssim/Identity_3*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
f
metrics/ssim/Shape_4Shapemetrics/ssim/mul_5*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_11/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_11/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_11/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ь
metrics/ssim/strided_slice_11StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_11/stack%metrics/ssim/strided_slice_11/stack_1%metrics/ssim/strided_slice_11/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
q
metrics/ssim/concat_4/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
metrics/ssim/concat_4ConcatV2metrics/ssim/concat_4/values_0metrics/ssim/strided_slice_11metrics/ssim/concat_4/axis*
T0*
N*
_output_shapes
:*

Tidx0

metrics/ssim/Reshape_8Reshapemetrics/ssim/mul_5metrics/ssim/concat_4*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
o
metrics/ssim/depthwise_2/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
і
metrics/ssim/depthwise_2DepthwiseConv2dNativemetrics/ssim/Reshape_8metrics/ssim/Tile*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
m
#metrics/ssim/strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_12/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_12StridedSlicemetrics/ssim/Shape_4#metrics/ssim/strided_slice_12/stack%metrics/ssim/strided_slice_12/stack_1%metrics/ssim/strided_slice_12/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
l
metrics/ssim/Shape_5Shapemetrics/ssim/depthwise_2*
_output_shapes
:*
T0*
out_type0
m
#metrics/ssim/strided_slice_13/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_13/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ь
metrics/ssim/strided_slice_13StridedSlicemetrics/ssim/Shape_5#metrics/ssim/strided_slice_13/stack%metrics/ssim/strided_slice_13/stack_1%metrics/ssim/strided_slice_13/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
\
metrics/ssim/concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
metrics/ssim/concat_5ConcatV2metrics/ssim/strided_slice_12metrics/ssim/strided_slice_13metrics/ssim/concat_5/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ѓ
metrics/ssim/Reshape_9Reshapemetrics/ssim/depthwise_2metrics/ssim/concat_5*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Y
metrics/ssim/mul_6/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/ssim/mul_6Mulmetrics/ssim/Reshape_9metrics/ssim/mul_6/y*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Square_4Squaremetrics/ssim/Identity_4*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
r
metrics/ssim/Square_5Squaremetrics/ssim/Identity_3*
T0*/
_output_shapes
:џџџџџџџџџ``

metrics/ssim/add_4Addmetrics/ssim/Square_4metrics/ssim/Square_5*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
f
metrics/ssim/Shape_6Shapemetrics/ssim/add_4*
_output_shapes
:*
T0*
out_type0
v
#metrics/ssim/strided_slice_14/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_14/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_14StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_14/stack%metrics/ssim/strided_slice_14/stack_1%metrics/ssim/strided_slice_14/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0
q
metrics/ssim/concat_6/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_6/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
metrics/ssim/concat_6ConcatV2metrics/ssim/concat_6/values_0metrics/ssim/strided_slice_14metrics/ssim/concat_6/axis*

Tidx0*
T0*
N*
_output_shapes
:

metrics/ssim/Reshape_10Reshapemetrics/ssim/add_4metrics/ssim/concat_6*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ*
T0*
Tshape0
o
metrics/ssim/depthwise_3/ShapeShapemetrics/ssim/Tile*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ї
metrics/ssim/depthwise_3DepthwiseConv2dNativemetrics/ssim/Reshape_10metrics/ssim/Tile*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
	dilations
*
T0
m
#metrics/ssim/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_15/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_15/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ь
metrics/ssim/strided_slice_15StridedSlicemetrics/ssim/Shape_6#metrics/ssim/strided_slice_15/stack%metrics/ssim/strided_slice_15/stack_1%metrics/ssim/strided_slice_15/stack_2*
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
l
metrics/ssim/Shape_7Shapemetrics/ssim/depthwise_3*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_16/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_16/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_16/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ь
metrics/ssim/strided_slice_16StridedSlicemetrics/ssim/Shape_7#metrics/ssim/strided_slice_16/stack%metrics/ssim/strided_slice_16/stack_1%metrics/ssim/strided_slice_16/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
\
metrics/ssim/concat_7/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
metrics/ssim/concat_7ConcatV2metrics/ssim/strided_slice_15metrics/ssim/strided_slice_16metrics/ssim/concat_7/axis*
N*
_output_shapes
:*

Tidx0*
T0
Є
metrics/ssim/Reshape_11Reshapemetrics/ssim/depthwise_3metrics/ssim/concat_7*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Y
metrics/ssim/mul_7/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
metrics/ssim/mul_7Mulmetrics/ssim/pow_1metrics/ssim/mul_7/y*
T0*
_output_shapes
: 

metrics/ssim/sub_2Submetrics/ssim/mul_6metrics/ssim/mul_4*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/add_5Addmetrics/ssim/sub_2metrics/ssim/mul_7*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/sub_3Submetrics/ssim/Reshape_11metrics/ssim/add_1*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/add_6Addmetrics/ssim/sub_3metrics/ssim/mul_7*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/truediv_3RealDivmetrics/ssim/add_5metrics/ssim/add_6*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0
e
metrics/ssim/Const_5Const*
valueB"§џџџўџџџ*
dtype0*
_output_shapes
:

metrics/ssim/mul_8Mulmetrics/ssim/truediv_2metrics/ssim/truediv_3*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/MeanMeanmetrics/ssim/mul_8metrics/ssim/Const_5*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
Ё
metrics/ssim/Mean_1Meanmetrics/ssim/truediv_3metrics/ssim/Const_5*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
x
%metrics/ssim/Mean_2/reduction_indicesConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
metrics/ssim/Mean_2Meanmetrics/ssim/Mean%metrics/ssim/Mean_2/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
^
metrics/ssim/Const_6Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/Mean_3Meanmetrics/ssim/Mean_2metrics/ssim/Const_6*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
U
metrics/ssim/Size_1Const*
dtype0*
_output_shapes
: *
value	B :
p
metrics/ssim/Cast_3Castmetrics/ssim/Size_1*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
W
metrics/ssim/Const_7Const*
dtype0*
_output_shapes
: *
valueB 

metrics/ssim/SumSummetrics/ssim/Mean_3metrics/ssim/Const_7*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
 metrics/ssim/AssignAddVariableOpAssignAddVariableOptotal_1metrics/ssim/Sum*
dtype0
~
metrics/ssim/ReadVariableOpReadVariableOptotal_1!^metrics/ssim/AssignAddVariableOp*
dtype0*
_output_shapes
: 

"metrics/ssim/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics/ssim/Cast_3^metrics/ssim/ReadVariableOp*
dtype0
 
metrics/ssim/ReadVariableOp_1ReadVariableOpcount_1#^metrics/ssim/AssignAddVariableOp_1^metrics/ssim/ReadVariableOp*
dtype0*
_output_shapes
: 

&metrics/ssim/div_no_nan/ReadVariableOpReadVariableOptotal_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 

(metrics/ssim/div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^metrics/ssim/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/ssim/div_no_nanDivNoNan&metrics/ssim/div_no_nan/ReadVariableOp(metrics/ssim/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
|
metrics/ssim/ShapeN_2ShapeNadd_3_target	add_3/add*
N* 
_output_shapes
::*
T0*
out_type0
U
metrics/ssim/Size_2Const*
value	B :*
dtype0*
_output_shapes
: 
_
metrics/ssim/GreaterEqual_3/yConst*
dtype0*
_output_shapes
: *
value	B :

metrics/ssim/GreaterEqual_3GreaterEqualmetrics/ssim/Size_2metrics/ssim/GreaterEqual_3/y*
T0*
_output_shapes
: 

metrics/ssim/Assert_4/AssertAssertmetrics/ssim/GreaterEqual_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

v
#metrics/ssim/strided_slice_17/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_17/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_17/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
metrics/ssim/strided_slice_17StridedSlicemetrics/ssim/ShapeN_2#metrics/ssim/strided_slice_17/stack%metrics/ssim/strided_slice_17/stack_1%metrics/ssim/strided_slice_17/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
v
#metrics/ssim/strided_slice_18/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_18/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_18/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Я
metrics/ssim/strided_slice_18StridedSlicemetrics/ssim/ShapeN_2:1#metrics/ssim/strided_slice_18/stack%metrics/ssim/strided_slice_18/stack_1%metrics/ssim/strided_slice_18/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0

metrics/ssim/Equal_1Equalmetrics/ssim/strided_slice_17metrics/ssim/strided_slice_18*
T0*
_output_shapes
:
^
metrics/ssim/Const_8Const*
dtype0*
_output_shapes
:*
valueB: 
z
metrics/ssim/All_3Allmetrics/ssim/Equal_1metrics/ssim/Const_8*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_5/AssertAssertmetrics/ssim/All_3metrics/ssim/ShapeN_2metrics/ssim/ShapeN_2:1*
T
2*
	summarize

Ф
metrics/ssim/Identity_5Identityadd_3_target^metrics/ssim/Assert_4/Assert^metrics/ssim/Assert_5/Assert*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Z
metrics/ssim/Cast_4/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
metrics/ssim/Identity_6Identitymetrics/ssim/Cast_4/x*
_output_shapes
: *
T0

metrics/ssim/Identity_7Identitymetrics/ssim/Identity_5*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
h
metrics/ssim/Identity_8Identity	add_3/add*
T0*/
_output_shapes
:џџџџџџџџџ``
V
metrics/ssim/Const_9Const*
value	B :*
dtype0*
_output_shapes
: 
Z
metrics/ssim/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *  Р?

metrics/ssim/ShapeN_3ShapeNmetrics/ssim/Identity_7metrics/ssim/Identity_8*
T0*
out_type0*
N* 
_output_shapes
::
v
#metrics/ssim/strided_slice_19/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
x
%metrics/ssim/strided_slice_19/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
o
%metrics/ssim/strided_slice_19/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
metrics/ssim/strided_slice_19StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_19/stack%metrics/ssim/strided_slice_19/stack_1%metrics/ssim/strided_slice_19/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:

metrics/ssim/GreaterEqual_4GreaterEqualmetrics/ssim/strided_slice_19metrics/ssim/Const_9*
_output_shapes
:*
T0
_
metrics/ssim/Const_11Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_4Allmetrics/ssim/GreaterEqual_4metrics/ssim/Const_11*
	keep_dims( *

Tidx0*
_output_shapes
: 

metrics/ssim/Assert_6/AssertAssertmetrics/ssim/All_4metrics/ssim/ShapeN_3metrics/ssim/Const_9*
T
2*
	summarize
v
#metrics/ssim/strided_slice_20/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_20/stack_1Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_20/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Я
metrics/ssim/strided_slice_20StridedSlicemetrics/ssim/ShapeN_3:1#metrics/ssim/strided_slice_20/stack%metrics/ssim/strided_slice_20/stack_1%metrics/ssim/strided_slice_20/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0

metrics/ssim/GreaterEqual_5GreaterEqualmetrics/ssim/strided_slice_20metrics/ssim/Const_9*
T0*
_output_shapes
:
_
metrics/ssim/Const_12Const*
valueB: *
dtype0*
_output_shapes
:

metrics/ssim/All_5Allmetrics/ssim/GreaterEqual_5metrics/ssim/Const_12*
_output_shapes
: *
	keep_dims( *

Tidx0

metrics/ssim/Assert_7/AssertAssertmetrics/ssim/All_5metrics/ssim/ShapeN_3:1metrics/ssim/Const_9*
T
2*
	summarize
Я
metrics/ssim/Identity_9Identitymetrics/ssim/Identity_7^metrics/ssim/Assert_6/Assert^metrics/ssim/Assert_7/Assert*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
\
metrics/ssim/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
\
metrics/ssim/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

metrics/ssim/range_1Rangemetrics/ssim/range_1/startmetrics/ssim/Const_9metrics/ssim/range_1/delta*
_output_shapes
:*

Tidx0
u
metrics/ssim/Cast_5Castmetrics/ssim/range_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0
V
metrics/ssim/sub_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
f
metrics/ssim/sub_4Submetrics/ssim/Const_9metrics/ssim/sub_4/y*
T0*
_output_shapes
: 
o
metrics/ssim/Cast_6Castmetrics/ssim/sub_4*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
]
metrics/ssim/truediv_4/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
q
metrics/ssim/truediv_4RealDivmetrics/ssim/Cast_6metrics/ssim/truediv_4/y*
T0*
_output_shapes
: 
k
metrics/ssim/sub_5Submetrics/ssim/Cast_5metrics/ssim/truediv_4*
T0*
_output_shapes
:
X
metrics/ssim/Square_6Squaremetrics/ssim/sub_5*
T0*
_output_shapes
:
W
metrics/ssim/Square_7Squaremetrics/ssim/Const_10*
_output_shapes
: *
T0
]
metrics/ssim/truediv_5/xConst*
valueB
 *   П*
dtype0*
_output_shapes
: 
s
metrics/ssim/truediv_5RealDivmetrics/ssim/truediv_5/xmetrics/ssim/Square_7*
T0*
_output_shapes
: 
m
metrics/ssim/mul_9Mulmetrics/ssim/Square_6metrics/ssim/truediv_5*
T0*
_output_shapes
:
n
metrics/ssim/Reshape_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"   џџџџ

metrics/ssim/Reshape_12Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_12/shape*
T0*
Tshape0*
_output_shapes

:
n
metrics/ssim/Reshape_13/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

metrics/ssim/Reshape_13Reshapemetrics/ssim/mul_9metrics/ssim/Reshape_13/shape*
T0*
Tshape0*
_output_shapes

:
t
metrics/ssim/add_7Addmetrics/ssim/Reshape_12metrics/ssim/Reshape_13*
_output_shapes

:*
T0
n
metrics/ssim/Reshape_14/shapeConst*
valueB"   џџџџ*
dtype0*
_output_shapes
:

metrics/ssim/Reshape_14Reshapemetrics/ssim/add_7metrics/ssim/Reshape_14/shape*
T0*
Tshape0*
_output_shapes

:y
c
metrics/ssim/Softmax_1Softmaxmetrics/ssim/Reshape_14*
T0*
_output_shapes

:y
a
metrics/ssim/Reshape_15/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Reshape_15/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
Э
metrics/ssim/Reshape_15/shapePackmetrics/ssim/Const_9metrics/ssim/Const_9metrics/ssim/Reshape_15/shape/2metrics/ssim/Reshape_15/shape/3*
T0*

axis *
N*
_output_shapes
:

metrics/ssim/Reshape_15Reshapemetrics/ssim/Softmax_1metrics/ssim/Reshape_15/shape*&
_output_shapes
:*
T0*
Tshape0
v
#metrics/ssim/strided_slice_21/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_21/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
o
%metrics/ssim/strided_slice_21/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
metrics/ssim/strided_slice_21StridedSlicemetrics/ssim/ShapeN_3#metrics/ssim/strided_slice_21/stack%metrics/ssim/strided_slice_21/stack_1%metrics/ssim/strided_slice_21/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
a
metrics/ssim/Tile_1/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
a
metrics/ssim/Tile_1/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :
a
metrics/ssim/Tile_1/multiples/3Const*
dtype0*
_output_shapes
: *
value	B :
с
metrics/ssim/Tile_1/multiplesPackmetrics/ssim/Tile_1/multiples/0metrics/ssim/Tile_1/multiples/1metrics/ssim/strided_slice_21metrics/ssim/Tile_1/multiples/3*
T0*

axis *
N*
_output_shapes
:

metrics/ssim/Tile_1Tilemetrics/ssim/Reshape_15metrics/ssim/Tile_1/multiples*

Tmultiples0*
T0*/
_output_shapes
:џџџџџџџџџ
Z
metrics/ssim/mul_10/xConst*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_10Mulmetrics/ssim/mul_10/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
e
metrics/ssim/pow_2Powmetrics/ssim/mul_10metrics/ssim/pow_2/y*
_output_shapes
: *
T0
Z
metrics/ssim/mul_11/xConst*
valueB
 *Тѕ<*
dtype0*
_output_shapes
: 
k
metrics/ssim/mul_11Mulmetrics/ssim/mul_11/xmetrics/ssim/Identity_6*
T0*
_output_shapes
: 
Y
metrics/ssim/pow_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
e
metrics/ssim/pow_3Powmetrics/ssim/mul_11metrics/ssim/pow_3/y*
T0*
_output_shapes
: 
k
metrics/ssim/Shape_8Shapemetrics/ssim/Identity_9*
_output_shapes
:*
T0*
out_type0
v
#metrics/ssim/strided_slice_22/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_22/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_22/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_22StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_22/stack%metrics/ssim/strided_slice_22/stack_1%metrics/ssim/strided_slice_22/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
q
metrics/ssim/concat_8/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
\
metrics/ssim/concat_8/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
metrics/ssim/concat_8ConcatV2metrics/ssim/concat_8/values_0metrics/ssim/strided_slice_22metrics/ssim/concat_8/axis*

Tidx0*
T0*
N*
_output_shapes
:
Е
metrics/ssim/Reshape_16Reshapemetrics/ssim/Identity_9metrics/ssim/concat_8*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0*
Tshape0
q
metrics/ssim/depthwise_4/ShapeShapemetrics/ssim/Tile_1*
_output_shapes
:*
T0*
out_type0
w
&metrics/ssim/depthwise_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

metrics/ssim/depthwise_4DepthwiseConv2dNativemetrics/ssim/Reshape_16metrics/ssim/Tile_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
m
#metrics/ssim/strided_slice_23/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_23/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_23/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_23StridedSlicemetrics/ssim/Shape_8#metrics/ssim/strided_slice_23/stack%metrics/ssim/strided_slice_23/stack_1%metrics/ssim/strided_slice_23/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
l
metrics/ssim/Shape_9Shapemetrics/ssim/depthwise_4*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_24/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_24/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_24/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ь
metrics/ssim/strided_slice_24StridedSlicemetrics/ssim/Shape_9#metrics/ssim/strided_slice_24/stack%metrics/ssim/strided_slice_24/stack_1%metrics/ssim/strided_slice_24/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
\
metrics/ssim/concat_9/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
metrics/ssim/concat_9ConcatV2metrics/ssim/strided_slice_23metrics/ssim/strided_slice_24metrics/ssim/concat_9/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ж
metrics/ssim/Reshape_17Reshapemetrics/ssim/depthwise_4metrics/ssim/concat_9*
T0*
Tshape0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
l
metrics/ssim/Shape_10Shapemetrics/ssim/Identity_8*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_25/stackConst*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_25/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_25/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
metrics/ssim/strided_slice_25StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_25/stack%metrics/ssim/strided_slice_25/stack_1%metrics/ssim/strided_slice_25/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
r
metrics/ssim/concat_10/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
]
metrics/ssim/concat_10/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Й
metrics/ssim/concat_10ConcatV2metrics/ssim/concat_10/values_0metrics/ssim/strided_slice_25metrics/ssim/concat_10/axis*

Tidx0*
T0*
N*
_output_shapes
:

metrics/ssim/Reshape_18Reshapemetrics/ssim/Identity_8metrics/ssim/concat_10*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ``
q
metrics/ssim/depthwise_5/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
№
metrics/ssim/depthwise_5DepthwiseConv2dNativemetrics/ssim/Reshape_18metrics/ssim/Tile_1*/
_output_shapes
:џџџџџџџџџVV*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
m
#metrics/ssim/strided_slice_26/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_26/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_26/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Э
metrics/ssim/strided_slice_26StridedSlicemetrics/ssim/Shape_10#metrics/ssim/strided_slice_26/stack%metrics/ssim/strided_slice_26/stack_1%metrics/ssim/strided_slice_26/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
m
metrics/ssim/Shape_11Shapemetrics/ssim/depthwise_5*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_27/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_27/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_27/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_27StridedSlicemetrics/ssim/Shape_11#metrics/ssim/strided_slice_27/stack%metrics/ssim/strided_slice_27/stack_1%metrics/ssim/strided_slice_27/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
]
metrics/ssim/concat_11/axisConst*
value	B : *
dtype0*
_output_shapes
: 
З
metrics/ssim/concat_11ConcatV2metrics/ssim/strided_slice_26metrics/ssim/strided_slice_27metrics/ssim/concat_11/axis*
T0*
N*
_output_shapes
:*

Tidx0

metrics/ssim/Reshape_19Reshapemetrics/ssim/depthwise_5metrics/ssim/concat_11*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџVV

metrics/ssim/mul_12Mulmetrics/ssim/Reshape_17metrics/ssim/Reshape_19*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Z
metrics/ssim/mul_13/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/ssim/mul_13Mulmetrics/ssim/mul_12metrics/ssim/mul_13/y*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Square_8Squaremetrics/ssim/Reshape_17*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
r
metrics/ssim/Square_9Squaremetrics/ssim/Reshape_19*/
_output_shapes
:џџџџџџџџџVV*
T0

metrics/ssim/add_8Addmetrics/ssim/Square_8metrics/ssim/Square_9*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_9Addmetrics/ssim/mul_13metrics/ssim/pow_2*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_10Addmetrics/ssim/add_8metrics/ssim/pow_2*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/truediv_6RealDivmetrics/ssim/add_9metrics/ssim/add_10*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/mul_14Mulmetrics/ssim/Identity_9metrics/ssim/Identity_8*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ*
T0
h
metrics/ssim/Shape_12Shapemetrics/ssim/mul_14*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_28/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_28/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_28/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_28StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_28/stack%metrics/ssim/strided_slice_28/stack_1%metrics/ssim/strided_slice_28/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 
r
metrics/ssim/concat_12/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
]
metrics/ssim/concat_12/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
metrics/ssim/concat_12ConcatV2metrics/ssim/concat_12/values_0metrics/ssim/strided_slice_28metrics/ssim/concat_12/axis*

Tidx0*
T0*
N*
_output_shapes
:
 
metrics/ssim/Reshape_20Reshapemetrics/ssim/mul_14metrics/ssim/concat_12*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ*
T0*
Tshape0
q
metrics/ssim/depthwise_6/ShapeShapemetrics/ssim/Tile_1*
_output_shapes
:*
T0*
out_type0
w
&metrics/ssim/depthwise_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
љ
metrics/ssim/depthwise_6DepthwiseConv2dNativemetrics/ssim/Reshape_20metrics/ssim/Tile_1*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID
m
#metrics/ssim/strided_slice_29/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_29/stack_1Const*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_29/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_29StridedSlicemetrics/ssim/Shape_12#metrics/ssim/strided_slice_29/stack%metrics/ssim/strided_slice_29/stack_1%metrics/ssim/strided_slice_29/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
m
metrics/ssim/Shape_13Shapemetrics/ssim/depthwise_6*
T0*
out_type0*
_output_shapes
:
m
#metrics/ssim/strided_slice_30/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_30/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_30/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_30StridedSlicemetrics/ssim/Shape_13#metrics/ssim/strided_slice_30/stack%metrics/ssim/strided_slice_30/stack_1%metrics/ssim/strided_slice_30/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
]
metrics/ssim/concat_13/axisConst*
value	B : *
dtype0*
_output_shapes
: 
З
metrics/ssim/concat_13ConcatV2metrics/ssim/strided_slice_29metrics/ssim/strided_slice_30metrics/ssim/concat_13/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ѕ
metrics/ssim/Reshape_21Reshapemetrics/ssim/depthwise_6metrics/ssim/concat_13*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
Z
metrics/ssim/mul_15/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 

metrics/ssim/mul_15Mulmetrics/ssim/Reshape_21metrics/ssim/mul_15/y*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/Square_10Squaremetrics/ssim/Identity_9*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
s
metrics/ssim/Square_11Squaremetrics/ssim/Identity_8*
T0*/
_output_shapes
:џџџџџџџџџ``

metrics/ssim/add_11Addmetrics/ssim/Square_10metrics/ssim/Square_11*
T0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
h
metrics/ssim/Shape_14Shapemetrics/ssim/add_11*
T0*
out_type0*
_output_shapes
:
v
#metrics/ssim/strided_slice_31/stackConst*
valueB:
§џџџџџџџџ*
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_31/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_31/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_31StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_31/stack%metrics/ssim/strided_slice_31/stack_1%metrics/ssim/strided_slice_31/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
r
metrics/ssim/concat_14/values_0Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
]
metrics/ssim/concat_14/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Й
metrics/ssim/concat_14ConcatV2metrics/ssim/concat_14/values_0metrics/ssim/strided_slice_31metrics/ssim/concat_14/axis*

Tidx0*
T0*
N*
_output_shapes
:
 
metrics/ssim/Reshape_22Reshapemetrics/ssim/add_11metrics/ssim/concat_14*
T0*
Tshape0*8
_output_shapes&
$:"џџџџџџџџџ``џџџџџџџџџ
q
metrics/ssim/depthwise_7/ShapeShapemetrics/ssim/Tile_1*
T0*
out_type0*
_output_shapes
:
w
&metrics/ssim/depthwise_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
љ
metrics/ssim/depthwise_7DepthwiseConv2dNativemetrics/ssim/Reshape_22metrics/ssim/Tile_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ
m
#metrics/ssim/strided_slice_32/stackConst*
valueB: *
dtype0*
_output_shapes
:
x
%metrics/ssim/strided_slice_32/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
§џџџџџџџџ
o
%metrics/ssim/strided_slice_32/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_32StridedSlicemetrics/ssim/Shape_14#metrics/ssim/strided_slice_32/stack%metrics/ssim/strided_slice_32/stack_1%metrics/ssim/strided_slice_32/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
m
metrics/ssim/Shape_15Shapemetrics/ssim/depthwise_7*
_output_shapes
:*
T0*
out_type0
m
#metrics/ssim/strided_slice_33/stackConst*
dtype0*
_output_shapes
:*
valueB:
o
%metrics/ssim/strided_slice_33/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
o
%metrics/ssim/strided_slice_33/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
metrics/ssim/strided_slice_33StridedSlicemetrics/ssim/Shape_15#metrics/ssim/strided_slice_33/stack%metrics/ssim/strided_slice_33/stack_1%metrics/ssim/strided_slice_33/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
]
metrics/ssim/concat_15/axisConst*
value	B : *
dtype0*
_output_shapes
: 
З
metrics/ssim/concat_15ConcatV2metrics/ssim/strided_slice_32metrics/ssim/strided_slice_33metrics/ssim/concat_15/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ѕ
metrics/ssim/Reshape_23Reshapemetrics/ssim/depthwise_7metrics/ssim/concat_15*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0*
Tshape0
Z
metrics/ssim/mul_16/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
metrics/ssim/mul_16Mulmetrics/ssim/pow_3metrics/ssim/mul_16/y*
T0*
_output_shapes
: 

metrics/ssim/sub_6Submetrics/ssim/mul_15metrics/ssim/mul_13*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/add_12Addmetrics/ssim/sub_6metrics/ssim/mul_16*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/sub_7Submetrics/ssim/Reshape_23metrics/ssim/add_8*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/add_13Addmetrics/ssim/sub_7metrics/ssim/mul_16*
T0*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ

metrics/ssim/truediv_7RealDivmetrics/ssim/add_12metrics/ssim/add_13*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0
f
metrics/ssim/Const_13Const*
valueB"§џџџўџџџ*
dtype0*
_output_shapes
:

metrics/ssim/mul_17Mulmetrics/ssim/truediv_6metrics/ssim/truediv_7*8
_output_shapes&
$:"џџџџџџџџџVVџџџџџџџџџ*
T0

metrics/ssim/Mean_4Meanmetrics/ssim/mul_17metrics/ssim/Const_13*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
	keep_dims( *

Tidx0
Ђ
metrics/ssim/Mean_5Meanmetrics/ssim/truediv_7metrics/ssim/Const_13*
	keep_dims( *

Tidx0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
x
%metrics/ssim/Mean_6/reduction_indicesConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ђ
metrics/ssim/Mean_6Meanmetrics/ssim/Mean_4%metrics/ssim/Mean_6/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
_
metrics/ssim/Const_14Const*
dtype0*
_output_shapes
:*
valueB: 

metrics/ssim/Mean_7Meanmetrics/ssim/Mean_6metrics/ssim/Const_14*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
metrics/ssim/Const_15Const*
dtype0*
_output_shapes
: *
valueB 

metrics/ssim/Mean_8Meanmetrics/ssim/Mean_7metrics/ssim/Const_15*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
\
keras_learning_phase/inputConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@loss/mul
Ж
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
Ђ
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/add_3_loss/Mean*
_output_shapes
: *
T0*
_class
loc:@loss/mul

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
Ћ
?training/Adam/gradients/loss/add_3_loss/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@loss/add_3_loss/Mean

9training/Adam/gradients/loss/add_3_loss/Mean_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1?training/Adam/gradients/loss/add_3_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: 
Ѓ
7training/Adam/gradients/loss/add_3_loss/Mean_grad/ConstConst*
valueB *'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 

6training/Adam/gradients/loss/add_3_loss/Mean_grad/TileTile9training/Adam/gradients/loss/add_3_loss/Mean_grad/Reshape7training/Adam/gradients/loss/add_3_loss/Mean_grad/Const*

Tmultiples0*
T0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: 
Ї
9training/Adam/gradients/loss/add_3_loss/Mean_grad/Const_1Const*
valueB
 *  ?*'
_class
loc:@loss/add_3_loss/Mean*
dtype0*
_output_shapes
: 

9training/Adam/gradients/loss/add_3_loss/Mean_grad/truedivRealDiv6training/Adam/gradients/loss/add_3_loss/Mean_grad/Tile9training/Adam/gradients/loss/add_3_loss/Mean_grad/Const_1*
T0*'
_class
loc:@loss/add_3_loss/Mean*
_output_shapes
: 
Џ
=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/ShapeConst*
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan*
dtype0*
_output_shapes
: 
Б
?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1Const*
valueB *-
_class#
!loc:@loss/add_3_loss/div_no_nan*
dtype0*
_output_shapes
: 
в
Mtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
№
Btraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanDivNoNan9training/Adam/gradients/loss/add_3_loss/Mean_grad/truedivloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Т
;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/SumSumBtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nanMtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Є
?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/ReshapeReshape;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Sum=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Љ
;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/NegNegloss/add_3_loss/Sum_3*
_output_shapes
: *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan
є
Dtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1DivNoNan;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Negloss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
§
Dtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2DivNoNanDtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_1loss/add_3_loss/Sum_4*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 

;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/mulMul9training/Adam/gradients/loss/add_3_loss/Mean_grad/truedivDtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/div_no_nan_2*
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
П
=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1Sum;training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/mulOtraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
Њ
Atraining/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Reshape_1Reshape=training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Sum_1?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@loss/add_3_loss/div_no_nan*
_output_shapes
: 
­
@training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shapeConst*
valueB *(
_class
loc:@loss/add_3_loss/Sum_3*
dtype0*
_output_shapes
: 
Ё
:training/Adam/gradients/loss/add_3_loss/Sum_3_grad/ReshapeReshape?training/Adam/gradients/loss/add_3_loss/div_no_nan_grad/Reshape@training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Reshape/shape*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_3*
_output_shapes
: 
Ѕ
8training/Adam/gradients/loss/add_3_loss/Sum_3_grad/ConstConst*
valueB *(
_class
loc:@loss/add_3_loss/Sum_3*
dtype0*
_output_shapes
: 

7training/Adam/gradients/loss/add_3_loss/Sum_3_grad/TileTile:training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Reshape8training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*(
_class
loc:@loss/add_3_loss/Sum_3
к
6training/Adam/gradients/loss/add_3_loss/Mul_4_grad/MulMul7training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/Squeeze*
T0*(
_class
loc:@loss/add_3_loss/Mul_4*
_output_shapes
: 
и
8training/Adam/gradients/loss/add_3_loss/Mul_4_grad/Mul_1Mul7training/Adam/gradients/loss/add_3_loss/Sum_3_grad/Tileloss/add_3_loss/sub*
T0*(
_class
loc:@loss/add_3_loss/Mul_4*
_output_shapes
: 
М
4training/Adam/gradients/loss/add_3_loss/sub_grad/NegNeg6training/Adam/gradients/loss/add_3_loss/Mul_4_grad/Mul*
_output_shapes
: *
T0*&
_class
loc:@loss/add_3_loss/sub
Љ
:training/Adam/gradients/loss/add_3_loss/truediv_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB **
_class 
loc:@loss/add_3_loss/truediv
Ћ
<training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape_1Const*
valueB **
_class 
loc:@loss/add_3_loss/truediv*
dtype0*
_output_shapes
: 
Ц
Jtraining/Adam/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape<training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape_1*
T0**
_class 
loc:@loss/add_3_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
с
<training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDivRealDiv4training/Adam/gradients/loss/add_3_loss/sub_grad/Negloss/add_3_loss/add_2*
_output_shapes
: *
T0**
_class 
loc:@loss/add_3_loss/truediv
Г
8training/Adam/gradients/loss/add_3_loss/truediv_grad/SumSum<training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDivJtraining/Adam/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 

<training/Adam/gradients/loss/add_3_loss/truediv_grad/ReshapeReshape8training/Adam/gradients/loss/add_3_loss/truediv_grad/Sum:training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
Ё
8training/Adam/gradients/loss/add_3_loss/truediv_grad/NegNegloss/add_3_loss/add*
_output_shapes
: *
T0**
_class 
loc:@loss/add_3_loss/truediv
ч
>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_1RealDiv8training/Adam/gradients/loss/add_3_loss/truediv_grad/Negloss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
э
>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_2RealDiv>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_1loss/add_3_loss/add_2*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 

8training/Adam/gradients/loss/add_3_loss/truediv_grad/mulMul4training/Adam/gradients/loss/add_3_loss/sub_grad/Neg>training/Adam/gradients/loss/add_3_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0**
_class 
loc:@loss/add_3_loss/truediv
Г
:training/Adam/gradients/loss/add_3_loss/truediv_grad/Sum_1Sum8training/Adam/gradients/loss/add_3_loss/truediv_grad/mulLtraining/Adam/gradients/loss/add_3_loss/truediv_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 

>training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshape_1Reshape:training/Adam/gradients/loss/add_3_loss/truediv_grad/Sum_1<training/Adam/gradients/loss/add_3_loss/truediv_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/add_3_loss/truediv*
_output_shapes
: 
л
6training/Adam/gradients/loss/add_3_loss/mul_1_grad/MulMul<training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/Sum*
_output_shapes
: *
T0*(
_class
loc:@loss/add_3_loss/mul_1
с
8training/Adam/gradients/loss/add_3_loss/mul_1_grad/Mul_1Mul<training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshapeloss/add_3_loss/mul_1/x*
T0*(
_class
loc:@loss/add_3_loss/mul_1*
_output_shapes
: 
А
>training/Adam/gradients/loss/add_3_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*&
_class
loc:@loss/add_3_loss/Sum

8training/Adam/gradients/loss/add_3_loss/Sum_grad/ReshapeReshape8training/Adam/gradients/loss/add_3_loss/mul_1_grad/Mul_1>training/Adam/gradients/loss/add_3_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/Sum*
_output_shapes
:
Б
6training/Adam/gradients/loss/add_3_loss/Sum_grad/ShapeShapeloss/add_3_loss/mul*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/Sum

5training/Adam/gradients/loss/add_3_loss/Sum_grad/TileTile8training/Adam/gradients/loss/add_3_loss/Sum_grad/Reshape6training/Adam/gradients/loss/add_3_loss/Sum_grad/Shape*

Tmultiples0*
T0*&
_class
loc:@loss/add_3_loss/Sum*#
_output_shapes
:џџџџџџџџџ
Д
@training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shapeConst*
valueB:*(
_class
loc:@loss/add_3_loss/Sum_2*
dtype0*
_output_shapes
:
Є
:training/Adam/gradients/loss/add_3_loss/Sum_2_grad/ReshapeReshape>training/Adam/gradients/loss/add_3_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/Sum_2
З
8training/Adam/gradients/loss/add_3_loss/Sum_2_grad/ShapeShapeloss/add_3_loss/mul_3*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/Sum_2*
_output_shapes
:

7training/Adam/gradients/loss/add_3_loss/Sum_2_grad/TileTile:training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Reshape8training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Shape*

Tmultiples0*
T0*(
_class
loc:@loss/add_3_loss/Sum_2*#
_output_shapes
:џџџџџџџџџ
Е
6training/Adam/gradients/loss/add_3_loss/mul_grad/ShapeShapeloss/add_3_loss/Reshape*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:
Й
8training/Adam/gradients/loss/add_3_loss/mul_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
T0*
out_type0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:
Ж
Ftraining/Adam/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6training/Adam/gradients/loss/add_3_loss/mul_grad/Shape8training/Adam/gradients/loss/add_3_loss/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*&
_class
loc:@loss/add_3_loss/mul
у
4training/Adam/gradients/loss/add_3_loss/mul_grad/MulMul5training/Adam/gradients/loss/add_3_loss/Sum_grad/Tileloss/add_3_loss/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0*&
_class
loc:@loss/add_3_loss/mul
Ё
4training/Adam/gradients/loss/add_3_loss/mul_grad/SumSum4training/Adam/gradients/loss/add_3_loss/mul_grad/MulFtraining/Adam/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs*
T0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 

8training/Adam/gradients/loss/add_3_loss/mul_grad/ReshapeReshape4training/Adam/gradients/loss/add_3_loss/mul_grad/Sum6training/Adam/gradients/loss/add_3_loss/mul_grad/Shape*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:џџџџџџџџџ
у
6training/Adam/gradients/loss/add_3_loss/mul_grad/Mul_1Mulloss/add_3_loss/Reshape5training/Adam/gradients/loss/add_3_loss/Sum_grad/Tile*#
_output_shapes
:џџџџџџџџџ*
T0*&
_class
loc:@loss/add_3_loss/mul
Ї
6training/Adam/gradients/loss/add_3_loss/mul_grad/Sum_1Sum6training/Adam/gradients/loss/add_3_loss/mul_grad/Mul_1Htraining/Adam/gradients/loss/add_3_loss/mul_grad/BroadcastGradientArgs:1*
T0*&
_class
loc:@loss/add_3_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 

:training/Adam/gradients/loss/add_3_loss/mul_grad/Reshape_1Reshape6training/Adam/gradients/loss/add_3_loss/mul_grad/Sum_18training/Adam/gradients/loss/add_3_loss/mul_grad/Shape_1*
T0*
Tshape0*&
_class
loc:@loss/add_3_loss/mul*#
_output_shapes
:џџџџџџџџџ
Л
8training/Adam/gradients/loss/add_3_loss/mul_3_grad/ShapeShapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
Н
:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape_1Shapeloss/add_3_loss/Reshape_1*
T0*
out_type0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
О
Htraining/Adam/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape_1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
щ
6training/Adam/gradients/loss/add_3_loss/mul_3_grad/MulMul7training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Tileloss/add_3_loss/Reshape_1*
T0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:џџџџџџџџџ
Љ
6training/Adam/gradients/loss/add_3_loss/mul_3_grad/SumSum6training/Adam/gradients/loss/add_3_loss/mul_3_grad/MulHtraining/Adam/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:*

Tidx0*
	keep_dims( 

:training/Adam/gradients/loss/add_3_loss/mul_3_grad/ReshapeReshape6training/Adam/gradients/loss/add_3_loss/mul_3_grad/Sum8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3
ы
8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Mul_1Mulloss/add_3_loss/Reshape_17training/Adam/gradients/loss/add_3_loss/Sum_2_grad/Tile*
T0*(
_class
loc:@loss/add_3_loss/mul_3*#
_output_shapes
:џџџџџџџџџ
Џ
8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Sum_1Sum8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Mul_1Jtraining/Adam/gradients/loss/add_3_loss/mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/add_3_loss/mul_3*
_output_shapes
:
Ѓ
<training/Adam/gradients/loss/add_3_loss/mul_3_grad/Reshape_1Reshape8training/Adam/gradients/loss/add_3_loss/mul_3_grad/Sum_1:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*(
_class
loc:@loss/add_3_loss/mul_3
Й
training/Adam/gradients/AddNAddN:training/Adam/gradients/loss/add_3_loss/mul_grad/Reshape_1:training/Adam/gradients/loss/add_3_loss/mul_3_grad/Reshape<training/Adam/gradients/loss/add_3_loss/mul_3_grad/Reshape_1*
T0*&
_class
loc:@loss/add_3_loss/mul*
N*#
_output_shapes
:џџџџџџџџџ
Г
<training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/ShapeShape	add_3/add*
T0*
out_type0*,
_class"
 loc:@loss/add_3_loss/Reshape_1*
_output_shapes
:

>training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/ReshapeReshapetraining/Adam/gradients/AddN<training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/add_3_loss/Reshape_1*/
_output_shapes
:џџџџџџџџџ``

,training/Adam/gradients/add_3/add_grad/ShapeShapeinput_1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_3/add

.training/Adam/gradients/add_3/add_grad/Shape_1Shapeconv2d_8/Relu*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:

<training/Adam/gradients/add_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs,training/Adam/gradients/add_3/add_grad/Shape.training/Adam/gradients/add_3/add_grad/Shape_1*
T0*
_class
loc:@add_3/add*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

*training/Adam/gradients/add_3/add_grad/SumSum>training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/Reshape<training/Adam/gradients/add_3/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_3/add*
_output_shapes
:
љ
.training/Adam/gradients/add_3/add_grad/ReshapeReshape*training/Adam/gradients/add_3/add_grad/Sum,training/Adam/gradients/add_3/add_grad/Shape*/
_output_shapes
:џџџџџџџџџ``*
T0*
Tshape0*
_class
loc:@add_3/add

,training/Adam/gradients/add_3/add_grad/Sum_1Sum>training/Adam/gradients/loss/add_3_loss/Reshape_1_grad/Reshape>training/Adam/gradients/add_3/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_3/add*
_output_shapes
:
џ
0training/Adam/gradients/add_3/add_grad/Reshape_1Reshape,training/Adam/gradients/add_3/add_grad/Sum_1.training/Adam/gradients/add_3/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_3/add*/
_output_shapes
:џџџџџџџџџ``
м
3training/Adam/gradients/conv2d_8/Relu_grad/ReluGradReluGrad0training/Adam/gradients/add_3/add_grad/Reshape_1conv2d_8/Relu*
T0* 
_class
loc:@conv2d_8/Relu*/
_output_shapes
:џџџџџџџџџ``
о
9training/Adam/gradients/conv2d_8/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_8/BiasAdd*
data_formatNHWC*
_output_shapes
:
й
3training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNconcatenate/concatconv2d_8/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_8/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_8/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``0*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D

Atraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate/concat5training/Adam/gradients/conv2d_8/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_8/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

4training/Adam/gradients/concatenate/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :*%
_class
loc:@concatenate/concat
ж
3training/Adam/gradients/concatenate/concat_grad/modFloorModconcatenate/concat/axis4training/Adam/gradients/concatenate/concat_grad/Rank*
_output_shapes
: *
T0*%
_class
loc:@concatenate/concat
Ѓ
5training/Adam/gradients/concatenate/concat_grad/ShapeShapeadd/add*
T0*
out_type0*%
_class
loc:@concatenate/concat*
_output_shapes
:
П
6training/Adam/gradients/concatenate/concat_grad/ShapeNShapeNadd/add	add_2/add*
N* 
_output_shapes
::*
T0*
out_type0*%
_class
loc:@concatenate/concat
Х
<training/Adam/gradients/concatenate/concat_grad/ConcatOffsetConcatOffset3training/Adam/gradients/concatenate/concat_grad/mod6training/Adam/gradients/concatenate/concat_grad/ShapeN8training/Adam/gradients/concatenate/concat_grad/ShapeN:1*%
_class
loc:@concatenate/concat*
N* 
_output_shapes
::
ф
5training/Adam/gradients/concatenate/concat_grad/SliceSlice@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput<training/Adam/gradients/concatenate/concat_grad/ConcatOffset6training/Adam/gradients/concatenate/concat_grad/ShapeN*
T0*
Index0*%
_class
loc:@concatenate/concat*/
_output_shapes
:џџџџџџџџџ``
ъ
7training/Adam/gradients/concatenate/concat_grad/Slice_1Slice@training/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput>training/Adam/gradients/concatenate/concat_grad/ConcatOffset:18training/Adam/gradients/concatenate/concat_grad/ShapeN:1*
T0*
Index0*%
_class
loc:@concatenate/concat*/
_output_shapes
:џџџџџџџџџ``

,training/Adam/gradients/add_2/add_grad/ShapeShapeconv2d_5/Relu*
T0*
out_type0*
_class
loc:@add_2/add*
_output_shapes
:

.training/Adam/gradients/add_2/add_grad/Shape_1Shapeconv2d_7/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_2/add

<training/Adam/gradients/add_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs,training/Adam/gradients/add_2/add_grad/Shape.training/Adam/gradients/add_2/add_grad/Shape_1*
T0*
_class
loc:@add_2/add*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

*training/Adam/gradients/add_2/add_grad/SumSum7training/Adam/gradients/concatenate/concat_grad/Slice_1<training/Adam/gradients/add_2/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_2/add*
_output_shapes
:
љ
.training/Adam/gradients/add_2/add_grad/ReshapeReshape*training/Adam/gradients/add_2/add_grad/Sum,training/Adam/gradients/add_2/add_grad/Shape*/
_output_shapes
:џџџџџџџџџ``*
T0*
Tshape0*
_class
loc:@add_2/add

,training/Adam/gradients/add_2/add_grad/Sum_1Sum7training/Adam/gradients/concatenate/concat_grad/Slice_1>training/Adam/gradients/add_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_2/add*
_output_shapes
:
џ
0training/Adam/gradients/add_2/add_grad/Reshape_1Reshape,training/Adam/gradients/add_2/add_grad/Sum_1.training/Adam/gradients/add_2/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:џџџџџџџџџ``
к
3training/Adam/gradients/conv2d_5/Relu_grad/ReluGradReluGrad.training/Adam/gradients/add_2/add_grad/Reshapeconv2d_5/Relu*
T0* 
_class
loc:@conv2d_5/Relu*/
_output_shapes
:џџџџџџџџџ``
м
3training/Adam/gradients/conv2d_7/Relu_grad/ReluGradReluGrad0training/Adam/gradients/add_2/add_grad/Reshape_1conv2d_7/Relu*
T0* 
_class
loc:@conv2d_7/Relu*/
_output_shapes
:џџџџџџџџџ``
о
9training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_5/BiasAdd*
data_formatNHWC*
_output_shapes
:
о
9training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_7/BiasAdd*
data_formatNHWC*
_output_shapes
:
ъ
3training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_5/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_5/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_5/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
­
Atraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor5training/Adam/gradients/conv2d_5/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_5/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D
д
3training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_7/Conv2D
­
@training/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``

Atraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6/Relu5training/Adam/gradients/conv2d_7/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
ь
3training/Adam/gradients/conv2d_6/Relu_grad/ReluGradReluGrad@training/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputconv2d_6/Relu*/
_output_shapes
:џџџџџџџџџ``*
T0* 
_class
loc:@conv2d_6/Relu
о
9training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_6/BiasAdd*
data_formatNHWC*
_output_shapes
:
ъ
3training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeNShapeN#up_sampling2d/ResizeNearestNeighborconv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_6/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_6/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``0*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D
­
Atraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#up_sampling2d/ResizeNearestNeighbor5training/Adam/gradients/conv2d_6/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_6/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0

training/Adam/gradients/AddN_1AddN@training/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_5/Conv2D*
N*/
_output_shapes
:џџџџџџџџџ``0
ш
_training/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"0   0   *6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
џ
Ztraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGradtraining/Adam/gradients/AddN_1_training/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*
align_corners( *
T0*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*/
_output_shapes
:џџџџџџџџџ000

,training/Adam/gradients/add_1/add_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:

.training/Adam/gradients/add_1/add_grad/Shape_1Shapeconv2d_4/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:

<training/Adam/gradients/add_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs,training/Adam/gradients/add_1/add_grad/Shape.training/Adam/gradients/add_1/add_grad/Shape_1*
T0*
_class
loc:@add_1/add*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Љ
*training/Adam/gradients/add_1/add_grad/SumSumZtraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad<training/Adam/gradients/add_1/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_1/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
љ
.training/Adam/gradients/add_1/add_grad/ReshapeReshape*training/Adam/gradients/add_1/add_grad/Sum,training/Adam/gradients/add_1/add_grad/Shape*/
_output_shapes
:џџџџџџџџџ000*
T0*
Tshape0*
_class
loc:@add_1/add
­
,training/Adam/gradients/add_1/add_grad/Sum_1SumZtraining/Adam/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad>training/Adam/gradients/add_1/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_1/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
џ
0training/Adam/gradients/add_1/add_grad/Reshape_1Reshape,training/Adam/gradients/add_1/add_grad/Sum_1.training/Adam/gradients/add_1/add_grad/Shape_1*/
_output_shapes
:џџџџџџџџџ000*
T0*
Tshape0*
_class
loc:@add_1/add
к
3training/Adam/gradients/conv2d_2/Relu_grad/ReluGradReluGrad.training/Adam/gradients/add_1/add_grad/Reshapeconv2d_2/Relu*
T0* 
_class
loc:@conv2d_2/Relu*/
_output_shapes
:џџџџџџџџџ000
м
3training/Adam/gradients/conv2d_4/Relu_grad/ReluGradReluGrad0training/Adam/gradients/add_1/add_grad/Reshape_1conv2d_4/Relu*
T0* 
_class
loc:@conv2d_4/Relu*/
_output_shapes
:џџџџџџџџџ000
о
9training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_2/BiasAdd*
data_formatNHWC*
_output_shapes
:0
о
9training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_4/BiasAdd*
data_formatNHWC*
_output_shapes
:0
м
3training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_2/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ00

Atraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool5training/Adam/gradients/conv2d_2/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
д
3training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_4/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_4/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ000*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D

Atraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_3/Relu5training/Adam/gradients/conv2d_4/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_4/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00
ь
3training/Adam/gradients/conv2d_3/Relu_grad/ReluGradReluGrad@training/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputconv2d_3/Relu*/
_output_shapes
:џџџџџџџџџ000*
T0* 
_class
loc:@conv2d_3/Relu
о
9training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_3/BiasAdd*
data_formatNHWC*
_output_shapes
:0
м
3training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_3/Conv2D*
N* 
_output_shapes
::
­
@training/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_3/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ00*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

Atraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool5training/Adam/gradients/conv2d_3/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_3/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

training/Adam/gradients/AddN_2AddN@training/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput@training/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_2/Conv2D*
N*/
_output_shapes
:џџџџџџџџџ00
У
>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradadd/addmax_pooling2d/MaxPooltraining/Adam/gradients/AddN_2*
ksize
*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
T0*(
_class
loc:@max_pooling2d/MaxPool*
data_formatNHWC*
strides


training/Adam/gradients/AddN_3AddN5training/Adam/gradients/concatenate/concat_grad/Slice>training/Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*
T0*%
_class
loc:@concatenate/concat*
N*/
_output_shapes
:џџџџџџџџџ``

*training/Adam/gradients/add/add_grad/ShapeShapesubtract/sub*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:

,training/Adam/gradients/add/add_grad/Shape_1Shapeconv2d_1/Relu*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:

:training/Adam/gradients/add/add_grad/BroadcastGradientArgsBroadcastGradientArgs*training/Adam/gradients/add/add_grad/Shape,training/Adam/gradients/add/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*
_class
loc:@add/add
ч
(training/Adam/gradients/add/add_grad/SumSumtraining/Adam/gradients/AddN_3:training/Adam/gradients/add/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ё
,training/Adam/gradients/add/add_grad/ReshapeReshape(training/Adam/gradients/add/add_grad/Sum*training/Adam/gradients/add/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add/add*/
_output_shapes
:џџџџџџџџџ``
ы
*training/Adam/gradients/add/add_grad/Sum_1Sumtraining/Adam/gradients/AddN_3<training/Adam/gradients/add/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ї
.training/Adam/gradients/add/add_grad/Reshape_1Reshape*training/Adam/gradients/add/add_grad/Sum_1,training/Adam/gradients/add/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add/add*/
_output_shapes
:џџџџџџџџџ``
к
3training/Adam/gradients/conv2d_1/Relu_grad/ReluGradReluGrad.training/Adam/gradients/add/add_grad/Reshape_1conv2d_1/Relu*/
_output_shapes
:џџџџџџџџџ``*
T0* 
_class
loc:@conv2d_1/Relu
о
9training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
в
3training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_1/Conv2D
­
@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp3training/Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(

Atraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu5training/Adam/gradients/conv2d_1/Conv2D_grad/ShapeN:13training/Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ц
1training/Adam/gradients/conv2d/Relu_grad/ReluGradReluGrad@training/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputconv2d/Relu*
T0*
_class
loc:@conv2d/Relu*/
_output_shapes
:џџџџџџџџџ``
и
7training/Adam/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv2d/Relu_grad/ReluGrad*
T0*!
_class
loc:@conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:
Э
1training/Adam/gradients/conv2d/Conv2D_grad/ShapeNShapeNsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
out_type0* 
_class
loc:@conv2d/Conv2D*
N* 
_output_shapes
::
Ѓ
>training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput1training/Adam/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp1training/Adam/gradients/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ``*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltersubtract/sub3training/Adam/gradients/conv2d/Conv2D_grad/ShapeN:11training/Adam/gradients/conv2d/Relu_grad/ReluGrad*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 

!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations^training/Adam/ReadVariableOp*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
o
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/Cast*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/Cast*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
x
training/Adam/zerosConst*%
valueB*    *
dtype0*&
_output_shapes
:
Ь
training/Adam/VariableVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
	container *
shape:
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
Д
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*&
_output_shapes
:*)
_class
loc:@training/Adam/Variable
b
training/Adam/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
Ц
training/Adam/Variable_1VarHandleOp*)
shared_nametraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
Ў
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_1
~
%training/Adam/zeros_2/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0*&
_output_shapes
:
в
training/Adam/Variable_2VarHandleOp*+
_class!
loc:@training/Adam/Variable_2*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_2

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0
К
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*&
_output_shapes
:
b
training/Adam/zeros_3Const*
dtype0*
_output_shapes
:*
valueB*    
Ц
training/Adam/Variable_3VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
	container *
shape:

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
Ў
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
:
~
%training/Adam/zeros_4/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         0   
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:0
в
training/Adam/Variable_4VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*
dtype0*+
_class!
loc:@training/Adam/Variable_4
К
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*&
_output_shapes
:0
b
training/Adam/zeros_5Const*
valueB0*    *
dtype0*
_output_shapes
:0
Ц
training/Adam/Variable_5VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
	container *
shape:0

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
Ў
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
:0
~
%training/Adam/zeros_6/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*&
_output_shapes
:0
в
training/Adam/Variable_6VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6
К
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*&
_output_shapes
:0
b
training/Adam/zeros_7Const*
valueB0*    *
dtype0*
_output_shapes
:0
Ц
training/Adam/Variable_7VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
	container *
shape:0

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0
Ў
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:0*+
_class!
loc:@training/Adam/Variable_7
~
%training/Adam/zeros_8/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*&
_output_shapes
:00
в
training/Adam/Variable_8VarHandleOp*
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
	container 

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0
К
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*&
_output_shapes
:00
b
training/Adam/zeros_9Const*
valueB0*    *
dtype0*
_output_shapes
:0
Ц
training/Adam/Variable_9VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
	container *
shape:0

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9
Ў
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
:0

&training/Adam/zeros_10/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0      
a
training/Adam/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ї
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_10VarHandleOp*
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
	container 

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
Ђ
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0
Н
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_11Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_11VarHandleOp**
shared_nametraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
Ђ
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0
Б
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_11

&training/Adam/zeros_12/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_12VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12

:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
Ђ
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0
Н
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_13Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_13VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
	container *
shape:

:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
Ђ
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*
dtype0*,
_class"
 loc:@training/Adam/Variable_13
Б
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_13

&training/Adam/zeros_14/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*&
_output_shapes
:*
T0*

index_type0
е
training/Adam/Variable_14VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
	container 

:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
Ђ
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0
Н
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*&
_output_shapes
:
c
training/Adam/zeros_15Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_15VarHandleOp*,
_class"
 loc:@training/Adam/Variable_15*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_15

:training/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
Ђ
 training/Adam/Variable_15/AssignAssignVariableOptraining/Adam/Variable_15training/Adam/zeros_15*
dtype0*,
_class"
 loc:@training/Adam/Variable_15
Б
-training/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
:
{
training/Adam/zeros_16Const*%
valueB0*    *
dtype0*&
_output_shapes
:0
е
training/Adam/Variable_16VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
	container *
shape:0

:training/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
Ђ
 training/Adam/Variable_16/AssignAssignVariableOptraining/Adam/Variable_16training/Adam/zeros_16*
dtype0*,
_class"
 loc:@training/Adam/Variable_16
Н
-training/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_17Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_17VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
	container *
shape:

:training/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
Ђ
 training/Adam/Variable_17/AssignAssignVariableOptraining/Adam/Variable_17training/Adam/zeros_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0
Б
-training/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
:
{
training/Adam/zeros_18Const*
dtype0*&
_output_shapes
:*%
valueB*    
е
training/Adam/Variable_18VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18

:training/Adam/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
Ђ
 training/Adam/Variable_18/AssignAssignVariableOptraining/Adam/Variable_18training/Adam/zeros_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0
Н
-training/Adam/Variable_18/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*&
_output_shapes
:
c
training/Adam/zeros_19Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_19VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
	container *
shape:

:training/Adam/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
Ђ
 training/Adam/Variable_19/AssignAssignVariableOptraining/Adam/Variable_19training/Adam/zeros_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0
Б
-training/Adam/Variable_19/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
:

&training/Adam/zeros_20/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*&
_output_shapes
:
е
training/Adam/Variable_20VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
	container *
shape:

:training/Adam/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
Ђ
 training/Adam/Variable_20/AssignAssignVariableOptraining/Adam/Variable_20training/Adam/zeros_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0
Н
-training/Adam/Variable_20/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*&
_output_shapes
:
c
training/Adam/zeros_21Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_21VarHandleOp**
shared_nametraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
Ђ
 training/Adam/Variable_21/AssignAssignVariableOptraining/Adam/Variable_21training/Adam/zeros_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0
Б
-training/Adam/Variable_21/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_21*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_21

&training/Adam/zeros_22/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_22VarHandleOp**
shared_nametraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
Ђ
 training/Adam/Variable_22/AssignAssignVariableOptraining/Adam/Variable_22training/Adam/zeros_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0
Н
-training/Adam/Variable_22/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_23Const*
valueB0*    *
dtype0*
_output_shapes
:0
Щ
training/Adam/Variable_23VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
	container *
shape:0

:training/Adam/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
Ђ
 training/Adam/Variable_23/AssignAssignVariableOptraining/Adam/Variable_23training/Adam/zeros_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0
Б
-training/Adam/Variable_23/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0*
_output_shapes
:0

&training/Adam/zeros_24/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*&
_output_shapes
:0*
T0*

index_type0
е
training/Adam/Variable_24VarHandleOp**
shared_nametraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
Ђ
 training/Adam/Variable_24/AssignAssignVariableOptraining/Adam/Variable_24training/Adam/zeros_24*
dtype0*,
_class"
 loc:@training/Adam/Variable_24
Н
-training/Adam/Variable_24/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_25Const*
valueB0*    *
dtype0*
_output_shapes
:0
Щ
training/Adam/Variable_25VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
	container *
shape:0

:training/Adam/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
Ђ
 training/Adam/Variable_25/AssignAssignVariableOptraining/Adam/Variable_25training/Adam/zeros_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0
Б
-training/Adam/Variable_25/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0*
_output_shapes
:0

&training/Adam/zeros_26/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*&
_output_shapes
:00*
T0*

index_type0
е
training/Adam/Variable_26VarHandleOp**
shared_nametraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
	container *
shape:00*
dtype0*
_output_shapes
: 

:training/Adam/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
Ђ
 training/Adam/Variable_26/AssignAssignVariableOptraining/Adam/Variable_26training/Adam/zeros_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0
Н
-training/Adam/Variable_26/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_26*
dtype0*&
_output_shapes
:00*,
_class"
 loc:@training/Adam/Variable_26
c
training/Adam/zeros_27Const*
dtype0*
_output_shapes
:0*
valueB0*    
Щ
training/Adam/Variable_27VarHandleOp**
shared_nametraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
	container *
shape:0*
dtype0*
_output_shapes
: 

:training/Adam/Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
Ђ
 training/Adam/Variable_27/AssignAssignVariableOptraining/Adam/Variable_27training/Adam/zeros_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0
Б
-training/Adam/Variable_27/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0*
_output_shapes
:0

&training/Adam/zeros_28/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ї
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_28VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28

:training/Adam/Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
Ђ
 training/Adam/Variable_28/AssignAssignVariableOptraining/Adam/Variable_28training/Adam/zeros_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0
Н
-training/Adam/Variable_28/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_29Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_29VarHandleOp**
shared_nametraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
Ђ
 training/Adam/Variable_29/AssignAssignVariableOptraining/Adam/Variable_29training/Adam/zeros_29*
dtype0*,
_class"
 loc:@training/Adam/Variable_29
Б
-training/Adam/Variable_29/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_29*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_29

&training/Adam/zeros_30/shape_as_tensorConst*%
valueB"      0      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_30/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ї
training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0*&
_output_shapes
:0
е
training/Adam/Variable_30VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_30*,
_class"
 loc:@training/Adam/Variable_30

:training/Adam/Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_30*
_output_shapes
: 
Ђ
 training/Adam/Variable_30/AssignAssignVariableOptraining/Adam/Variable_30training/Adam/zeros_30*
dtype0*,
_class"
 loc:@training/Adam/Variable_30
Н
-training/Adam/Variable_30/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_30*
dtype0*&
_output_shapes
:0*,
_class"
 loc:@training/Adam/Variable_30
c
training/Adam/zeros_31Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_31VarHandleOp*,
_class"
 loc:@training/Adam/Variable_31*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_31

:training/Adam/Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_31*
_output_shapes
: 
Ђ
 training/Adam/Variable_31/AssignAssignVariableOptraining/Adam/Variable_31training/Adam/zeros_31*,
_class"
 loc:@training/Adam/Variable_31*
dtype0
Б
-training/Adam/Variable_31/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_31*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_31

&training/Adam/zeros_32/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ї
training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*&
_output_shapes
:*
T0*

index_type0
е
training/Adam/Variable_32VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32*
	container *
shape:

:training/Adam/Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_32*
_output_shapes
: 
Ђ
 training/Adam/Variable_32/AssignAssignVariableOptraining/Adam/Variable_32training/Adam/zeros_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0
Н
-training/Adam/Variable_32/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0*&
_output_shapes
:
c
training/Adam/zeros_33Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_33VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_33*,
_class"
 loc:@training/Adam/Variable_33*
	container 

:training/Adam/Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_33*
_output_shapes
: 
Ђ
 training/Adam/Variable_33/AssignAssignVariableOptraining/Adam/Variable_33training/Adam/zeros_33*,
_class"
 loc:@training/Adam/Variable_33*
dtype0
Б
-training/Adam/Variable_33/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_33*,
_class"
 loc:@training/Adam/Variable_33*
dtype0*
_output_shapes
:
{
training/Adam/zeros_34Const*%
valueB0*    *
dtype0*&
_output_shapes
:0
е
training/Adam/Variable_34VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_34*,
_class"
 loc:@training/Adam/Variable_34*
	container *
shape:0

:training/Adam/Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_34*
_output_shapes
: 
Ђ
 training/Adam/Variable_34/AssignAssignVariableOptraining/Adam/Variable_34training/Adam/zeros_34*
dtype0*,
_class"
 loc:@training/Adam/Variable_34
Н
-training/Adam/Variable_34/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_34*,
_class"
 loc:@training/Adam/Variable_34*
dtype0*&
_output_shapes
:0
c
training/Adam/zeros_35Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_35VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
	container 

:training/Adam/Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_35*
_output_shapes
: 
Ђ
 training/Adam/Variable_35/AssignAssignVariableOptraining/Adam/Variable_35training/Adam/zeros_35*,
_class"
 loc:@training/Adam/Variable_35*
dtype0
Б
-training/Adam/Variable_35/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_36/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_36Fill&training/Adam/zeros_36/shape_as_tensortraining/Adam/zeros_36/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_36VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_36*,
_class"
 loc:@training/Adam/Variable_36*
	container *
shape:

:training/Adam/Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_36*
_output_shapes
: 
Ђ
 training/Adam/Variable_36/AssignAssignVariableOptraining/Adam/Variable_36training/Adam/zeros_36*,
_class"
 loc:@training/Adam/Variable_36*
dtype0
Б
-training/Adam/Variable_36/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_36*,
_class"
 loc:@training/Adam/Variable_36*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_37/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_37/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_37Fill&training/Adam/zeros_37/shape_as_tensortraining/Adam/zeros_37/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_37VarHandleOp**
shared_nametraining/Adam/Variable_37*,
_class"
 loc:@training/Adam/Variable_37*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_37*
_output_shapes
: 
Ђ
 training/Adam/Variable_37/AssignAssignVariableOptraining/Adam/Variable_37training/Adam/zeros_37*,
_class"
 loc:@training/Adam/Variable_37*
dtype0
Б
-training/Adam/Variable_37/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_37*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_37
p
&training/Adam/zeros_38/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_38Fill&training/Adam/zeros_38/shape_as_tensortraining/Adam/zeros_38/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_38VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
	container *
shape:

:training/Adam/Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_38*
_output_shapes
: 
Ђ
 training/Adam/Variable_38/AssignAssignVariableOptraining/Adam/Variable_38training/Adam/zeros_38*
dtype0*,
_class"
 loc:@training/Adam/Variable_38
Б
-training/Adam/Variable_38/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_39/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_39/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_39Fill&training/Adam/zeros_39/shape_as_tensortraining/Adam/zeros_39/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_39VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39*
	container 

:training/Adam/Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_39*
_output_shapes
: 
Ђ
 training/Adam/Variable_39/AssignAssignVariableOptraining/Adam/Variable_39training/Adam/zeros_39*,
_class"
 loc:@training/Adam/Variable_39*
dtype0
Б
-training/Adam/Variable_39/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_40/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_40/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_40Fill&training/Adam/zeros_40/shape_as_tensortraining/Adam/zeros_40/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_40VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_40*,
_class"
 loc:@training/Adam/Variable_40*
	container *
shape:

:training/Adam/Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_40*
_output_shapes
: 
Ђ
 training/Adam/Variable_40/AssignAssignVariableOptraining/Adam/Variable_40training/Adam/zeros_40*,
_class"
 loc:@training/Adam/Variable_40*
dtype0
Б
-training/Adam/Variable_40/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_40*,
_class"
 loc:@training/Adam/Variable_40*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_41/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_41/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_41Fill&training/Adam/zeros_41/shape_as_tensortraining/Adam/zeros_41/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_41VarHandleOp**
shared_nametraining/Adam/Variable_41*,
_class"
 loc:@training/Adam/Variable_41*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_41*
_output_shapes
: 
Ђ
 training/Adam/Variable_41/AssignAssignVariableOptraining/Adam/Variable_41training/Adam/zeros_41*,
_class"
 loc:@training/Adam/Variable_41*
dtype0
Б
-training/Adam/Variable_41/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_41*,
_class"
 loc:@training/Adam/Variable_41*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_42/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_42/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_42Fill&training/Adam/zeros_42/shape_as_tensortraining/Adam/zeros_42/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_42VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_42*,
_class"
 loc:@training/Adam/Variable_42*
	container *
shape:

:training/Adam/Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_42*
_output_shapes
: 
Ђ
 training/Adam/Variable_42/AssignAssignVariableOptraining/Adam/Variable_42training/Adam/zeros_42*,
_class"
 loc:@training/Adam/Variable_42*
dtype0
Б
-training/Adam/Variable_42/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_42*,
_class"
 loc:@training/Adam/Variable_42*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_43/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_43/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_43Fill&training/Adam/zeros_43/shape_as_tensortraining/Adam/zeros_43/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_43VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_43*,
_class"
 loc:@training/Adam/Variable_43

:training/Adam/Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_43*
_output_shapes
: 
Ђ
 training/Adam/Variable_43/AssignAssignVariableOptraining/Adam/Variable_43training/Adam/zeros_43*,
_class"
 loc:@training/Adam/Variable_43*
dtype0
Б
-training/Adam/Variable_43/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_43*,
_class"
 loc:@training/Adam/Variable_43*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_44/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_44/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_44Fill&training/Adam/zeros_44/shape_as_tensortraining/Adam/zeros_44/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_44VarHandleOp**
shared_nametraining/Adam/Variable_44*,
_class"
 loc:@training/Adam/Variable_44*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_44/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_44*
_output_shapes
: 
Ђ
 training/Adam/Variable_44/AssignAssignVariableOptraining/Adam/Variable_44training/Adam/zeros_44*,
_class"
 loc:@training/Adam/Variable_44*
dtype0
Б
-training/Adam/Variable_44/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_44*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_44
p
&training/Adam/zeros_45/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_45/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_45Fill&training/Adam/zeros_45/shape_as_tensortraining/Adam/zeros_45/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_45VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_45*,
_class"
 loc:@training/Adam/Variable_45*
	container *
shape:

:training/Adam/Variable_45/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_45*
_output_shapes
: 
Ђ
 training/Adam/Variable_45/AssignAssignVariableOptraining/Adam/Variable_45training/Adam/zeros_45*,
_class"
 loc:@training/Adam/Variable_45*
dtype0
Б
-training/Adam/Variable_45/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_45*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_45
p
&training/Adam/zeros_46/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_46/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_46Fill&training/Adam/zeros_46/shape_as_tensortraining/Adam/zeros_46/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_46VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_46*,
_class"
 loc:@training/Adam/Variable_46*
	container *
shape:

:training/Adam/Variable_46/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_46*
_output_shapes
: 
Ђ
 training/Adam/Variable_46/AssignAssignVariableOptraining/Adam/Variable_46training/Adam/zeros_46*,
_class"
 loc:@training/Adam/Variable_46*
dtype0
Б
-training/Adam/Variable_46/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_46*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_46
p
&training/Adam/zeros_47/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_47/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_47Fill&training/Adam/zeros_47/shape_as_tensortraining/Adam/zeros_47/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_47VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_47*,
_class"
 loc:@training/Adam/Variable_47*
	container *
shape:

:training/Adam/Variable_47/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_47*
_output_shapes
: 
Ђ
 training/Adam/Variable_47/AssignAssignVariableOptraining/Adam/Variable_47training/Adam/zeros_47*,
_class"
 loc:@training/Adam/Variable_47*
dtype0
Б
-training/Adam/Variable_47/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_47*,
_class"
 loc:@training/Adam/Variable_47*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_48/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_48/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_48Fill&training/Adam/zeros_48/shape_as_tensortraining/Adam/zeros_48/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_48VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_48*,
_class"
 loc:@training/Adam/Variable_48*
	container *
shape:

:training/Adam/Variable_48/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_48*
_output_shapes
: 
Ђ
 training/Adam/Variable_48/AssignAssignVariableOptraining/Adam/Variable_48training/Adam/zeros_48*,
_class"
 loc:@training/Adam/Variable_48*
dtype0
Б
-training/Adam/Variable_48/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_48*,
_class"
 loc:@training/Adam/Variable_48*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_49/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_49/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_49Fill&training/Adam/zeros_49/shape_as_tensortraining/Adam/zeros_49/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_49VarHandleOp**
shared_nametraining/Adam/Variable_49*,
_class"
 loc:@training/Adam/Variable_49*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_49/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_49*
_output_shapes
: 
Ђ
 training/Adam/Variable_49/AssignAssignVariableOptraining/Adam/Variable_49training/Adam/zeros_49*
dtype0*,
_class"
 loc:@training/Adam/Variable_49
Б
-training/Adam/Variable_49/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_49*,
_class"
 loc:@training/Adam/Variable_49*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_50/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_50/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_50Fill&training/Adam/zeros_50/shape_as_tensortraining/Adam/zeros_50/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_50VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_50*,
_class"
 loc:@training/Adam/Variable_50*
	container 

:training/Adam/Variable_50/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_50*
_output_shapes
: 
Ђ
 training/Adam/Variable_50/AssignAssignVariableOptraining/Adam/Variable_50training/Adam/zeros_50*,
_class"
 loc:@training/Adam/Variable_50*
dtype0
Б
-training/Adam/Variable_50/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_50*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_50
p
&training/Adam/zeros_51/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_51/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_51Fill&training/Adam/zeros_51/shape_as_tensortraining/Adam/zeros_51/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_51VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_51*,
_class"
 loc:@training/Adam/Variable_51*
	container *
shape:

:training/Adam/Variable_51/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_51*
_output_shapes
: 
Ђ
 training/Adam/Variable_51/AssignAssignVariableOptraining/Adam/Variable_51training/Adam/zeros_51*,
_class"
 loc:@training/Adam/Variable_51*
dtype0
Б
-training/Adam/Variable_51/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_51*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_51
p
&training/Adam/zeros_52/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_52/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_52Fill&training/Adam/zeros_52/shape_as_tensortraining/Adam/zeros_52/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_52VarHandleOp**
shared_nametraining/Adam/Variable_52*,
_class"
 loc:@training/Adam/Variable_52*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_52/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_52*
_output_shapes
: 
Ђ
 training/Adam/Variable_52/AssignAssignVariableOptraining/Adam/Variable_52training/Adam/zeros_52*
dtype0*,
_class"
 loc:@training/Adam/Variable_52
Б
-training/Adam/Variable_52/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_52*,
_class"
 loc:@training/Adam/Variable_52*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_53/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_53/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_53Fill&training/Adam/zeros_53/shape_as_tensortraining/Adam/zeros_53/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_53VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_53*,
_class"
 loc:@training/Adam/Variable_53*
	container 

:training/Adam/Variable_53/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_53*
_output_shapes
: 
Ђ
 training/Adam/Variable_53/AssignAssignVariableOptraining/Adam/Variable_53training/Adam/zeros_53*
dtype0*,
_class"
 loc:@training/Adam/Variable_53
Б
-training/Adam/Variable_53/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_53*,
_class"
 loc:@training/Adam/Variable_53*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*&
_output_shapes
:

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*&
_output_shapes
:*
T0
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
Ё
training/Adam/mul_2Multraining/Adam/sub_2?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
s
training/Adam/addAddtraining/Adam/mul_1training/Adam/mul_2*
T0*&
_output_shapes
:
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_18*
dtype0*&
_output_shapes
:

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*&
_output_shapes
:
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 

training/Adam/SquareSquare?training/Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
v
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*&
_output_shapes
:*
T0
u
training/Adam/add_1Addtraining/Adam/mul_3training/Adam/mul_4*
T0*&
_output_shapes
:
q
training/Adam/mul_5Multraining/Adam/multraining/Adam/add*&
_output_shapes
:*
T0
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_1training/Adam/Const_4*&
_output_shapes
:*
T0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*&
_output_shapes
:*
T0
l
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*&
_output_shapes
:
Z
training/Adam/add_2/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
x
training/Adam/add_2Addtraining/Adam/Sqrt_1training/Adam/add_2/y*
T0*&
_output_shapes
:
}
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_2*
T0*&
_output_shapes
:
t
training/Adam/ReadVariableOp_6ReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:

training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*&
_output_shapes
:
j
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*&
_output_shapes
:
q
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_18training/Adam/add_1*
dtype0
Ѓ
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_18!^training/Adam/AssignVariableOp_1*
dtype0*&
_output_shapes
:
e
 training/Adam/AssignVariableOp_2AssignVariableOpconv2d/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpconv2d/kernel!^training/Adam/AssignVariableOp_2*
dtype0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes
:

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_57training/Adam/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/Adam/add_3Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_19*
dtype0*
_output_shapes
:

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
~
training/Adam/Square_1Square7training/Adam/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes
:*
T0
i
training/Adam/add_4Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_3*
T0*
_output_shapes
:
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_4training/Adam/Const_6*
T0*
_output_shapes
:

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes
:
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:
Z
training/Adam/add_5/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
l
training/Adam/add_5Addtraining/Adam/Sqrt_2training/Adam/add_5/y*
_output_shapes
:*
T0
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_5*
T0*
_output_shapes
:
g
training/Adam/ReadVariableOp_14ReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_3*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:
q
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_19training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_19!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
:
c
 training/Adam/AssignVariableOp_5AssignVariableOpconv2d/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpconv2d/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*&
_output_shapes
:

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
Є
training/Adam/mul_12Multraining/Adam/sub_8Atraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
w
training/Adam/add_6Addtraining/Adam/mul_11training/Adam/mul_12*
T0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_20*
dtype0*&
_output_shapes
:

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2SquareAtraining/Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
y
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*&
_output_shapes
:
w
training/Adam/add_7Addtraining/Adam/mul_13training/Adam/mul_14*&
_output_shapes
:*
T0
t
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_6*
T0*&
_output_shapes
:
Z
training/Adam/Const_7Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_8Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_7training/Adam/Const_8*
T0*&
_output_shapes
:

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*&
_output_shapes
:
l
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*&
_output_shapes
:
Z
training/Adam/add_8/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
x
training/Adam/add_8Addtraining/Adam/Sqrt_3training/Adam/add_8/y*
T0*&
_output_shapes
:
~
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_8*
T0*&
_output_shapes
:
w
training/Adam/ReadVariableOp_22ReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*&
_output_shapes
:*
T0
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_6*
dtype0
Ѓ
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*&
_output_shapes
:
q
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_20training/Adam/add_7*
dtype0
Є
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_20!^training/Adam/AssignVariableOp_7*
dtype0*&
_output_shapes
:
h
 training/Adam/AssignVariableOp_8AssignVariableOpconv2d_1/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpconv2d_1/kernel!^training/Adam/AssignVariableOp_8*
dtype0*&
_output_shapes
:
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes
:

training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_119training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
k
training/Adam/add_9Addtraining/Adam/mul_16training/Adam/mul_17*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_21*
dtype0*
_output_shapes
:

training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training/Adam/Square_3Square9training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes
:*
T0
l
training/Adam/add_10Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
:*
T0
h
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_9*
T0*
_output_shapes
:
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_10training/Adam/Const_10*
T0*
_output_shapes
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
_output_shapes
:*
T0
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:
[
training/Adam/add_11/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_11Addtraining/Adam/Sqrt_4training/Adam/add_11/y*
T0*
_output_shapes
:
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_11*
T0*
_output_shapes
:
i
training/Adam/ReadVariableOp_30ReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
:*
T0
p
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_9*
dtype0

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_21training/Adam/add_10*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_21"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_11AssignVariableOpconv2d_1/biastraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpconv2d_1/bias"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*&
_output_shapes
:0

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
_output_shapes
: *
T0
Ѕ
training/Adam/mul_22Multraining/Adam/sub_14Atraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_12Addtraining/Adam/mul_21training/Adam/mul_22*&
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_22*
dtype0*&
_output_shapes
:0

training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*&
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4SquareAtraining/Adam/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
z
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*&
_output_shapes
:0
x
training/Adam/add_13Addtraining/Adam/mul_23training/Adam/mul_24*&
_output_shapes
:0*
T0
u
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_12*
T0*&
_output_shapes
:0
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_13training/Adam/Const_12*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*&
_output_shapes
:0
l
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*&
_output_shapes
:0*
T0
[
training/Adam/add_14/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
z
training/Adam/add_14Addtraining/Adam/Sqrt_5training/Adam/add_14/y*&
_output_shapes
:0*
T0

training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_14*&
_output_shapes
:0*
T0
w
training/Adam/ReadVariableOp_38ReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0*&
_output_shapes
:0
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_12*
dtype0
Є
training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_22training/Adam/add_13*
dtype0
Ѕ
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_22"^training/Adam/AssignVariableOp_13*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_14AssignVariableOpconv2d_3/kerneltraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOpconv2d_3/kernel"^training/Adam/AssignVariableOp_14*
dtype0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:0

training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_179training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
l
training/Adam/add_15Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/Variable_23*
dtype0*
_output_shapes
:0

training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

training/Adam/Square_5Square9training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
:0*
T0
l
training/Adam/add_16Addtraining/Adam/mul_28training/Adam/mul_29*
_output_shapes
:0*
T0
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_15*
_output_shapes
:0*
T0
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_16training/Adam/Const_14*
T0*
_output_shapes
:0

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
T0*
_output_shapes
:0
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:0
[
training/Adam/add_17/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_17Addtraining/Adam/Sqrt_6training/Adam/add_17/y*
_output_shapes
:0*
T0
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_17*
T0*
_output_shapes
:0
i
training/Adam/ReadVariableOp_46ReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*
_output_shapes
:0
r
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_5training/Adam/add_15*
dtype0

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/Variable_5"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:0
s
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_23training/Adam/add_16*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/Variable_23"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:0
g
!training/Adam/AssignVariableOp_17AssignVariableOpconv2d_3/biastraining/Adam/sub_19*
dtype0

training/Adam/ReadVariableOp_49ReadVariableOpconv2d_3/bias"^training/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*&
_output_shapes
:0

training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
_output_shapes
: *
T0
Ѕ
training/Adam/mul_32Multraining/Adam/sub_20Atraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
x
training/Adam/add_18Addtraining/Adam/mul_31training/Adam/mul_32*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/Variable_24*
dtype0*&
_output_shapes
:0

training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*&
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training/Adam/Square_6SquareAtraining/Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
z
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*&
_output_shapes
:0
x
training/Adam/add_19Addtraining/Adam/mul_33training/Adam/mul_34*&
_output_shapes
:0*
T0
u
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_18*
T0*&
_output_shapes
:0
[
training/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_19training/Adam/Const_16*&
_output_shapes
:0*
T0

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
T0*&
_output_shapes
:0
l
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*&
_output_shapes
:0
[
training/Adam/add_20/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
z
training/Adam/add_20Addtraining/Adam/Sqrt_7training/Adam/add_20/y*
T0*&
_output_shapes
:0

training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_20*&
_output_shapes
:0*
T0
w
training/Adam/ReadVariableOp_54ReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
T0*&
_output_shapes
:0
r
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_6training/Adam/add_18*
dtype0
Є
training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/Variable_6"^training/Adam/AssignVariableOp_18*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_24training/Adam/add_19*
dtype0
Ѕ
training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/Variable_24"^training/Adam/AssignVariableOp_19*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_20AssignVariableOpconv2d_2/kerneltraining/Adam/sub_22*
dtype0

training/Adam/ReadVariableOp_57ReadVariableOpconv2d_2/kernel"^training/Adam/AssignVariableOp_20*
dtype0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:0

training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

training/Adam/mul_37Multraining/Adam/sub_239training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
l
training/Adam/add_21Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
:0*
T0
c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/Variable_25*
dtype0*
_output_shapes
:0

training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training/Adam/Square_7Square9training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:0
l
training/Adam/add_22Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
:0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_21*
T0*
_output_shapes
:0
[
training/Adam/Const_17Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_22training/Adam/Const_18*
T0*
_output_shapes
:0

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
_output_shapes
:0*
T0
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
_output_shapes
:0*
T0
[
training/Adam/add_23/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_23Addtraining/Adam/Sqrt_8training/Adam/add_23/y*
T0*
_output_shapes
:0
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_23*
_output_shapes
:0*
T0
i
training/Adam/ReadVariableOp_62ReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
z
training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
_output_shapes
:0*
T0
r
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_7training/Adam/add_21*
dtype0

training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:0
s
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_25training/Adam/add_22*
dtype0

training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/Variable_25"^training/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:0
g
!training/Adam/AssignVariableOp_23AssignVariableOpconv2d_2/biastraining/Adam/sub_25*
dtype0

training/Adam/ReadVariableOp_65ReadVariableOpconv2d_2/bias"^training/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_66ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_41/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*&
_output_shapes
:00

training/Adam/mul_41Multraining/Adam/ReadVariableOp_66#training/Adam/mul_41/ReadVariableOp*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_67ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_26/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_26Subtraining/Adam/sub_26/xtraining/Adam/ReadVariableOp_67*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_42Multraining/Adam/sub_26Atraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
x
training/Adam/add_24Addtraining/Adam/mul_41training/Adam/mul_42*
T0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_68ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_43/ReadVariableOpReadVariableOptraining/Adam/Variable_26*
dtype0*&
_output_shapes
:00

training/Adam/mul_43Multraining/Adam/ReadVariableOp_68#training/Adam/mul_43/ReadVariableOp*&
_output_shapes
:00*
T0
c
training/Adam/ReadVariableOp_69ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_27/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_27Subtraining/Adam/sub_27/xtraining/Adam/ReadVariableOp_69*
T0*
_output_shapes
: 

training/Adam/Square_8SquareAtraining/Adam/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
z
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*&
_output_shapes
:00
x
training/Adam/add_25Addtraining/Adam/mul_43training/Adam/mul_44*
T0*&
_output_shapes
:00
u
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_24*
T0*&
_output_shapes
:00
[
training/Adam/Const_19Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_20Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_25training/Adam/Const_20*
T0*&
_output_shapes
:00

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_19*
T0*&
_output_shapes
:00
l
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*&
_output_shapes
:00*
T0
[
training/Adam/add_26/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
z
training/Adam/add_26Addtraining/Adam/Sqrt_9training/Adam/add_26/y*
T0*&
_output_shapes
:00

training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_26*&
_output_shapes
:00*
T0
w
training/Adam/ReadVariableOp_70ReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00

training/Adam/sub_28Subtraining/Adam/ReadVariableOp_70training/Adam/truediv_9*
T0*&
_output_shapes
:00
r
!training/Adam/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_8training/Adam/add_24*
dtype0
Є
training/Adam/ReadVariableOp_71ReadVariableOptraining/Adam/Variable_8"^training/Adam/AssignVariableOp_24*
dtype0*&
_output_shapes
:00
s
!training/Adam/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_26training/Adam/add_25*
dtype0
Ѕ
training/Adam/ReadVariableOp_72ReadVariableOptraining/Adam/Variable_26"^training/Adam/AssignVariableOp_25*
dtype0*&
_output_shapes
:00
i
!training/Adam/AssignVariableOp_26AssignVariableOpconv2d_4/kerneltraining/Adam/sub_28*
dtype0

training/Adam/ReadVariableOp_73ReadVariableOpconv2d_4/kernel"^training/Adam/AssignVariableOp_26*
dtype0*&
_output_shapes
:00
c
training/Adam/ReadVariableOp_74ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_46/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
dtype0*
_output_shapes
:0

training/Adam/mul_46Multraining/Adam/ReadVariableOp_74#training/Adam/mul_46/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_75ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_29Subtraining/Adam/sub_29/xtraining/Adam/ReadVariableOp_75*
_output_shapes
: *
T0

training/Adam/mul_47Multraining/Adam/sub_299training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
l
training/Adam/add_27Addtraining/Adam/mul_46training/Adam/mul_47*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_76ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_48/ReadVariableOpReadVariableOptraining/Adam/Variable_27*
dtype0*
_output_shapes
:0

training/Adam/mul_48Multraining/Adam/ReadVariableOp_76#training/Adam/mul_48/ReadVariableOp*
T0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_77ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_30/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_30Subtraining/Adam/sub_30/xtraining/Adam/ReadVariableOp_77*
T0*
_output_shapes
: 

training/Adam/Square_9Square9training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
n
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes
:0
l
training/Adam/add_28Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes
:0
i
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_27*
_output_shapes
:0*
T0
[
training/Adam/Const_21Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_22Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_28training/Adam/Const_22*
T0*
_output_shapes
:0

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_21*
_output_shapes
:0*
T0
b
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes
:0
[
training/Adam/add_29/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_29Addtraining/Adam/Sqrt_10training/Adam/add_29/y*
T0*
_output_shapes
:0
t
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_29*
T0*
_output_shapes
:0
i
training/Adam/ReadVariableOp_78ReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
{
training/Adam/sub_31Subtraining/Adam/ReadVariableOp_78training/Adam/truediv_10*
T0*
_output_shapes
:0
r
!training/Adam/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_9training/Adam/add_27*
dtype0

training/Adam/ReadVariableOp_79ReadVariableOptraining/Adam/Variable_9"^training/Adam/AssignVariableOp_27*
dtype0*
_output_shapes
:0
s
!training/Adam/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_27training/Adam/add_28*
dtype0

training/Adam/ReadVariableOp_80ReadVariableOptraining/Adam/Variable_27"^training/Adam/AssignVariableOp_28*
dtype0*
_output_shapes
:0
g
!training/Adam/AssignVariableOp_29AssignVariableOpconv2d_4/biastraining/Adam/sub_31*
dtype0

training/Adam/ReadVariableOp_81ReadVariableOpconv2d_4/bias"^training/Adam/AssignVariableOp_29*
dtype0*
_output_shapes
:0
c
training/Adam/ReadVariableOp_82ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_51/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
dtype0*&
_output_shapes
:0

training/Adam/mul_51Multraining/Adam/ReadVariableOp_82#training/Adam/mul_51/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_83ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_32/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_32Subtraining/Adam/sub_32/xtraining/Adam/ReadVariableOp_83*
_output_shapes
: *
T0
Ѕ
training/Adam/mul_52Multraining/Adam/sub_32Atraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_30Addtraining/Adam/mul_51training/Adam/mul_52*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_84ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_53/ReadVariableOpReadVariableOptraining/Adam/Variable_28*
dtype0*&
_output_shapes
:0

training/Adam/mul_53Multraining/Adam/ReadVariableOp_84#training/Adam/mul_53/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_85ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_33/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_33Subtraining/Adam/sub_33/xtraining/Adam/ReadVariableOp_85*
T0*
_output_shapes
: 

training/Adam/Square_10SquareAtraining/Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
{
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
T0*&
_output_shapes
:0
x
training/Adam/add_31Addtraining/Adam/mul_53training/Adam/mul_54*&
_output_shapes
:0*
T0
u
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_30*
T0*&
_output_shapes
:0
[
training/Adam/Const_23Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_24Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_31training/Adam/Const_24*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_23*&
_output_shapes
:0*
T0
n
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*&
_output_shapes
:0*
T0
[
training/Adam/add_32/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
{
training/Adam/add_32Addtraining/Adam/Sqrt_11training/Adam/add_32/y*
T0*&
_output_shapes
:0

training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_32*
T0*&
_output_shapes
:0
w
training/Adam/ReadVariableOp_86ReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_34Subtraining/Adam/ReadVariableOp_86training/Adam/truediv_11*
T0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_30AssignVariableOptraining/Adam/Variable_10training/Adam/add_30*
dtype0
Ѕ
training/Adam/ReadVariableOp_87ReadVariableOptraining/Adam/Variable_10"^training/Adam/AssignVariableOp_30*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_31AssignVariableOptraining/Adam/Variable_28training/Adam/add_31*
dtype0
Ѕ
training/Adam/ReadVariableOp_88ReadVariableOptraining/Adam/Variable_28"^training/Adam/AssignVariableOp_31*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_32AssignVariableOpconv2d_6/kerneltraining/Adam/sub_34*
dtype0

training/Adam/ReadVariableOp_89ReadVariableOpconv2d_6/kernel"^training/Adam/AssignVariableOp_32*
dtype0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_90ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_56/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
dtype0*
_output_shapes
:

training/Adam/mul_56Multraining/Adam/ReadVariableOp_90#training/Adam/mul_56/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_91ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_35/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_35Subtraining/Adam/sub_35/xtraining/Adam/ReadVariableOp_91*
T0*
_output_shapes
: 

training/Adam/mul_57Multraining/Adam/sub_359training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_33Addtraining/Adam/mul_56training/Adam/mul_57*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_92ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_58/ReadVariableOpReadVariableOptraining/Adam/Variable_29*
dtype0*
_output_shapes
:

training/Adam/mul_58Multraining/Adam/ReadVariableOp_92#training/Adam/mul_58/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_93ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_36/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_36Subtraining/Adam/sub_36/xtraining/Adam/ReadVariableOp_93*
T0*
_output_shapes
: 

training/Adam/Square_11Square9training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
T0*
_output_shapes
:
l
training/Adam/add_34Addtraining/Adam/mul_58training/Adam/mul_59*
T0*
_output_shapes
:
i
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_33*
T0*
_output_shapes
:
[
training/Adam/Const_25Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_26Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_34training/Adam/Const_26*
T0*
_output_shapes
:

training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_25*
T0*
_output_shapes
:
b
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
T0*
_output_shapes
:
[
training/Adam/add_35/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_35Addtraining/Adam/Sqrt_12training/Adam/add_35/y*
T0*
_output_shapes
:
t
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_35*
_output_shapes
:*
T0
i
training/Adam/ReadVariableOp_94ReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:
{
training/Adam/sub_37Subtraining/Adam/ReadVariableOp_94training/Adam/truediv_12*
_output_shapes
:*
T0
s
!training/Adam/AssignVariableOp_33AssignVariableOptraining/Adam/Variable_11training/Adam/add_33*
dtype0

training/Adam/ReadVariableOp_95ReadVariableOptraining/Adam/Variable_11"^training/Adam/AssignVariableOp_33*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_34AssignVariableOptraining/Adam/Variable_29training/Adam/add_34*
dtype0

training/Adam/ReadVariableOp_96ReadVariableOptraining/Adam/Variable_29"^training/Adam/AssignVariableOp_34*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_35AssignVariableOpconv2d_6/biastraining/Adam/sub_37*
dtype0

training/Adam/ReadVariableOp_97ReadVariableOpconv2d_6/bias"^training/Adam/AssignVariableOp_35*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_98ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_61/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
dtype0*&
_output_shapes
:0

training/Adam/mul_61Multraining/Adam/ReadVariableOp_98#training/Adam/mul_61/ReadVariableOp*
T0*&
_output_shapes
:0
c
training/Adam/ReadVariableOp_99ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_38/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_38Subtraining/Adam/sub_38/xtraining/Adam/ReadVariableOp_99*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_62Multraining/Adam/sub_38Atraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_36Addtraining/Adam/mul_61training/Adam/mul_62*
T0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_100ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_63/ReadVariableOpReadVariableOptraining/Adam/Variable_30*
dtype0*&
_output_shapes
:0

training/Adam/mul_63Mul training/Adam/ReadVariableOp_100#training/Adam/mul_63/ReadVariableOp*&
_output_shapes
:0*
T0
d
 training/Adam/ReadVariableOp_101ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_39/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_39Subtraining/Adam/sub_39/x training/Adam/ReadVariableOp_101*
T0*
_output_shapes
: 

training/Adam/Square_12SquareAtraining/Adam/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
{
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
T0*&
_output_shapes
:0
x
training/Adam/add_37Addtraining/Adam/mul_63training/Adam/mul_64*&
_output_shapes
:0*
T0
u
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_36*
T0*&
_output_shapes
:0
[
training/Adam/Const_27Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_28Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_37training/Adam/Const_28*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_27*
T0*&
_output_shapes
:0
n
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*
T0*&
_output_shapes
:0
[
training/Adam/add_38/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
{
training/Adam/add_38Addtraining/Adam/Sqrt_13training/Adam/add_38/y*
T0*&
_output_shapes
:0

training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_38*&
_output_shapes
:0*
T0
x
 training/Adam/ReadVariableOp_102ReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_40Sub training/Adam/ReadVariableOp_102training/Adam/truediv_13*
T0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_36AssignVariableOptraining/Adam/Variable_12training/Adam/add_36*
dtype0
І
 training/Adam/ReadVariableOp_103ReadVariableOptraining/Adam/Variable_12"^training/Adam/AssignVariableOp_36*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_37AssignVariableOptraining/Adam/Variable_30training/Adam/add_37*
dtype0
І
 training/Adam/ReadVariableOp_104ReadVariableOptraining/Adam/Variable_30"^training/Adam/AssignVariableOp_37*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_38AssignVariableOpconv2d_5/kerneltraining/Adam/sub_40*
dtype0

 training/Adam/ReadVariableOp_105ReadVariableOpconv2d_5/kernel"^training/Adam/AssignVariableOp_38*
dtype0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_106ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_66/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*
_output_shapes
:

training/Adam/mul_66Mul training/Adam/ReadVariableOp_106#training/Adam/mul_66/ReadVariableOp*
_output_shapes
:*
T0
d
 training/Adam/ReadVariableOp_107ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_41/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_41Subtraining/Adam/sub_41/x training/Adam/ReadVariableOp_107*
T0*
_output_shapes
: 

training/Adam/mul_67Multraining/Adam/sub_419training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_39Addtraining/Adam/mul_66training/Adam/mul_67*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_108ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_68/ReadVariableOpReadVariableOptraining/Adam/Variable_31*
dtype0*
_output_shapes
:

training/Adam/mul_68Mul training/Adam/ReadVariableOp_108#training/Adam/mul_68/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_109ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_42/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_42Subtraining/Adam/sub_42/x training/Adam/ReadVariableOp_109*
T0*
_output_shapes
: 

training/Adam/Square_13Square9training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
o
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
T0*
_output_shapes
:
l
training/Adam/add_40Addtraining/Adam/mul_68training/Adam/mul_69*
T0*
_output_shapes
:
i
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_39*
T0*
_output_shapes
:
[
training/Adam/Const_29Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_30Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_40training/Adam/Const_30*
T0*
_output_shapes
:

training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_29*
T0*
_output_shapes
:
b
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
_output_shapes
:*
T0
[
training/Adam/add_41/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
o
training/Adam/add_41Addtraining/Adam/Sqrt_14training/Adam/add_41/y*
_output_shapes
:*
T0
t
training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_41*
_output_shapes
:*
T0
j
 training/Adam/ReadVariableOp_110ReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:
|
training/Adam/sub_43Sub training/Adam/ReadVariableOp_110training/Adam/truediv_14*
T0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_39AssignVariableOptraining/Adam/Variable_13training/Adam/add_39*
dtype0

 training/Adam/ReadVariableOp_111ReadVariableOptraining/Adam/Variable_13"^training/Adam/AssignVariableOp_39*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_40AssignVariableOptraining/Adam/Variable_31training/Adam/add_40*
dtype0

 training/Adam/ReadVariableOp_112ReadVariableOptraining/Adam/Variable_31"^training/Adam/AssignVariableOp_40*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_41AssignVariableOpconv2d_5/biastraining/Adam/sub_43*
dtype0

 training/Adam/ReadVariableOp_113ReadVariableOpconv2d_5/bias"^training/Adam/AssignVariableOp_41*
dtype0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_114ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_71/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*&
_output_shapes
:

training/Adam/mul_71Mul training/Adam/ReadVariableOp_114#training/Adam/mul_71/ReadVariableOp*
T0*&
_output_shapes
:
d
 training/Adam/ReadVariableOp_115ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_44/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_44Subtraining/Adam/sub_44/x training/Adam/ReadVariableOp_115*
_output_shapes
: *
T0
Ѕ
training/Adam/mul_72Multraining/Adam/sub_44Atraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
x
training/Adam/add_42Addtraining/Adam/mul_71training/Adam/mul_72*
T0*&
_output_shapes
:
d
 training/Adam/ReadVariableOp_116ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_73/ReadVariableOpReadVariableOptraining/Adam/Variable_32*
dtype0*&
_output_shapes
:

training/Adam/mul_73Mul training/Adam/ReadVariableOp_116#training/Adam/mul_73/ReadVariableOp*&
_output_shapes
:*
T0
d
 training/Adam/ReadVariableOp_117ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_45/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_45Subtraining/Adam/sub_45/x training/Adam/ReadVariableOp_117*
T0*
_output_shapes
: 

training/Adam/Square_14SquareAtraining/Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
{
training/Adam/mul_74Multraining/Adam/sub_45training/Adam/Square_14*&
_output_shapes
:*
T0
x
training/Adam/add_43Addtraining/Adam/mul_73training/Adam/mul_74*
T0*&
_output_shapes
:
u
training/Adam/mul_75Multraining/Adam/multraining/Adam/add_42*&
_output_shapes
:*
T0
[
training/Adam/Const_31Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_32Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_15/MinimumMinimumtraining/Adam/add_43training/Adam/Const_32*
T0*&
_output_shapes
:

training/Adam/clip_by_value_15Maximum&training/Adam/clip_by_value_15/Minimumtraining/Adam/Const_31*
T0*&
_output_shapes
:
n
training/Adam/Sqrt_15Sqrttraining/Adam/clip_by_value_15*
T0*&
_output_shapes
:
[
training/Adam/add_44/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
{
training/Adam/add_44Addtraining/Adam/Sqrt_15training/Adam/add_44/y*
T0*&
_output_shapes
:

training/Adam/truediv_15RealDivtraining/Adam/mul_75training/Adam/add_44*
T0*&
_output_shapes
:
x
 training/Adam/ReadVariableOp_118ReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:

training/Adam/sub_46Sub training/Adam/ReadVariableOp_118training/Adam/truediv_15*
T0*&
_output_shapes
:
s
!training/Adam/AssignVariableOp_42AssignVariableOptraining/Adam/Variable_14training/Adam/add_42*
dtype0
І
 training/Adam/ReadVariableOp_119ReadVariableOptraining/Adam/Variable_14"^training/Adam/AssignVariableOp_42*
dtype0*&
_output_shapes
:
s
!training/Adam/AssignVariableOp_43AssignVariableOptraining/Adam/Variable_32training/Adam/add_43*
dtype0
І
 training/Adam/ReadVariableOp_120ReadVariableOptraining/Adam/Variable_32"^training/Adam/AssignVariableOp_43*
dtype0*&
_output_shapes
:
i
!training/Adam/AssignVariableOp_44AssignVariableOpconv2d_7/kerneltraining/Adam/sub_46*
dtype0

 training/Adam/ReadVariableOp_121ReadVariableOpconv2d_7/kernel"^training/Adam/AssignVariableOp_44*
dtype0*&
_output_shapes
:
d
 training/Adam/ReadVariableOp_122ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_76/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
dtype0*
_output_shapes
:

training/Adam/mul_76Mul training/Adam/ReadVariableOp_122#training/Adam/mul_76/ReadVariableOp*
_output_shapes
:*
T0
d
 training/Adam/ReadVariableOp_123ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_47/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_47Subtraining/Adam/sub_47/x training/Adam/ReadVariableOp_123*
T0*
_output_shapes
: 

training/Adam/mul_77Multraining/Adam/sub_479training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_45Addtraining/Adam/mul_76training/Adam/mul_77*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_124ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_78/ReadVariableOpReadVariableOptraining/Adam/Variable_33*
dtype0*
_output_shapes
:

training/Adam/mul_78Mul training/Adam/ReadVariableOp_124#training/Adam/mul_78/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_125ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_48/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_48Subtraining/Adam/sub_48/x training/Adam/ReadVariableOp_125*
T0*
_output_shapes
: 

training/Adam/Square_15Square9training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
o
training/Adam/mul_79Multraining/Adam/sub_48training/Adam/Square_15*
T0*
_output_shapes
:
l
training/Adam/add_46Addtraining/Adam/mul_78training/Adam/mul_79*
T0*
_output_shapes
:
i
training/Adam/mul_80Multraining/Adam/multraining/Adam/add_45*
_output_shapes
:*
T0
[
training/Adam/Const_33Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_34Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_16/MinimumMinimumtraining/Adam/add_46training/Adam/Const_34*
_output_shapes
:*
T0

training/Adam/clip_by_value_16Maximum&training/Adam/clip_by_value_16/Minimumtraining/Adam/Const_33*
T0*
_output_shapes
:
b
training/Adam/Sqrt_16Sqrttraining/Adam/clip_by_value_16*
T0*
_output_shapes
:
[
training/Adam/add_47/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_47Addtraining/Adam/Sqrt_16training/Adam/add_47/y*
T0*
_output_shapes
:
t
training/Adam/truediv_16RealDivtraining/Adam/mul_80training/Adam/add_47*
T0*
_output_shapes
:
j
 training/Adam/ReadVariableOp_126ReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:
|
training/Adam/sub_49Sub training/Adam/ReadVariableOp_126training/Adam/truediv_16*
_output_shapes
:*
T0
s
!training/Adam/AssignVariableOp_45AssignVariableOptraining/Adam/Variable_15training/Adam/add_45*
dtype0

 training/Adam/ReadVariableOp_127ReadVariableOptraining/Adam/Variable_15"^training/Adam/AssignVariableOp_45*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_46AssignVariableOptraining/Adam/Variable_33training/Adam/add_46*
dtype0

 training/Adam/ReadVariableOp_128ReadVariableOptraining/Adam/Variable_33"^training/Adam/AssignVariableOp_46*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_47AssignVariableOpconv2d_7/biastraining/Adam/sub_49*
dtype0

 training/Adam/ReadVariableOp_129ReadVariableOpconv2d_7/bias"^training/Adam/AssignVariableOp_47*
dtype0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_130ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_81/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
dtype0*&
_output_shapes
:0

training/Adam/mul_81Mul training/Adam/ReadVariableOp_130#training/Adam/mul_81/ReadVariableOp*
T0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_131ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_50/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_50Subtraining/Adam/sub_50/x training/Adam/ReadVariableOp_131*
T0*
_output_shapes
: 
Ѕ
training/Adam/mul_82Multraining/Adam/sub_50Atraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
x
training/Adam/add_48Addtraining/Adam/mul_81training/Adam/mul_82*&
_output_shapes
:0*
T0
d
 training/Adam/ReadVariableOp_132ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_83/ReadVariableOpReadVariableOptraining/Adam/Variable_34*
dtype0*&
_output_shapes
:0

training/Adam/mul_83Mul training/Adam/ReadVariableOp_132#training/Adam/mul_83/ReadVariableOp*
T0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_133ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_51/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
v
training/Adam/sub_51Subtraining/Adam/sub_51/x training/Adam/ReadVariableOp_133*
T0*
_output_shapes
: 

training/Adam/Square_16SquareAtraining/Adam/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
{
training/Adam/mul_84Multraining/Adam/sub_51training/Adam/Square_16*
T0*&
_output_shapes
:0
x
training/Adam/add_49Addtraining/Adam/mul_83training/Adam/mul_84*
T0*&
_output_shapes
:0
u
training/Adam/mul_85Multraining/Adam/multraining/Adam/add_48*&
_output_shapes
:0*
T0
[
training/Adam/Const_35Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_36Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_17/MinimumMinimumtraining/Adam/add_49training/Adam/Const_36*
T0*&
_output_shapes
:0

training/Adam/clip_by_value_17Maximum&training/Adam/clip_by_value_17/Minimumtraining/Adam/Const_35*&
_output_shapes
:0*
T0
n
training/Adam/Sqrt_17Sqrttraining/Adam/clip_by_value_17*&
_output_shapes
:0*
T0
[
training/Adam/add_50/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
{
training/Adam/add_50Addtraining/Adam/Sqrt_17training/Adam/add_50/y*
T0*&
_output_shapes
:0

training/Adam/truediv_17RealDivtraining/Adam/mul_85training/Adam/add_50*
T0*&
_output_shapes
:0
x
 training/Adam/ReadVariableOp_134ReadVariableOpconv2d_8/kernel*
dtype0*&
_output_shapes
:0

training/Adam/sub_52Sub training/Adam/ReadVariableOp_134training/Adam/truediv_17*
T0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_48AssignVariableOptraining/Adam/Variable_16training/Adam/add_48*
dtype0
І
 training/Adam/ReadVariableOp_135ReadVariableOptraining/Adam/Variable_16"^training/Adam/AssignVariableOp_48*
dtype0*&
_output_shapes
:0
s
!training/Adam/AssignVariableOp_49AssignVariableOptraining/Adam/Variable_34training/Adam/add_49*
dtype0
І
 training/Adam/ReadVariableOp_136ReadVariableOptraining/Adam/Variable_34"^training/Adam/AssignVariableOp_49*
dtype0*&
_output_shapes
:0
i
!training/Adam/AssignVariableOp_50AssignVariableOpconv2d_8/kerneltraining/Adam/sub_52*
dtype0

 training/Adam/ReadVariableOp_137ReadVariableOpconv2d_8/kernel"^training/Adam/AssignVariableOp_50*
dtype0*&
_output_shapes
:0
d
 training/Adam/ReadVariableOp_138ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_86/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
dtype0*
_output_shapes
:

training/Adam/mul_86Mul training/Adam/ReadVariableOp_138#training/Adam/mul_86/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_139ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_53/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_53Subtraining/Adam/sub_53/x training/Adam/ReadVariableOp_139*
T0*
_output_shapes
: 

training/Adam/mul_87Multraining/Adam/sub_539training/Adam/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_51Addtraining/Adam/mul_86training/Adam/mul_87*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_140ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_88/ReadVariableOpReadVariableOptraining/Adam/Variable_35*
dtype0*
_output_shapes
:

training/Adam/mul_88Mul training/Adam/ReadVariableOp_140#training/Adam/mul_88/ReadVariableOp*
T0*
_output_shapes
:
d
 training/Adam/ReadVariableOp_141ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_54/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
v
training/Adam/sub_54Subtraining/Adam/sub_54/x training/Adam/ReadVariableOp_141*
T0*
_output_shapes
: 

training/Adam/Square_17Square9training/Adam/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_89Multraining/Adam/sub_54training/Adam/Square_17*
T0*
_output_shapes
:
l
training/Adam/add_52Addtraining/Adam/mul_88training/Adam/mul_89*
T0*
_output_shapes
:
i
training/Adam/mul_90Multraining/Adam/multraining/Adam/add_51*
T0*
_output_shapes
:
[
training/Adam/Const_37Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_38Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_18/MinimumMinimumtraining/Adam/add_52training/Adam/Const_38*
T0*
_output_shapes
:

training/Adam/clip_by_value_18Maximum&training/Adam/clip_by_value_18/Minimumtraining/Adam/Const_37*
T0*
_output_shapes
:
b
training/Adam/Sqrt_18Sqrttraining/Adam/clip_by_value_18*
T0*
_output_shapes
:
[
training/Adam/add_53/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_53Addtraining/Adam/Sqrt_18training/Adam/add_53/y*
_output_shapes
:*
T0
t
training/Adam/truediv_18RealDivtraining/Adam/mul_90training/Adam/add_53*
T0*
_output_shapes
:
j
 training/Adam/ReadVariableOp_142ReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes
:
|
training/Adam/sub_55Sub training/Adam/ReadVariableOp_142training/Adam/truediv_18*
T0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_51AssignVariableOptraining/Adam/Variable_17training/Adam/add_51*
dtype0

 training/Adam/ReadVariableOp_143ReadVariableOptraining/Adam/Variable_17"^training/Adam/AssignVariableOp_51*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_52AssignVariableOptraining/Adam/Variable_35training/Adam/add_52*
dtype0

 training/Adam/ReadVariableOp_144ReadVariableOptraining/Adam/Variable_35"^training/Adam/AssignVariableOp_52*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_53AssignVariableOpconv2d_8/biastraining/Adam/sub_55*
dtype0

 training/Adam/ReadVariableOp_145ReadVariableOpconv2d_8/bias"^training/Adam/AssignVariableOp_53*
dtype0*
_output_shapes
:

training_1/group_depsNoOp	^loss/mul^metrics/psnr/div_no_nan^metrics/ssim/div_no_nan!^training/Adam/ReadVariableOp_103!^training/Adam/ReadVariableOp_104!^training/Adam/ReadVariableOp_105!^training/Adam/ReadVariableOp_111!^training/Adam/ReadVariableOp_112!^training/Adam/ReadVariableOp_113!^training/Adam/ReadVariableOp_119!^training/Adam/ReadVariableOp_120!^training/Adam/ReadVariableOp_121!^training/Adam/ReadVariableOp_127!^training/Adam/ReadVariableOp_128!^training/Adam/ReadVariableOp_129!^training/Adam/ReadVariableOp_135!^training/Adam/ReadVariableOp_136!^training/Adam/ReadVariableOp_137!^training/Adam/ReadVariableOp_143!^training/Adam/ReadVariableOp_144!^training/Adam/ReadVariableOp_145 ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7 ^training/Adam/ReadVariableOp_71 ^training/Adam/ReadVariableOp_72 ^training/Adam/ReadVariableOp_73 ^training/Adam/ReadVariableOp_79^training/Adam/ReadVariableOp_8 ^training/Adam/ReadVariableOp_80 ^training/Adam/ReadVariableOp_81 ^training/Adam/ReadVariableOp_87 ^training/Adam/ReadVariableOp_88 ^training/Adam/ReadVariableOp_89^training/Adam/ReadVariableOp_9 ^training/Adam/ReadVariableOp_95 ^training/Adam/ReadVariableOp_96 ^training/Adam/ReadVariableOp_97
P
VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 
J
VarIsInitializedOp_1VarIsInitializedOpSGD/lr*
_output_shapes
: 
]
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/Variable_34*
_output_shapes
: 
M
VarIsInitializedOp_3VarIsInitializedOp	SGD/decay*
_output_shapes
: 
]
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/Variable_27*
_output_shapes
: 
]
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOptotal*
_output_shapes
: 
\
VarIsInitializedOp_7VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
]
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
]
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
R
VarIsInitializedOp_10VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
O
VarIsInitializedOp_11VarIsInitializedOp
Adam/decay*
_output_shapes
: 
^
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable_40*
_output_shapes
: 
T
VarIsInitializedOp_13VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
L
VarIsInitializedOp_14VarIsInitializedOpAdam/lr*
_output_shapes
: 
^
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_51*
_output_shapes
: 
T
VarIsInitializedOp_16VarIsInitializedOpAdam/iterations*
_output_shapes
: 
^
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
P
VarIsInitializedOp_18VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
^
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_50*
_output_shapes
: 
P
VarIsInitializedOp_20VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
^
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
L
VarIsInitializedOp_22VarIsInitializedOpcount_1*
_output_shapes
: 
]
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
^
VarIsInitializedOp_24VarIsInitializedOptraining/Adam/Variable_45*
_output_shapes
: 
^
VarIsInitializedOp_25VarIsInitializedOptraining/Adam/Variable_26*
_output_shapes
: 
^
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/Variable_35*
_output_shapes
: 
^
VarIsInitializedOp_27VarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
Q
VarIsInitializedOp_28VarIsInitializedOpSGD/momentum*
_output_shapes
: 
R
VarIsInitializedOp_29VarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
[
VarIsInitializedOp_30VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
]
VarIsInitializedOp_31VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
L
VarIsInitializedOp_32VarIsInitializedOptotal_1*
_output_shapes
: 
^
VarIsInitializedOp_33VarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
R
VarIsInitializedOp_34VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
^
VarIsInitializedOp_35VarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
^
VarIsInitializedOp_36VarIsInitializedOptraining/Adam/Variable_30*
_output_shapes
: 
^
VarIsInitializedOp_37VarIsInitializedOptraining/Adam/Variable_37*
_output_shapes
: 
^
VarIsInitializedOp_38VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
]
VarIsInitializedOp_39VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
^
VarIsInitializedOp_40VarIsInitializedOptraining/Adam/Variable_44*
_output_shapes
: 
^
VarIsInitializedOp_41VarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
T
VarIsInitializedOp_42VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
]
VarIsInitializedOp_43VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
^
VarIsInitializedOp_44VarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
^
VarIsInitializedOp_45VarIsInitializedOptraining/Adam/Variable_36*
_output_shapes
: 
^
VarIsInitializedOp_46VarIsInitializedOptraining/Adam/Variable_42*
_output_shapes
: 
T
VarIsInitializedOp_47VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
]
VarIsInitializedOp_48VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
^
VarIsInitializedOp_49VarIsInitializedOptraining/Adam/Variable_31*
_output_shapes
: 
^
VarIsInitializedOp_50VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
^
VarIsInitializedOp_51VarIsInitializedOptraining/Adam/Variable_43*
_output_shapes
: 
^
VarIsInitializedOp_52VarIsInitializedOptraining/Adam/Variable_38*
_output_shapes
: 
]
VarIsInitializedOp_53VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
^
VarIsInitializedOp_54VarIsInitializedOptraining/Adam/Variable_28*
_output_shapes
: 
^
VarIsInitializedOp_55VarIsInitializedOptraining/Adam/Variable_41*
_output_shapes
: 
^
VarIsInitializedOp_56VarIsInitializedOptraining/Adam/Variable_39*
_output_shapes
: 
^
VarIsInitializedOp_57VarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
^
VarIsInitializedOp_58VarIsInitializedOptraining/Adam/Variable_52*
_output_shapes
: 
^
VarIsInitializedOp_59VarIsInitializedOptraining/Adam/Variable_29*
_output_shapes
: 
^
VarIsInitializedOp_60VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
T
VarIsInitializedOp_61VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
J
VarIsInitializedOp_62VarIsInitializedOpcount*
_output_shapes
: 
]
VarIsInitializedOp_63VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
^
VarIsInitializedOp_64VarIsInitializedOptraining/Adam/Variable_32*
_output_shapes
: 
^
VarIsInitializedOp_65VarIsInitializedOptraining/Adam/Variable_24*
_output_shapes
: 
^
VarIsInitializedOp_66VarIsInitializedOptraining/Adam/Variable_49*
_output_shapes
: 
^
VarIsInitializedOp_67VarIsInitializedOptraining/Adam/Variable_47*
_output_shapes
: 
R
VarIsInitializedOp_68VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
^
VarIsInitializedOp_69VarIsInitializedOptraining/Adam/Variable_25*
_output_shapes
: 
]
VarIsInitializedOp_70VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
^
VarIsInitializedOp_71VarIsInitializedOptraining/Adam/Variable_48*
_output_shapes
: 
^
VarIsInitializedOp_72VarIsInitializedOptraining/Adam/Variable_46*
_output_shapes
: 
^
VarIsInitializedOp_73VarIsInitializedOptraining/Adam/Variable_33*
_output_shapes
: 
R
VarIsInitializedOp_74VarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
^
VarIsInitializedOp_75VarIsInitializedOptraining/Adam/Variable_53*
_output_shapes
: 
R
VarIsInitializedOp_76VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
T
VarIsInitializedOp_77VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
T
VarIsInitializedOp_78VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
R
VarIsInitializedOp_79VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
R
VarIsInitializedOp_80VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
T
VarIsInitializedOp_81VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
T
VarIsInitializedOp_82VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_83VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
P
VarIsInitializedOp_84VarIsInitializedOpconv2d/bias*
_output_shapes
: 

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^count/Assign^count_1/Assign^total/Assign^total_1/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign ^training/Adam/Variable_4/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign!^training/Adam/Variable_42/Assign!^training/Adam/Variable_43/Assign!^training/Adam/Variable_44/Assign!^training/Adam/Variable_45/Assign!^training/Adam/Variable_46/Assign!^training/Adam/Variable_47/Assign!^training/Adam/Variable_48/Assign!^training/Adam/Variable_49/Assign ^training/Adam/Variable_5/Assign!^training/Adam/Variable_50/Assign!^training/Adam/Variable_51/Assign!^training/Adam/Variable_52/Assign!^training/Adam/Variable_53/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign""кV
trainable_variablesТVПV
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08

conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08

conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08

conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08

conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08

conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08

conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08

conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08

training/Adam/Variable_27:0 training/Adam/Variable_27/Assign/training/Adam/Variable_27/Read/ReadVariableOp:0(2training/Adam/zeros_27:08

training/Adam/Variable_28:0 training/Adam/Variable_28/Assign/training/Adam/Variable_28/Read/ReadVariableOp:0(2training/Adam/zeros_28:08

training/Adam/Variable_29:0 training/Adam/Variable_29/Assign/training/Adam/Variable_29/Read/ReadVariableOp:0(2training/Adam/zeros_29:08

training/Adam/Variable_30:0 training/Adam/Variable_30/Assign/training/Adam/Variable_30/Read/ReadVariableOp:0(2training/Adam/zeros_30:08

training/Adam/Variable_31:0 training/Adam/Variable_31/Assign/training/Adam/Variable_31/Read/ReadVariableOp:0(2training/Adam/zeros_31:08

training/Adam/Variable_32:0 training/Adam/Variable_32/Assign/training/Adam/Variable_32/Read/ReadVariableOp:0(2training/Adam/zeros_32:08

training/Adam/Variable_33:0 training/Adam/Variable_33/Assign/training/Adam/Variable_33/Read/ReadVariableOp:0(2training/Adam/zeros_33:08

training/Adam/Variable_34:0 training/Adam/Variable_34/Assign/training/Adam/Variable_34/Read/ReadVariableOp:0(2training/Adam/zeros_34:08

training/Adam/Variable_35:0 training/Adam/Variable_35/Assign/training/Adam/Variable_35/Read/ReadVariableOp:0(2training/Adam/zeros_35:08

training/Adam/Variable_36:0 training/Adam/Variable_36/Assign/training/Adam/Variable_36/Read/ReadVariableOp:0(2training/Adam/zeros_36:08

training/Adam/Variable_37:0 training/Adam/Variable_37/Assign/training/Adam/Variable_37/Read/ReadVariableOp:0(2training/Adam/zeros_37:08

training/Adam/Variable_38:0 training/Adam/Variable_38/Assign/training/Adam/Variable_38/Read/ReadVariableOp:0(2training/Adam/zeros_38:08

training/Adam/Variable_39:0 training/Adam/Variable_39/Assign/training/Adam/Variable_39/Read/ReadVariableOp:0(2training/Adam/zeros_39:08

training/Adam/Variable_40:0 training/Adam/Variable_40/Assign/training/Adam/Variable_40/Read/ReadVariableOp:0(2training/Adam/zeros_40:08

training/Adam/Variable_41:0 training/Adam/Variable_41/Assign/training/Adam/Variable_41/Read/ReadVariableOp:0(2training/Adam/zeros_41:08

training/Adam/Variable_42:0 training/Adam/Variable_42/Assign/training/Adam/Variable_42/Read/ReadVariableOp:0(2training/Adam/zeros_42:08

training/Adam/Variable_43:0 training/Adam/Variable_43/Assign/training/Adam/Variable_43/Read/ReadVariableOp:0(2training/Adam/zeros_43:08

training/Adam/Variable_44:0 training/Adam/Variable_44/Assign/training/Adam/Variable_44/Read/ReadVariableOp:0(2training/Adam/zeros_44:08

training/Adam/Variable_45:0 training/Adam/Variable_45/Assign/training/Adam/Variable_45/Read/ReadVariableOp:0(2training/Adam/zeros_45:08

training/Adam/Variable_46:0 training/Adam/Variable_46/Assign/training/Adam/Variable_46/Read/ReadVariableOp:0(2training/Adam/zeros_46:08

training/Adam/Variable_47:0 training/Adam/Variable_47/Assign/training/Adam/Variable_47/Read/ReadVariableOp:0(2training/Adam/zeros_47:08

training/Adam/Variable_48:0 training/Adam/Variable_48/Assign/training/Adam/Variable_48/Read/ReadVariableOp:0(2training/Adam/zeros_48:08

training/Adam/Variable_49:0 training/Adam/Variable_49/Assign/training/Adam/Variable_49/Read/ReadVariableOp:0(2training/Adam/zeros_49:08

training/Adam/Variable_50:0 training/Adam/Variable_50/Assign/training/Adam/Variable_50/Read/ReadVariableOp:0(2training/Adam/zeros_50:08

training/Adam/Variable_51:0 training/Adam/Variable_51/Assign/training/Adam/Variable_51/Read/ReadVariableOp:0(2training/Adam/zeros_51:08

training/Adam/Variable_52:0 training/Adam/Variable_52/Assign/training/Adam/Variable_52/Read/ReadVariableOp:0(2training/Adam/zeros_52:08

training/Adam/Variable_53:0 training/Adam/Variable_53/Assign/training/Adam/Variable_53/Read/ReadVariableOp:0(2training/Adam/zeros_53:08"аV
	variablesТVПV
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08

conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08

conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08

conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08

conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08

conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08

conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08

conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08

training/Adam/Variable_24:0 training/Adam/Variable_24/Assign/training/Adam/Variable_24/Read/ReadVariableOp:0(2training/Adam/zeros_24:08

training/Adam/Variable_25:0 training/Adam/Variable_25/Assign/training/Adam/Variable_25/Read/ReadVariableOp:0(2training/Adam/zeros_25:08

training/Adam/Variable_26:0 training/Adam/Variable_26/Assign/training/Adam/Variable_26/Read/ReadVariableOp:0(2training/Adam/zeros_26:08

training/Adam/Variable_27:0 training/Adam/Variable_27/Assign/training/Adam/Variable_27/Read/ReadVariableOp:0(2training/Adam/zeros_27:08

training/Adam/Variable_28:0 training/Adam/Variable_28/Assign/training/Adam/Variable_28/Read/ReadVariableOp:0(2training/Adam/zeros_28:08

training/Adam/Variable_29:0 training/Adam/Variable_29/Assign/training/Adam/Variable_29/Read/ReadVariableOp:0(2training/Adam/zeros_29:08

training/Adam/Variable_30:0 training/Adam/Variable_30/Assign/training/Adam/Variable_30/Read/ReadVariableOp:0(2training/Adam/zeros_30:08

training/Adam/Variable_31:0 training/Adam/Variable_31/Assign/training/Adam/Variable_31/Read/ReadVariableOp:0(2training/Adam/zeros_31:08

training/Adam/Variable_32:0 training/Adam/Variable_32/Assign/training/Adam/Variable_32/Read/ReadVariableOp:0(2training/Adam/zeros_32:08

training/Adam/Variable_33:0 training/Adam/Variable_33/Assign/training/Adam/Variable_33/Read/ReadVariableOp:0(2training/Adam/zeros_33:08

training/Adam/Variable_34:0 training/Adam/Variable_34/Assign/training/Adam/Variable_34/Read/ReadVariableOp:0(2training/Adam/zeros_34:08

training/Adam/Variable_35:0 training/Adam/Variable_35/Assign/training/Adam/Variable_35/Read/ReadVariableOp:0(2training/Adam/zeros_35:08

training/Adam/Variable_36:0 training/Adam/Variable_36/Assign/training/Adam/Variable_36/Read/ReadVariableOp:0(2training/Adam/zeros_36:08

training/Adam/Variable_37:0 training/Adam/Variable_37/Assign/training/Adam/Variable_37/Read/ReadVariableOp:0(2training/Adam/zeros_37:08

training/Adam/Variable_38:0 training/Adam/Variable_38/Assign/training/Adam/Variable_38/Read/ReadVariableOp:0(2training/Adam/zeros_38:08

training/Adam/Variable_39:0 training/Adam/Variable_39/Assign/training/Adam/Variable_39/Read/ReadVariableOp:0(2training/Adam/zeros_39:08

training/Adam/Variable_40:0 training/Adam/Variable_40/Assign/training/Adam/Variable_40/Read/ReadVariableOp:0(2training/Adam/zeros_40:08

training/Adam/Variable_41:0 training/Adam/Variable_41/Assign/training/Adam/Variable_41/Read/ReadVariableOp:0(2training/Adam/zeros_41:08

training/Adam/Variable_42:0 training/Adam/Variable_42/Assign/training/Adam/Variable_42/Read/ReadVariableOp:0(2training/Adam/zeros_42:08

training/Adam/Variable_43:0 training/Adam/Variable_43/Assign/training/Adam/Variable_43/Read/ReadVariableOp:0(2training/Adam/zeros_43:08

training/Adam/Variable_44:0 training/Adam/Variable_44/Assign/training/Adam/Variable_44/Read/ReadVariableOp:0(2training/Adam/zeros_44:08

training/Adam/Variable_45:0 training/Adam/Variable_45/Assign/training/Adam/Variable_45/Read/ReadVariableOp:0(2training/Adam/zeros_45:08

training/Adam/Variable_46:0 training/Adam/Variable_46/Assign/training/Adam/Variable_46/Read/ReadVariableOp:0(2training/Adam/zeros_46:08

training/Adam/Variable_47:0 training/Adam/Variable_47/Assign/training/Adam/Variable_47/Read/ReadVariableOp:0(2training/Adam/zeros_47:08

training/Adam/Variable_48:0 training/Adam/Variable_48/Assign/training/Adam/Variable_48/Read/ReadVariableOp:0(2training/Adam/zeros_48:08

training/Adam/Variable_49:0 training/Adam/Variable_49/Assign/training/Adam/Variable_49/Read/ReadVariableOp:0(2training/Adam/zeros_49:08

training/Adam/Variable_50:0 training/Adam/Variable_50/Assign/training/Adam/Variable_50/Read/ReadVariableOp:0(2training/Adam/zeros_50:08

training/Adam/Variable_51:0 training/Adam/Variable_51/Assign/training/Adam/Variable_51/Read/ReadVariableOp:0(2training/Adam/zeros_51:08

training/Adam/Variable_52:0 training/Adam/Variable_52/Assign/training/Adam/Variable_52/Read/ReadVariableOp:0(2training/Adam/zeros_52:08

training/Adam/Variable_53:0 training/Adam/Variable_53/Assign/training/Adam/Variable_53/Read/ReadVariableOp:0(2training/Adam/zeros_53:08х{