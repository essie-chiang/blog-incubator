       гK"	  @Ц█E╫Abrain.Event:2рf>ЧRУ     Ю▓	юЧBЦ█E╫A"┼ж
~
input_1Placeholder*
dtype0*1
_output_shapes
:         ЁЁ*&
shape:         ЁЁ
~
input_2Placeholder*&
shape:         ЁЁ*
dtype0*1
_output_shapes
:         ЁЁ
a
subtract/subSubinput_2input_1*1
_output_shapes
:         ЁЁ*
T0
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
concatenate/concatConcatV2input_2input_1concatenate/concat/axis*
T0*
N*1
_output_shapes
:         ЁЁ*

Tidx0
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *Ё7'╛* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ё7'>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
╥
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
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▒
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
Р
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0
Щ
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:
К
conv2d/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
:
Я
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
З
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:*
_class
loc:@conv2d/bias
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
э
conv2d/Conv2DConv2Dsubtract/subconv2d/Conv2D/ReadVariableOp*
paddingSAME*1
_output_shapes
:         ЁЁ*
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
Ъ
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
_
conv2d/ReluReluconv2d/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *"
_class
loc:@conv2d_1/kernel
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *я[ё╜*"
_class
loc:@conv2d_1/kernel
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
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
╖
conv2d_1/kernelVarHandleOp* 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
Ш
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0
Я
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:*"
_class
loc:@conv2d_1/kernel
О
conv2d_1/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
е
conv2d_1/biasVarHandleOp*
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
З
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_1/bias
Н
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:* 
_class
loc:@conv2d_1/bias
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
Ё
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*1
_output_shapes
:         ЁЁ*
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
а
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
data_formatNHWC*1
_output_shapes
:         ЁЁ*
T0
c
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
b
add/addAddinput_2conv2d_1/Relu*1
_output_shapes
:         ЁЁ*
T0
╡
max_pooling2d/MaxPoolMaxPooladd/add*
ksize
*
paddingSAME*/
_output_shapes
:         xx*
T0*
data_formatNHWC*
strides

н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╛*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═У>*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_2/kernel*
seed2 
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_2/kernel
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_2/kernel
╖
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
Ш
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0
Я
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_2/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
е
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
З
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_2/bias
Н
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
g
conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0
°
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*/
_output_shapes
:         xx0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
a
conv2d_2/ReluReluconv2d_2/BiasAdd*/
_output_shapes
:         xx0*
T0
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *г┼╜*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *г┼=*"
_class
loc:@conv2d_3/kernel
Ў
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_3/kernel
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Ї
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_3/kernel
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
╖
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
Ш
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_3/kernel
Я
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_3/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
е
conv2d_3/biasVarHandleOp*
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
	container 
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
З
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros* 
_class
loc:@conv2d_3/bias*
dtype0
Н
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
°
conv2d_3/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:         xx0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:         xx0
н
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   0   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк=*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:00*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
┌
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_4/kernel
Ї
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
ц
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
╖
conv2d_4/kernelVarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: * 
shared_nameconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel
o
0conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
Ш
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
dtype0
Я
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*&
_output_shapes
:00
О
conv2d_4/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
:0
е
conv2d_4/biasVarHandleOp* 
_class
loc:@conv2d_4/bias*
	container *
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_4/bias
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
З
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros* 
_class
loc:@conv2d_4/bias*
dtype0
Н
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
Ё
conv2d_4/Conv2DConv2Dconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:         xx0*
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
Ю
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
a
conv2d_4/ReluReluconv2d_4/BiasAdd*/
_output_shapes
:         xx0*
T0
h
	add_1/addAddconv2d_2/Reluconv2d_4/Relu*
T0*/
_output_shapes
:         xx0
╣
max_pooling2d_1/MaxPoolMaxPool	add_1/add*
ksize
*
paddingSAME*/
_output_shapes
:         <<0*
T0*
data_formatNHWC*
strides

н
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   `   *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *ьQ╛*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *ьQ>*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0`*

seed *
T0*"
_class
loc:@conv2d_5/kernel*
seed2 
┌
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
Ї
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:0`
ц
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:0`
╖
conv2d_5/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
	container *
shape:0`
o
0conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
Ш
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_5/kernel*
dtype0
Я
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
dtype0*&
_output_shapes
:0`
О
conv2d_5/bias/Initializer/zerosConst*
valueB`*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:`
е
conv2d_5/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_5/bias* 
_class
loc:@conv2d_5/bias*
	container *
shape:`
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
З
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros* 
_class
loc:@conv2d_5/bias*
dtype0
Н
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:`
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
:0`
·
conv2d_5/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_5/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`
i
conv2d_5/BiasAdd/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:`
Ю
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
a
conv2d_5/ReluReluconv2d_5/BiasAdd*/
_output_shapes
:         <<`*
T0
н
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   `   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_6/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *HYЛ╜*"
_class
loc:@conv2d_6/kernel
Ч
.conv2d_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *HYЛ=*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0`*

seed *
T0*"
_class
loc:@conv2d_6/kernel*
seed2 
┌
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
Ї
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*&
_output_shapes
:0`*
T0*"
_class
loc:@conv2d_6/kernel
ц
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0`
╖
conv2d_6/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
	container *
shape:0`
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
Ш
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_6/kernel
Я
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
:0`
О
conv2d_6/bias/Initializer/zerosConst*
valueB`*    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:`
е
conv2d_6/biasVarHandleOp* 
_class
loc:@conv2d_6/bias*
	container *
shape:`*
dtype0*
_output_shapes
: *
shared_nameconv2d_6/bias
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
З
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0
Н
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:`
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
:0`
·
conv2d_6/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`*
	dilations

i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:`
Ю
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:         <<`
н
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*%
valueB"      `   `   *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *я[q╜*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_7/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *я[q=*"
_class
loc:@conv2d_7/kernel
Ў
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:``*

seed *
T0*"
_class
loc:@conv2d_7/kernel*
seed2 
┌
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_7/kernel
Ї
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*&
_output_shapes
:``*
T0*"
_class
loc:@conv2d_7/kernel
ц
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:``
╖
conv2d_7/kernelVarHandleOp*"
_class
loc:@conv2d_7/kernel*
	container *
shape:``*
dtype0*
_output_shapes
: * 
shared_nameconv2d_7/kernel
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
Ш
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_7/kernel*
dtype0
Я
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:``*"
_class
loc:@conv2d_7/kernel
О
conv2d_7/bias/Initializer/zerosConst*
valueB`*    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:`
е
conv2d_7/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
	container *
shape:`
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
З
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
Н
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:`
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
:``
Ё
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`
i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:`
Ю
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:         <<`*
T0
a
conv2d_7/ReluReluconv2d_7/BiasAdd*/
_output_shapes
:         <<`*
T0
h
	add_2/addAddconv2d_5/Reluconv2d_7/Relu*/
_output_shapes
:         <<`*
T0
╣
max_pooling2d_2/MaxPoolMaxPool	add_2/add*/
_output_shapes
:         `*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
н
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*%
valueB"      `   └   *"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_8/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *:═╛*"
_class
loc:@conv2d_8/kernel
Ч
.conv2d_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═>*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
ў
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_8/kernel*
seed2 *
dtype0*'
_output_shapes
:`└*

seed 
┌
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
ї
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*'
_output_shapes
:`└*
T0*"
_class
loc:@conv2d_8/kernel
ч
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*'
_output_shapes
:`└*
T0*"
_class
loc:@conv2d_8/kernel
╕
conv2d_8/kernelVarHandleOp* 
shared_nameconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel*
	container *
shape:`└*
dtype0*
_output_shapes
: 
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
Ш
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_8/kernel*
dtype0
а
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*'
_output_shapes
:`└*"
_class
loc:@conv2d_8/kernel
Р
conv2d_8/bias/Initializer/zerosConst*
valueB└*    * 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes	
:└
ж
conv2d_8/biasVarHandleOp*
shared_nameconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
	container *
shape:└*
dtype0*
_output_shapes
: 
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
З
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros* 
_class
loc:@conv2d_8/bias*
dtype0
О
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes	
:└* 
_class
loc:@conv2d_8/bias
g
conv2d_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
w
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*'
_output_shapes
:`└
√
conv2d_8/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_8/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         └
j
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes	
:└
Я
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
data_formatNHWC*0
_output_shapes
:         └*
T0
b
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*0
_output_shapes
:         └
н
0conv2d_9/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      `   └   *"
_class
loc:@conv2d_9/kernel
Ч
.conv2d_9/kernel/Initializer/random_uniform/minConst*
valueB
 *гE╜*"
_class
loc:@conv2d_9/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_9/kernel/Initializer/random_uniform/maxConst*
valueB
 *гE=*"
_class
loc:@conv2d_9/kernel*
dtype0*
_output_shapes
: 
ў
8conv2d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_9/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:`└*

seed *
T0*"
_class
loc:@conv2d_9/kernel*
seed2 
┌
.conv2d_9/kernel/Initializer/random_uniform/subSub.conv2d_9/kernel/Initializer/random_uniform/max.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*
_output_shapes
: 
ї
.conv2d_9/kernel/Initializer/random_uniform/mulMul8conv2d_9/kernel/Initializer/random_uniform/RandomUniform.conv2d_9/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_9/kernel*'
_output_shapes
:`└
ч
*conv2d_9/kernel/Initializer/random_uniformAdd.conv2d_9/kernel/Initializer/random_uniform/mul.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*'
_output_shapes
:`└
╕
conv2d_9/kernelVarHandleOp*"
_class
loc:@conv2d_9/kernel*
	container *
shape:`└*
dtype0*
_output_shapes
: * 
shared_nameconv2d_9/kernel
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
Ш
conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel*conv2d_9/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_9/kernel*
dtype0
а
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*"
_class
loc:@conv2d_9/kernel*
dtype0*'
_output_shapes
:`└
Р
conv2d_9/bias/Initializer/zerosConst*
valueB└*    * 
_class
loc:@conv2d_9/bias*
dtype0*
_output_shapes	
:└
ж
conv2d_9/biasVarHandleOp*
shared_nameconv2d_9/bias* 
_class
loc:@conv2d_9/bias*
	container *
shape:└*
dtype0*
_output_shapes
: 
k
.conv2d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
З
conv2d_9/bias/AssignAssignVariableOpconv2d_9/biasconv2d_9/bias/Initializer/zeros* 
_class
loc:@conv2d_9/bias*
dtype0
О
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias* 
_class
loc:@conv2d_9/bias*
dtype0*
_output_shapes	
:└
g
conv2d_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
w
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*
dtype0*'
_output_shapes
:`└
√
conv2d_9/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_9/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         └*
	dilations

j
conv2d_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_9/bias*
dtype0*
_output_shapes	
:└
Я
conv2d_9/BiasAddBiasAddconv2d_9/Conv2Dconv2d_9/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*0
_output_shapes
:         └
b
conv2d_9/ReluReluconv2d_9/BiasAdd*
T0*0
_output_shapes
:         └
п
1conv2d_10/kernel/Initializer/random_uniform/shapeConst*%
valueB"      └   └   *#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_10/kernel/Initializer/random_uniform/minConst*
valueB
 *лк*╜*#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_10/kernel/Initializer/random_uniform/maxConst*
valueB
 *лк*=*#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
: 
√
9conv2d_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_10/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:└└*

seed *
T0*#
_class
loc:@conv2d_10/kernel*
seed2 
▐
/conv2d_10/kernel/Initializer/random_uniform/subSub/conv2d_10/kernel/Initializer/random_uniform/max/conv2d_10/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv2d_10/kernel
·
/conv2d_10/kernel/Initializer/random_uniform/mulMul9conv2d_10/kernel/Initializer/random_uniform/RandomUniform/conv2d_10/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_10/kernel*(
_output_shapes
:└└
ь
+conv2d_10/kernel/Initializer/random_uniformAdd/conv2d_10/kernel/Initializer/random_uniform/mul/conv2d_10/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_10/kernel*(
_output_shapes
:└└
╝
conv2d_10/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_10/kernel*#
_class
loc:@conv2d_10/kernel*
	container *
shape:└└
q
1conv2d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 
Ь
conv2d_10/kernel/AssignAssignVariableOpconv2d_10/kernel+conv2d_10/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_10/kernel*
dtype0
д
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*
dtype0*(
_output_shapes
:└└*#
_class
loc:@conv2d_10/kernel
Т
 conv2d_10/bias/Initializer/zerosConst*
valueB└*    *!
_class
loc:@conv2d_10/bias*
dtype0*
_output_shapes	
:└
й
conv2d_10/biasVarHandleOp*
	container *
shape:└*
dtype0*
_output_shapes
: *
shared_nameconv2d_10/bias*!
_class
loc:@conv2d_10/bias
m
/conv2d_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/bias*
_output_shapes
: 
Л
conv2d_10/bias/AssignAssignVariableOpconv2d_10/bias conv2d_10/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_10/bias
С
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
dtype0*
_output_shapes	
:└*!
_class
loc:@conv2d_10/bias
h
conv2d_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
conv2d_10/Conv2D/ReadVariableOpReadVariableOpconv2d_10/kernel*
dtype0*(
_output_shapes
:└└
є
conv2d_10/Conv2DConv2Dconv2d_9/Reluconv2d_10/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         └*
	dilations
*
T0
l
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOpconv2d_10/bias*
dtype0*
_output_shapes	
:└
в
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D conv2d_10/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*0
_output_shapes
:         └
d
conv2d_10/ReluReluconv2d_10/BiasAdd*0
_output_shapes
:         └*
T0
j
	add_3/addAddconv2d_8/Reluconv2d_10/Relu*0
_output_shapes
:         └*
T0
\
up_sampling2d/ShapeShape	add_3/add*
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
├
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape!up_sampling2d/strided_slice/stack#up_sampling2d/strided_slice/stack_1#up_sampling2d/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
d
up_sampling2d/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
o
up_sampling2d/mulMulup_sampling2d/strided_sliceup_sampling2d/Const*
_output_shapes
:*
T0
к
#up_sampling2d/ResizeNearestNeighborResizeNearestNeighbor	add_3/addup_sampling2d/mul*
align_corners( *
T0*0
_output_shapes
:         <<└
[
concatenate_1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╗
concatenate_1/concatConcatV2	add_2/add#up_sampling2d/ResizeNearestNeighborconcatenate_1/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:         <<а
п
1conv2d_11/kernel/Initializer/random_uniform/shapeConst*%
valueB"         `   *#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_11/kernel/Initializer/random_uniform/minConst*
valueB
 *   ╛*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_11/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *   >*#
_class
loc:@conv2d_11/kernel
·
9conv2d_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_11/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_11/kernel*
seed2 *
dtype0*'
_output_shapes
:а`*

seed 
▐
/conv2d_11/kernel/Initializer/random_uniform/subSub/conv2d_11/kernel/Initializer/random_uniform/max/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: 
∙
/conv2d_11/kernel/Initializer/random_uniform/mulMul9conv2d_11/kernel/Initializer/random_uniform/RandomUniform/conv2d_11/kernel/Initializer/random_uniform/sub*'
_output_shapes
:а`*
T0*#
_class
loc:@conv2d_11/kernel
ы
+conv2d_11/kernel/Initializer/random_uniformAdd/conv2d_11/kernel/Initializer/random_uniform/mul/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*'
_output_shapes
:а`
╗
conv2d_11/kernelVarHandleOp*!
shared_nameconv2d_11/kernel*#
_class
loc:@conv2d_11/kernel*
	container *
shape:а`*
dtype0*
_output_shapes
: 
q
1conv2d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
Ь
conv2d_11/kernel/AssignAssignVariableOpconv2d_11/kernel+conv2d_11/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_11/kernel*
dtype0
г
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*#
_class
loc:@conv2d_11/kernel*
dtype0*'
_output_shapes
:а`
Р
 conv2d_11/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:`*
valueB`*    *!
_class
loc:@conv2d_11/bias
и
conv2d_11/biasVarHandleOp*
shared_nameconv2d_11/bias*!
_class
loc:@conv2d_11/bias*
	container *
shape:`*
dtype0*
_output_shapes
: 
m
/conv2d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/bias*
_output_shapes
: 
Л
conv2d_11/bias/AssignAssignVariableOpconv2d_11/bias conv2d_11/bias/Initializer/zeros*!
_class
loc:@conv2d_11/bias*
dtype0
Р
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes
:`
h
conv2d_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
y
conv2d_11/Conv2D/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*'
_output_shapes
:а`
∙
conv2d_11/Conv2DConv2Dconcatenate_1/concatconv2d_11/Conv2D/ReadVariableOp*/
_output_shapes
:         <<`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOpconv2d_11/bias*
dtype0*
_output_shapes
:`
б
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D conv2d_11/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
c
conv2d_11/ReluReluconv2d_11/BiasAdd*
T0*/
_output_shapes
:         <<`
п
1conv2d_12/kernel/Initializer/random_uniform/shapeConst*%
valueB"         `   *#
_class
loc:@conv2d_12/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_12/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *лк*╜*#
_class
loc:@conv2d_12/kernel
Щ
/conv2d_12/kernel/Initializer/random_uniform/maxConst*
valueB
 *лк*=*#
_class
loc:@conv2d_12/kernel*
dtype0*
_output_shapes
: 
·
9conv2d_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_12/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_12/kernel*
seed2 *
dtype0*'
_output_shapes
:а`*

seed 
▐
/conv2d_12/kernel/Initializer/random_uniform/subSub/conv2d_12/kernel/Initializer/random_uniform/max/conv2d_12/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv2d_12/kernel
∙
/conv2d_12/kernel/Initializer/random_uniform/mulMul9conv2d_12/kernel/Initializer/random_uniform/RandomUniform/conv2d_12/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_12/kernel*'
_output_shapes
:а`
ы
+conv2d_12/kernel/Initializer/random_uniformAdd/conv2d_12/kernel/Initializer/random_uniform/mul/conv2d_12/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_12/kernel*'
_output_shapes
:а`
╗
conv2d_12/kernelVarHandleOp*
shape:а`*
dtype0*
_output_shapes
: *!
shared_nameconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
	container 
q
1conv2d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
Ь
conv2d_12/kernel/AssignAssignVariableOpconv2d_12/kernel+conv2d_12/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_12/kernel*
dtype0
г
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
dtype0*'
_output_shapes
:а`
Р
 conv2d_12/bias/Initializer/zerosConst*
valueB`*    *!
_class
loc:@conv2d_12/bias*
dtype0*
_output_shapes
:`
и
conv2d_12/biasVarHandleOp*
shared_nameconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
	container *
shape:`*
dtype0*
_output_shapes
: 
m
/conv2d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/bias*
_output_shapes
: 
Л
conv2d_12/bias/AssignAssignVariableOpconv2d_12/bias conv2d_12/bias/Initializer/zeros*!
_class
loc:@conv2d_12/bias*
dtype0
Р
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
dtype0*
_output_shapes
:`
h
conv2d_12/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
y
conv2d_12/Conv2D/ReadVariableOpReadVariableOpconv2d_12/kernel*
dtype0*'
_output_shapes
:а`
∙
conv2d_12/Conv2DConv2Dconcatenate_1/concatconv2d_12/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`
k
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOpconv2d_12/bias*
dtype0*
_output_shapes
:`
б
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D conv2d_12/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
c
conv2d_12/ReluReluconv2d_12/BiasAdd*
T0*/
_output_shapes
:         <<`
п
1conv2d_13/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   *#
_class
loc:@conv2d_13/kernel
Щ
/conv2d_13/kernel/Initializer/random_uniform/minConst*
valueB
 *я[q╜*#
_class
loc:@conv2d_13/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_13/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *я[q=*#
_class
loc:@conv2d_13/kernel
∙
9conv2d_13/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_13/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:``*

seed *
T0*#
_class
loc:@conv2d_13/kernel*
seed2 
▐
/conv2d_13/kernel/Initializer/random_uniform/subSub/conv2d_13/kernel/Initializer/random_uniform/max/conv2d_13/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv2d_13/kernel
°
/conv2d_13/kernel/Initializer/random_uniform/mulMul9conv2d_13/kernel/Initializer/random_uniform/RandomUniform/conv2d_13/kernel/Initializer/random_uniform/sub*&
_output_shapes
:``*
T0*#
_class
loc:@conv2d_13/kernel
ъ
+conv2d_13/kernel/Initializer/random_uniformAdd/conv2d_13/kernel/Initializer/random_uniform/mul/conv2d_13/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_13/kernel*&
_output_shapes
:``
║
conv2d_13/kernelVarHandleOp*!
shared_nameconv2d_13/kernel*#
_class
loc:@conv2d_13/kernel*
	container *
shape:``*
dtype0*
_output_shapes
: 
q
1conv2d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 
Ь
conv2d_13/kernel/AssignAssignVariableOpconv2d_13/kernel+conv2d_13/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_13/kernel*
dtype0
в
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*#
_class
loc:@conv2d_13/kernel*
dtype0*&
_output_shapes
:``
Р
 conv2d_13/bias/Initializer/zerosConst*
valueB`*    *!
_class
loc:@conv2d_13/bias*
dtype0*
_output_shapes
:`
и
conv2d_13/biasVarHandleOp*!
_class
loc:@conv2d_13/bias*
	container *
shape:`*
dtype0*
_output_shapes
: *
shared_nameconv2d_13/bias
m
/conv2d_13/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/bias*
_output_shapes
: 
Л
conv2d_13/bias/AssignAssignVariableOpconv2d_13/bias conv2d_13/bias/Initializer/zeros*!
_class
loc:@conv2d_13/bias*
dtype0
Р
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*!
_class
loc:@conv2d_13/bias*
dtype0*
_output_shapes
:`
h
conv2d_13/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_13/Conv2D/ReadVariableOpReadVariableOpconv2d_13/kernel*
dtype0*&
_output_shapes
:``
є
conv2d_13/Conv2DConv2Dconv2d_12/Reluconv2d_13/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:         <<`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
k
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOpconv2d_13/bias*
dtype0*
_output_shapes
:`
б
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D conv2d_13/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
c
conv2d_13/ReluReluconv2d_13/BiasAdd*/
_output_shapes
:         <<`*
T0
j
	add_4/addAddconv2d_11/Reluconv2d_13/Relu*
T0*/
_output_shapes
:         <<`
^
up_sampling2d_1/ShapeShape	add_4/add*
T0*
out_type0*
_output_shapes
:
m
#up_sampling2d_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
═
up_sampling2d_1/strided_sliceStridedSliceup_sampling2d_1/Shape#up_sampling2d_1/strided_slice/stack%up_sampling2d_1/strided_slice/stack_1%up_sampling2d_1/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
f
up_sampling2d_1/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
u
up_sampling2d_1/mulMulup_sampling2d_1/strided_sliceup_sampling2d_1/Const*
T0*
_output_shapes
:
н
%up_sampling2d_1/ResizeNearestNeighborResizeNearestNeighbor	add_4/addup_sampling2d_1/mul*/
_output_shapes
:         xx`*
align_corners( *
T0
[
concatenate_2/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╜
concatenate_2/concatConcatV2	add_1/add%up_sampling2d_1/ResizeNearestNeighborconcatenate_2/concat/axis*
N*0
_output_shapes
:         xxР*

Tidx0*
T0
п
1conv2d_14/kernel/Initializer/random_uniform/shapeConst*%
valueB"      Р   0   *#
_class
loc:@conv2d_14/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_14/kernel/Initializer/random_uniform/minConst*
valueB
 *є5╛*#
_class
loc:@conv2d_14/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_14/kernel/Initializer/random_uniform/maxConst*
valueB
 *є5>*#
_class
loc:@conv2d_14/kernel*
dtype0*
_output_shapes
: 
·
9conv2d_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_14/kernel/Initializer/random_uniform/shape*

seed *
T0*#
_class
loc:@conv2d_14/kernel*
seed2 *
dtype0*'
_output_shapes
:Р0
▐
/conv2d_14/kernel/Initializer/random_uniform/subSub/conv2d_14/kernel/Initializer/random_uniform/max/conv2d_14/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_14/kernel*
_output_shapes
: 
∙
/conv2d_14/kernel/Initializer/random_uniform/mulMul9conv2d_14/kernel/Initializer/random_uniform/RandomUniform/conv2d_14/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_14/kernel*'
_output_shapes
:Р0
ы
+conv2d_14/kernel/Initializer/random_uniformAdd/conv2d_14/kernel/Initializer/random_uniform/mul/conv2d_14/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_14/kernel*'
_output_shapes
:Р0
╗
conv2d_14/kernelVarHandleOp*
	container *
shape:Р0*
dtype0*
_output_shapes
: *!
shared_nameconv2d_14/kernel*#
_class
loc:@conv2d_14/kernel
q
1conv2d_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_14/kernel*
_output_shapes
: 
Ь
conv2d_14/kernel/AssignAssignVariableOpconv2d_14/kernel+conv2d_14/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_14/kernel*
dtype0
г
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*#
_class
loc:@conv2d_14/kernel*
dtype0*'
_output_shapes
:Р0
Р
 conv2d_14/bias/Initializer/zerosConst*
valueB0*    *!
_class
loc:@conv2d_14/bias*
dtype0*
_output_shapes
:0
и
conv2d_14/biasVarHandleOp*
shared_nameconv2d_14/bias*!
_class
loc:@conv2d_14/bias*
	container *
shape:0*
dtype0*
_output_shapes
: 
m
/conv2d_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_14/bias*
_output_shapes
: 
Л
conv2d_14/bias/AssignAssignVariableOpconv2d_14/bias conv2d_14/bias/Initializer/zeros*!
_class
loc:@conv2d_14/bias*
dtype0
Р
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*!
_class
loc:@conv2d_14/bias*
dtype0*
_output_shapes
:0
h
conv2d_14/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
y
conv2d_14/Conv2D/ReadVariableOpReadVariableOpconv2d_14/kernel*
dtype0*'
_output_shapes
:Р0
∙
conv2d_14/Conv2DConv2Dconcatenate_2/concatconv2d_14/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx0
k
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOpconv2d_14/bias*
dtype0*
_output_shapes
:0
б
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D conv2d_14/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:         xx0*
T0
c
conv2d_14/ReluReluconv2d_14/BiasAdd*
T0*/
_output_shapes
:         xx0
п
1conv2d_15/kernel/Initializer/random_uniform/shapeConst*%
valueB"      Р   0   *#
_class
loc:@conv2d_15/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_15/kernel/Initializer/random_uniform/minConst*
valueB
 *я[q╜*#
_class
loc:@conv2d_15/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_15/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[q=*#
_class
loc:@conv2d_15/kernel*
dtype0*
_output_shapes
: 
·
9conv2d_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_15/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*'
_output_shapes
:Р0*

seed *
T0*#
_class
loc:@conv2d_15/kernel
▐
/conv2d_15/kernel/Initializer/random_uniform/subSub/conv2d_15/kernel/Initializer/random_uniform/max/conv2d_15/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
: 
∙
/conv2d_15/kernel/Initializer/random_uniform/mulMul9conv2d_15/kernel/Initializer/random_uniform/RandomUniform/conv2d_15/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_15/kernel*'
_output_shapes
:Р0
ы
+conv2d_15/kernel/Initializer/random_uniformAdd/conv2d_15/kernel/Initializer/random_uniform/mul/conv2d_15/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_15/kernel*'
_output_shapes
:Р0
╗
conv2d_15/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_15/kernel*#
_class
loc:@conv2d_15/kernel*
	container *
shape:Р0
q
1conv2d_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_15/kernel*
_output_shapes
: 
Ь
conv2d_15/kernel/AssignAssignVariableOpconv2d_15/kernel+conv2d_15/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_15/kernel*
dtype0
г
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*#
_class
loc:@conv2d_15/kernel*
dtype0*'
_output_shapes
:Р0
Р
 conv2d_15/bias/Initializer/zerosConst*
valueB0*    *!
_class
loc:@conv2d_15/bias*
dtype0*
_output_shapes
:0
и
conv2d_15/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_15/bias*!
_class
loc:@conv2d_15/bias*
	container *
shape:0
m
/conv2d_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_15/bias*
_output_shapes
: 
Л
conv2d_15/bias/AssignAssignVariableOpconv2d_15/bias conv2d_15/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_15/bias
Р
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
dtype0*
_output_shapes
:0*!
_class
loc:@conv2d_15/bias
h
conv2d_15/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
y
conv2d_15/Conv2D/ReadVariableOpReadVariableOpconv2d_15/kernel*
dtype0*'
_output_shapes
:Р0
∙
conv2d_15/Conv2DConv2Dconcatenate_2/concatconv2d_15/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:         xx0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
k
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOpconv2d_15/bias*
dtype0*
_output_shapes
:0
б
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D conv2d_15/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:         xx0*
T0
c
conv2d_15/ReluReluconv2d_15/BiasAdd*
T0*/
_output_shapes
:         xx0
п
1conv2d_16/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   0   *#
_class
loc:@conv2d_16/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_16/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *лкк╜*#
_class
loc:@conv2d_16/kernel
Щ
/conv2d_16/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *лкк=*#
_class
loc:@conv2d_16/kernel
∙
9conv2d_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_16/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_16/kernel*
seed2 *
dtype0*&
_output_shapes
:00*

seed 
▐
/conv2d_16/kernel/Initializer/random_uniform/subSub/conv2d_16/kernel/Initializer/random_uniform/max/conv2d_16/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_16/kernel*
_output_shapes
: 
°
/conv2d_16/kernel/Initializer/random_uniform/mulMul9conv2d_16/kernel/Initializer/random_uniform/RandomUniform/conv2d_16/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_16/kernel*&
_output_shapes
:00
ъ
+conv2d_16/kernel/Initializer/random_uniformAdd/conv2d_16/kernel/Initializer/random_uniform/mul/conv2d_16/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_16/kernel*&
_output_shapes
:00
║
conv2d_16/kernelVarHandleOp*!
shared_nameconv2d_16/kernel*#
_class
loc:@conv2d_16/kernel*
	container *
shape:00*
dtype0*
_output_shapes
: 
q
1conv2d_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_16/kernel*
_output_shapes
: 
Ь
conv2d_16/kernel/AssignAssignVariableOpconv2d_16/kernel+conv2d_16/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_16/kernel*
dtype0
в
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*#
_class
loc:@conv2d_16/kernel*
dtype0*&
_output_shapes
:00
Р
 conv2d_16/bias/Initializer/zerosConst*
valueB0*    *!
_class
loc:@conv2d_16/bias*
dtype0*
_output_shapes
:0
и
conv2d_16/biasVarHandleOp*
shared_nameconv2d_16/bias*!
_class
loc:@conv2d_16/bias*
	container *
shape:0*
dtype0*
_output_shapes
: 
m
/conv2d_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_16/bias*
_output_shapes
: 
Л
conv2d_16/bias/AssignAssignVariableOpconv2d_16/bias conv2d_16/bias/Initializer/zeros*!
_class
loc:@conv2d_16/bias*
dtype0
Р
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
dtype0*
_output_shapes
:0*!
_class
loc:@conv2d_16/bias
h
conv2d_16/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_16/Conv2D/ReadVariableOpReadVariableOpconv2d_16/kernel*
dtype0*&
_output_shapes
:00
є
conv2d_16/Conv2DConv2Dconv2d_15/Reluconv2d_16/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx0
k
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOpconv2d_16/bias*
dtype0*
_output_shapes
:0
б
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D conv2d_16/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
c
conv2d_16/ReluReluconv2d_16/BiasAdd*
T0*/
_output_shapes
:         xx0
j
	add_5/addAddconv2d_14/Reluconv2d_16/Relu*/
_output_shapes
:         xx0*
T0
^
up_sampling2d_2/ShapeShape	add_5/add*
T0*
out_type0*
_output_shapes
:
m
#up_sampling2d_2/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_2/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
═
up_sampling2d_2/strided_sliceStridedSliceup_sampling2d_2/Shape#up_sampling2d_2/strided_slice/stack%up_sampling2d_2/strided_slice/stack_1%up_sampling2d_2/strided_slice/stack_2*
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
f
up_sampling2d_2/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
u
up_sampling2d_2/mulMulup_sampling2d_2/strided_sliceup_sampling2d_2/Const*
T0*
_output_shapes
:
п
%up_sampling2d_2/ResizeNearestNeighborResizeNearestNeighbor	add_5/addup_sampling2d_2/mul*
align_corners( *
T0*1
_output_shapes
:         ЁЁ0
[
concatenate_3/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
╝
concatenate_3/concatConcatV2add/add%up_sampling2d_2/ResizeNearestNeighborconcatenate_3/concat/axis*
N*1
_output_shapes
:         ЁЁH*

Tidx0*
T0
п
1conv2d_17/kernel/Initializer/random_uniform/shapeConst*%
valueB"      H      *#
_class
loc:@conv2d_17/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_17/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *  А╛*#
_class
loc:@conv2d_17/kernel
Щ
/conv2d_17/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  А>*#
_class
loc:@conv2d_17/kernel
∙
9conv2d_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_17/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:H*

seed *
T0*#
_class
loc:@conv2d_17/kernel
▐
/conv2d_17/kernel/Initializer/random_uniform/subSub/conv2d_17/kernel/Initializer/random_uniform/max/conv2d_17/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv2d_17/kernel
°
/conv2d_17/kernel/Initializer/random_uniform/mulMul9conv2d_17/kernel/Initializer/random_uniform/RandomUniform/conv2d_17/kernel/Initializer/random_uniform/sub*&
_output_shapes
:H*
T0*#
_class
loc:@conv2d_17/kernel
ъ
+conv2d_17/kernel/Initializer/random_uniformAdd/conv2d_17/kernel/Initializer/random_uniform/mul/conv2d_17/kernel/Initializer/random_uniform/min*&
_output_shapes
:H*
T0*#
_class
loc:@conv2d_17/kernel
║
conv2d_17/kernelVarHandleOp*
	container *
shape:H*
dtype0*
_output_shapes
: *!
shared_nameconv2d_17/kernel*#
_class
loc:@conv2d_17/kernel
q
1conv2d_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_17/kernel*
_output_shapes
: 
Ь
conv2d_17/kernel/AssignAssignVariableOpconv2d_17/kernel+conv2d_17/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_17/kernel*
dtype0
в
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
:H*#
_class
loc:@conv2d_17/kernel
Р
 conv2d_17/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_17/bias*
dtype0*
_output_shapes
:
и
conv2d_17/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_17/bias*!
_class
loc:@conv2d_17/bias*
	container *
shape:
m
/conv2d_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_17/bias*
_output_shapes
: 
Л
conv2d_17/bias/AssignAssignVariableOpconv2d_17/bias conv2d_17/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_17/bias
Р
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*!
_class
loc:@conv2d_17/bias*
dtype0*
_output_shapes
:
h
conv2d_17/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_17/Conv2D/ReadVariableOpReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
:H
√
conv2d_17/Conv2DConv2Dconcatenate_3/concatconv2d_17/Conv2D/ReadVariableOp*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
k
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOpconv2d_17/bias*
dtype0*
_output_shapes
:
г
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D conv2d_17/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_17/ReluReluconv2d_17/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
п
1conv2d_18/kernel/Initializer/random_uniform/shapeConst*%
valueB"      H      *#
_class
loc:@conv2d_18/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_18/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*#
_class
loc:@conv2d_18/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_18/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк=*#
_class
loc:@conv2d_18/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_18/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_18/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:H*

seed *
T0*#
_class
loc:@conv2d_18/kernel*
seed2 
▐
/conv2d_18/kernel/Initializer/random_uniform/subSub/conv2d_18/kernel/Initializer/random_uniform/max/conv2d_18/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv2d_18/kernel
°
/conv2d_18/kernel/Initializer/random_uniform/mulMul9conv2d_18/kernel/Initializer/random_uniform/RandomUniform/conv2d_18/kernel/Initializer/random_uniform/sub*&
_output_shapes
:H*
T0*#
_class
loc:@conv2d_18/kernel
ъ
+conv2d_18/kernel/Initializer/random_uniformAdd/conv2d_18/kernel/Initializer/random_uniform/mul/conv2d_18/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_18/kernel*&
_output_shapes
:H
║
conv2d_18/kernelVarHandleOp*#
_class
loc:@conv2d_18/kernel*
	container *
shape:H*
dtype0*
_output_shapes
: *!
shared_nameconv2d_18/kernel
q
1conv2d_18/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_18/kernel*
_output_shapes
: 
Ь
conv2d_18/kernel/AssignAssignVariableOpconv2d_18/kernel+conv2d_18/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_18/kernel*
dtype0
в
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*#
_class
loc:@conv2d_18/kernel*
dtype0*&
_output_shapes
:H
Р
 conv2d_18/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *!
_class
loc:@conv2d_18/bias
и
conv2d_18/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_18/bias*!
_class
loc:@conv2d_18/bias*
	container *
shape:
m
/conv2d_18/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_18/bias*
_output_shapes
: 
Л
conv2d_18/bias/AssignAssignVariableOpconv2d_18/bias conv2d_18/bias/Initializer/zeros*!
_class
loc:@conv2d_18/bias*
dtype0
Р
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*!
_class
loc:@conv2d_18/bias*
dtype0*
_output_shapes
:
h
conv2d_18/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_18/Conv2D/ReadVariableOpReadVariableOpconv2d_18/kernel*
dtype0*&
_output_shapes
:H
√
conv2d_18/Conv2DConv2Dconcatenate_3/concatconv2d_18/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ
k
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOpconv2d_18/bias*
dtype0*
_output_shapes
:
г
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D conv2d_18/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_18/ReluReluconv2d_18/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
п
1conv2d_19/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@conv2d_19/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_19/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *я[ё╜*#
_class
loc:@conv2d_19/kernel
Щ
/conv2d_19/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*#
_class
loc:@conv2d_19/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_19/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_19/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*#
_class
loc:@conv2d_19/kernel*
seed2 
▐
/conv2d_19/kernel/Initializer/random_uniform/subSub/conv2d_19/kernel/Initializer/random_uniform/max/conv2d_19/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_19/kernel*
_output_shapes
: 
°
/conv2d_19/kernel/Initializer/random_uniform/mulMul9conv2d_19/kernel/Initializer/random_uniform/RandomUniform/conv2d_19/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_19/kernel*&
_output_shapes
:
ъ
+conv2d_19/kernel/Initializer/random_uniformAdd/conv2d_19/kernel/Initializer/random_uniform/mul/conv2d_19/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_19/kernel*&
_output_shapes
:
║
conv2d_19/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: *!
shared_nameconv2d_19/kernel*#
_class
loc:@conv2d_19/kernel*
	container 
q
1conv2d_19/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_19/kernel*
_output_shapes
: 
Ь
conv2d_19/kernel/AssignAssignVariableOpconv2d_19/kernel+conv2d_19/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_19/kernel*
dtype0
в
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*#
_class
loc:@conv2d_19/kernel*
dtype0*&
_output_shapes
:
Р
 conv2d_19/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_19/bias*
dtype0*
_output_shapes
:
и
conv2d_19/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_19/bias*!
_class
loc:@conv2d_19/bias*
	container *
shape:
m
/conv2d_19/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_19/bias*
_output_shapes
: 
Л
conv2d_19/bias/AssignAssignVariableOpconv2d_19/bias conv2d_19/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_19/bias
Р
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*!
_class
loc:@conv2d_19/bias*
dtype0*
_output_shapes
:
h
conv2d_19/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
x
conv2d_19/Conv2D/ReadVariableOpReadVariableOpconv2d_19/kernel*
dtype0*&
_output_shapes
:
ї
conv2d_19/Conv2DConv2Dconv2d_18/Reluconv2d_19/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ
k
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOpconv2d_19/bias*
dtype0*
_output_shapes
:
г
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D conv2d_19/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_19/ReluReluconv2d_19/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
l
	add_6/addAddconv2d_17/Reluconv2d_19/Relu*
T0*1
_output_shapes
:         ЁЁ
п
1conv2d_20/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@conv2d_20/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_20/kernel/Initializer/random_uniform/minConst*
valueB
 *ч╙·╛*#
_class
loc:@conv2d_20/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_20/kernel/Initializer/random_uniform/maxConst*
valueB
 *ч╙·>*#
_class
loc:@conv2d_20/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_20/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_20/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*#
_class
loc:@conv2d_20/kernel*
seed2 
▐
/conv2d_20/kernel/Initializer/random_uniform/subSub/conv2d_20/kernel/Initializer/random_uniform/max/conv2d_20/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv2d_20/kernel
°
/conv2d_20/kernel/Initializer/random_uniform/mulMul9conv2d_20/kernel/Initializer/random_uniform/RandomUniform/conv2d_20/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*#
_class
loc:@conv2d_20/kernel
ъ
+conv2d_20/kernel/Initializer/random_uniformAdd/conv2d_20/kernel/Initializer/random_uniform/mul/conv2d_20/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_20/kernel*&
_output_shapes
:
║
conv2d_20/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_20/kernel*#
_class
loc:@conv2d_20/kernel*
	container *
shape:
q
1conv2d_20/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_20/kernel*
_output_shapes
: 
Ь
conv2d_20/kernel/AssignAssignVariableOpconv2d_20/kernel+conv2d_20/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_20/kernel*
dtype0
в
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*#
_class
loc:@conv2d_20/kernel*
dtype0*&
_output_shapes
:
Р
 conv2d_20/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_20/bias*
dtype0*
_output_shapes
:
и
conv2d_20/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_20/bias*!
_class
loc:@conv2d_20/bias*
	container *
shape:
m
/conv2d_20/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_20/bias*
_output_shapes
: 
Л
conv2d_20/bias/AssignAssignVariableOpconv2d_20/bias conv2d_20/bias/Initializer/zeros*!
_class
loc:@conv2d_20/bias*
dtype0
Р
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*!
_class
loc:@conv2d_20/bias*
dtype0*
_output_shapes
:
h
conv2d_20/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_20/Conv2D/ReadVariableOpReadVariableOpconv2d_20/kernel*
dtype0*&
_output_shapes
:
Ё
conv2d_20/Conv2DConv2D	add_6/addconv2d_20/Conv2D/ReadVariableOp*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOpconv2d_20/bias*
dtype0*
_output_shapes
:
г
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D conv2d_20/BiasAdd/ReadVariableOp*
data_formatNHWC*1
_output_shapes
:         ЁЁ*
T0
e
conv2d_20/ReluReluconv2d_20/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
e
	add_7/addAddinput_1conv2d_20/Relu*
T0*1
_output_shapes
:         ЁЁ
п
1conv2d_21/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@conv2d_21/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_21/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│▌┐*#
_class
loc:@conv2d_21/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_21/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│▌?*#
_class
loc:@conv2d_21/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_21/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_21/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_21/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
▐
/conv2d_21/kernel/Initializer/random_uniform/subSub/conv2d_21/kernel/Initializer/random_uniform/max/conv2d_21/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_21/kernel*
_output_shapes
: 
°
/conv2d_21/kernel/Initializer/random_uniform/mulMul9conv2d_21/kernel/Initializer/random_uniform/RandomUniform/conv2d_21/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_21/kernel*&
_output_shapes
:
ъ
+conv2d_21/kernel/Initializer/random_uniformAdd/conv2d_21/kernel/Initializer/random_uniform/mul/conv2d_21/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_21/kernel*&
_output_shapes
:
║
conv2d_21/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_21/kernel*#
_class
loc:@conv2d_21/kernel*
	container *
shape:
q
1conv2d_21/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_21/kernel*
_output_shapes
: 
Ь
conv2d_21/kernel/AssignAssignVariableOpconv2d_21/kernel+conv2d_21/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_21/kernel*
dtype0
в
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*#
_class
loc:@conv2d_21/kernel*
dtype0*&
_output_shapes
:
Р
 conv2d_21/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *!
_class
loc:@conv2d_21/bias
и
conv2d_21/biasVarHandleOp*
shared_nameconv2d_21/bias*!
_class
loc:@conv2d_21/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
m
/conv2d_21/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_21/bias*
_output_shapes
: 
Л
conv2d_21/bias/AssignAssignVariableOpconv2d_21/bias conv2d_21/bias/Initializer/zeros*!
_class
loc:@conv2d_21/bias*
dtype0
Р
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
dtype0*
_output_shapes
:*!
_class
loc:@conv2d_21/bias
h
conv2d_21/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
x
conv2d_21/Conv2D/ReadVariableOpReadVariableOpconv2d_21/kernel*
dtype0*&
_output_shapes
:
Ё
conv2d_21/Conv2DConv2D	add_7/addconv2d_21/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ
k
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOpconv2d_21/bias*
dtype0*
_output_shapes
:
г
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D conv2d_21/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_21/ReluReluconv2d_21/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
Н
(SGD/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R *!
_class
loc:@SGD/iterations
д
SGD/iterationsVarHandleOp*!
_class
loc:@SGD/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_nameSGD/iterations
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 
У
SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*!
_class
loc:@SGD/iterations*
dtype0	
М
"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
А
 SGD/lr/Initializer/initial_valueConst*
valueB
 *
╫#<*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 
М
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
SGD/lr/Read/ReadVariableOpReadVariableOpSGD/lr*
dtype0*
_output_shapes
: *
_class
loc:@SGD/lr
М
&SGD/momentum/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 
Ю
SGD/momentumVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSGD/momentum*
_class
loc:@SGD/momentum*
	container *
shape: 
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 
Л
SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
_class
loc:@SGD/momentum*
dtype0
Ж
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: *
_class
loc:@SGD/momentum
Ж
#SGD/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
Х
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
dtype0*
_class
loc:@SGD/decay
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
╣
conv2d_21_targetPlaceholder*
dtype0*J
_output_shapes8
6:4                                    *?
shape6:4                                    
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
Е
conv2d_21_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:         *
shape:         
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
Й
totalVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container *
shape: 
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
Й
countVarHandleOp*
shared_namecount*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: 
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
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: *
_class

loc:@count
Е
loss/conv2d_21_loss/subSubconv2d_21/Reluconv2d_21_target*
T0*:
_output_shapes(
&:$         ЁЁ         
|
loss/conv2d_21_loss/AbsAbsloss/conv2d_21_loss/sub*
T0*:
_output_shapes(
&:$         ЁЁ         
u
*loss/conv2d_21_loss/Mean/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
║
loss/conv2d_21_loss/MeanMeanloss/conv2d_21_loss/Abs*loss/conv2d_21_loss/Mean/reduction_indices*
T0*-
_output_shapes
:         ЁЁ*
	keep_dims( *

Tidx0
а
Hloss/conv2d_21_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeconv2d_21_sample_weights*
_output_shapes
:*
T0*
out_type0
Й
Gloss/conv2d_21_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :
Я
Gloss/conv2d_21_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/conv2d_21_loss/Mean*
_output_shapes
:*
T0*
out_type0
И
Floss/conv2d_21_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
}
,loss/conv2d_21_loss/Mean_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
╡
loss/conv2d_21_loss/Mean_1Meanloss/conv2d_21_loss/Mean,loss/conv2d_21_loss/Mean_1/reduction_indices*#
_output_shapes
:         *
	keep_dims( *

Tidx0*
T0
В
loss/conv2d_21_loss/MulMulloss/conv2d_21_loss/Mean_1conv2d_21_sample_weights*
T0*#
_output_shapes
:         
c
loss/conv2d_21_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Р
loss/conv2d_21_loss/SumSumloss/conv2d_21_loss/Mulloss/conv2d_21_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
loss/conv2d_21_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Х
loss/conv2d_21_loss/Sum_1Sumconv2d_21_sample_weightsloss/conv2d_21_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss/conv2d_21_loss/div_no_nanDivNoNanloss/conv2d_21_loss/Sumloss/conv2d_21_loss/Sum_1*
T0*
_output_shapes
: 
^
loss/conv2d_21_loss/Const_2Const*
dtype0*
_output_shapes
: *
valueB 
Э
loss/conv2d_21_loss/Mean_2Meanloss/conv2d_21_loss/div_no_nanloss/conv2d_21_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
X
loss/mulMul
loss/mul/xloss/conv2d_21_loss/Mean_2*
T0*
_output_shapes
: 
~
metrics/psnr/subSubconv2d_21/Reluconv2d_21_target*
T0*:
_output_shapes(
&:$         ЁЁ         
t
metrics/psnr/SquareSquaremetrics/psnr/sub*
T0*:
_output_shapes(
&:$         ЁЁ         
k
metrics/psnr/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             
А
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
metrics/psnr/mul/xConst*
valueB
 *   ┴*
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
metrics/psnr/CastCastmetrics/psnr/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
W
metrics/psnr/Const_2Const*
dtype0*
_output_shapes
: *
valueB 
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
Ю
metrics/psnr/ReadVariableOp_1ReadVariableOpcount#^metrics/psnr/AssignAddVariableOp_1^metrics/psnr/ReadVariableOp*
dtype0*
_output_shapes
: 
Д
&metrics/psnr/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ж
(metrics/psnr/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ц
metrics/psnr/div_no_nanDivNoNan&metrics/psnr/div_no_nan/ReadVariableOp(metrics/psnr/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
А
metrics/psnr/sub_1Subconv2d_21/Reluconv2d_21_target*
T0*:
_output_shapes(
&:$         ЁЁ         
x
metrics/psnr/Square_1Squaremetrics/psnr/sub_1*
T0*:
_output_shapes(
&:$         ЁЁ         
m
metrics/psnr/Const_3Const*%
valueB"             *
dtype0*
_output_shapes
:
Ж
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
metrics/psnr/mul_1/xConst*
valueB
 *   ┴*
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
Г
metrics/psnr/Mean_2Meanmetrics/psnr/mul_1metrics/psnr/Const_5*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
|
training/SGD/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
В
 training/SGD/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  А?*
_class
loc:@loss/mul
│
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
ж
(training/SGD/gradients/loss/mul_grad/MulMultraining/SGD/gradients/Fillloss/conv2d_21_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ш
*training/SGD/gradients/loss/mul_grad/Mul_1Multraining/SGD/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
╢
Dtraining/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Reshape/shapeConst*
valueB *-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
dtype0*
_output_shapes
: 
Щ
>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/ReshapeReshape*training/SGD/gradients/loss/mul_grad/Mul_1Dtraining/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
_output_shapes
: 
о
<training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/ConstConst*
valueB *-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
dtype0*
_output_shapes
: 
г
;training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/TileTile>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Reshape<training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Const*

Tmultiples0*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
_output_shapes
: 
▓
>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  А?*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2
Ц
>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/truedivRealDiv;training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Tile>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Const_1*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
_output_shapes
: 
╢
@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ShapeConst*
valueB *1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
dtype0*
_output_shapes
: 
╕
Btraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape_1Const*
valueB *1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
dtype0*
_output_shapes
: 
▀
Ptraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ShapeBtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape_1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*2
_output_shapes 
:         :         
А
Etraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nanDivNoNan>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/truedivloss/conv2d_21_loss/Sum_1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
╧
>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/SumSumEtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nanPtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan
▒
Btraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ReshapeReshape>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Sum@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape*
_output_shapes
: *
T0*
Tshape0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan
▓
>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/NegNegloss/conv2d_21_loss/Sum*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
В
Gtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_1DivNoNan>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Negloss/conv2d_21_loss/Sum_1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
Л
Gtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_2DivNoNanGtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_1loss/conv2d_21_loss/Sum_1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
в
>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/mulMul>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/truedivGtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_2*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
╠
@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Sum_1Sum>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/mulRtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan
╖
Dtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Reshape_1Reshape@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Sum_1Btraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape_1*
T0*
Tshape0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
╖
Atraining/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Reshape/shapeConst*
valueB:**
_class 
loc:@loss/conv2d_21_loss/Sum*
dtype0*
_output_shapes
:
м
;training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/ReshapeReshapeBtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ReshapeAtraining/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Reshape/shape*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/Sum*
_output_shapes
:
╝
9training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/ShapeShapeloss/conv2d_21_loss/Mul*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/Sum*
_output_shapes
:
д
8training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/TileTile;training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Reshape9training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Shape*

Tmultiples0*
T0**
_class 
loc:@loss/conv2d_21_loss/Sum*#
_output_shapes
:         
┐
9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/ShapeShapeloss/conv2d_21_loss/Mean_1*
_output_shapes
:*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/Mul
┐
;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape_1Shapeconv2d_21_sample_weights*
_output_shapes
:*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/Mul
├
Itraining/SGD/gradients/loss/conv2d_21_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0**
_class 
loc:@loss/conv2d_21_loss/Mul
ь
7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/MulMul8training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Tileconv2d_21_sample_weights*
T0**
_class 
loc:@loss/conv2d_21_loss/Mul*#
_output_shapes
:         
о
7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/SumSum7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/MulItraining/SGD/gradients/loss/conv2d_21_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/conv2d_21_loss/Mul*
_output_shapes
:
в
;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/ReshapeReshape7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Sum9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/Mul*#
_output_shapes
:         
Ё
9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Mul_1Mulloss/conv2d_21_loss/Mean_18training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Tile*#
_output_shapes
:         *
T0**
_class 
loc:@loss/conv2d_21_loss/Mul
┤
9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Sum_1Sum9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Mul_1Ktraining/SGD/gradients/loss/conv2d_21_loss/Mul_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/conv2d_21_loss/Mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
и
=training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Reshape_1Reshape9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Sum_1;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/Mul*#
_output_shapes
:         
├
<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ShapeShapeloss/conv2d_21_loss/Mean*
T0*
out_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
м
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/SizeConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
А
:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/addAdd,loss/conv2d_21_loss/Mean_1/reduction_indices;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Size*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
У
:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/modFloorMod:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/add;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Size*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
╖
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_1Const*
valueB:*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
:
│
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
│
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/deltaConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
с
<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/rangeRangeBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/start;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/SizeBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/delta*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:*

Tidx0
▓
Atraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Fill/valueConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
м
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/FillFill>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_1Atraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
з
Dtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/DynamicStitchDynamicStitch<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/mod<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Fill*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
N*
_output_shapes
:
▒
@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
е
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/MaximumMaximumDtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/DynamicStitch@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum/y*
_output_shapes
:*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
Э
?training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordivFloorDiv<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
╤
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ReshapeReshape;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/ReshapeDtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*=
_output_shapes+
):'                           
═
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/TileTile>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Reshape?training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordiv*=
_output_shapes+
):'                           *

Tmultiples0*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
┼
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_2Shapeloss/conv2d_21_loss/Mean*
T0*
out_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
╟
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_3Shapeloss/conv2d_21_loss/Mean_1*
T0*
out_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
╡
<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ConstConst*
valueB: *-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
:
о
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ProdProd>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_2<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
╖
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Const_1Const*
valueB: *-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
:
▓
=training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Prod_1Prod>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_3>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
│
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
Ю
@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1Maximum=training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Prod_1Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1/y*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
: 
Ь
Atraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordiv_1FloorDiv;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Prod@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
: 
ї
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/CastCastAtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordiv_1*

SrcT0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0
к
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/truedivRealDiv;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Tile;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Cast*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*-
_output_shapes
:         ЁЁ
╛
:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ShapeShapeloss/conv2d_21_loss/Abs*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean
и
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/SizeConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
Ї
8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/addAdd*loss/conv2d_21_loss/Mean/reduction_indices9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Size*
_output_shapes
: *
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean
З
8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/modFloorMod8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/add9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Size*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
м
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_1Const*
valueB *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
п
@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/startConst*
value	B : *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
п
@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
╫
:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/rangeRange@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/start9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Size@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/delta*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:*

Tidx0
о
?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
а
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/FillFill<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_1?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
Ы
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_grad/DynamicStitchDynamicStitch:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/mod:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Fill*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
N*
_output_shapes
:
н
>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
Э
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/MaximumMaximumBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_grad/DynamicStitch>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum/y*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:
Х
=training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordivFloorDiv:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:
█
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ReshapeReshape>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/truedivBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss/conv2d_21_loss/Mean*J
_output_shapes8
6:4                                    
╥
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/TileTile<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Reshape=training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordiv*

Tmultiples0*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*J
_output_shapes8
6:4                                    
└
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_2Shapeloss/conv2d_21_loss/Abs*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean
┴
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_3Shapeloss/conv2d_21_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:
▒
:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ConstConst*
valueB: *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
:
ж
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ProdProd<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_2:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Const*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
│
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
:
к
;training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Prod_1Prod<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_3<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean
п
@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1/yConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
Ц
>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1Maximum;training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Prod_1@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1/y*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
Ф
?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordiv_1FloorDiv9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Prod>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
я
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/CastCast?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
п
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/truedivRealDiv9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Tile9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Cast*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*:
_output_shapes(
&:$         ЁЁ         
╩
8training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/SignSignloss/conv2d_21_loss/sub*
T0**
_class 
loc:@loss/conv2d_21_loss/Abs*:
_output_shapes(
&:$         ЁЁ         
з
7training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/mulMul<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/truediv8training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/Sign*
T0**
_class 
loc:@loss/conv2d_21_loss/Abs*:
_output_shapes(
&:$         ЁЁ         
│
9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/ShapeShapeconv2d_21/Relu*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:
╖
;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape_1Shapeconv2d_21_target*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:
├
Itraining/SGD/gradients/loss/conv2d_21_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0**
_class 
loc:@loss/conv2d_21_loss/sub
о
7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/SumSum7training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/mulItraining/SGD/gradients/loss/conv2d_21_loss/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:
░
;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/ReshapeReshape7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Sum9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/sub*1
_output_shapes
:         ЁЁ
▓
9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Sum_1Sum7training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/mulKtraining/SGD/gradients/loss/conv2d_21_loss/sub_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
╚
7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/NegNeg9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Sum_1*
T0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:
═
=training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Reshape_1Reshape7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Neg;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape_1*J
_output_shapes8
6:4                                    *
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/sub
ы
3training/SGD/gradients/conv2d_21/Relu_grad/ReluGradReluGrad;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Reshapeconv2d_21/Relu*
T0*!
_class
loc:@conv2d_21/Relu*1
_output_shapes
:         ЁЁ
▀
9training/SGD/gradients/conv2d_21/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_21/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_21/BiasAdd*
data_formatNHWC*
_output_shapes
:
╥
3training/SGD/gradients/conv2d_21/Conv2D_grad/ShapeNShapeN	add_7/addconv2d_21/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_21/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_21/Conv2D_grad/ShapeNconv2d_21/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_21/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_21/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ
Ф
Atraining/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter	add_7/add5training/SGD/gradients/conv2d_21/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_21/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_21/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

Р
+training/SGD/gradients/add_7/add_grad/ShapeShapeinput_1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_7/add
Щ
-training/SGD/gradients/add_7/add_grad/Shape_1Shapeconv2d_20/Relu*
T0*
out_type0*
_class
loc:@add_7/add*
_output_shapes
:
Л
;training/SGD/gradients/add_7/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_7/add_grad/Shape-training/SGD/gradients/add_7/add_grad/Shape_1*
T0*
_class
loc:@add_7/add*2
_output_shapes 
:         :         
Н
)training/SGD/gradients/add_7/add_grad/SumSum@training/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropInput;training/SGD/gradients/add_7/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_7/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
°
-training/SGD/gradients/add_7/add_grad/ReshapeReshape)training/SGD/gradients/add_7/add_grad/Sum+training/SGD/gradients/add_7/add_grad/Shape*1
_output_shapes
:         ЁЁ*
T0*
Tshape0*
_class
loc:@add_7/add
С
+training/SGD/gradients/add_7/add_grad/Sum_1Sum@training/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropInput=training/SGD/gradients/add_7/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_7/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
■
/training/SGD/gradients/add_7/add_grad/Reshape_1Reshape+training/SGD/gradients/add_7/add_grad/Sum_1-training/SGD/gradients/add_7/add_grad/Shape_1*1
_output_shapes
:         ЁЁ*
T0*
Tshape0*
_class
loc:@add_7/add
▀
3training/SGD/gradients/conv2d_20/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_7/add_grad/Reshape_1conv2d_20/Relu*
T0*!
_class
loc:@conv2d_20/Relu*1
_output_shapes
:         ЁЁ
▀
9training/SGD/gradients/conv2d_20/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_20/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_20/BiasAdd*
data_formatNHWC*
_output_shapes
:
╥
3training/SGD/gradients/conv2d_20/Conv2D_grad/ShapeNShapeN	add_6/addconv2d_20/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_20/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_20/Conv2D_grad/ShapeNconv2d_20/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_20/Relu_grad/ReluGrad*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*#
_class
loc:@conv2d_20/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ф
Atraining/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter	add_6/add5training/SGD/gradients/conv2d_20/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_20/Relu_grad/ReluGrad*&
_output_shapes
:*
	dilations
*
T0*#
_class
loc:@conv2d_20/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ч
+training/SGD/gradients/add_6/add_grad/ShapeShapeconv2d_17/Relu*
T0*
out_type0*
_class
loc:@add_6/add*
_output_shapes
:
Щ
-training/SGD/gradients/add_6/add_grad/Shape_1Shapeconv2d_19/Relu*
T0*
out_type0*
_class
loc:@add_6/add*
_output_shapes
:
Л
;training/SGD/gradients/add_6/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_6/add_grad/Shape-training/SGD/gradients/add_6/add_grad/Shape_1*
T0*
_class
loc:@add_6/add*2
_output_shapes 
:         :         
Н
)training/SGD/gradients/add_6/add_grad/SumSum@training/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropInput;training/SGD/gradients/add_6/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_6/add
°
-training/SGD/gradients/add_6/add_grad/ReshapeReshape)training/SGD/gradients/add_6/add_grad/Sum+training/SGD/gradients/add_6/add_grad/Shape*1
_output_shapes
:         ЁЁ*
T0*
Tshape0*
_class
loc:@add_6/add
С
+training/SGD/gradients/add_6/add_grad/Sum_1Sum@training/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropInput=training/SGD/gradients/add_6/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_6/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
■
/training/SGD/gradients/add_6/add_grad/Reshape_1Reshape+training/SGD/gradients/add_6/add_grad/Sum_1-training/SGD/gradients/add_6/add_grad/Shape_1*1
_output_shapes
:         ЁЁ*
T0*
Tshape0*
_class
loc:@add_6/add
▌
3training/SGD/gradients/conv2d_17/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_6/add_grad/Reshapeconv2d_17/Relu*
T0*!
_class
loc:@conv2d_17/Relu*1
_output_shapes
:         ЁЁ
▀
3training/SGD/gradients/conv2d_19/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_6/add_grad/Reshape_1conv2d_19/Relu*1
_output_shapes
:         ЁЁ*
T0*!
_class
loc:@conv2d_19/Relu
▀
9training/SGD/gradients/conv2d_17/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_17/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_17/BiasAdd*
data_formatNHWC*
_output_shapes
:
▀
9training/SGD/gradients/conv2d_19/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_19/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_19/BiasAdd*
data_formatNHWC*
_output_shapes
:
▌
3training/SGD/gradients/conv2d_17/Conv2D_grad/ShapeNShapeNconcatenate_3/concatconv2d_17/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_17/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_17/Conv2D_grad/ShapeNconv2d_17/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_17/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_17/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁH
Я
Atraining/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_3/concat5training/SGD/gradients/conv2d_17/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_17/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:H*
	dilations
*
T0*#
_class
loc:@conv2d_17/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
╫
3training/SGD/gradients/conv2d_19/Conv2D_grad/ShapeNShapeNconv2d_18/Reluconv2d_19/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_19/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_19/Conv2D_grad/ShapeNconv2d_19/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_19/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_19/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations

Щ
Atraining/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_18/Relu5training/SGD/gradients/conv2d_19/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_19/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_19/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Ё
3training/SGD/gradients/conv2d_18/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropInputconv2d_18/Relu*
T0*!
_class
loc:@conv2d_18/Relu*1
_output_shapes
:         ЁЁ
▀
9training/SGD/gradients/conv2d_18/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_18/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_18/BiasAdd*
data_formatNHWC*
_output_shapes
:
▌
3training/SGD/gradients/conv2d_18/Conv2D_grad/ShapeNShapeNconcatenate_3/concatconv2d_18/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_18/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_18/Conv2D_grad/ShapeNconv2d_18/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_18/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_18/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁH
Я
Atraining/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_3/concat5training/SGD/gradients/conv2d_18/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_18/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_18/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:H
С
training/SGD/gradients/AddNAddN@training/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInput@training/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropInput*
T0*#
_class
loc:@conv2d_17/Conv2D*
N*1
_output_shapes
:         ЁЁH
а
5training/SGD/gradients/concatenate_3/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_3/concat*
dtype0*
_output_shapes
: 
▄
4training/SGD/gradients/concatenate_3/concat_grad/modFloorModconcatenate_3/concat/axis5training/SGD/gradients/concatenate_3/concat_grad/Rank*
T0*'
_class
loc:@concatenate_3/concat*
_output_shapes
: 
ж
6training/SGD/gradients/concatenate_3/concat_grad/ShapeShapeadd/add*
T0*
out_type0*'
_class
loc:@concatenate_3/concat*
_output_shapes
:
▐
7training/SGD/gradients/concatenate_3/concat_grad/ShapeNShapeNadd/add%up_sampling2d_2/ResizeNearestNeighbor*
T0*
out_type0*'
_class
loc:@concatenate_3/concat*
N* 
_output_shapes
::
╦
=training/SGD/gradients/concatenate_3/concat_grad/ConcatOffsetConcatOffset4training/SGD/gradients/concatenate_3/concat_grad/mod7training/SGD/gradients/concatenate_3/concat_grad/ShapeN9training/SGD/gradients/concatenate_3/concat_grad/ShapeN:1*'
_class
loc:@concatenate_3/concat*
N* 
_output_shapes
::
╞
6training/SGD/gradients/concatenate_3/concat_grad/SliceSlicetraining/SGD/gradients/AddN=training/SGD/gradients/concatenate_3/concat_grad/ConcatOffset7training/SGD/gradients/concatenate_3/concat_grad/ShapeN*1
_output_shapes
:         ЁЁ*
T0*
Index0*'
_class
loc:@concatenate_3/concat
╠
8training/SGD/gradients/concatenate_3/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN?training/SGD/gradients/concatenate_3/concat_grad/ConcatOffset:19training/SGD/gradients/concatenate_3/concat_grad/ShapeN:1*1
_output_shapes
:         ЁЁ0*
T0*
Index0*'
_class
loc:@concatenate_3/concat
ы
`training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"x   x   *8
_class.
,*loc:@up_sampling2d_2/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
Э
[training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad8training/SGD/gradients/concatenate_3/concat_grad/Slice_1`training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*/
_output_shapes
:         xx0*
align_corners( *
T0*8
_class.
,*loc:@up_sampling2d_2/ResizeNearestNeighbor
Ч
+training/SGD/gradients/add_5/add_grad/ShapeShapeconv2d_14/Relu*
T0*
out_type0*
_class
loc:@add_5/add*
_output_shapes
:
Щ
-training/SGD/gradients/add_5/add_grad/Shape_1Shapeconv2d_16/Relu*
T0*
out_type0*
_class
loc:@add_5/add*
_output_shapes
:
Л
;training/SGD/gradients/add_5/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_5/add_grad/Shape-training/SGD/gradients/add_5/add_grad/Shape_1*
T0*
_class
loc:@add_5/add*2
_output_shapes 
:         :         
и
)training/SGD/gradients/add_5/add_grad/SumSum[training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_5/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_5/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
-training/SGD/gradients/add_5/add_grad/ReshapeReshape)training/SGD/gradients/add_5/add_grad/Sum+training/SGD/gradients/add_5/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_5/add*/
_output_shapes
:         xx0
м
+training/SGD/gradients/add_5/add_grad/Sum_1Sum[training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_5/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_5/add
№
/training/SGD/gradients/add_5/add_grad/Reshape_1Reshape+training/SGD/gradients/add_5/add_grad/Sum_1-training/SGD/gradients/add_5/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_5/add*/
_output_shapes
:         xx0
█
3training/SGD/gradients/conv2d_14/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_5/add_grad/Reshapeconv2d_14/Relu*
T0*!
_class
loc:@conv2d_14/Relu*/
_output_shapes
:         xx0
▌
3training/SGD/gradients/conv2d_16/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_5/add_grad/Reshape_1conv2d_16/Relu*
T0*!
_class
loc:@conv2d_16/Relu*/
_output_shapes
:         xx0
▀
9training/SGD/gradients/conv2d_14/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_14/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_14/BiasAdd*
data_formatNHWC*
_output_shapes
:0
▀
9training/SGD/gradients/conv2d_16/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_16/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*$
_class
loc:@conv2d_16/BiasAdd
▌
3training/SGD/gradients/conv2d_14/Conv2D_grad/ShapeNShapeNconcatenate_2/concatconv2d_14/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_14/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_14/Conv2D_grad/ShapeNconv2d_14/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_14/Relu_grad/ReluGrad*0
_output_shapes
:         xxР*
	dilations
*
T0*#
_class
loc:@conv2d_14/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
а
Atraining/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_2/concat5training/SGD/gradients/conv2d_14/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_14/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_14/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:Р0*
	dilations

╫
3training/SGD/gradients/conv2d_16/Conv2D_grad/ShapeNShapeNconv2d_15/Reluconv2d_16/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*#
_class
loc:@conv2d_16/Conv2D
п
@training/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_16/Conv2D_grad/ShapeNconv2d_16/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_16/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:         xx0*
	dilations
*
T0*#
_class
loc:@conv2d_16/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Щ
Atraining/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_15/Relu5training/SGD/gradients/conv2d_16/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_16/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:00*
	dilations
*
T0*#
_class
loc:@conv2d_16/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ю
3training/SGD/gradients/conv2d_15/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInputconv2d_15/Relu*
T0*!
_class
loc:@conv2d_15/Relu*/
_output_shapes
:         xx0
▀
9training/SGD/gradients/conv2d_15/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_15/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*$
_class
loc:@conv2d_15/BiasAdd
▌
3training/SGD/gradients/conv2d_15/Conv2D_grad/ShapeNShapeNconcatenate_2/concatconv2d_15/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*#
_class
loc:@conv2d_15/Conv2D
░
@training/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_15/Conv2D_grad/ShapeNconv2d_15/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_15/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_15/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         xxР*
	dilations

а
Atraining/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_2/concat5training/SGD/gradients/conv2d_15/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_15/Relu_grad/ReluGrad*'
_output_shapes
:Р0*
	dilations
*
T0*#
_class
loc:@conv2d_15/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Т
training/SGD/gradients/AddN_1AddN@training/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInput@training/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropInput*
T0*#
_class
loc:@conv2d_14/Conv2D*
N*0
_output_shapes
:         xxР
а
5training/SGD/gradients/concatenate_2/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_2/concat*
dtype0*
_output_shapes
: 
▄
4training/SGD/gradients/concatenate_2/concat_grad/modFloorModconcatenate_2/concat/axis5training/SGD/gradients/concatenate_2/concat_grad/Rank*
T0*'
_class
loc:@concatenate_2/concat*
_output_shapes
: 
и
6training/SGD/gradients/concatenate_2/concat_grad/ShapeShape	add_1/add*
T0*
out_type0*'
_class
loc:@concatenate_2/concat*
_output_shapes
:
р
7training/SGD/gradients/concatenate_2/concat_grad/ShapeNShapeN	add_1/add%up_sampling2d_1/ResizeNearestNeighbor*
T0*
out_type0*'
_class
loc:@concatenate_2/concat*
N* 
_output_shapes
::
╦
=training/SGD/gradients/concatenate_2/concat_grad/ConcatOffsetConcatOffset4training/SGD/gradients/concatenate_2/concat_grad/mod7training/SGD/gradients/concatenate_2/concat_grad/ShapeN9training/SGD/gradients/concatenate_2/concat_grad/ShapeN:1*
N* 
_output_shapes
::*'
_class
loc:@concatenate_2/concat
╞
6training/SGD/gradients/concatenate_2/concat_grad/SliceSlicetraining/SGD/gradients/AddN_1=training/SGD/gradients/concatenate_2/concat_grad/ConcatOffset7training/SGD/gradients/concatenate_2/concat_grad/ShapeN*
T0*
Index0*'
_class
loc:@concatenate_2/concat*/
_output_shapes
:         xx0
╠
8training/SGD/gradients/concatenate_2/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN_1?training/SGD/gradients/concatenate_2/concat_grad/ConcatOffset:19training/SGD/gradients/concatenate_2/concat_grad/ShapeN:1*
T0*
Index0*'
_class
loc:@concatenate_2/concat*/
_output_shapes
:         xx`
ы
`training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"<   <   *8
_class.
,*loc:@up_sampling2d_1/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
Э
[training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad8training/SGD/gradients/concatenate_2/concat_grad/Slice_1`training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*
T0*8
_class.
,*loc:@up_sampling2d_1/ResizeNearestNeighbor*/
_output_shapes
:         <<`*
align_corners( 
Ч
+training/SGD/gradients/add_4/add_grad/ShapeShapeconv2d_11/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_4/add
Щ
-training/SGD/gradients/add_4/add_grad/Shape_1Shapeconv2d_13/Relu*
T0*
out_type0*
_class
loc:@add_4/add*
_output_shapes
:
Л
;training/SGD/gradients/add_4/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_4/add_grad/Shape-training/SGD/gradients/add_4/add_grad/Shape_1*
T0*
_class
loc:@add_4/add*2
_output_shapes 
:         :         
и
)training/SGD/gradients/add_4/add_grad/SumSum[training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_4/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_4/add*
_output_shapes
:
Ў
-training/SGD/gradients/add_4/add_grad/ReshapeReshape)training/SGD/gradients/add_4/add_grad/Sum+training/SGD/gradients/add_4/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_4/add*/
_output_shapes
:         <<`
м
+training/SGD/gradients/add_4/add_grad/Sum_1Sum[training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_4/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_4/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
№
/training/SGD/gradients/add_4/add_grad/Reshape_1Reshape+training/SGD/gradients/add_4/add_grad/Sum_1-training/SGD/gradients/add_4/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_4/add*/
_output_shapes
:         <<`
█
3training/SGD/gradients/conv2d_11/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_4/add_grad/Reshapeconv2d_11/Relu*/
_output_shapes
:         <<`*
T0*!
_class
loc:@conv2d_11/Relu
▌
3training/SGD/gradients/conv2d_13/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_4/add_grad/Reshape_1conv2d_13/Relu*
T0*!
_class
loc:@conv2d_13/Relu*/
_output_shapes
:         <<`
▀
9training/SGD/gradients/conv2d_11/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_11/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:`*
T0*$
_class
loc:@conv2d_11/BiasAdd
▀
9training/SGD/gradients/conv2d_13/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_13/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:`*
T0*$
_class
loc:@conv2d_13/BiasAdd
▌
3training/SGD/gradients/conv2d_11/Conv2D_grad/ShapeNShapeNconcatenate_1/concatconv2d_11/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_11/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_11/Conv2D_grad/ShapeNconv2d_11/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_11/Relu_grad/ReluGrad*0
_output_shapes
:         <<а*
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
а
Atraining/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_1/concat5training/SGD/gradients/conv2d_11/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_11/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:а`
╫
3training/SGD/gradients/conv2d_13/Conv2D_grad/ShapeNShapeNconv2d_12/Reluconv2d_13/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_13/Conv2D*
N* 
_output_shapes
::
п
@training/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_13/Conv2D_grad/ShapeNconv2d_13/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_13/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_13/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`
Щ
Atraining/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_12/Relu5training/SGD/gradients/conv2d_13/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_13/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:``*
	dilations
*
T0*#
_class
loc:@conv2d_13/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ю
3training/SGD/gradients/conv2d_12/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropInputconv2d_12/Relu*
T0*!
_class
loc:@conv2d_12/Relu*/
_output_shapes
:         <<`
▀
9training/SGD/gradients/conv2d_12/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_12/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_12/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▌
3training/SGD/gradients/conv2d_12/Conv2D_grad/ShapeNShapeNconcatenate_1/concatconv2d_12/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_12/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_12/Conv2D_grad/ShapeNconv2d_12/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_12/Relu_grad/ReluGrad*0
_output_shapes
:         <<а*
	dilations
*
T0*#
_class
loc:@conv2d_12/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
а
Atraining/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_1/concat5training/SGD/gradients/conv2d_12/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_12/Relu_grad/ReluGrad*
paddingSAME*'
_output_shapes
:а`*
	dilations
*
T0*#
_class
loc:@conv2d_12/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Т
training/SGD/gradients/AddN_2AddN@training/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInput@training/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInput*
T0*#
_class
loc:@conv2d_11/Conv2D*
N*0
_output_shapes
:         <<а
а
5training/SGD/gradients/concatenate_1/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_1/concat*
dtype0*
_output_shapes
: 
▄
4training/SGD/gradients/concatenate_1/concat_grad/modFloorModconcatenate_1/concat/axis5training/SGD/gradients/concatenate_1/concat_grad/Rank*
T0*'
_class
loc:@concatenate_1/concat*
_output_shapes
: 
и
6training/SGD/gradients/concatenate_1/concat_grad/ShapeShape	add_2/add*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
_output_shapes
:
▐
7training/SGD/gradients/concatenate_1/concat_grad/ShapeNShapeN	add_2/add#up_sampling2d/ResizeNearestNeighbor*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
╦
=training/SGD/gradients/concatenate_1/concat_grad/ConcatOffsetConcatOffset4training/SGD/gradients/concatenate_1/concat_grad/mod7training/SGD/gradients/concatenate_1/concat_grad/ShapeN9training/SGD/gradients/concatenate_1/concat_grad/ShapeN:1*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
╞
6training/SGD/gradients/concatenate_1/concat_grad/SliceSlicetraining/SGD/gradients/AddN_2=training/SGD/gradients/concatenate_1/concat_grad/ConcatOffset7training/SGD/gradients/concatenate_1/concat_grad/ShapeN*
T0*
Index0*'
_class
loc:@concatenate_1/concat*/
_output_shapes
:         <<`
═
8training/SGD/gradients/concatenate_1/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN_2?training/SGD/gradients/concatenate_1/concat_grad/ConcatOffset:19training/SGD/gradients/concatenate_1/concat_grad/ShapeN:1*
T0*
Index0*'
_class
loc:@concatenate_1/concat*0
_output_shapes
:         <<└
ч
^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
dtype0*
_output_shapes
:*
valueB"      *6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor
Ш
Ytraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad8training/SGD/gradients/concatenate_1/concat_grad/Slice_1^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*0
_output_shapes
:         └*
align_corners( *
T0*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor
Ц
+training/SGD/gradients/add_3/add_grad/ShapeShapeconv2d_8/Relu*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:
Щ
-training/SGD/gradients/add_3/add_grad/Shape_1Shapeconv2d_10/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_3/add
Л
;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_3/add_grad/Shape-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
_class
loc:@add_3/add*2
_output_shapes 
:         :         
ж
)training/SGD/gradients/add_3/add_grad/SumSumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_3/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
ў
-training/SGD/gradients/add_3/add_grad/ReshapeReshape)training/SGD/gradients/add_3/add_grad/Sum+training/SGD/gradients/add_3/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_3/add*0
_output_shapes
:         └
к
+training/SGD/gradients/add_3/add_grad/Sum_1SumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_3/add*
_output_shapes
:
¤
/training/SGD/gradients/add_3/add_grad/Reshape_1Reshape+training/SGD/gradients/add_3/add_grad/Sum_1-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_3/add*0
_output_shapes
:         └
┘
2training/SGD/gradients/conv2d_8/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_3/add_grad/Reshapeconv2d_8/Relu*0
_output_shapes
:         └*
T0* 
_class
loc:@conv2d_8/Relu
▐
3training/SGD/gradients/conv2d_10/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_3/add_grad/Reshape_1conv2d_10/Relu*0
_output_shapes
:         └*
T0*!
_class
loc:@conv2d_10/Relu
▌
8training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:└*
T0*#
_class
loc:@conv2d_8/BiasAdd
р
9training/SGD/gradients/conv2d_10/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_10/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_10/BiasAdd*
data_formatNHWC*
_output_shapes	
:└
▌
2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv2d_8/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_8/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_8/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         `*
	dilations

Я
@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool4training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:`└
╓
3training/SGD/gradients/conv2d_10/Conv2D_grad/ShapeNShapeNconv2d_9/Reluconv2d_10/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_10/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_10/Conv2D_grad/ShapeNconv2d_10/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_10/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_10/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         └
Ъ
Atraining/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_9/Relu5training/SGD/gradients/conv2d_10/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_10/Relu_grad/ReluGrad*
paddingSAME*(
_output_shapes
:└└*
	dilations
*
T0*#
_class
loc:@conv2d_10/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ь
2training/SGD/gradients/conv2d_9/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInputconv2d_9/Relu*
T0* 
_class
loc:@conv2d_9/Relu*0
_output_shapes
:         └
▌
8training/SGD/gradients/conv2d_9/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_9/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_9/BiasAdd*
data_formatNHWC*
_output_shapes	
:└
▌
2training/SGD/gradients/conv2d_9/Conv2D_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv2d_9/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_9/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_9/Conv2D_grad/ShapeNconv2d_9/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_9/Relu_grad/ReluGrad*/
_output_shapes
:         `*
	dilations
*
T0*"
_class
loc:@conv2d_9/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Я
@training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool4training/SGD/gradients/conv2d_9/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_9/Relu_grad/ReluGrad*
paddingSAME*'
_output_shapes
:`└*
	dilations
*
T0*"
_class
loc:@conv2d_9/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
О
training/SGD/gradients/AddN_3AddN?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_8/Conv2D*
N*/
_output_shapes
:         `
╔
?training/SGD/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad	add_2/addmax_pooling2d_2/MaxPooltraining/SGD/gradients/AddN_3*/
_output_shapes
:         <<`*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
К
training/SGD/gradients/AddN_4AddN6training/SGD/gradients/concatenate_1/concat_grad/Slice?training/SGD/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad*
T0*'
_class
loc:@concatenate_1/concat*
N*/
_output_shapes
:         <<`
Ц
+training/SGD/gradients/add_2/add_grad/ShapeShapeconv2d_5/Relu*
T0*
out_type0*
_class
loc:@add_2/add*
_output_shapes
:
Ш
-training/SGD/gradients/add_2/add_grad/Shape_1Shapeconv2d_7/Relu*
T0*
out_type0*
_class
loc:@add_2/add*
_output_shapes
:
Л
;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_2/add_grad/Shape-training/SGD/gradients/add_2/add_grad/Shape_1*
T0*
_class
loc:@add_2/add*2
_output_shapes 
:         :         
ъ
)training/SGD/gradients/add_2/add_grad/SumSumtraining/SGD/gradients/AddN_4;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_2/add*
_output_shapes
:
Ў
-training/SGD/gradients/add_2/add_grad/ReshapeReshape)training/SGD/gradients/add_2/add_grad/Sum+training/SGD/gradients/add_2/add_grad/Shape*/
_output_shapes
:         <<`*
T0*
Tshape0*
_class
loc:@add_2/add
ю
+training/SGD/gradients/add_2/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_4=training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_2/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
№
/training/SGD/gradients/add_2/add_grad/Reshape_1Reshape+training/SGD/gradients/add_2/add_grad/Sum_1-training/SGD/gradients/add_2/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:         <<`
╪
2training/SGD/gradients/conv2d_5/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_2/add_grad/Reshapeconv2d_5/Relu*/
_output_shapes
:         <<`*
T0* 
_class
loc:@conv2d_5/Relu
┌
2training/SGD/gradients/conv2d_7/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_2/add_grad/Reshape_1conv2d_7/Relu*
T0* 
_class
loc:@conv2d_7/Relu*/
_output_shapes
:         <<`
▄
8training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_5/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▄
8training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_7/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▌
2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_5/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_5/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*/
_output_shapes
:         <<0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ю
@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool4training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*&
_output_shapes
:0`*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
╙
2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_7/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D
Ф
@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6/Relu4training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:``
ъ
2training/SGD/gradients/conv2d_6/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputconv2d_6/Relu*
T0* 
_class
loc:@conv2d_6/Relu*/
_output_shapes
:         <<`
▄
8training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_6/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▌
2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_6/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*/
_output_shapes
:         <<0*
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
Ю
@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool4training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:0`*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
О
training/SGD/gradients/AddN_5AddN?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_5/Conv2D*
N*/
_output_shapes
:         <<0
╔
?training/SGD/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad	add_1/addmax_pooling2d_1/MaxPooltraining/SGD/gradients/AddN_5*/
_output_shapes
:         xx0*
T0**
_class 
loc:@max_pooling2d_1/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
К
training/SGD/gradients/AddN_6AddN6training/SGD/gradients/concatenate_2/concat_grad/Slice?training/SGD/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGrad*
T0*'
_class
loc:@concatenate_2/concat*
N*/
_output_shapes
:         xx0
Ц
+training/SGD/gradients/add_1/add_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:
Ш
-training/SGD/gradients/add_1/add_grad/Shape_1Shapeconv2d_4/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_1/add
Л
;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_1/add_grad/Shape-training/SGD/gradients/add_1/add_grad/Shape_1*
T0*
_class
loc:@add_1/add*2
_output_shapes 
:         :         
ъ
)training/SGD/gradients/add_1/add_grad/SumSumtraining/SGD/gradients/AddN_6;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_1/add*
_output_shapes
:
Ў
-training/SGD/gradients/add_1/add_grad/ReshapeReshape)training/SGD/gradients/add_1/add_grad/Sum+training/SGD/gradients/add_1/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:         xx0
ю
+training/SGD/gradients/add_1/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_6=training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_1/add
№
/training/SGD/gradients/add_1/add_grad/Reshape_1Reshape+training/SGD/gradients/add_1/add_grad/Sum_1-training/SGD/gradients/add_1/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:         xx0
╪
2training/SGD/gradients/conv2d_2/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_1/add_grad/Reshapeconv2d_2/Relu*
T0* 
_class
loc:@conv2d_2/Relu*/
_output_shapes
:         xx0
┌
2training/SGD/gradients/conv2d_4/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_1/add_grad/Reshape_1conv2d_4/Relu*
T0* 
_class
loc:@conv2d_4/Relu*/
_output_shapes
:         xx0
▄
8training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*#
_class
loc:@conv2d_2/BiasAdd
▄
8training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_4/BiasAdd*
data_formatNHWC*
_output_shapes
:0
█
2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_2/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*/
_output_shapes
:         xx*
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
Ь
@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D
╙
2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_4/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*/
_output_shapes
:         xx0*
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
Ф
@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_3/Relu4training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00
ъ
2training/SGD/gradients/conv2d_3/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputconv2d_3/Relu*
T0* 
_class
loc:@conv2d_3/Relu*/
_output_shapes
:         xx0
▄
8training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_3/BiasAdd*
data_formatNHWC*
_output_shapes
:0
█
2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_3/Conv2D
к
?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx
Ь
@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_3/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0*
	dilations

О
training/SGD/gradients/AddN_7AddN?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*
N*/
_output_shapes
:         xx*
T0*"
_class
loc:@conv2d_2/Conv2D
├
=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradadd/addmax_pooling2d/MaxPooltraining/SGD/gradients/AddN_7*
T0*(
_class
loc:@max_pooling2d/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*1
_output_shapes
:         ЁЁ
К
training/SGD/gradients/AddN_8AddN6training/SGD/gradients/concatenate_3/concat_grad/Slice=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*
T0*'
_class
loc:@concatenate_3/concat*
N*1
_output_shapes
:         ЁЁ
М
)training/SGD/gradients/add/add_grad/ShapeShapeinput_2*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:
Ф
+training/SGD/gradients/add/add_grad/Shape_1Shapeconv2d_1/Relu*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:
Г
9training/SGD/gradients/add/add_grad/BroadcastGradientArgsBroadcastGradientArgs)training/SGD/gradients/add/add_grad/Shape+training/SGD/gradients/add/add_grad/Shape_1*
T0*
_class
loc:@add/add*2
_output_shapes 
:         :         
ф
'training/SGD/gradients/add/add_grad/SumSumtraining/SGD/gradients/AddN_89training/SGD/gradients/add/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ё
+training/SGD/gradients/add/add_grad/ReshapeReshape'training/SGD/gradients/add/add_grad/Sum)training/SGD/gradients/add/add_grad/Shape*1
_output_shapes
:         ЁЁ*
T0*
Tshape0*
_class
loc:@add/add
ш
)training/SGD/gradients/add/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_8;training/SGD/gradients/add/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add/add*
_output_shapes
:
Ў
-training/SGD/gradients/add/add_grad/Reshape_1Reshape)training/SGD/gradients/add/add_grad/Sum_1+training/SGD/gradients/add/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add/add*1
_output_shapes
:         ЁЁ
┌
2training/SGD/gradients/conv2d_1/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add/add_grad/Reshape_1conv2d_1/Relu*
T0* 
_class
loc:@conv2d_1/Relu*1
_output_shapes
:         ЁЁ
▄
8training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
╤
2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_1/Conv2D*
N* 
_output_shapes
::
м
?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Т
@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu4training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

ц
0training/SGD/gradients/conv2d/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputconv2d/Relu*
T0*
_class
loc:@conv2d/Relu*1
_output_shapes
:         ЁЁ
╓
6training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
T0*!
_class
loc:@conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:
╠
0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNShapeNsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
out_type0* 
_class
loc:@conv2d/Conv2D*
N* 
_output_shapes
::
в
=training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ
Л
>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltersubtract/sub2training/SGD/gradients/conv2d/Conv2D_grad/ShapeN:10training/SGD/gradients/conv2d/Relu_grad/ReluGrad*&
_output_shapes
:*
	dilations
*
T0* 
_class
loc:@conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
T
training/SGD/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
h
 training/SGD/AssignAddVariableOpAssignAddVariableOpSGD/iterationstraining/SGD/Const*
dtype0	
Е
training/SGD/ReadVariableOpReadVariableOpSGD/iterations!^training/SGD/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
w
training/SGD/zerosConst*%
valueB*    *
dtype0*&
_output_shapes
:
╔
training/SGD/VariableVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
	container *
shape:
{
6training/SGD/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
Т
training/SGD/Variable/AssignAssignVariableOptraining/SGD/Variabletraining/SGD/zeros*(
_class
loc:@training/SGD/Variable*
dtype0
▒
)training/SGD/Variable/Read/ReadVariableOpReadVariableOptraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*&
_output_shapes
:
a
training/SGD/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
├
training/SGD/Variable_1VarHandleOp**
_class 
loc:@training/SGD/Variable_1*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_1

8training/SGD/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
Ъ
training/SGD/Variable_1/AssignAssignVariableOptraining/SGD/Variable_1training/SGD/zeros_1**
_class 
loc:@training/SGD/Variable_1*
dtype0
л
+training/SGD/Variable_1/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_2/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
_
training/SGD/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
б
training/SGD/zeros_2Fill$training/SGD/zeros_2/shape_as_tensortraining/SGD/zeros_2/Const*
T0*

index_type0*&
_output_shapes
:
╧
training/SGD/Variable_2VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2

8training/SGD/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
Ъ
training/SGD/Variable_2/AssignAssignVariableOptraining/SGD/Variable_2training/SGD/zeros_2**
_class 
loc:@training/SGD/Variable_2*
dtype0
╖
+training/SGD/Variable_2/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
dtype0*&
_output_shapes
:
a
training/SGD/zeros_3Const*
dtype0*
_output_shapes
:*
valueB*    
├
training/SGD/Variable_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
	container *
shape:

8training/SGD/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
Ъ
training/SGD/Variable_3/AssignAssignVariableOptraining/SGD/Variable_3training/SGD/zeros_3**
_class 
loc:@training/SGD/Variable_3*
dtype0
л
+training/SGD/Variable_3/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_4/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         0   
_
training/SGD/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
б
training/SGD/zeros_4Fill$training/SGD/zeros_4/shape_as_tensortraining/SGD/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:0
╧
training/SGD/Variable_4VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
	container *
shape:0

8training/SGD/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
Ъ
training/SGD/Variable_4/AssignAssignVariableOptraining/SGD/Variable_4training/SGD/zeros_4*
dtype0**
_class 
loc:@training/SGD/Variable_4
╖
+training/SGD/Variable_4/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_4*
dtype0*&
_output_shapes
:0**
_class 
loc:@training/SGD/Variable_4
a
training/SGD/zeros_5Const*
valueB0*    *
dtype0*
_output_shapes
:0
├
training/SGD/Variable_5VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
	container *
shape:0

8training/SGD/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
Ъ
training/SGD/Variable_5/AssignAssignVariableOptraining/SGD/Variable_5training/SGD/zeros_5*
dtype0**
_class 
loc:@training/SGD/Variable_5
л
+training/SGD/Variable_5/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
dtype0*
_output_shapes
:0
}
$training/SGD/zeros_6/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
б
training/SGD/zeros_6Fill$training/SGD/zeros_6/shape_as_tensortraining/SGD/zeros_6/Const*
T0*

index_type0*&
_output_shapes
:0
╧
training/SGD/Variable_6VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
	container *
shape:0

8training/SGD/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
Ъ
training/SGD/Variable_6/AssignAssignVariableOptraining/SGD/Variable_6training/SGD/zeros_6**
_class 
loc:@training/SGD/Variable_6*
dtype0
╖
+training/SGD/Variable_6/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*&
_output_shapes
:0
a
training/SGD/zeros_7Const*
dtype0*
_output_shapes
:0*
valueB0*    
├
training/SGD/Variable_7VarHandleOp*(
shared_nametraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
	container *
shape:0*
dtype0*
_output_shapes
: 

8training/SGD/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
Ъ
training/SGD/Variable_7/AssignAssignVariableOptraining/SGD/Variable_7training/SGD/zeros_7**
_class 
loc:@training/SGD/Variable_7*
dtype0
л
+training/SGD/Variable_7/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
:0
}
$training/SGD/zeros_8/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
б
training/SGD/zeros_8Fill$training/SGD/zeros_8/shape_as_tensortraining/SGD/zeros_8/Const*
T0*

index_type0*&
_output_shapes
:00
╧
training/SGD/Variable_8VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
	container *
shape:00

8training/SGD/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
Ъ
training/SGD/Variable_8/AssignAssignVariableOptraining/SGD/Variable_8training/SGD/zeros_8**
_class 
loc:@training/SGD/Variable_8*
dtype0
╖
+training/SGD/Variable_8/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_8*
dtype0*&
_output_shapes
:00**
_class 
loc:@training/SGD/Variable_8
a
training/SGD/zeros_9Const*
valueB0*    *
dtype0*
_output_shapes
:0
├
training/SGD/Variable_9VarHandleOp**
_class 
loc:@training/SGD/Variable_9*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_9

8training/SGD/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
Ъ
training/SGD/Variable_9/AssignAssignVariableOptraining/SGD/Variable_9training/SGD/zeros_9**
_class 
loc:@training/SGD/Variable_9*
dtype0
л
+training/SGD/Variable_9/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_10/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   `   
`
training/SGD/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_10Fill%training/SGD/zeros_10/shape_as_tensortraining/SGD/zeros_10/Const*&
_output_shapes
:0`*
T0*

index_type0
╥
training/SGD/Variable_10VarHandleOp*)
shared_nametraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
	container *
shape:0`*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
Ю
training/SGD/Variable_10/AssignAssignVariableOptraining/SGD/Variable_10training/SGD/zeros_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0
║
,training/SGD/Variable_10/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*&
_output_shapes
:0`
b
training/SGD/zeros_11Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_11VarHandleOp*)
shared_nametraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
	container *
shape:`*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
Ю
training/SGD/Variable_11/AssignAssignVariableOptraining/SGD/Variable_11training/SGD/zeros_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0
о
,training/SGD/Variable_11/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_12/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   `   
`
training/SGD/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_12Fill%training/SGD/zeros_12/shape_as_tensortraining/SGD/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:0`
╥
training/SGD/Variable_12VarHandleOp*+
_class!
loc:@training/SGD/Variable_12*
	container *
shape:0`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_12
Б
9training/SGD/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
Ю
training/SGD/Variable_12/AssignAssignVariableOptraining/SGD/Variable_12training/SGD/zeros_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0
║
,training/SGD/Variable_12/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0*&
_output_shapes
:0`
b
training/SGD/zeros_13Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_13VarHandleOp*+
_class!
loc:@training/SGD/Variable_13*
	container *
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_13
Б
9training/SGD/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
Ю
training/SGD/Variable_13/AssignAssignVariableOptraining/SGD/Variable_13training/SGD/zeros_13*
dtype0*+
_class!
loc:@training/SGD/Variable_13
о
,training/SGD/Variable_13/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_13*
dtype0*
_output_shapes
:`*+
_class!
loc:@training/SGD/Variable_13
~
%training/SGD/zeros_14/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   
`
training/SGD/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_14Fill%training/SGD/zeros_14/shape_as_tensortraining/SGD/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:``
╥
training/SGD/Variable_14VarHandleOp*)
shared_nametraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
	container *
shape:``*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
Ю
training/SGD/Variable_14/AssignAssignVariableOptraining/SGD/Variable_14training/SGD/zeros_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0
║
,training/SGD/Variable_14/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0*&
_output_shapes
:``
b
training/SGD/zeros_15Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_15VarHandleOp*+
_class!
loc:@training/SGD/Variable_15*
	container *
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_15
Б
9training/SGD/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
Ю
training/SGD/Variable_15/AssignAssignVariableOptraining/SGD/Variable_15training/SGD/zeros_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0
о
,training/SGD/Variable_15/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_16/shape_as_tensorConst*%
valueB"      `   └   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
е
training/SGD/zeros_16Fill%training/SGD/zeros_16/shape_as_tensortraining/SGD/zeros_16/Const*'
_output_shapes
:`└*
T0*

index_type0
╙
training/SGD/Variable_16VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
	container *
shape:`└
Б
9training/SGD/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
Ю
training/SGD/Variable_16/AssignAssignVariableOptraining/SGD/Variable_16training/SGD/zeros_16*+
_class!
loc:@training/SGD/Variable_16*
dtype0
╗
,training/SGD/Variable_16/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_16*
dtype0*'
_output_shapes
:`└*+
_class!
loc:@training/SGD/Variable_16
d
training/SGD/zeros_17Const*
dtype0*
_output_shapes	
:└*
valueB└*    
╟
training/SGD/Variable_17VarHandleOp*)
shared_nametraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
	container *
shape:└*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
Ю
training/SGD/Variable_17/AssignAssignVariableOptraining/SGD/Variable_17training/SGD/zeros_17*+
_class!
loc:@training/SGD/Variable_17*
dtype0
п
,training/SGD/Variable_17/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
dtype0*
_output_shapes	
:└
~
%training/SGD/zeros_18/shape_as_tensorConst*%
valueB"      `   └   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_18/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
training/SGD/zeros_18Fill%training/SGD/zeros_18/shape_as_tensortraining/SGD/zeros_18/Const*'
_output_shapes
:`└*
T0*

index_type0
╙
training/SGD/Variable_18VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_18*+
_class!
loc:@training/SGD/Variable_18*
	container *
shape:`└
Б
9training/SGD/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_18*
_output_shapes
: 
Ю
training/SGD/Variable_18/AssignAssignVariableOptraining/SGD/Variable_18training/SGD/zeros_18*+
_class!
loc:@training/SGD/Variable_18*
dtype0
╗
,training/SGD/Variable_18/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_18*
dtype0*'
_output_shapes
:`└*+
_class!
loc:@training/SGD/Variable_18
d
training/SGD/zeros_19Const*
valueB└*    *
dtype0*
_output_shapes	
:└
╟
training/SGD/Variable_19VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_19*+
_class!
loc:@training/SGD/Variable_19*
	container *
shape:└
Б
9training/SGD/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_19*
_output_shapes
: 
Ю
training/SGD/Variable_19/AssignAssignVariableOptraining/SGD/Variable_19training/SGD/zeros_19*+
_class!
loc:@training/SGD/Variable_19*
dtype0
п
,training/SGD/Variable_19/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_19*+
_class!
loc:@training/SGD/Variable_19*
dtype0*
_output_shapes	
:└
~
%training/SGD/zeros_20/shape_as_tensorConst*%
valueB"      └   └   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
training/SGD/zeros_20Fill%training/SGD/zeros_20/shape_as_tensortraining/SGD/zeros_20/Const*
T0*

index_type0*(
_output_shapes
:└└
╘
training/SGD/Variable_20VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_20*+
_class!
loc:@training/SGD/Variable_20*
	container *
shape:└└
Б
9training/SGD/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_20*
_output_shapes
: 
Ю
training/SGD/Variable_20/AssignAssignVariableOptraining/SGD/Variable_20training/SGD/zeros_20*+
_class!
loc:@training/SGD/Variable_20*
dtype0
╝
,training/SGD/Variable_20/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_20*
dtype0*(
_output_shapes
:└└*+
_class!
loc:@training/SGD/Variable_20
d
training/SGD/zeros_21Const*
valueB└*    *
dtype0*
_output_shapes	
:└
╟
training/SGD/Variable_21VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_21*+
_class!
loc:@training/SGD/Variable_21*
	container *
shape:└
Б
9training/SGD/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_21*
_output_shapes
: 
Ю
training/SGD/Variable_21/AssignAssignVariableOptraining/SGD/Variable_21training/SGD/zeros_21*+
_class!
loc:@training/SGD/Variable_21*
dtype0
п
,training/SGD/Variable_21/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_21*
dtype0*
_output_shapes	
:└*+
_class!
loc:@training/SGD/Variable_21
~
%training/SGD/zeros_22/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         `   
`
training/SGD/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
е
training/SGD/zeros_22Fill%training/SGD/zeros_22/shape_as_tensortraining/SGD/zeros_22/Const*'
_output_shapes
:а`*
T0*

index_type0
╙
training/SGD/Variable_22VarHandleOp*
	container *
shape:а`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_22*+
_class!
loc:@training/SGD/Variable_22
Б
9training/SGD/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_22*
_output_shapes
: 
Ю
training/SGD/Variable_22/AssignAssignVariableOptraining/SGD/Variable_22training/SGD/zeros_22*+
_class!
loc:@training/SGD/Variable_22*
dtype0
╗
,training/SGD/Variable_22/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_22*
dtype0*'
_output_shapes
:а`*+
_class!
loc:@training/SGD/Variable_22
b
training/SGD/zeros_23Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_23VarHandleOp*)
shared_nametraining/SGD/Variable_23*+
_class!
loc:@training/SGD/Variable_23*
	container *
shape:`*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_23*
_output_shapes
: 
Ю
training/SGD/Variable_23/AssignAssignVariableOptraining/SGD/Variable_23training/SGD/zeros_23*+
_class!
loc:@training/SGD/Variable_23*
dtype0
о
,training/SGD/Variable_23/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_23*+
_class!
loc:@training/SGD/Variable_23*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_24/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
е
training/SGD/zeros_24Fill%training/SGD/zeros_24/shape_as_tensortraining/SGD/zeros_24/Const*
T0*

index_type0*'
_output_shapes
:а`
╙
training/SGD/Variable_24VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_24*+
_class!
loc:@training/SGD/Variable_24*
	container *
shape:а`
Б
9training/SGD/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_24*
_output_shapes
: 
Ю
training/SGD/Variable_24/AssignAssignVariableOptraining/SGD/Variable_24training/SGD/zeros_24*+
_class!
loc:@training/SGD/Variable_24*
dtype0
╗
,training/SGD/Variable_24/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_24*
dtype0*'
_output_shapes
:а`*+
_class!
loc:@training/SGD/Variable_24
b
training/SGD/zeros_25Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_25VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_25*+
_class!
loc:@training/SGD/Variable_25*
	container *
shape:`
Б
9training/SGD/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_25*
_output_shapes
: 
Ю
training/SGD/Variable_25/AssignAssignVariableOptraining/SGD/Variable_25training/SGD/zeros_25*
dtype0*+
_class!
loc:@training/SGD/Variable_25
о
,training/SGD/Variable_25/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_25*+
_class!
loc:@training/SGD/Variable_25*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_26/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   
`
training/SGD/zeros_26/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
д
training/SGD/zeros_26Fill%training/SGD/zeros_26/shape_as_tensortraining/SGD/zeros_26/Const*&
_output_shapes
:``*
T0*

index_type0
╥
training/SGD/Variable_26VarHandleOp*+
_class!
loc:@training/SGD/Variable_26*
	container *
shape:``*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_26
Б
9training/SGD/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_26*
_output_shapes
: 
Ю
training/SGD/Variable_26/AssignAssignVariableOptraining/SGD/Variable_26training/SGD/zeros_26*
dtype0*+
_class!
loc:@training/SGD/Variable_26
║
,training/SGD/Variable_26/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_26*+
_class!
loc:@training/SGD/Variable_26*
dtype0*&
_output_shapes
:``
b
training/SGD/zeros_27Const*
dtype0*
_output_shapes
:`*
valueB`*    
╞
training/SGD/Variable_27VarHandleOp*
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_27*+
_class!
loc:@training/SGD/Variable_27*
	container 
Б
9training/SGD/Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_27*
_output_shapes
: 
Ю
training/SGD/Variable_27/AssignAssignVariableOptraining/SGD/Variable_27training/SGD/zeros_27*+
_class!
loc:@training/SGD/Variable_27*
dtype0
о
,training/SGD/Variable_27/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_27*+
_class!
loc:@training/SGD/Variable_27*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_28/shape_as_tensorConst*%
valueB"      Р   0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
training/SGD/zeros_28Fill%training/SGD/zeros_28/shape_as_tensortraining/SGD/zeros_28/Const*
T0*

index_type0*'
_output_shapes
:Р0
╙
training/SGD/Variable_28VarHandleOp*)
shared_nametraining/SGD/Variable_28*+
_class!
loc:@training/SGD/Variable_28*
	container *
shape:Р0*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_28*
_output_shapes
: 
Ю
training/SGD/Variable_28/AssignAssignVariableOptraining/SGD/Variable_28training/SGD/zeros_28*
dtype0*+
_class!
loc:@training/SGD/Variable_28
╗
,training/SGD/Variable_28/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_28*+
_class!
loc:@training/SGD/Variable_28*
dtype0*'
_output_shapes
:Р0
b
training/SGD/zeros_29Const*
valueB0*    *
dtype0*
_output_shapes
:0
╞
training/SGD/Variable_29VarHandleOp*)
shared_nametraining/SGD/Variable_29*+
_class!
loc:@training/SGD/Variable_29*
	container *
shape:0*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_29*
_output_shapes
: 
Ю
training/SGD/Variable_29/AssignAssignVariableOptraining/SGD/Variable_29training/SGD/zeros_29*+
_class!
loc:@training/SGD/Variable_29*
dtype0
о
,training/SGD/Variable_29/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_29*+
_class!
loc:@training/SGD/Variable_29*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_30/shape_as_tensorConst*%
valueB"      Р   0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_30/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
training/SGD/zeros_30Fill%training/SGD/zeros_30/shape_as_tensortraining/SGD/zeros_30/Const*
T0*

index_type0*'
_output_shapes
:Р0
╙
training/SGD/Variable_30VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_30*+
_class!
loc:@training/SGD/Variable_30*
	container *
shape:Р0
Б
9training/SGD/Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_30*
_output_shapes
: 
Ю
training/SGD/Variable_30/AssignAssignVariableOptraining/SGD/Variable_30training/SGD/zeros_30*+
_class!
loc:@training/SGD/Variable_30*
dtype0
╗
,training/SGD/Variable_30/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_30*+
_class!
loc:@training/SGD/Variable_30*
dtype0*'
_output_shapes
:Р0
b
training/SGD/zeros_31Const*
valueB0*    *
dtype0*
_output_shapes
:0
╞
training/SGD/Variable_31VarHandleOp*)
shared_nametraining/SGD/Variable_31*+
_class!
loc:@training/SGD/Variable_31*
	container *
shape:0*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_31*
_output_shapes
: 
Ю
training/SGD/Variable_31/AssignAssignVariableOptraining/SGD/Variable_31training/SGD/zeros_31*
dtype0*+
_class!
loc:@training/SGD/Variable_31
о
,training/SGD/Variable_31/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_31*+
_class!
loc:@training/SGD/Variable_31*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_32/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_32Fill%training/SGD/zeros_32/shape_as_tensortraining/SGD/zeros_32/Const*
T0*

index_type0*&
_output_shapes
:00
╥
training/SGD/Variable_32VarHandleOp*+
_class!
loc:@training/SGD/Variable_32*
	container *
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_32
Б
9training/SGD/Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_32*
_output_shapes
: 
Ю
training/SGD/Variable_32/AssignAssignVariableOptraining/SGD/Variable_32training/SGD/zeros_32*+
_class!
loc:@training/SGD/Variable_32*
dtype0
║
,training/SGD/Variable_32/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_32*+
_class!
loc:@training/SGD/Variable_32*
dtype0*&
_output_shapes
:00
b
training/SGD/zeros_33Const*
valueB0*    *
dtype0*
_output_shapes
:0
╞
training/SGD/Variable_33VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_33*+
_class!
loc:@training/SGD/Variable_33*
	container *
shape:0
Б
9training/SGD/Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_33*
_output_shapes
: 
Ю
training/SGD/Variable_33/AssignAssignVariableOptraining/SGD/Variable_33training/SGD/zeros_33*+
_class!
loc:@training/SGD/Variable_33*
dtype0
о
,training/SGD/Variable_33/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_33*
dtype0*
_output_shapes
:0*+
_class!
loc:@training/SGD/Variable_33
~
%training/SGD/zeros_34/shape_as_tensorConst*%
valueB"      H      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_34Fill%training/SGD/zeros_34/shape_as_tensortraining/SGD/zeros_34/Const*
T0*

index_type0*&
_output_shapes
:H
╥
training/SGD/Variable_34VarHandleOp*)
shared_nametraining/SGD/Variable_34*+
_class!
loc:@training/SGD/Variable_34*
	container *
shape:H*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_34*
_output_shapes
: 
Ю
training/SGD/Variable_34/AssignAssignVariableOptraining/SGD/Variable_34training/SGD/zeros_34*
dtype0*+
_class!
loc:@training/SGD/Variable_34
║
,training/SGD/Variable_34/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_34*+
_class!
loc:@training/SGD/Variable_34*
dtype0*&
_output_shapes
:H
b
training/SGD/zeros_35Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_35VarHandleOp*)
shared_nametraining/SGD/Variable_35*+
_class!
loc:@training/SGD/Variable_35*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_35*
_output_shapes
: 
Ю
training/SGD/Variable_35/AssignAssignVariableOptraining/SGD/Variable_35training/SGD/zeros_35*+
_class!
loc:@training/SGD/Variable_35*
dtype0
о
,training/SGD/Variable_35/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_35*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_35
~
%training/SGD/zeros_36/shape_as_tensorConst*%
valueB"      H      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_36Fill%training/SGD/zeros_36/shape_as_tensortraining/SGD/zeros_36/Const*
T0*

index_type0*&
_output_shapes
:H
╥
training/SGD/Variable_36VarHandleOp*+
_class!
loc:@training/SGD/Variable_36*
	container *
shape:H*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_36
Б
9training/SGD/Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_36*
_output_shapes
: 
Ю
training/SGD/Variable_36/AssignAssignVariableOptraining/SGD/Variable_36training/SGD/zeros_36*+
_class!
loc:@training/SGD/Variable_36*
dtype0
║
,training/SGD/Variable_36/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_36*
dtype0*&
_output_shapes
:H*+
_class!
loc:@training/SGD/Variable_36
b
training/SGD/zeros_37Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_37VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_37*+
_class!
loc:@training/SGD/Variable_37*
	container *
shape:
Б
9training/SGD/Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_37*
_output_shapes
: 
Ю
training/SGD/Variable_37/AssignAssignVariableOptraining/SGD/Variable_37training/SGD/zeros_37*+
_class!
loc:@training/SGD/Variable_37*
dtype0
о
,training/SGD/Variable_37/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_37*+
_class!
loc:@training/SGD/Variable_37*
dtype0*
_output_shapes
:
~
%training/SGD/zeros_38/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
`
training/SGD/zeros_38/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
д
training/SGD/zeros_38Fill%training/SGD/zeros_38/shape_as_tensortraining/SGD/zeros_38/Const*&
_output_shapes
:*
T0*

index_type0
╥
training/SGD/Variable_38VarHandleOp*)
shared_nametraining/SGD/Variable_38*+
_class!
loc:@training/SGD/Variable_38*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_38*
_output_shapes
: 
Ю
training/SGD/Variable_38/AssignAssignVariableOptraining/SGD/Variable_38training/SGD/zeros_38*+
_class!
loc:@training/SGD/Variable_38*
dtype0
║
,training/SGD/Variable_38/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_38*
dtype0*&
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_38
b
training/SGD/zeros_39Const*
dtype0*
_output_shapes
:*
valueB*    
╞
training/SGD/Variable_39VarHandleOp*+
_class!
loc:@training/SGD/Variable_39*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_39
Б
9training/SGD/Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_39*
_output_shapes
: 
Ю
training/SGD/Variable_39/AssignAssignVariableOptraining/SGD/Variable_39training/SGD/zeros_39*
dtype0*+
_class!
loc:@training/SGD/Variable_39
о
,training/SGD/Variable_39/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_39*+
_class!
loc:@training/SGD/Variable_39*
dtype0*
_output_shapes
:
z
training/SGD/zeros_40Const*
dtype0*&
_output_shapes
:*%
valueB*    
╥
training/SGD/Variable_40VarHandleOp*+
_class!
loc:@training/SGD/Variable_40*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_40
Б
9training/SGD/Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_40*
_output_shapes
: 
Ю
training/SGD/Variable_40/AssignAssignVariableOptraining/SGD/Variable_40training/SGD/zeros_40*+
_class!
loc:@training/SGD/Variable_40*
dtype0
║
,training/SGD/Variable_40/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_40*+
_class!
loc:@training/SGD/Variable_40*
dtype0*&
_output_shapes
:
b
training/SGD/zeros_41Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_41VarHandleOp*)
shared_nametraining/SGD/Variable_41*+
_class!
loc:@training/SGD/Variable_41*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_41*
_output_shapes
: 
Ю
training/SGD/Variable_41/AssignAssignVariableOptraining/SGD/Variable_41training/SGD/zeros_41*+
_class!
loc:@training/SGD/Variable_41*
dtype0
о
,training/SGD/Variable_41/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_41*+
_class!
loc:@training/SGD/Variable_41*
dtype0*
_output_shapes
:
z
training/SGD/zeros_42Const*%
valueB*    *
dtype0*&
_output_shapes
:
╥
training/SGD/Variable_42VarHandleOp*+
_class!
loc:@training/SGD/Variable_42*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_42
Б
9training/SGD/Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_42*
_output_shapes
: 
Ю
training/SGD/Variable_42/AssignAssignVariableOptraining/SGD/Variable_42training/SGD/zeros_42*+
_class!
loc:@training/SGD/Variable_42*
dtype0
║
,training/SGD/Variable_42/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_42*+
_class!
loc:@training/SGD/Variable_42*
dtype0*&
_output_shapes
:
b
training/SGD/zeros_43Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_43VarHandleOp*)
shared_nametraining/SGD/Variable_43*+
_class!
loc:@training/SGD/Variable_43*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_43*
_output_shapes
: 
Ю
training/SGD/Variable_43/AssignAssignVariableOptraining/SGD/Variable_43training/SGD/zeros_43*
dtype0*+
_class!
loc:@training/SGD/Variable_43
о
,training/SGD/Variable_43/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_43*+
_class!
loc:@training/SGD/Variable_43*
dtype0*
_output_shapes
:
b
training/SGD/ReadVariableOp_1ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
}
training/SGD/mul/ReadVariableOpReadVariableOptraining/SGD/Variable*
dtype0*&
_output_shapes
:
И
training/SGD/mulMultraining/SGD/ReadVariableOp_1training/SGD/mul/ReadVariableOp*
T0*&
_output_shapes
:
\
training/SGD/ReadVariableOp_2ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
й
training/SGD/mul_1Multraining/SGD/ReadVariableOp_2>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
n
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*
T0*&
_output_shapes
:
g
training/SGD/AssignVariableOpAssignVariableOptraining/SGD/Variabletraining/SGD/sub*
dtype0
Ы
training/SGD/ReadVariableOp_3ReadVariableOptraining/SGD/Variable^training/SGD/AssignVariableOp*
dtype0*&
_output_shapes
:
s
training/SGD/ReadVariableOp_4ReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
y
training/SGD/addAddtraining/SGD/ReadVariableOp_4training/SGD/sub*
T0*&
_output_shapes
:
a
training/SGD/AssignVariableOp_1AssignVariableOpconv2d/kerneltraining/SGD/add*
dtype0
Х
training/SGD/ReadVariableOp_5ReadVariableOpconv2d/kernel ^training/SGD/AssignVariableOp_1*
dtype0*&
_output_shapes
:
b
training/SGD/ReadVariableOp_6ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
u
!training/SGD/mul_2/ReadVariableOpReadVariableOptraining/SGD/Variable_1*
dtype0*
_output_shapes
:
А
training/SGD/mul_2Multraining/SGD/ReadVariableOp_6!training/SGD/mul_2/ReadVariableOp*
T0*
_output_shapes
:
\
training/SGD/ReadVariableOp_7ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Х
training/SGD/mul_3Multraining/SGD/ReadVariableOp_76training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
f
training/SGD/sub_1Subtraining/SGD/mul_2training/SGD/mul_3*
T0*
_output_shapes
:
m
training/SGD/AssignVariableOp_2AssignVariableOptraining/SGD/Variable_1training/SGD/sub_1*
dtype0
У
training/SGD/ReadVariableOp_8ReadVariableOptraining/SGD/Variable_1 ^training/SGD/AssignVariableOp_2*
dtype0*
_output_shapes
:
e
training/SGD/ReadVariableOp_9ReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
q
training/SGD/add_1Addtraining/SGD/ReadVariableOp_9training/SGD/sub_1*
T0*
_output_shapes
:
a
training/SGD/AssignVariableOp_3AssignVariableOpconv2d/biastraining/SGD/add_1*
dtype0
И
training/SGD/ReadVariableOp_10ReadVariableOpconv2d/bias ^training/SGD/AssignVariableOp_3*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_11ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Б
!training/SGD/mul_4/ReadVariableOpReadVariableOptraining/SGD/Variable_2*
dtype0*&
_output_shapes
:
Н
training/SGD/mul_4Multraining/SGD/ReadVariableOp_11!training/SGD/mul_4/ReadVariableOp*&
_output_shapes
:*
T0
]
training/SGD/ReadVariableOp_12ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
м
training/SGD/mul_5Multraining/SGD/ReadVariableOp_12@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
r
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*&
_output_shapes
:*
T0
m
training/SGD/AssignVariableOp_4AssignVariableOptraining/SGD/Variable_2training/SGD/sub_2*
dtype0
а
training/SGD/ReadVariableOp_13ReadVariableOptraining/SGD/Variable_2 ^training/SGD/AssignVariableOp_4*
dtype0*&
_output_shapes
:
v
training/SGD/ReadVariableOp_14ReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:
~
training/SGD/add_2Addtraining/SGD/ReadVariableOp_14training/SGD/sub_2*
T0*&
_output_shapes
:
e
training/SGD/AssignVariableOp_5AssignVariableOpconv2d_1/kerneltraining/SGD/add_2*
dtype0
Ш
training/SGD/ReadVariableOp_15ReadVariableOpconv2d_1/kernel ^training/SGD/AssignVariableOp_5*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_16ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
u
!training/SGD/mul_6/ReadVariableOpReadVariableOptraining/SGD/Variable_3*
dtype0*
_output_shapes
:
Б
training/SGD/mul_6Multraining/SGD/ReadVariableOp_16!training/SGD/mul_6/ReadVariableOp*
T0*
_output_shapes
:
]
training/SGD/ReadVariableOp_17ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ш
training/SGD/mul_7Multraining/SGD/ReadVariableOp_178training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
f
training/SGD/sub_3Subtraining/SGD/mul_6training/SGD/mul_7*
T0*
_output_shapes
:
m
training/SGD/AssignVariableOp_6AssignVariableOptraining/SGD/Variable_3training/SGD/sub_3*
dtype0
Ф
training/SGD/ReadVariableOp_18ReadVariableOptraining/SGD/Variable_3 ^training/SGD/AssignVariableOp_6*
dtype0*
_output_shapes
:
h
training/SGD/ReadVariableOp_19ReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
r
training/SGD/add_3Addtraining/SGD/ReadVariableOp_19training/SGD/sub_3*
T0*
_output_shapes
:
c
training/SGD/AssignVariableOp_7AssignVariableOpconv2d_1/biastraining/SGD/add_3*
dtype0
К
training/SGD/ReadVariableOp_20ReadVariableOpconv2d_1/bias ^training/SGD/AssignVariableOp_7*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_21ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Б
!training/SGD/mul_8/ReadVariableOpReadVariableOptraining/SGD/Variable_4*
dtype0*&
_output_shapes
:0
Н
training/SGD/mul_8Multraining/SGD/ReadVariableOp_21!training/SGD/mul_8/ReadVariableOp*
T0*&
_output_shapes
:0
]
training/SGD/ReadVariableOp_22ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
м
training/SGD/mul_9Multraining/SGD/ReadVariableOp_22@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
r
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*
T0*&
_output_shapes
:0
m
training/SGD/AssignVariableOp_8AssignVariableOptraining/SGD/Variable_4training/SGD/sub_4*
dtype0
а
training/SGD/ReadVariableOp_23ReadVariableOptraining/SGD/Variable_4 ^training/SGD/AssignVariableOp_8*
dtype0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_24ReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0
~
training/SGD/add_4Addtraining/SGD/ReadVariableOp_24training/SGD/sub_4*&
_output_shapes
:0*
T0
e
training/SGD/AssignVariableOp_9AssignVariableOpconv2d_3/kerneltraining/SGD/add_4*
dtype0
Ш
training/SGD/ReadVariableOp_25ReadVariableOpconv2d_3/kernel ^training/SGD/AssignVariableOp_9*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_26ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_10/ReadVariableOpReadVariableOptraining/SGD/Variable_5*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_10Multraining/SGD/ReadVariableOp_26"training/SGD/mul_10/ReadVariableOp*
_output_shapes
:0*
T0
]
training/SGD/ReadVariableOp_27ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_11Multraining/SGD/ReadVariableOp_278training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
h
training/SGD/sub_5Subtraining/SGD/mul_10training/SGD/mul_11*
_output_shapes
:0*
T0
n
 training/SGD/AssignVariableOp_10AssignVariableOptraining/SGD/Variable_5training/SGD/sub_5*
dtype0
Х
training/SGD/ReadVariableOp_28ReadVariableOptraining/SGD/Variable_5!^training/SGD/AssignVariableOp_10*
dtype0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_29ReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
r
training/SGD/add_5Addtraining/SGD/ReadVariableOp_29training/SGD/sub_5*
T0*
_output_shapes
:0
d
 training/SGD/AssignVariableOp_11AssignVariableOpconv2d_3/biastraining/SGD/add_5*
dtype0
Л
training/SGD/ReadVariableOp_30ReadVariableOpconv2d_3/bias!^training/SGD/AssignVariableOp_11*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_31ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_12/ReadVariableOpReadVariableOptraining/SGD/Variable_6*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_12Multraining/SGD/ReadVariableOp_31"training/SGD/mul_12/ReadVariableOp*
T0*&
_output_shapes
:0
]
training/SGD/ReadVariableOp_32ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_13Multraining/SGD/ReadVariableOp_32@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0*
T0
t
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*
T0*&
_output_shapes
:0
n
 training/SGD/AssignVariableOp_12AssignVariableOptraining/SGD/Variable_6training/SGD/sub_6*
dtype0
б
training/SGD/ReadVariableOp_33ReadVariableOptraining/SGD/Variable_6!^training/SGD/AssignVariableOp_12*
dtype0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_34ReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0
~
training/SGD/add_6Addtraining/SGD/ReadVariableOp_34training/SGD/sub_6*
T0*&
_output_shapes
:0
f
 training/SGD/AssignVariableOp_13AssignVariableOpconv2d_2/kerneltraining/SGD/add_6*
dtype0
Щ
training/SGD/ReadVariableOp_35ReadVariableOpconv2d_2/kernel!^training/SGD/AssignVariableOp_13*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_36ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_14/ReadVariableOpReadVariableOptraining/SGD/Variable_7*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_14Multraining/SGD/ReadVariableOp_36"training/SGD/mul_14/ReadVariableOp*
T0*
_output_shapes
:0
]
training/SGD/ReadVariableOp_37ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_15Multraining/SGD/ReadVariableOp_378training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
h
training/SGD/sub_7Subtraining/SGD/mul_14training/SGD/mul_15*
T0*
_output_shapes
:0
n
 training/SGD/AssignVariableOp_14AssignVariableOptraining/SGD/Variable_7training/SGD/sub_7*
dtype0
Х
training/SGD/ReadVariableOp_38ReadVariableOptraining/SGD/Variable_7!^training/SGD/AssignVariableOp_14*
dtype0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_39ReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
r
training/SGD/add_7Addtraining/SGD/ReadVariableOp_39training/SGD/sub_7*
T0*
_output_shapes
:0
d
 training/SGD/AssignVariableOp_15AssignVariableOpconv2d_2/biastraining/SGD/add_7*
dtype0
Л
training/SGD/ReadVariableOp_40ReadVariableOpconv2d_2/bias!^training/SGD/AssignVariableOp_15*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_41ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_16/ReadVariableOpReadVariableOptraining/SGD/Variable_8*
dtype0*&
_output_shapes
:00
П
training/SGD/mul_16Multraining/SGD/ReadVariableOp_41"training/SGD/mul_16/ReadVariableOp*
T0*&
_output_shapes
:00
]
training/SGD/ReadVariableOp_42ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_17Multraining/SGD/ReadVariableOp_42@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
t
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*
T0*&
_output_shapes
:00
n
 training/SGD/AssignVariableOp_16AssignVariableOptraining/SGD/Variable_8training/SGD/sub_8*
dtype0
б
training/SGD/ReadVariableOp_43ReadVariableOptraining/SGD/Variable_8!^training/SGD/AssignVariableOp_16*
dtype0*&
_output_shapes
:00
v
training/SGD/ReadVariableOp_44ReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00
~
training/SGD/add_8Addtraining/SGD/ReadVariableOp_44training/SGD/sub_8*
T0*&
_output_shapes
:00
f
 training/SGD/AssignVariableOp_17AssignVariableOpconv2d_4/kerneltraining/SGD/add_8*
dtype0
Щ
training/SGD/ReadVariableOp_45ReadVariableOpconv2d_4/kernel!^training/SGD/AssignVariableOp_17*
dtype0*&
_output_shapes
:00
c
training/SGD/ReadVariableOp_46ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_18/ReadVariableOpReadVariableOptraining/SGD/Variable_9*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_18Multraining/SGD/ReadVariableOp_46"training/SGD/mul_18/ReadVariableOp*
_output_shapes
:0*
T0
]
training/SGD/ReadVariableOp_47ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_19Multraining/SGD/ReadVariableOp_478training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
h
training/SGD/sub_9Subtraining/SGD/mul_18training/SGD/mul_19*
T0*
_output_shapes
:0
n
 training/SGD/AssignVariableOp_18AssignVariableOptraining/SGD/Variable_9training/SGD/sub_9*
dtype0
Х
training/SGD/ReadVariableOp_48ReadVariableOptraining/SGD/Variable_9!^training/SGD/AssignVariableOp_18*
dtype0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_49ReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
r
training/SGD/add_9Addtraining/SGD/ReadVariableOp_49training/SGD/sub_9*
T0*
_output_shapes
:0
d
 training/SGD/AssignVariableOp_19AssignVariableOpconv2d_4/biastraining/SGD/add_9*
dtype0
Л
training/SGD/ReadVariableOp_50ReadVariableOpconv2d_4/bias!^training/SGD/AssignVariableOp_19*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_51ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_20/ReadVariableOpReadVariableOptraining/SGD/Variable_10*
dtype0*&
_output_shapes
:0`
П
training/SGD/mul_20Multraining/SGD/ReadVariableOp_51"training/SGD/mul_20/ReadVariableOp*&
_output_shapes
:0`*
T0
]
training/SGD/ReadVariableOp_52ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_21Multraining/SGD/ReadVariableOp_52@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0`
u
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*
T0*&
_output_shapes
:0`
p
 training/SGD/AssignVariableOp_20AssignVariableOptraining/SGD/Variable_10training/SGD/sub_10*
dtype0
в
training/SGD/ReadVariableOp_53ReadVariableOptraining/SGD/Variable_10!^training/SGD/AssignVariableOp_20*
dtype0*&
_output_shapes
:0`
v
training/SGD/ReadVariableOp_54ReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0`
А
training/SGD/add_10Addtraining/SGD/ReadVariableOp_54training/SGD/sub_10*
T0*&
_output_shapes
:0`
g
 training/SGD/AssignVariableOp_21AssignVariableOpconv2d_6/kerneltraining/SGD/add_10*
dtype0
Щ
training/SGD/ReadVariableOp_55ReadVariableOpconv2d_6/kernel!^training/SGD/AssignVariableOp_21*
dtype0*&
_output_shapes
:0`
c
training/SGD/ReadVariableOp_56ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_22/ReadVariableOpReadVariableOptraining/SGD/Variable_11*
dtype0*
_output_shapes
:`
Г
training/SGD/mul_22Multraining/SGD/ReadVariableOp_56"training/SGD/mul_22/ReadVariableOp*
T0*
_output_shapes
:`
]
training/SGD/ReadVariableOp_57ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_23Multraining/SGD/ReadVariableOp_578training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_11Subtraining/SGD/mul_22training/SGD/mul_23*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_22AssignVariableOptraining/SGD/Variable_11training/SGD/sub_11*
dtype0
Ц
training/SGD/ReadVariableOp_58ReadVariableOptraining/SGD/Variable_11!^training/SGD/AssignVariableOp_22*
dtype0*
_output_shapes
:`
h
training/SGD/ReadVariableOp_59ReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:`
t
training/SGD/add_11Addtraining/SGD/ReadVariableOp_59training/SGD/sub_11*
T0*
_output_shapes
:`
e
 training/SGD/AssignVariableOp_23AssignVariableOpconv2d_6/biastraining/SGD/add_11*
dtype0
Л
training/SGD/ReadVariableOp_60ReadVariableOpconv2d_6/bias!^training/SGD/AssignVariableOp_23*
dtype0*
_output_shapes
:`
c
training/SGD/ReadVariableOp_61ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_24/ReadVariableOpReadVariableOptraining/SGD/Variable_12*
dtype0*&
_output_shapes
:0`
П
training/SGD/mul_24Multraining/SGD/ReadVariableOp_61"training/SGD/mul_24/ReadVariableOp*
T0*&
_output_shapes
:0`
]
training/SGD/ReadVariableOp_62ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_25Multraining/SGD/ReadVariableOp_62@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0`*
T0
u
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25*
T0*&
_output_shapes
:0`
p
 training/SGD/AssignVariableOp_24AssignVariableOptraining/SGD/Variable_12training/SGD/sub_12*
dtype0
в
training/SGD/ReadVariableOp_63ReadVariableOptraining/SGD/Variable_12!^training/SGD/AssignVariableOp_24*
dtype0*&
_output_shapes
:0`
v
training/SGD/ReadVariableOp_64ReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0`
А
training/SGD/add_12Addtraining/SGD/ReadVariableOp_64training/SGD/sub_12*
T0*&
_output_shapes
:0`
g
 training/SGD/AssignVariableOp_25AssignVariableOpconv2d_5/kerneltraining/SGD/add_12*
dtype0
Щ
training/SGD/ReadVariableOp_65ReadVariableOpconv2d_5/kernel!^training/SGD/AssignVariableOp_25*
dtype0*&
_output_shapes
:0`
c
training/SGD/ReadVariableOp_66ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_26/ReadVariableOpReadVariableOptraining/SGD/Variable_13*
dtype0*
_output_shapes
:`
Г
training/SGD/mul_26Multraining/SGD/ReadVariableOp_66"training/SGD/mul_26/ReadVariableOp*
T0*
_output_shapes
:`
]
training/SGD/ReadVariableOp_67ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_27Multraining/SGD/ReadVariableOp_678training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_13Subtraining/SGD/mul_26training/SGD/mul_27*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_26AssignVariableOptraining/SGD/Variable_13training/SGD/sub_13*
dtype0
Ц
training/SGD/ReadVariableOp_68ReadVariableOptraining/SGD/Variable_13!^training/SGD/AssignVariableOp_26*
dtype0*
_output_shapes
:`
h
training/SGD/ReadVariableOp_69ReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:`
t
training/SGD/add_13Addtraining/SGD/ReadVariableOp_69training/SGD/sub_13*
T0*
_output_shapes
:`
e
 training/SGD/AssignVariableOp_27AssignVariableOpconv2d_5/biastraining/SGD/add_13*
dtype0
Л
training/SGD/ReadVariableOp_70ReadVariableOpconv2d_5/bias!^training/SGD/AssignVariableOp_27*
dtype0*
_output_shapes
:`
c
training/SGD/ReadVariableOp_71ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_28/ReadVariableOpReadVariableOptraining/SGD/Variable_14*
dtype0*&
_output_shapes
:``
П
training/SGD/mul_28Multraining/SGD/ReadVariableOp_71"training/SGD/mul_28/ReadVariableOp*
T0*&
_output_shapes
:``
]
training/SGD/ReadVariableOp_72ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_29Multraining/SGD/ReadVariableOp_72@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:``*
T0
u
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
T0*&
_output_shapes
:``
p
 training/SGD/AssignVariableOp_28AssignVariableOptraining/SGD/Variable_14training/SGD/sub_14*
dtype0
в
training/SGD/ReadVariableOp_73ReadVariableOptraining/SGD/Variable_14!^training/SGD/AssignVariableOp_28*
dtype0*&
_output_shapes
:``
v
training/SGD/ReadVariableOp_74ReadVariableOpconv2d_7/kernel*&
_output_shapes
:``*
dtype0
А
training/SGD/add_14Addtraining/SGD/ReadVariableOp_74training/SGD/sub_14*&
_output_shapes
:``*
T0
g
 training/SGD/AssignVariableOp_29AssignVariableOpconv2d_7/kerneltraining/SGD/add_14*
dtype0
Щ
training/SGD/ReadVariableOp_75ReadVariableOpconv2d_7/kernel!^training/SGD/AssignVariableOp_29*&
_output_shapes
:``*
dtype0
c
training/SGD/ReadVariableOp_76ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_30/ReadVariableOpReadVariableOptraining/SGD/Variable_15*
dtype0*
_output_shapes
:`
Г
training/SGD/mul_30Multraining/SGD/ReadVariableOp_76"training/SGD/mul_30/ReadVariableOp*
T0*
_output_shapes
:`
]
training/SGD/ReadVariableOp_77ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_31Multraining/SGD/ReadVariableOp_778training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_15Subtraining/SGD/mul_30training/SGD/mul_31*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_30AssignVariableOptraining/SGD/Variable_15training/SGD/sub_15*
dtype0
Ц
training/SGD/ReadVariableOp_78ReadVariableOptraining/SGD/Variable_15!^training/SGD/AssignVariableOp_30*
dtype0*
_output_shapes
:`
h
training/SGD/ReadVariableOp_79ReadVariableOpconv2d_7/bias*
_output_shapes
:`*
dtype0
t
training/SGD/add_15Addtraining/SGD/ReadVariableOp_79training/SGD/sub_15*
_output_shapes
:`*
T0
e
 training/SGD/AssignVariableOp_31AssignVariableOpconv2d_7/biastraining/SGD/add_15*
dtype0
Л
training/SGD/ReadVariableOp_80ReadVariableOpconv2d_7/bias!^training/SGD/AssignVariableOp_31*
dtype0*
_output_shapes
:`
c
training/SGD/ReadVariableOp_81ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_32/ReadVariableOpReadVariableOptraining/SGD/Variable_16*
dtype0*'
_output_shapes
:`└
Р
training/SGD/mul_32Multraining/SGD/ReadVariableOp_81"training/SGD/mul_32/ReadVariableOp*'
_output_shapes
:`└*
T0
]
training/SGD/ReadVariableOp_82ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
о
training/SGD/mul_33Multraining/SGD/ReadVariableOp_82@training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:`└*
T0
v
training/SGD/sub_16Subtraining/SGD/mul_32training/SGD/mul_33*
T0*'
_output_shapes
:`└
p
 training/SGD/AssignVariableOp_32AssignVariableOptraining/SGD/Variable_16training/SGD/sub_16*
dtype0
г
training/SGD/ReadVariableOp_83ReadVariableOptraining/SGD/Variable_16!^training/SGD/AssignVariableOp_32*'
_output_shapes
:`└*
dtype0
w
training/SGD/ReadVariableOp_84ReadVariableOpconv2d_9/kernel*
dtype0*'
_output_shapes
:`└
Б
training/SGD/add_16Addtraining/SGD/ReadVariableOp_84training/SGD/sub_16*'
_output_shapes
:`└*
T0
g
 training/SGD/AssignVariableOp_33AssignVariableOpconv2d_9/kerneltraining/SGD/add_16*
dtype0
Ъ
training/SGD/ReadVariableOp_85ReadVariableOpconv2d_9/kernel!^training/SGD/AssignVariableOp_33*
dtype0*'
_output_shapes
:`└
c
training/SGD/ReadVariableOp_86ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
x
"training/SGD/mul_34/ReadVariableOpReadVariableOptraining/SGD/Variable_17*
_output_shapes	
:└*
dtype0
Д
training/SGD/mul_34Multraining/SGD/ReadVariableOp_86"training/SGD/mul_34/ReadVariableOp*
_output_shapes	
:└*
T0
]
training/SGD/ReadVariableOp_87ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ъ
training/SGD/mul_35Multraining/SGD/ReadVariableOp_878training/SGD/gradients/conv2d_9/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:└*
T0
j
training/SGD/sub_17Subtraining/SGD/mul_34training/SGD/mul_35*
T0*
_output_shapes	
:└
p
 training/SGD/AssignVariableOp_34AssignVariableOptraining/SGD/Variable_17training/SGD/sub_17*
dtype0
Ч
training/SGD/ReadVariableOp_88ReadVariableOptraining/SGD/Variable_17!^training/SGD/AssignVariableOp_34*
dtype0*
_output_shapes	
:└
i
training/SGD/ReadVariableOp_89ReadVariableOpconv2d_9/bias*
dtype0*
_output_shapes	
:└
u
training/SGD/add_17Addtraining/SGD/ReadVariableOp_89training/SGD/sub_17*
_output_shapes	
:└*
T0
e
 training/SGD/AssignVariableOp_35AssignVariableOpconv2d_9/biastraining/SGD/add_17*
dtype0
М
training/SGD/ReadVariableOp_90ReadVariableOpconv2d_9/bias!^training/SGD/AssignVariableOp_35*
dtype0*
_output_shapes	
:└
c
training/SGD/ReadVariableOp_91ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_36/ReadVariableOpReadVariableOptraining/SGD/Variable_18*
dtype0*'
_output_shapes
:`└
Р
training/SGD/mul_36Multraining/SGD/ReadVariableOp_91"training/SGD/mul_36/ReadVariableOp*'
_output_shapes
:`└*
T0
]
training/SGD/ReadVariableOp_92ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
о
training/SGD/mul_37Multraining/SGD/ReadVariableOp_92@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`└
v
training/SGD/sub_18Subtraining/SGD/mul_36training/SGD/mul_37*
T0*'
_output_shapes
:`└
p
 training/SGD/AssignVariableOp_36AssignVariableOptraining/SGD/Variable_18training/SGD/sub_18*
dtype0
г
training/SGD/ReadVariableOp_93ReadVariableOptraining/SGD/Variable_18!^training/SGD/AssignVariableOp_36*'
_output_shapes
:`└*
dtype0
w
training/SGD/ReadVariableOp_94ReadVariableOpconv2d_8/kernel*
dtype0*'
_output_shapes
:`└
Б
training/SGD/add_18Addtraining/SGD/ReadVariableOp_94training/SGD/sub_18*'
_output_shapes
:`└*
T0
g
 training/SGD/AssignVariableOp_37AssignVariableOpconv2d_8/kerneltraining/SGD/add_18*
dtype0
Ъ
training/SGD/ReadVariableOp_95ReadVariableOpconv2d_8/kernel!^training/SGD/AssignVariableOp_37*
dtype0*'
_output_shapes
:`└
c
training/SGD/ReadVariableOp_96ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
x
"training/SGD/mul_38/ReadVariableOpReadVariableOptraining/SGD/Variable_19*
dtype0*
_output_shapes	
:└
Д
training/SGD/mul_38Multraining/SGD/ReadVariableOp_96"training/SGD/mul_38/ReadVariableOp*
T0*
_output_shapes	
:└
]
training/SGD/ReadVariableOp_97ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ъ
training/SGD/mul_39Multraining/SGD/ReadVariableOp_978training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:└*
T0
j
training/SGD/sub_19Subtraining/SGD/mul_38training/SGD/mul_39*
T0*
_output_shapes	
:└
p
 training/SGD/AssignVariableOp_38AssignVariableOptraining/SGD/Variable_19training/SGD/sub_19*
dtype0
Ч
training/SGD/ReadVariableOp_98ReadVariableOptraining/SGD/Variable_19!^training/SGD/AssignVariableOp_38*
_output_shapes	
:└*
dtype0
i
training/SGD/ReadVariableOp_99ReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes	
:└
u
training/SGD/add_19Addtraining/SGD/ReadVariableOp_99training/SGD/sub_19*
T0*
_output_shapes	
:└
e
 training/SGD/AssignVariableOp_39AssignVariableOpconv2d_8/biastraining/SGD/add_19*
dtype0
Н
training/SGD/ReadVariableOp_100ReadVariableOpconv2d_8/bias!^training/SGD/AssignVariableOp_39*
dtype0*
_output_shapes	
:└
d
training/SGD/ReadVariableOp_101ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Е
"training/SGD/mul_40/ReadVariableOpReadVariableOptraining/SGD/Variable_20*
dtype0*(
_output_shapes
:└└
Т
training/SGD/mul_40Multraining/SGD/ReadVariableOp_101"training/SGD/mul_40/ReadVariableOp*(
_output_shapes
:└└*
T0
^
training/SGD/ReadVariableOp_102ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
▒
training/SGD/mul_41Multraining/SGD/ReadVariableOp_102Atraining/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:└└*
T0
w
training/SGD/sub_20Subtraining/SGD/mul_40training/SGD/mul_41*(
_output_shapes
:└└*
T0
p
 training/SGD/AssignVariableOp_40AssignVariableOptraining/SGD/Variable_20training/SGD/sub_20*
dtype0
е
training/SGD/ReadVariableOp_103ReadVariableOptraining/SGD/Variable_20!^training/SGD/AssignVariableOp_40*
dtype0*(
_output_shapes
:└└
z
training/SGD/ReadVariableOp_104ReadVariableOpconv2d_10/kernel*(
_output_shapes
:└└*
dtype0
Г
training/SGD/add_20Addtraining/SGD/ReadVariableOp_104training/SGD/sub_20*
T0*(
_output_shapes
:└└
h
 training/SGD/AssignVariableOp_41AssignVariableOpconv2d_10/kerneltraining/SGD/add_20*
dtype0
Э
training/SGD/ReadVariableOp_105ReadVariableOpconv2d_10/kernel!^training/SGD/AssignVariableOp_41*
dtype0*(
_output_shapes
:└└
d
training/SGD/ReadVariableOp_106ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
x
"training/SGD/mul_42/ReadVariableOpReadVariableOptraining/SGD/Variable_21*
dtype0*
_output_shapes	
:└
Е
training/SGD/mul_42Multraining/SGD/ReadVariableOp_106"training/SGD/mul_42/ReadVariableOp*
_output_shapes	
:└*
T0
^
training/SGD/ReadVariableOp_107ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ь
training/SGD/mul_43Multraining/SGD/ReadVariableOp_1079training/SGD/gradients/conv2d_10/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:└
j
training/SGD/sub_21Subtraining/SGD/mul_42training/SGD/mul_43*
T0*
_output_shapes	
:└
p
 training/SGD/AssignVariableOp_42AssignVariableOptraining/SGD/Variable_21training/SGD/sub_21*
dtype0
Ш
training/SGD/ReadVariableOp_108ReadVariableOptraining/SGD/Variable_21!^training/SGD/AssignVariableOp_42*
dtype0*
_output_shapes	
:└
k
training/SGD/ReadVariableOp_109ReadVariableOpconv2d_10/bias*
dtype0*
_output_shapes	
:└
v
training/SGD/add_21Addtraining/SGD/ReadVariableOp_109training/SGD/sub_21*
T0*
_output_shapes	
:└
f
 training/SGD/AssignVariableOp_43AssignVariableOpconv2d_10/biastraining/SGD/add_21*
dtype0
О
training/SGD/ReadVariableOp_110ReadVariableOpconv2d_10/bias!^training/SGD/AssignVariableOp_43*
dtype0*
_output_shapes	
:└
d
training/SGD/ReadVariableOp_111ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_44/ReadVariableOpReadVariableOptraining/SGD/Variable_22*
dtype0*'
_output_shapes
:а`
С
training/SGD/mul_44Multraining/SGD/ReadVariableOp_111"training/SGD/mul_44/ReadVariableOp*
T0*'
_output_shapes
:а`
^
training/SGD/ReadVariableOp_112ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_45Multraining/SGD/ReadVariableOp_112Atraining/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:а`
v
training/SGD/sub_22Subtraining/SGD/mul_44training/SGD/mul_45*'
_output_shapes
:а`*
T0
p
 training/SGD/AssignVariableOp_44AssignVariableOptraining/SGD/Variable_22training/SGD/sub_22*
dtype0
д
training/SGD/ReadVariableOp_113ReadVariableOptraining/SGD/Variable_22!^training/SGD/AssignVariableOp_44*
dtype0*'
_output_shapes
:а`
y
training/SGD/ReadVariableOp_114ReadVariableOpconv2d_12/kernel*'
_output_shapes
:а`*
dtype0
В
training/SGD/add_22Addtraining/SGD/ReadVariableOp_114training/SGD/sub_22*
T0*'
_output_shapes
:а`
h
 training/SGD/AssignVariableOp_45AssignVariableOpconv2d_12/kerneltraining/SGD/add_22*
dtype0
Ь
training/SGD/ReadVariableOp_115ReadVariableOpconv2d_12/kernel!^training/SGD/AssignVariableOp_45*
dtype0*'
_output_shapes
:а`
d
training/SGD/ReadVariableOp_116ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_46/ReadVariableOpReadVariableOptraining/SGD/Variable_23*
dtype0*
_output_shapes
:`
Д
training/SGD/mul_46Multraining/SGD/ReadVariableOp_116"training/SGD/mul_46/ReadVariableOp*
_output_shapes
:`*
T0
^
training/SGD/ReadVariableOp_117ReadVariableOpSGD/lr*
_output_shapes
: *
dtype0
Ы
training/SGD/mul_47Multraining/SGD/ReadVariableOp_1179training/SGD/gradients/conv2d_12/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_23Subtraining/SGD/mul_46training/SGD/mul_47*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_46AssignVariableOptraining/SGD/Variable_23training/SGD/sub_23*
dtype0
Ч
training/SGD/ReadVariableOp_118ReadVariableOptraining/SGD/Variable_23!^training/SGD/AssignVariableOp_46*
dtype0*
_output_shapes
:`
j
training/SGD/ReadVariableOp_119ReadVariableOpconv2d_12/bias*
dtype0*
_output_shapes
:`
u
training/SGD/add_23Addtraining/SGD/ReadVariableOp_119training/SGD/sub_23*
T0*
_output_shapes
:`
f
 training/SGD/AssignVariableOp_47AssignVariableOpconv2d_12/biastraining/SGD/add_23*
dtype0
Н
training/SGD/ReadVariableOp_120ReadVariableOpconv2d_12/bias!^training/SGD/AssignVariableOp_47*
dtype0*
_output_shapes
:`
d
training/SGD/ReadVariableOp_121ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_48/ReadVariableOpReadVariableOptraining/SGD/Variable_24*
dtype0*'
_output_shapes
:а`
С
training/SGD/mul_48Multraining/SGD/ReadVariableOp_121"training/SGD/mul_48/ReadVariableOp*
T0*'
_output_shapes
:а`
^
training/SGD/ReadVariableOp_122ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_49Multraining/SGD/ReadVariableOp_122Atraining/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:а`*
T0
v
training/SGD/sub_24Subtraining/SGD/mul_48training/SGD/mul_49*
T0*'
_output_shapes
:а`
p
 training/SGD/AssignVariableOp_48AssignVariableOptraining/SGD/Variable_24training/SGD/sub_24*
dtype0
д
training/SGD/ReadVariableOp_123ReadVariableOptraining/SGD/Variable_24!^training/SGD/AssignVariableOp_48*
dtype0*'
_output_shapes
:а`
y
training/SGD/ReadVariableOp_124ReadVariableOpconv2d_11/kernel*
dtype0*'
_output_shapes
:а`
В
training/SGD/add_24Addtraining/SGD/ReadVariableOp_124training/SGD/sub_24*'
_output_shapes
:а`*
T0
h
 training/SGD/AssignVariableOp_49AssignVariableOpconv2d_11/kerneltraining/SGD/add_24*
dtype0
Ь
training/SGD/ReadVariableOp_125ReadVariableOpconv2d_11/kernel!^training/SGD/AssignVariableOp_49*
dtype0*'
_output_shapes
:а`
d
training/SGD/ReadVariableOp_126ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_50/ReadVariableOpReadVariableOptraining/SGD/Variable_25*
dtype0*
_output_shapes
:`
Д
training/SGD/mul_50Multraining/SGD/ReadVariableOp_126"training/SGD/mul_50/ReadVariableOp*
_output_shapes
:`*
T0
^
training/SGD/ReadVariableOp_127ReadVariableOpSGD/lr*
_output_shapes
: *
dtype0
Ы
training/SGD/mul_51Multraining/SGD/ReadVariableOp_1279training/SGD/gradients/conv2d_11/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_25Subtraining/SGD/mul_50training/SGD/mul_51*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_50AssignVariableOptraining/SGD/Variable_25training/SGD/sub_25*
dtype0
Ч
training/SGD/ReadVariableOp_128ReadVariableOptraining/SGD/Variable_25!^training/SGD/AssignVariableOp_50*
dtype0*
_output_shapes
:`
j
training/SGD/ReadVariableOp_129ReadVariableOpconv2d_11/bias*
dtype0*
_output_shapes
:`
u
training/SGD/add_25Addtraining/SGD/ReadVariableOp_129training/SGD/sub_25*
_output_shapes
:`*
T0
f
 training/SGD/AssignVariableOp_51AssignVariableOpconv2d_11/biastraining/SGD/add_25*
dtype0
Н
training/SGD/ReadVariableOp_130ReadVariableOpconv2d_11/bias!^training/SGD/AssignVariableOp_51*
dtype0*
_output_shapes
:`
d
training/SGD/ReadVariableOp_131ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_52/ReadVariableOpReadVariableOptraining/SGD/Variable_26*
dtype0*&
_output_shapes
:``
Р
training/SGD/mul_52Multraining/SGD/ReadVariableOp_131"training/SGD/mul_52/ReadVariableOp*
T0*&
_output_shapes
:``
^
training/SGD/ReadVariableOp_132ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_53Multraining/SGD/ReadVariableOp_132Atraining/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
u
training/SGD/sub_26Subtraining/SGD/mul_52training/SGD/mul_53*
T0*&
_output_shapes
:``
p
 training/SGD/AssignVariableOp_52AssignVariableOptraining/SGD/Variable_26training/SGD/sub_26*
dtype0
г
training/SGD/ReadVariableOp_133ReadVariableOptraining/SGD/Variable_26!^training/SGD/AssignVariableOp_52*
dtype0*&
_output_shapes
:``
x
training/SGD/ReadVariableOp_134ReadVariableOpconv2d_13/kernel*
dtype0*&
_output_shapes
:``
Б
training/SGD/add_26Addtraining/SGD/ReadVariableOp_134training/SGD/sub_26*
T0*&
_output_shapes
:``
h
 training/SGD/AssignVariableOp_53AssignVariableOpconv2d_13/kerneltraining/SGD/add_26*
dtype0
Ы
training/SGD/ReadVariableOp_135ReadVariableOpconv2d_13/kernel!^training/SGD/AssignVariableOp_53*&
_output_shapes
:``*
dtype0
d
training/SGD/ReadVariableOp_136ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_54/ReadVariableOpReadVariableOptraining/SGD/Variable_27*
dtype0*
_output_shapes
:`
Д
training/SGD/mul_54Multraining/SGD/ReadVariableOp_136"training/SGD/mul_54/ReadVariableOp*
T0*
_output_shapes
:`
^
training/SGD/ReadVariableOp_137ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_55Multraining/SGD/ReadVariableOp_1379training/SGD/gradients/conv2d_13/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_27Subtraining/SGD/mul_54training/SGD/mul_55*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_54AssignVariableOptraining/SGD/Variable_27training/SGD/sub_27*
dtype0
Ч
training/SGD/ReadVariableOp_138ReadVariableOptraining/SGD/Variable_27!^training/SGD/AssignVariableOp_54*
dtype0*
_output_shapes
:`
j
training/SGD/ReadVariableOp_139ReadVariableOpconv2d_13/bias*
dtype0*
_output_shapes
:`
u
training/SGD/add_27Addtraining/SGD/ReadVariableOp_139training/SGD/sub_27*
_output_shapes
:`*
T0
f
 training/SGD/AssignVariableOp_55AssignVariableOpconv2d_13/biastraining/SGD/add_27*
dtype0
Н
training/SGD/ReadVariableOp_140ReadVariableOpconv2d_13/bias!^training/SGD/AssignVariableOp_55*
dtype0*
_output_shapes
:`
d
training/SGD/ReadVariableOp_141ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_56/ReadVariableOpReadVariableOptraining/SGD/Variable_28*
dtype0*'
_output_shapes
:Р0
С
training/SGD/mul_56Multraining/SGD/ReadVariableOp_141"training/SGD/mul_56/ReadVariableOp*
T0*'
_output_shapes
:Р0
^
training/SGD/ReadVariableOp_142ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_57Multraining/SGD/ReadVariableOp_142Atraining/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:Р0
v
training/SGD/sub_28Subtraining/SGD/mul_56training/SGD/mul_57*
T0*'
_output_shapes
:Р0
p
 training/SGD/AssignVariableOp_56AssignVariableOptraining/SGD/Variable_28training/SGD/sub_28*
dtype0
д
training/SGD/ReadVariableOp_143ReadVariableOptraining/SGD/Variable_28!^training/SGD/AssignVariableOp_56*'
_output_shapes
:Р0*
dtype0
y
training/SGD/ReadVariableOp_144ReadVariableOpconv2d_15/kernel*
dtype0*'
_output_shapes
:Р0
В
training/SGD/add_28Addtraining/SGD/ReadVariableOp_144training/SGD/sub_28*'
_output_shapes
:Р0*
T0
h
 training/SGD/AssignVariableOp_57AssignVariableOpconv2d_15/kerneltraining/SGD/add_28*
dtype0
Ь
training/SGD/ReadVariableOp_145ReadVariableOpconv2d_15/kernel!^training/SGD/AssignVariableOp_57*
dtype0*'
_output_shapes
:Р0
d
training/SGD/ReadVariableOp_146ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_58/ReadVariableOpReadVariableOptraining/SGD/Variable_29*
dtype0*
_output_shapes
:0
Д
training/SGD/mul_58Multraining/SGD/ReadVariableOp_146"training/SGD/mul_58/ReadVariableOp*
T0*
_output_shapes
:0
^
training/SGD/ReadVariableOp_147ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_59Multraining/SGD/ReadVariableOp_1479training/SGD/gradients/conv2d_15/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_29Subtraining/SGD/mul_58training/SGD/mul_59*
_output_shapes
:0*
T0
p
 training/SGD/AssignVariableOp_58AssignVariableOptraining/SGD/Variable_29training/SGD/sub_29*
dtype0
Ч
training/SGD/ReadVariableOp_148ReadVariableOptraining/SGD/Variable_29!^training/SGD/AssignVariableOp_58*
dtype0*
_output_shapes
:0
j
training/SGD/ReadVariableOp_149ReadVariableOpconv2d_15/bias*
dtype0*
_output_shapes
:0
u
training/SGD/add_29Addtraining/SGD/ReadVariableOp_149training/SGD/sub_29*
T0*
_output_shapes
:0
f
 training/SGD/AssignVariableOp_59AssignVariableOpconv2d_15/biastraining/SGD/add_29*
dtype0
Н
training/SGD/ReadVariableOp_150ReadVariableOpconv2d_15/bias!^training/SGD/AssignVariableOp_59*
_output_shapes
:0*
dtype0
d
training/SGD/ReadVariableOp_151ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_60/ReadVariableOpReadVariableOptraining/SGD/Variable_30*
dtype0*'
_output_shapes
:Р0
С
training/SGD/mul_60Multraining/SGD/ReadVariableOp_151"training/SGD/mul_60/ReadVariableOp*
T0*'
_output_shapes
:Р0
^
training/SGD/ReadVariableOp_152ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_61Multraining/SGD/ReadVariableOp_152Atraining/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:Р0*
T0
v
training/SGD/sub_30Subtraining/SGD/mul_60training/SGD/mul_61*
T0*'
_output_shapes
:Р0
p
 training/SGD/AssignVariableOp_60AssignVariableOptraining/SGD/Variable_30training/SGD/sub_30*
dtype0
д
training/SGD/ReadVariableOp_153ReadVariableOptraining/SGD/Variable_30!^training/SGD/AssignVariableOp_60*
dtype0*'
_output_shapes
:Р0
y
training/SGD/ReadVariableOp_154ReadVariableOpconv2d_14/kernel*
dtype0*'
_output_shapes
:Р0
В
training/SGD/add_30Addtraining/SGD/ReadVariableOp_154training/SGD/sub_30*'
_output_shapes
:Р0*
T0
h
 training/SGD/AssignVariableOp_61AssignVariableOpconv2d_14/kerneltraining/SGD/add_30*
dtype0
Ь
training/SGD/ReadVariableOp_155ReadVariableOpconv2d_14/kernel!^training/SGD/AssignVariableOp_61*
dtype0*'
_output_shapes
:Р0
d
training/SGD/ReadVariableOp_156ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_62/ReadVariableOpReadVariableOptraining/SGD/Variable_31*
dtype0*
_output_shapes
:0
Д
training/SGD/mul_62Multraining/SGD/ReadVariableOp_156"training/SGD/mul_62/ReadVariableOp*
T0*
_output_shapes
:0
^
training/SGD/ReadVariableOp_157ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_63Multraining/SGD/ReadVariableOp_1579training/SGD/gradients/conv2d_14/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_31Subtraining/SGD/mul_62training/SGD/mul_63*
T0*
_output_shapes
:0
p
 training/SGD/AssignVariableOp_62AssignVariableOptraining/SGD/Variable_31training/SGD/sub_31*
dtype0
Ч
training/SGD/ReadVariableOp_158ReadVariableOptraining/SGD/Variable_31!^training/SGD/AssignVariableOp_62*
dtype0*
_output_shapes
:0
j
training/SGD/ReadVariableOp_159ReadVariableOpconv2d_14/bias*
dtype0*
_output_shapes
:0
u
training/SGD/add_31Addtraining/SGD/ReadVariableOp_159training/SGD/sub_31*
T0*
_output_shapes
:0
f
 training/SGD/AssignVariableOp_63AssignVariableOpconv2d_14/biastraining/SGD/add_31*
dtype0
Н
training/SGD/ReadVariableOp_160ReadVariableOpconv2d_14/bias!^training/SGD/AssignVariableOp_63*
dtype0*
_output_shapes
:0
d
training/SGD/ReadVariableOp_161ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_64/ReadVariableOpReadVariableOptraining/SGD/Variable_32*
dtype0*&
_output_shapes
:00
Р
training/SGD/mul_64Multraining/SGD/ReadVariableOp_161"training/SGD/mul_64/ReadVariableOp*
T0*&
_output_shapes
:00
^
training/SGD/ReadVariableOp_162ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_65Multraining/SGD/ReadVariableOp_162Atraining/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
u
training/SGD/sub_32Subtraining/SGD/mul_64training/SGD/mul_65*
T0*&
_output_shapes
:00
p
 training/SGD/AssignVariableOp_64AssignVariableOptraining/SGD/Variable_32training/SGD/sub_32*
dtype0
г
training/SGD/ReadVariableOp_163ReadVariableOptraining/SGD/Variable_32!^training/SGD/AssignVariableOp_64*
dtype0*&
_output_shapes
:00
x
training/SGD/ReadVariableOp_164ReadVariableOpconv2d_16/kernel*
dtype0*&
_output_shapes
:00
Б
training/SGD/add_32Addtraining/SGD/ReadVariableOp_164training/SGD/sub_32*
T0*&
_output_shapes
:00
h
 training/SGD/AssignVariableOp_65AssignVariableOpconv2d_16/kerneltraining/SGD/add_32*
dtype0
Ы
training/SGD/ReadVariableOp_165ReadVariableOpconv2d_16/kernel!^training/SGD/AssignVariableOp_65*
dtype0*&
_output_shapes
:00
d
training/SGD/ReadVariableOp_166ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_66/ReadVariableOpReadVariableOptraining/SGD/Variable_33*
dtype0*
_output_shapes
:0
Д
training/SGD/mul_66Multraining/SGD/ReadVariableOp_166"training/SGD/mul_66/ReadVariableOp*
_output_shapes
:0*
T0
^
training/SGD/ReadVariableOp_167ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_67Multraining/SGD/ReadVariableOp_1679training/SGD/gradients/conv2d_16/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_33Subtraining/SGD/mul_66training/SGD/mul_67*
_output_shapes
:0*
T0
p
 training/SGD/AssignVariableOp_66AssignVariableOptraining/SGD/Variable_33training/SGD/sub_33*
dtype0
Ч
training/SGD/ReadVariableOp_168ReadVariableOptraining/SGD/Variable_33!^training/SGD/AssignVariableOp_66*
dtype0*
_output_shapes
:0
j
training/SGD/ReadVariableOp_169ReadVariableOpconv2d_16/bias*
dtype0*
_output_shapes
:0
u
training/SGD/add_33Addtraining/SGD/ReadVariableOp_169training/SGD/sub_33*
_output_shapes
:0*
T0
f
 training/SGD/AssignVariableOp_67AssignVariableOpconv2d_16/biastraining/SGD/add_33*
dtype0
Н
training/SGD/ReadVariableOp_170ReadVariableOpconv2d_16/bias!^training/SGD/AssignVariableOp_67*
dtype0*
_output_shapes
:0
d
training/SGD/ReadVariableOp_171ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_68/ReadVariableOpReadVariableOptraining/SGD/Variable_34*
dtype0*&
_output_shapes
:H
Р
training/SGD/mul_68Multraining/SGD/ReadVariableOp_171"training/SGD/mul_68/ReadVariableOp*
T0*&
_output_shapes
:H
^
training/SGD/ReadVariableOp_172ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_69Multraining/SGD/ReadVariableOp_172Atraining/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:H*
T0
u
training/SGD/sub_34Subtraining/SGD/mul_68training/SGD/mul_69*
T0*&
_output_shapes
:H
p
 training/SGD/AssignVariableOp_68AssignVariableOptraining/SGD/Variable_34training/SGD/sub_34*
dtype0
г
training/SGD/ReadVariableOp_173ReadVariableOptraining/SGD/Variable_34!^training/SGD/AssignVariableOp_68*
dtype0*&
_output_shapes
:H
x
training/SGD/ReadVariableOp_174ReadVariableOpconv2d_18/kernel*
dtype0*&
_output_shapes
:H
Б
training/SGD/add_34Addtraining/SGD/ReadVariableOp_174training/SGD/sub_34*
T0*&
_output_shapes
:H
h
 training/SGD/AssignVariableOp_69AssignVariableOpconv2d_18/kerneltraining/SGD/add_34*
dtype0
Ы
training/SGD/ReadVariableOp_175ReadVariableOpconv2d_18/kernel!^training/SGD/AssignVariableOp_69*
dtype0*&
_output_shapes
:H
d
training/SGD/ReadVariableOp_176ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_70/ReadVariableOpReadVariableOptraining/SGD/Variable_35*
dtype0*
_output_shapes
:
Д
training/SGD/mul_70Multraining/SGD/ReadVariableOp_176"training/SGD/mul_70/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_177ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_71Multraining/SGD/ReadVariableOp_1779training/SGD/gradients/conv2d_18/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_35Subtraining/SGD/mul_70training/SGD/mul_71*
_output_shapes
:*
T0
p
 training/SGD/AssignVariableOp_70AssignVariableOptraining/SGD/Variable_35training/SGD/sub_35*
dtype0
Ч
training/SGD/ReadVariableOp_178ReadVariableOptraining/SGD/Variable_35!^training/SGD/AssignVariableOp_70*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_179ReadVariableOpconv2d_18/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_35Addtraining/SGD/ReadVariableOp_179training/SGD/sub_35*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_71AssignVariableOpconv2d_18/biastraining/SGD/add_35*
dtype0
Н
training/SGD/ReadVariableOp_180ReadVariableOpconv2d_18/bias!^training/SGD/AssignVariableOp_71*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_181ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_72/ReadVariableOpReadVariableOptraining/SGD/Variable_36*
dtype0*&
_output_shapes
:H
Р
training/SGD/mul_72Multraining/SGD/ReadVariableOp_181"training/SGD/mul_72/ReadVariableOp*
T0*&
_output_shapes
:H
^
training/SGD/ReadVariableOp_182ReadVariableOpSGD/lr*
_output_shapes
: *
dtype0
п
training/SGD/mul_73Multraining/SGD/ReadVariableOp_182Atraining/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:H
u
training/SGD/sub_36Subtraining/SGD/mul_72training/SGD/mul_73*
T0*&
_output_shapes
:H
p
 training/SGD/AssignVariableOp_72AssignVariableOptraining/SGD/Variable_36training/SGD/sub_36*
dtype0
г
training/SGD/ReadVariableOp_183ReadVariableOptraining/SGD/Variable_36!^training/SGD/AssignVariableOp_72*
dtype0*&
_output_shapes
:H
x
training/SGD/ReadVariableOp_184ReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
:H
Б
training/SGD/add_36Addtraining/SGD/ReadVariableOp_184training/SGD/sub_36*&
_output_shapes
:H*
T0
h
 training/SGD/AssignVariableOp_73AssignVariableOpconv2d_17/kerneltraining/SGD/add_36*
dtype0
Ы
training/SGD/ReadVariableOp_185ReadVariableOpconv2d_17/kernel!^training/SGD/AssignVariableOp_73*
dtype0*&
_output_shapes
:H
d
training/SGD/ReadVariableOp_186ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_74/ReadVariableOpReadVariableOptraining/SGD/Variable_37*
dtype0*
_output_shapes
:
Д
training/SGD/mul_74Multraining/SGD/ReadVariableOp_186"training/SGD/mul_74/ReadVariableOp*
_output_shapes
:*
T0
^
training/SGD/ReadVariableOp_187ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_75Multraining/SGD/ReadVariableOp_1879training/SGD/gradients/conv2d_17/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_37Subtraining/SGD/mul_74training/SGD/mul_75*
_output_shapes
:*
T0
p
 training/SGD/AssignVariableOp_74AssignVariableOptraining/SGD/Variable_37training/SGD/sub_37*
dtype0
Ч
training/SGD/ReadVariableOp_188ReadVariableOptraining/SGD/Variable_37!^training/SGD/AssignVariableOp_74*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_189ReadVariableOpconv2d_17/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_37Addtraining/SGD/ReadVariableOp_189training/SGD/sub_37*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_75AssignVariableOpconv2d_17/biastraining/SGD/add_37*
dtype0
Н
training/SGD/ReadVariableOp_190ReadVariableOpconv2d_17/bias!^training/SGD/AssignVariableOp_75*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_191ReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
Г
"training/SGD/mul_76/ReadVariableOpReadVariableOptraining/SGD/Variable_38*
dtype0*&
_output_shapes
:
Р
training/SGD/mul_76Multraining/SGD/ReadVariableOp_191"training/SGD/mul_76/ReadVariableOp*
T0*&
_output_shapes
:
^
training/SGD/ReadVariableOp_192ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_77Multraining/SGD/ReadVariableOp_192Atraining/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_38Subtraining/SGD/mul_76training/SGD/mul_77*
T0*&
_output_shapes
:
p
 training/SGD/AssignVariableOp_76AssignVariableOptraining/SGD/Variable_38training/SGD/sub_38*
dtype0
г
training/SGD/ReadVariableOp_193ReadVariableOptraining/SGD/Variable_38!^training/SGD/AssignVariableOp_76*
dtype0*&
_output_shapes
:
x
training/SGD/ReadVariableOp_194ReadVariableOpconv2d_19/kernel*
dtype0*&
_output_shapes
:
Б
training/SGD/add_38Addtraining/SGD/ReadVariableOp_194training/SGD/sub_38*
T0*&
_output_shapes
:
h
 training/SGD/AssignVariableOp_77AssignVariableOpconv2d_19/kerneltraining/SGD/add_38*
dtype0
Ы
training/SGD/ReadVariableOp_195ReadVariableOpconv2d_19/kernel!^training/SGD/AssignVariableOp_77*
dtype0*&
_output_shapes
:
d
training/SGD/ReadVariableOp_196ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_78/ReadVariableOpReadVariableOptraining/SGD/Variable_39*
dtype0*
_output_shapes
:
Д
training/SGD/mul_78Multraining/SGD/ReadVariableOp_196"training/SGD/mul_78/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_197ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_79Multraining/SGD/ReadVariableOp_1979training/SGD/gradients/conv2d_19/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_39Subtraining/SGD/mul_78training/SGD/mul_79*
_output_shapes
:*
T0
p
 training/SGD/AssignVariableOp_78AssignVariableOptraining/SGD/Variable_39training/SGD/sub_39*
dtype0
Ч
training/SGD/ReadVariableOp_198ReadVariableOptraining/SGD/Variable_39!^training/SGD/AssignVariableOp_78*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_199ReadVariableOpconv2d_19/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_39Addtraining/SGD/ReadVariableOp_199training/SGD/sub_39*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_79AssignVariableOpconv2d_19/biastraining/SGD/add_39*
dtype0
Н
training/SGD/ReadVariableOp_200ReadVariableOpconv2d_19/bias!^training/SGD/AssignVariableOp_79*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_201ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_80/ReadVariableOpReadVariableOptraining/SGD/Variable_40*
dtype0*&
_output_shapes
:
Р
training/SGD/mul_80Multraining/SGD/ReadVariableOp_201"training/SGD/mul_80/ReadVariableOp*
T0*&
_output_shapes
:
^
training/SGD/ReadVariableOp_202ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_81Multraining/SGD/ReadVariableOp_202Atraining/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_40Subtraining/SGD/mul_80training/SGD/mul_81*
T0*&
_output_shapes
:
p
 training/SGD/AssignVariableOp_80AssignVariableOptraining/SGD/Variable_40training/SGD/sub_40*
dtype0
г
training/SGD/ReadVariableOp_203ReadVariableOptraining/SGD/Variable_40!^training/SGD/AssignVariableOp_80*
dtype0*&
_output_shapes
:
x
training/SGD/ReadVariableOp_204ReadVariableOpconv2d_20/kernel*
dtype0*&
_output_shapes
:
Б
training/SGD/add_40Addtraining/SGD/ReadVariableOp_204training/SGD/sub_40*&
_output_shapes
:*
T0
h
 training/SGD/AssignVariableOp_81AssignVariableOpconv2d_20/kerneltraining/SGD/add_40*
dtype0
Ы
training/SGD/ReadVariableOp_205ReadVariableOpconv2d_20/kernel!^training/SGD/AssignVariableOp_81*
dtype0*&
_output_shapes
:
d
training/SGD/ReadVariableOp_206ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_82/ReadVariableOpReadVariableOptraining/SGD/Variable_41*
dtype0*
_output_shapes
:
Д
training/SGD/mul_82Multraining/SGD/ReadVariableOp_206"training/SGD/mul_82/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_207ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_83Multraining/SGD/ReadVariableOp_2079training/SGD/gradients/conv2d_20/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_41Subtraining/SGD/mul_82training/SGD/mul_83*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_82AssignVariableOptraining/SGD/Variable_41training/SGD/sub_41*
dtype0
Ч
training/SGD/ReadVariableOp_208ReadVariableOptraining/SGD/Variable_41!^training/SGD/AssignVariableOp_82*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_209ReadVariableOpconv2d_20/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_41Addtraining/SGD/ReadVariableOp_209training/SGD/sub_41*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_83AssignVariableOpconv2d_20/biastraining/SGD/add_41*
dtype0
Н
training/SGD/ReadVariableOp_210ReadVariableOpconv2d_20/bias!^training/SGD/AssignVariableOp_83*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_211ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_84/ReadVariableOpReadVariableOptraining/SGD/Variable_42*
dtype0*&
_output_shapes
:
Р
training/SGD/mul_84Multraining/SGD/ReadVariableOp_211"training/SGD/mul_84/ReadVariableOp*
T0*&
_output_shapes
:
^
training/SGD/ReadVariableOp_212ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_85Multraining/SGD/ReadVariableOp_212Atraining/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_42Subtraining/SGD/mul_84training/SGD/mul_85*
T0*&
_output_shapes
:
p
 training/SGD/AssignVariableOp_84AssignVariableOptraining/SGD/Variable_42training/SGD/sub_42*
dtype0
г
training/SGD/ReadVariableOp_213ReadVariableOptraining/SGD/Variable_42!^training/SGD/AssignVariableOp_84*
dtype0*&
_output_shapes
:
x
training/SGD/ReadVariableOp_214ReadVariableOpconv2d_21/kernel*
dtype0*&
_output_shapes
:
Б
training/SGD/add_42Addtraining/SGD/ReadVariableOp_214training/SGD/sub_42*
T0*&
_output_shapes
:
h
 training/SGD/AssignVariableOp_85AssignVariableOpconv2d_21/kerneltraining/SGD/add_42*
dtype0
Ы
training/SGD/ReadVariableOp_215ReadVariableOpconv2d_21/kernel!^training/SGD/AssignVariableOp_85*
dtype0*&
_output_shapes
:
d
training/SGD/ReadVariableOp_216ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_86/ReadVariableOpReadVariableOptraining/SGD/Variable_43*
dtype0*
_output_shapes
:
Д
training/SGD/mul_86Multraining/SGD/ReadVariableOp_216"training/SGD/mul_86/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_217ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_87Multraining/SGD/ReadVariableOp_2179training/SGD/gradients/conv2d_21/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_43Subtraining/SGD/mul_86training/SGD/mul_87*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_86AssignVariableOptraining/SGD/Variable_43training/SGD/sub_43*
dtype0
Ч
training/SGD/ReadVariableOp_218ReadVariableOptraining/SGD/Variable_43!^training/SGD/AssignVariableOp_86*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_219ReadVariableOpconv2d_21/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_43Addtraining/SGD/ReadVariableOp_219training/SGD/sub_43*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_87AssignVariableOpconv2d_21/biastraining/SGD/add_43*
dtype0
Н
training/SGD/ReadVariableOp_220ReadVariableOpconv2d_21/bias!^training/SGD/AssignVariableOp_87*
dtype0*
_output_shapes
:
ц
training_1/group_depsNoOp	^loss/mul^metrics/psnr/div_no_nan^training/SGD/ReadVariableOp^training/SGD/ReadVariableOp_10 ^training/SGD/ReadVariableOp_100 ^training/SGD/ReadVariableOp_103 ^training/SGD/ReadVariableOp_105 ^training/SGD/ReadVariableOp_108 ^training/SGD/ReadVariableOp_110 ^training/SGD/ReadVariableOp_113 ^training/SGD/ReadVariableOp_115 ^training/SGD/ReadVariableOp_118 ^training/SGD/ReadVariableOp_120 ^training/SGD/ReadVariableOp_123 ^training/SGD/ReadVariableOp_125 ^training/SGD/ReadVariableOp_128^training/SGD/ReadVariableOp_13 ^training/SGD/ReadVariableOp_130 ^training/SGD/ReadVariableOp_133 ^training/SGD/ReadVariableOp_135 ^training/SGD/ReadVariableOp_138 ^training/SGD/ReadVariableOp_140 ^training/SGD/ReadVariableOp_143 ^training/SGD/ReadVariableOp_145 ^training/SGD/ReadVariableOp_148^training/SGD/ReadVariableOp_15 ^training/SGD/ReadVariableOp_150 ^training/SGD/ReadVariableOp_153 ^training/SGD/ReadVariableOp_155 ^training/SGD/ReadVariableOp_158 ^training/SGD/ReadVariableOp_160 ^training/SGD/ReadVariableOp_163 ^training/SGD/ReadVariableOp_165 ^training/SGD/ReadVariableOp_168 ^training/SGD/ReadVariableOp_170 ^training/SGD/ReadVariableOp_173 ^training/SGD/ReadVariableOp_175 ^training/SGD/ReadVariableOp_178^training/SGD/ReadVariableOp_18 ^training/SGD/ReadVariableOp_180 ^training/SGD/ReadVariableOp_183 ^training/SGD/ReadVariableOp_185 ^training/SGD/ReadVariableOp_188 ^training/SGD/ReadVariableOp_190 ^training/SGD/ReadVariableOp_193 ^training/SGD/ReadVariableOp_195 ^training/SGD/ReadVariableOp_198^training/SGD/ReadVariableOp_20 ^training/SGD/ReadVariableOp_200 ^training/SGD/ReadVariableOp_203 ^training/SGD/ReadVariableOp_205 ^training/SGD/ReadVariableOp_208 ^training/SGD/ReadVariableOp_210 ^training/SGD/ReadVariableOp_213 ^training/SGD/ReadVariableOp_215 ^training/SGD/ReadVariableOp_218 ^training/SGD/ReadVariableOp_220^training/SGD/ReadVariableOp_23^training/SGD/ReadVariableOp_25^training/SGD/ReadVariableOp_28^training/SGD/ReadVariableOp_3^training/SGD/ReadVariableOp_30^training/SGD/ReadVariableOp_33^training/SGD/ReadVariableOp_35^training/SGD/ReadVariableOp_38^training/SGD/ReadVariableOp_40^training/SGD/ReadVariableOp_43^training/SGD/ReadVariableOp_45^training/SGD/ReadVariableOp_48^training/SGD/ReadVariableOp_5^training/SGD/ReadVariableOp_50^training/SGD/ReadVariableOp_53^training/SGD/ReadVariableOp_55^training/SGD/ReadVariableOp_58^training/SGD/ReadVariableOp_60^training/SGD/ReadVariableOp_63^training/SGD/ReadVariableOp_65^training/SGD/ReadVariableOp_68^training/SGD/ReadVariableOp_70^training/SGD/ReadVariableOp_73^training/SGD/ReadVariableOp_75^training/SGD/ReadVariableOp_78^training/SGD/ReadVariableOp_8^training/SGD/ReadVariableOp_80^training/SGD/ReadVariableOp_83^training/SGD/ReadVariableOp_85^training/SGD/ReadVariableOp_88^training/SGD/ReadVariableOp_90^training/SGD/ReadVariableOp_93^training/SGD/ReadVariableOp_95^training/SGD/ReadVariableOp_98
O
VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
\
VarIsInitializedOp_1VarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
\
VarIsInitializedOp_2VarIsInitializedOptraining/SGD/Variable_21*
_output_shapes
: 
\
VarIsInitializedOp_3VarIsInitializedOptraining/SGD/Variable_31*
_output_shapes
: 
\
VarIsInitializedOp_4VarIsInitializedOptraining/SGD/Variable_36*
_output_shapes
: 
R
VarIsInitializedOp_5VarIsInitializedOpconv2d_15/bias*
_output_shapes
: 
\
VarIsInitializedOp_6VarIsInitializedOptraining/SGD/Variable_38*
_output_shapes
: 
\
VarIsInitializedOp_7VarIsInitializedOptraining/SGD/Variable_19*
_output_shapes
: 
[
VarIsInitializedOp_8VarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
[
VarIsInitializedOp_9VarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
]
VarIsInitializedOp_10VarIsInitializedOptraining/SGD/Variable_39*
_output_shapes
: 
S
VarIsInitializedOp_11VarIsInitializedOpSGD/iterations*
_output_shapes
: 
]
VarIsInitializedOp_12VarIsInitializedOptraining/SGD/Variable_20*
_output_shapes
: 
K
VarIsInitializedOp_13VarIsInitializedOpSGD/lr*
_output_shapes
: 
N
VarIsInitializedOp_14VarIsInitializedOp	SGD/decay*
_output_shapes
: 
]
VarIsInitializedOp_15VarIsInitializedOptraining/SGD/Variable_30*
_output_shapes
: 
J
VarIsInitializedOp_16VarIsInitializedOptotal*
_output_shapes
: 
\
VarIsInitializedOp_17VarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
U
VarIsInitializedOp_18VarIsInitializedOpconv2d_15/kernel*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
]
VarIsInitializedOp_20VarIsInitializedOptraining/SGD/Variable_34*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_22VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
S
VarIsInitializedOp_23VarIsInitializedOpconv2d_14/bias*
_output_shapes
: 
]
VarIsInitializedOp_24VarIsInitializedOptraining/SGD/Variable_37*
_output_shapes
: 
]
VarIsInitializedOp_25VarIsInitializedOptraining/SGD/Variable_18*
_output_shapes
: 
U
VarIsInitializedOp_26VarIsInitializedOpconv2d_14/kernel*
_output_shapes
: 
R
VarIsInitializedOp_27VarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
J
VarIsInitializedOp_28VarIsInitializedOpcount*
_output_shapes
: 
\
VarIsInitializedOp_29VarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
Q
VarIsInitializedOp_30VarIsInitializedOpSGD/momentum*
_output_shapes
: 
]
VarIsInitializedOp_31VarIsInitializedOptraining/SGD/Variable_35*
_output_shapes
: 
T
VarIsInitializedOp_32VarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
S
VarIsInitializedOp_33VarIsInitializedOpconv2d_17/bias*
_output_shapes
: 
U
VarIsInitializedOp_34VarIsInitializedOpconv2d_17/kernel*
_output_shapes
: 
]
VarIsInitializedOp_35VarIsInitializedOptraining/SGD/Variable_40*
_output_shapes
: 
]
VarIsInitializedOp_36VarIsInitializedOptraining/SGD/Variable_22*
_output_shapes
: 
]
VarIsInitializedOp_37VarIsInitializedOptraining/SGD/Variable_32*
_output_shapes
: 
]
VarIsInitializedOp_38VarIsInitializedOptraining/SGD/Variable_23*
_output_shapes
: 
]
VarIsInitializedOp_39VarIsInitializedOptraining/SGD/Variable_33*
_output_shapes
: 
]
VarIsInitializedOp_40VarIsInitializedOptraining/SGD/Variable_28*
_output_shapes
: 
]
VarIsInitializedOp_41VarIsInitializedOptraining/SGD/Variable_26*
_output_shapes
: 
]
VarIsInitializedOp_42VarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
R
VarIsInitializedOp_43VarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
S
VarIsInitializedOp_44VarIsInitializedOpconv2d_19/bias*
_output_shapes
: 
\
VarIsInitializedOp_45VarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_46VarIsInitializedOptraining/SGD/Variable_41*
_output_shapes
: 
]
VarIsInitializedOp_47VarIsInitializedOptraining/SGD/Variable_42*
_output_shapes
: 
S
VarIsInitializedOp_48VarIsInitializedOpconv2d_11/bias*
_output_shapes
: 
R
VarIsInitializedOp_49VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
T
VarIsInitializedOp_50VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
R
VarIsInitializedOp_51VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
U
VarIsInitializedOp_52VarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
]
VarIsInitializedOp_53VarIsInitializedOptraining/SGD/Variable_29*
_output_shapes
: 
U
VarIsInitializedOp_54VarIsInitializedOpconv2d_21/kernel*
_output_shapes
: 
S
VarIsInitializedOp_55VarIsInitializedOpconv2d_10/bias*
_output_shapes
: 
S
VarIsInitializedOp_56VarIsInitializedOpconv2d_21/bias*
_output_shapes
: 
]
VarIsInitializedOp_57VarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
U
VarIsInitializedOp_58VarIsInitializedOpconv2d_20/kernel*
_output_shapes
: 
S
VarIsInitializedOp_59VarIsInitializedOpconv2d_20/bias*
_output_shapes
: 
S
VarIsInitializedOp_60VarIsInitializedOpconv2d_18/bias*
_output_shapes
: 
]
VarIsInitializedOp_61VarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
Z
VarIsInitializedOp_62VarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
T
VarIsInitializedOp_63VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
U
VarIsInitializedOp_64VarIsInitializedOpconv2d_19/kernel*
_output_shapes
: 
]
VarIsInitializedOp_65VarIsInitializedOptraining/SGD/Variable_24*
_output_shapes
: 
P
VarIsInitializedOp_66VarIsInitializedOpconv2d/bias*
_output_shapes
: 
U
VarIsInitializedOp_67VarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 
]
VarIsInitializedOp_68VarIsInitializedOptraining/SGD/Variable_27*
_output_shapes
: 
\
VarIsInitializedOp_69VarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
T
VarIsInitializedOp_70VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_71VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
\
VarIsInitializedOp_72VarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
U
VarIsInitializedOp_73VarIsInitializedOpconv2d_18/kernel*
_output_shapes
: 
R
VarIsInitializedOp_74VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
S
VarIsInitializedOp_75VarIsInitializedOpconv2d_13/bias*
_output_shapes
: 
]
VarIsInitializedOp_76VarIsInitializedOptraining/SGD/Variable_43*
_output_shapes
: 
]
VarIsInitializedOp_77VarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
]
VarIsInitializedOp_78VarIsInitializedOptraining/SGD/Variable_25*
_output_shapes
: 
\
VarIsInitializedOp_79VarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
T
VarIsInitializedOp_80VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
U
VarIsInitializedOp_81VarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
T
VarIsInitializedOp_82VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
U
VarIsInitializedOp_83VarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 
U
VarIsInitializedOp_84VarIsInitializedOpconv2d_16/kernel*
_output_shapes
: 
]
VarIsInitializedOp_85VarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
\
VarIsInitializedOp_86VarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
]
VarIsInitializedOp_87VarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
T
VarIsInitializedOp_88VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
R
VarIsInitializedOp_89VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
T
VarIsInitializedOp_90VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
S
VarIsInitializedOp_91VarIsInitializedOpconv2d_12/bias*
_output_shapes
: 
S
VarIsInitializedOp_92VarIsInitializedOpconv2d_16/bias*
_output_shapes
: 
R
VarIsInitializedOp_93VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
√
initNoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_10/bias/Assign^conv2d_10/kernel/Assign^conv2d_11/bias/Assign^conv2d_11/kernel/Assign^conv2d_12/bias/Assign^conv2d_12/kernel/Assign^conv2d_13/bias/Assign^conv2d_13/kernel/Assign^conv2d_14/bias/Assign^conv2d_14/kernel/Assign^conv2d_15/bias/Assign^conv2d_15/kernel/Assign^conv2d_16/bias/Assign^conv2d_16/kernel/Assign^conv2d_17/bias/Assign^conv2d_17/kernel/Assign^conv2d_18/bias/Assign^conv2d_18/kernel/Assign^conv2d_19/bias/Assign^conv2d_19/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_20/bias/Assign^conv2d_20/kernel/Assign^conv2d_21/bias/Assign^conv2d_21/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^conv2d_9/bias/Assign^conv2d_9/kernel/Assign^count/Assign^total/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign ^training/SGD/Variable_16/Assign ^training/SGD/Variable_17/Assign ^training/SGD/Variable_18/Assign ^training/SGD/Variable_19/Assign^training/SGD/Variable_2/Assign ^training/SGD/Variable_20/Assign ^training/SGD/Variable_21/Assign ^training/SGD/Variable_22/Assign ^training/SGD/Variable_23/Assign ^training/SGD/Variable_24/Assign ^training/SGD/Variable_25/Assign ^training/SGD/Variable_26/Assign ^training/SGD/Variable_27/Assign ^training/SGD/Variable_28/Assign ^training/SGD/Variable_29/Assign^training/SGD/Variable_3/Assign ^training/SGD/Variable_30/Assign ^training/SGD/Variable_31/Assign ^training/SGD/Variable_32/Assign ^training/SGD/Variable_33/Assign ^training/SGD/Variable_34/Assign ^training/SGD/Variable_35/Assign ^training/SGD/Variable_36/Assign ^training/SGD/Variable_37/Assign ^training/SGD/Variable_38/Assign ^training/SGD/Variable_39/Assign^training/SGD/Variable_4/Assign ^training/SGD/Variable_40/Assign ^training/SGD/Variable_41/Assign ^training/SGD/Variable_42/Assign ^training/SGD/Variable_43/Assign^training/SGD/Variable_5/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign"ъeЬ═д      У~	E
NЦ█E╫AJЧП
Е)ю(
,
Abs
x"T
y"T"
Ttype:

2	
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
2	АР
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
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
Т
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
С
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
5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
,
Log
x"T
y"T"
Ttype:

2
╘
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

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
dtypetypeИ
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
/
Sign
x"T
y"T"
Ttype:

2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
1
Square
x"T
y"T"
Ttype:

2	
Ў
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
М
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
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И*1.13.12
b'unknown'┼ж
~
input_1Placeholder*
dtype0*1
_output_shapes
:         ЁЁ*&
shape:         ЁЁ
~
input_2Placeholder*
dtype0*1
_output_shapes
:         ЁЁ*&
shape:         ЁЁ
a
subtract/subSubinput_2input_1*
T0*1
_output_shapes
:         ЁЁ
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
concatenate/concatConcatV2input_2input_1concatenate/concat/axis*
N*1
_output_shapes
:         ЁЁ*

Tidx0*
T0
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *Ё7'╛* 
_class
loc:@conv2d/kernel
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ё7'>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
╥
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
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▒
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
Р
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0* 
_class
loc:@conv2d/kernel
Щ
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
:
К
conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@conv2d/bias
Я
conv2d/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
	container 
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
З
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
э
conv2d/Conv2DConv2Dsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
Ъ
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
data_formatNHWC*1
_output_shapes
:         ЁЁ*
T0
_
conv2d/ReluReluconv2d/BiasAdd*1
_output_shapes
:         ЁЁ*
T0
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *я[ё╜*"
_class
loc:@conv2d_1/kernel
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[ё=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
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
╖
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
Ш
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0
Я
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
:
О
conv2d_1/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:
е
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
З
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0
Н
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
Ё
conv2d_1/Conv2DConv2Dconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
а
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
data_formatNHWC*1
_output_shapes
:         ЁЁ*
T0
c
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
b
add/addAddinput_2conv2d_1/Relu*1
_output_shapes
:         ЁЁ*
T0
╡
max_pooling2d/MaxPoolMaxPooladd/add*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:         xx
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         0   *"
_class
loc:@conv2d_2/kernel
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╛*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═У>*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
:0*

seed 
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
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
╖
conv2d_2/kernelVarHandleOp* 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: 
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
Ш
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0
Я
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0*"
_class
loc:@conv2d_2/kernel
О
conv2d_2/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:0
е
conv2d_2/biasVarHandleOp*
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
	container *
shape:0*
dtype0*
_output_shapes
: 
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
З
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0
Н
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
°
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:         xx0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:         xx0*
T0
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         xx0
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"         0   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *г┼╜*"
_class
loc:@conv2d_3/kernel
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *г┼=*"
_class
loc:@conv2d_3/kernel
Ў
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Ї
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*&
_output_shapes
:0*
T0*"
_class
loc:@conv2d_3/kernel
ц
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:0
╖
conv2d_3/kernelVarHandleOp* 
shared_nameconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
	container *
shape:0*
dtype0*
_output_shapes
: 
o
0conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
Ш
conv2d_3/kernel/AssignAssignVariableOpconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_3/kernel*
dtype0
Я
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*&
_output_shapes
:0
О
conv2d_3/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
:0
е
conv2d_3/biasVarHandleOp* 
_class
loc:@conv2d_3/bias*
	container *
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_3/bias
k
.conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
З
conv2d_3/bias/AssignAssignVariableOpconv2d_3/biasconv2d_3/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_3/bias
Н
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
°
conv2d_3/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx0
i
conv2d_3/BiasAdd/ReadVariableOpReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:         xx0
н
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      0   0   *"
_class
loc:@conv2d_4/kernel
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк=*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:00*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
┌
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
Ї
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:00
ц
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*&
_output_shapes
:00*
T0*"
_class
loc:@conv2d_4/kernel
╖
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
Ш
conv2d_4/kernel/AssignAssignVariableOpconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
dtype0
Я
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*&
_output_shapes
:00
О
conv2d_4/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:0*
valueB0*    * 
_class
loc:@conv2d_4/bias
е
conv2d_4/biasVarHandleOp*
shared_nameconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
	container *
shape:0*
dtype0*
_output_shapes
: 
k
.conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
З
conv2d_4/bias/AssignAssignVariableOpconv2d_4/biasconv2d_4/bias/Initializer/zeros* 
_class
loc:@conv2d_4/bias*
dtype0
Н
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0* 
_class
loc:@conv2d_4/bias
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
Ё
conv2d_4/Conv2DConv2Dconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx0*
	dilations

i
conv2d_4/BiasAdd/ReadVariableOpReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
Ю
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
a
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*/
_output_shapes
:         xx0
h
	add_1/addAddconv2d_2/Reluconv2d_4/Relu*/
_output_shapes
:         xx0*
T0
╣
max_pooling2d_1/MaxPoolMaxPool	add_1/add*/
_output_shapes
:         <<0*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
н
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      0   `   *"
_class
loc:@conv2d_5/kernel
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ьQ╛*"
_class
loc:@conv2d_5/kernel
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ьQ>*"
_class
loc:@conv2d_5/kernel
Ў
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_5/kernel*
seed2 *
dtype0*&
_output_shapes
:0`*

seed 
┌
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
Ї
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*&
_output_shapes
:0`
ц
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*&
_output_shapes
:0`*
T0*"
_class
loc:@conv2d_5/kernel
╖
conv2d_5/kernelVarHandleOp*
shape:0`*
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
Ш
conv2d_5/kernel/AssignAssignVariableOpconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_5/kernel*
dtype0
Я
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
dtype0*&
_output_shapes
:0`
О
conv2d_5/bias/Initializer/zerosConst*
valueB`*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:`
е
conv2d_5/biasVarHandleOp*
shape:`*
dtype0*
_output_shapes
: *
shared_nameconv2d_5/bias* 
_class
loc:@conv2d_5/bias*
	container 
k
.conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
З
conv2d_5/bias/AssignAssignVariableOpconv2d_5/biasconv2d_5/bias/Initializer/zeros* 
_class
loc:@conv2d_5/bias*
dtype0
Н
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:`* 
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
:0`
·
conv2d_5/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_5/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:         <<`*
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
:`
Ю
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:         <<`*
T0
a
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*/
_output_shapes
:         <<`
н
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   `   *"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_6/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *HYЛ╜*"
_class
loc:@conv2d_6/kernel
Ч
.conv2d_6/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *HYЛ=*"
_class
loc:@conv2d_6/kernel
Ў
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0`*

seed *
T0*"
_class
loc:@conv2d_6/kernel*
seed2 
┌
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
Ї
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*&
_output_shapes
:0`*
T0*"
_class
loc:@conv2d_6/kernel
ц
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
:0`
╖
conv2d_6/kernelVarHandleOp*"
_class
loc:@conv2d_6/kernel*
	container *
shape:0`*
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
Ш
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_6/kernel
Я
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0`*"
_class
loc:@conv2d_6/kernel
О
conv2d_6/bias/Initializer/zerosConst*
valueB`*    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:`
е
conv2d_6/biasVarHandleOp*
shared_nameconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
	container *
shape:`*
dtype0*
_output_shapes
: 
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
З
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0
Н
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
:`
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
:0`
·
conv2d_6/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`
i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:`
Ю
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
a
conv2d_6/ReluReluconv2d_6/BiasAdd*/
_output_shapes
:         <<`*
T0
н
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*%
valueB"      `   `   *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *я[q╜*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[q=*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
Ў
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_7/kernel*
seed2 *
dtype0*&
_output_shapes
:``*

seed 
┌
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
Ї
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:``
ц
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*&
_output_shapes
:``*
T0*"
_class
loc:@conv2d_7/kernel
╖
conv2d_7/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
	container *
shape:``
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
Ш
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_7/kernel*
dtype0
Я
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*&
_output_shapes
:``
О
conv2d_7/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:`*
valueB`*    * 
_class
loc:@conv2d_7/bias
е
conv2d_7/biasVarHandleOp*
shared_nameconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
	container *
shape:`*
dtype0*
_output_shapes
: 
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
З
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
Н
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
:`
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
:``
Ё
conv2d_7/Conv2DConv2Dconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*/
_output_shapes
:         <<`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:`
Ю
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
a
conv2d_7/ReluReluconv2d_7/BiasAdd*
T0*/
_output_shapes
:         <<`
h
	add_2/addAddconv2d_5/Reluconv2d_7/Relu*
T0*/
_output_shapes
:         <<`
╣
max_pooling2d_2/MaxPoolMaxPool	add_2/add*
ksize
*
paddingSAME*/
_output_shapes
:         `*
T0*
data_formatNHWC*
strides

н
0conv2d_8/kernel/Initializer/random_uniform/shapeConst*%
valueB"      `   └   *"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_8/kernel/Initializer/random_uniform/minConst*
valueB
 *:═╛*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═>*"
_class
loc:@conv2d_8/kernel*
dtype0*
_output_shapes
: 
ў
8conv2d_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_8/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:`└*

seed *
T0*"
_class
loc:@conv2d_8/kernel*
seed2 
┌
.conv2d_8/kernel/Initializer/random_uniform/subSub.conv2d_8/kernel/Initializer/random_uniform/max.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*
_output_shapes
: 
ї
.conv2d_8/kernel/Initializer/random_uniform/mulMul8conv2d_8/kernel/Initializer/random_uniform/RandomUniform.conv2d_8/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:`└
ч
*conv2d_8/kernel/Initializer/random_uniformAdd.conv2d_8/kernel/Initializer/random_uniform/mul.conv2d_8/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_8/kernel*'
_output_shapes
:`└
╕
conv2d_8/kernelVarHandleOp*
	container *
shape:`└*
dtype0*
_output_shapes
: * 
shared_nameconv2d_8/kernel*"
_class
loc:@conv2d_8/kernel
o
0conv2d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
Ш
conv2d_8/kernel/AssignAssignVariableOpconv2d_8/kernel*conv2d_8/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_8/kernel*
dtype0
а
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*'
_output_shapes
:`└*"
_class
loc:@conv2d_8/kernel
Р
conv2d_8/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:└*
valueB└*    * 
_class
loc:@conv2d_8/bias
ж
conv2d_8/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
	container *
shape:└
k
.conv2d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
З
conv2d_8/bias/AssignAssignVariableOpconv2d_8/biasconv2d_8/bias/Initializer/zeros* 
_class
loc:@conv2d_8/bias*
dtype0
О
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias* 
_class
loc:@conv2d_8/bias*
dtype0*
_output_shapes	
:└
g
conv2d_8/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
w
conv2d_8/Conv2D/ReadVariableOpReadVariableOpconv2d_8/kernel*
dtype0*'
_output_shapes
:`└
√
conv2d_8/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_8/Conv2D/ReadVariableOp*0
_output_shapes
:         └*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
j
conv2d_8/BiasAdd/ReadVariableOpReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes	
:└
Я
conv2d_8/BiasAddBiasAddconv2d_8/Conv2Dconv2d_8/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*0
_output_shapes
:         └
b
conv2d_8/ReluReluconv2d_8/BiasAdd*
T0*0
_output_shapes
:         └
н
0conv2d_9/kernel/Initializer/random_uniform/shapeConst*%
valueB"      `   └   *"
_class
loc:@conv2d_9/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_9/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *гE╜*"
_class
loc:@conv2d_9/kernel
Ч
.conv2d_9/kernel/Initializer/random_uniform/maxConst*
valueB
 *гE=*"
_class
loc:@conv2d_9/kernel*
dtype0*
_output_shapes
: 
ў
8conv2d_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_9/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_9/kernel*
seed2 *
dtype0*'
_output_shapes
:`└*

seed 
┌
.conv2d_9/kernel/Initializer/random_uniform/subSub.conv2d_9/kernel/Initializer/random_uniform/max.conv2d_9/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_9/kernel
ї
.conv2d_9/kernel/Initializer/random_uniform/mulMul8conv2d_9/kernel/Initializer/random_uniform/RandomUniform.conv2d_9/kernel/Initializer/random_uniform/sub*'
_output_shapes
:`└*
T0*"
_class
loc:@conv2d_9/kernel
ч
*conv2d_9/kernel/Initializer/random_uniformAdd.conv2d_9/kernel/Initializer/random_uniform/mul.conv2d_9/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_9/kernel*'
_output_shapes
:`└
╕
conv2d_9/kernelVarHandleOp*"
_class
loc:@conv2d_9/kernel*
	container *
shape:`└*
dtype0*
_output_shapes
: * 
shared_nameconv2d_9/kernel
o
0conv2d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
Ш
conv2d_9/kernel/AssignAssignVariableOpconv2d_9/kernel*conv2d_9/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv2d_9/kernel
а
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*"
_class
loc:@conv2d_9/kernel*
dtype0*'
_output_shapes
:`└
Р
conv2d_9/bias/Initializer/zerosConst*
valueB└*    * 
_class
loc:@conv2d_9/bias*
dtype0*
_output_shapes	
:└
ж
conv2d_9/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_9/bias* 
_class
loc:@conv2d_9/bias*
	container *
shape:└
k
.conv2d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
З
conv2d_9/bias/AssignAssignVariableOpconv2d_9/biasconv2d_9/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_9/bias
О
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
dtype0*
_output_shapes	
:└* 
_class
loc:@conv2d_9/bias
g
conv2d_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
w
conv2d_9/Conv2D/ReadVariableOpReadVariableOpconv2d_9/kernel*
dtype0*'
_output_shapes
:`└
√
conv2d_9/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_9/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         └
j
conv2d_9/BiasAdd/ReadVariableOpReadVariableOpconv2d_9/bias*
dtype0*
_output_shapes	
:└
Я
conv2d_9/BiasAddBiasAddconv2d_9/Conv2Dconv2d_9/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*0
_output_shapes
:         └
b
conv2d_9/ReluReluconv2d_9/BiasAdd*0
_output_shapes
:         └*
T0
п
1conv2d_10/kernel/Initializer/random_uniform/shapeConst*%
valueB"      └   └   *#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_10/kernel/Initializer/random_uniform/minConst*
valueB
 *лк*╜*#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_10/kernel/Initializer/random_uniform/maxConst*
valueB
 *лк*=*#
_class
loc:@conv2d_10/kernel*
dtype0*
_output_shapes
: 
√
9conv2d_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_10/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:└└*

seed *
T0*#
_class
loc:@conv2d_10/kernel*
seed2 
▐
/conv2d_10/kernel/Initializer/random_uniform/subSub/conv2d_10/kernel/Initializer/random_uniform/max/conv2d_10/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_10/kernel*
_output_shapes
: 
·
/conv2d_10/kernel/Initializer/random_uniform/mulMul9conv2d_10/kernel/Initializer/random_uniform/RandomUniform/conv2d_10/kernel/Initializer/random_uniform/sub*(
_output_shapes
:└└*
T0*#
_class
loc:@conv2d_10/kernel
ь
+conv2d_10/kernel/Initializer/random_uniformAdd/conv2d_10/kernel/Initializer/random_uniform/mul/conv2d_10/kernel/Initializer/random_uniform/min*(
_output_shapes
:└└*
T0*#
_class
loc:@conv2d_10/kernel
╝
conv2d_10/kernelVarHandleOp*
	container *
shape:└└*
dtype0*
_output_shapes
: *!
shared_nameconv2d_10/kernel*#
_class
loc:@conv2d_10/kernel
q
1conv2d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 
Ь
conv2d_10/kernel/AssignAssignVariableOpconv2d_10/kernel+conv2d_10/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_10/kernel*
dtype0
д
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*
dtype0*(
_output_shapes
:└└*#
_class
loc:@conv2d_10/kernel
Т
 conv2d_10/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:└*
valueB└*    *!
_class
loc:@conv2d_10/bias
й
conv2d_10/biasVarHandleOp*
shared_nameconv2d_10/bias*!
_class
loc:@conv2d_10/bias*
	container *
shape:└*
dtype0*
_output_shapes
: 
m
/conv2d_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_10/bias*
_output_shapes
: 
Л
conv2d_10/bias/AssignAssignVariableOpconv2d_10/bias conv2d_10/bias/Initializer/zeros*!
_class
loc:@conv2d_10/bias*
dtype0
С
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
dtype0*
_output_shapes	
:└*!
_class
loc:@conv2d_10/bias
h
conv2d_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
conv2d_10/Conv2D/ReadVariableOpReadVariableOpconv2d_10/kernel*
dtype0*(
_output_shapes
:└└
є
conv2d_10/Conv2DConv2Dconv2d_9/Reluconv2d_10/Conv2D/ReadVariableOp*0
_output_shapes
:         └*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
l
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOpconv2d_10/bias*
dtype0*
_output_shapes	
:└
в
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D conv2d_10/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*0
_output_shapes
:         └
d
conv2d_10/ReluReluconv2d_10/BiasAdd*
T0*0
_output_shapes
:         └
j
	add_3/addAddconv2d_8/Reluconv2d_10/Relu*
T0*0
_output_shapes
:         └
\
up_sampling2d/ShapeShape	add_3/add*
T0*
out_type0*
_output_shapes
:
k
!up_sampling2d/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
m
#up_sampling2d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#up_sampling2d/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
├
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape!up_sampling2d/strided_slice/stack#up_sampling2d/strided_slice/stack_1#up_sampling2d/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
d
up_sampling2d/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
o
up_sampling2d/mulMulup_sampling2d/strided_sliceup_sampling2d/Const*
T0*
_output_shapes
:
к
#up_sampling2d/ResizeNearestNeighborResizeNearestNeighbor	add_3/addup_sampling2d/mul*0
_output_shapes
:         <<└*
align_corners( *
T0
[
concatenate_1/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
╗
concatenate_1/concatConcatV2	add_2/add#up_sampling2d/ResizeNearestNeighborconcatenate_1/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:         <<а
п
1conv2d_11/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         `   *#
_class
loc:@conv2d_11/kernel
Щ
/conv2d_11/kernel/Initializer/random_uniform/minConst*
valueB
 *   ╛*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_11/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: 
·
9conv2d_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_11/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_11/kernel*
seed2 *
dtype0*'
_output_shapes
:а`*

seed 
▐
/conv2d_11/kernel/Initializer/random_uniform/subSub/conv2d_11/kernel/Initializer/random_uniform/max/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: 
∙
/conv2d_11/kernel/Initializer/random_uniform/mulMul9conv2d_11/kernel/Initializer/random_uniform/RandomUniform/conv2d_11/kernel/Initializer/random_uniform/sub*'
_output_shapes
:а`*
T0*#
_class
loc:@conv2d_11/kernel
ы
+conv2d_11/kernel/Initializer/random_uniformAdd/conv2d_11/kernel/Initializer/random_uniform/mul/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*'
_output_shapes
:а`
╗
conv2d_11/kernelVarHandleOp*!
shared_nameconv2d_11/kernel*#
_class
loc:@conv2d_11/kernel*
	container *
shape:а`*
dtype0*
_output_shapes
: 
q
1conv2d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
Ь
conv2d_11/kernel/AssignAssignVariableOpconv2d_11/kernel+conv2d_11/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@conv2d_11/kernel
г
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*#
_class
loc:@conv2d_11/kernel*
dtype0*'
_output_shapes
:а`
Р
 conv2d_11/bias/Initializer/zerosConst*
valueB`*    *!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes
:`
и
conv2d_11/biasVarHandleOp*
	container *
shape:`*
dtype0*
_output_shapes
: *
shared_nameconv2d_11/bias*!
_class
loc:@conv2d_11/bias
m
/conv2d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/bias*
_output_shapes
: 
Л
conv2d_11/bias/AssignAssignVariableOpconv2d_11/bias conv2d_11/bias/Initializer/zeros*!
_class
loc:@conv2d_11/bias*
dtype0
Р
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes
:`
h
conv2d_11/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
y
conv2d_11/Conv2D/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*'
_output_shapes
:а`
∙
conv2d_11/Conv2DConv2Dconcatenate_1/concatconv2d_11/Conv2D/ReadVariableOp*/
_output_shapes
:         <<`*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOpconv2d_11/bias*
dtype0*
_output_shapes
:`
б
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D conv2d_11/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
c
conv2d_11/ReluReluconv2d_11/BiasAdd*
T0*/
_output_shapes
:         <<`
п
1conv2d_12/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         `   *#
_class
loc:@conv2d_12/kernel
Щ
/conv2d_12/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *лк*╜*#
_class
loc:@conv2d_12/kernel
Щ
/conv2d_12/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *лк*=*#
_class
loc:@conv2d_12/kernel
·
9conv2d_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_12/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_12/kernel*
seed2 *
dtype0*'
_output_shapes
:а`*

seed 
▐
/conv2d_12/kernel/Initializer/random_uniform/subSub/conv2d_12/kernel/Initializer/random_uniform/max/conv2d_12/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
: 
∙
/conv2d_12/kernel/Initializer/random_uniform/mulMul9conv2d_12/kernel/Initializer/random_uniform/RandomUniform/conv2d_12/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_12/kernel*'
_output_shapes
:а`
ы
+conv2d_12/kernel/Initializer/random_uniformAdd/conv2d_12/kernel/Initializer/random_uniform/mul/conv2d_12/kernel/Initializer/random_uniform/min*'
_output_shapes
:а`*
T0*#
_class
loc:@conv2d_12/kernel
╗
conv2d_12/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
	container *
shape:а`
q
1conv2d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
Ь
conv2d_12/kernel/AssignAssignVariableOpconv2d_12/kernel+conv2d_12/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_12/kernel*
dtype0
г
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
dtype0*'
_output_shapes
:а`
Р
 conv2d_12/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:`*
valueB`*    *!
_class
loc:@conv2d_12/bias
и
conv2d_12/biasVarHandleOp*
shape:`*
dtype0*
_output_shapes
: *
shared_nameconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
	container 
m
/conv2d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/bias*
_output_shapes
: 
Л
conv2d_12/bias/AssignAssignVariableOpconv2d_12/bias conv2d_12/bias/Initializer/zeros*!
_class
loc:@conv2d_12/bias*
dtype0
Р
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
dtype0*
_output_shapes
:`
h
conv2d_12/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
y
conv2d_12/Conv2D/ReadVariableOpReadVariableOpconv2d_12/kernel*
dtype0*'
_output_shapes
:а`
∙
conv2d_12/Conv2DConv2Dconcatenate_1/concatconv2d_12/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`*
	dilations
*
T0
k
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOpconv2d_12/bias*
dtype0*
_output_shapes
:`
б
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D conv2d_12/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:         <<`*
T0
c
conv2d_12/ReluReluconv2d_12/BiasAdd*
T0*/
_output_shapes
:         <<`
п
1conv2d_13/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   *#
_class
loc:@conv2d_13/kernel
Щ
/conv2d_13/kernel/Initializer/random_uniform/minConst*
valueB
 *я[q╜*#
_class
loc:@conv2d_13/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_13/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[q=*#
_class
loc:@conv2d_13/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_13/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_13/kernel/Initializer/random_uniform/shape*

seed *
T0*#
_class
loc:@conv2d_13/kernel*
seed2 *
dtype0*&
_output_shapes
:``
▐
/conv2d_13/kernel/Initializer/random_uniform/subSub/conv2d_13/kernel/Initializer/random_uniform/max/conv2d_13/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_13/kernel*
_output_shapes
: 
°
/conv2d_13/kernel/Initializer/random_uniform/mulMul9conv2d_13/kernel/Initializer/random_uniform/RandomUniform/conv2d_13/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_13/kernel*&
_output_shapes
:``
ъ
+conv2d_13/kernel/Initializer/random_uniformAdd/conv2d_13/kernel/Initializer/random_uniform/mul/conv2d_13/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_13/kernel*&
_output_shapes
:``
║
conv2d_13/kernelVarHandleOp*#
_class
loc:@conv2d_13/kernel*
	container *
shape:``*
dtype0*
_output_shapes
: *!
shared_nameconv2d_13/kernel
q
1conv2d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 
Ь
conv2d_13/kernel/AssignAssignVariableOpconv2d_13/kernel+conv2d_13/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_13/kernel*
dtype0
в
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*#
_class
loc:@conv2d_13/kernel*
dtype0*&
_output_shapes
:``
Р
 conv2d_13/bias/Initializer/zerosConst*
valueB`*    *!
_class
loc:@conv2d_13/bias*
dtype0*
_output_shapes
:`
и
conv2d_13/biasVarHandleOp*
shared_nameconv2d_13/bias*!
_class
loc:@conv2d_13/bias*
	container *
shape:`*
dtype0*
_output_shapes
: 
m
/conv2d_13/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_13/bias*
_output_shapes
: 
Л
conv2d_13/bias/AssignAssignVariableOpconv2d_13/bias conv2d_13/bias/Initializer/zeros*!
_class
loc:@conv2d_13/bias*
dtype0
Р
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
dtype0*
_output_shapes
:`*!
_class
loc:@conv2d_13/bias
h
conv2d_13/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_13/Conv2D/ReadVariableOpReadVariableOpconv2d_13/kernel*
dtype0*&
_output_shapes
:``
є
conv2d_13/Conv2DConv2Dconv2d_12/Reluconv2d_13/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<`*
	dilations

k
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOpconv2d_13/bias*
dtype0*
_output_shapes
:`
б
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D conv2d_13/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         <<`
c
conv2d_13/ReluReluconv2d_13/BiasAdd*
T0*/
_output_shapes
:         <<`
j
	add_4/addAddconv2d_11/Reluconv2d_13/Relu*/
_output_shapes
:         <<`*
T0
^
up_sampling2d_1/ShapeShape	add_4/add*
T0*
out_type0*
_output_shapes
:
m
#up_sampling2d_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%up_sampling2d_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
═
up_sampling2d_1/strided_sliceStridedSliceup_sampling2d_1/Shape#up_sampling2d_1/strided_slice/stack%up_sampling2d_1/strided_slice/stack_1%up_sampling2d_1/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
f
up_sampling2d_1/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
u
up_sampling2d_1/mulMulup_sampling2d_1/strided_sliceup_sampling2d_1/Const*
_output_shapes
:*
T0
н
%up_sampling2d_1/ResizeNearestNeighborResizeNearestNeighbor	add_4/addup_sampling2d_1/mul*
align_corners( *
T0*/
_output_shapes
:         xx`
[
concatenate_2/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╜
concatenate_2/concatConcatV2	add_1/add%up_sampling2d_1/ResizeNearestNeighborconcatenate_2/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:         xxР
п
1conv2d_14/kernel/Initializer/random_uniform/shapeConst*%
valueB"      Р   0   *#
_class
loc:@conv2d_14/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_14/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *є5╛*#
_class
loc:@conv2d_14/kernel
Щ
/conv2d_14/kernel/Initializer/random_uniform/maxConst*
valueB
 *є5>*#
_class
loc:@conv2d_14/kernel*
dtype0*
_output_shapes
: 
·
9conv2d_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_14/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_14/kernel*
seed2 *
dtype0*'
_output_shapes
:Р0*

seed 
▐
/conv2d_14/kernel/Initializer/random_uniform/subSub/conv2d_14/kernel/Initializer/random_uniform/max/conv2d_14/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_14/kernel*
_output_shapes
: 
∙
/conv2d_14/kernel/Initializer/random_uniform/mulMul9conv2d_14/kernel/Initializer/random_uniform/RandomUniform/conv2d_14/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_14/kernel*'
_output_shapes
:Р0
ы
+conv2d_14/kernel/Initializer/random_uniformAdd/conv2d_14/kernel/Initializer/random_uniform/mul/conv2d_14/kernel/Initializer/random_uniform/min*'
_output_shapes
:Р0*
T0*#
_class
loc:@conv2d_14/kernel
╗
conv2d_14/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_14/kernel*#
_class
loc:@conv2d_14/kernel*
	container *
shape:Р0
q
1conv2d_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_14/kernel*
_output_shapes
: 
Ь
conv2d_14/kernel/AssignAssignVariableOpconv2d_14/kernel+conv2d_14/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_14/kernel*
dtype0
г
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*#
_class
loc:@conv2d_14/kernel*
dtype0*'
_output_shapes
:Р0
Р
 conv2d_14/bias/Initializer/zerosConst*
valueB0*    *!
_class
loc:@conv2d_14/bias*
dtype0*
_output_shapes
:0
и
conv2d_14/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_14/bias*!
_class
loc:@conv2d_14/bias*
	container *
shape:0
m
/conv2d_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_14/bias*
_output_shapes
: 
Л
conv2d_14/bias/AssignAssignVariableOpconv2d_14/bias conv2d_14/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_14/bias
Р
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
dtype0*
_output_shapes
:0*!
_class
loc:@conv2d_14/bias
h
conv2d_14/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
y
conv2d_14/Conv2D/ReadVariableOpReadVariableOpconv2d_14/kernel*
dtype0*'
_output_shapes
:Р0
∙
conv2d_14/Conv2DConv2Dconcatenate_2/concatconv2d_14/Conv2D/ReadVariableOp*/
_output_shapes
:         xx0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOpconv2d_14/bias*
dtype0*
_output_shapes
:0
б
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D conv2d_14/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
c
conv2d_14/ReluReluconv2d_14/BiasAdd*/
_output_shapes
:         xx0*
T0
п
1conv2d_15/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      Р   0   *#
_class
loc:@conv2d_15/kernel
Щ
/conv2d_15/kernel/Initializer/random_uniform/minConst*
valueB
 *я[q╜*#
_class
loc:@conv2d_15/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_15/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *я[q=*#
_class
loc:@conv2d_15/kernel
·
9conv2d_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_15/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:Р0*

seed *
T0*#
_class
loc:@conv2d_15/kernel*
seed2 
▐
/conv2d_15/kernel/Initializer/random_uniform/subSub/conv2d_15/kernel/Initializer/random_uniform/max/conv2d_15/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_15/kernel*
_output_shapes
: 
∙
/conv2d_15/kernel/Initializer/random_uniform/mulMul9conv2d_15/kernel/Initializer/random_uniform/RandomUniform/conv2d_15/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_15/kernel*'
_output_shapes
:Р0
ы
+conv2d_15/kernel/Initializer/random_uniformAdd/conv2d_15/kernel/Initializer/random_uniform/mul/conv2d_15/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_15/kernel*'
_output_shapes
:Р0
╗
conv2d_15/kernelVarHandleOp*
shape:Р0*
dtype0*
_output_shapes
: *!
shared_nameconv2d_15/kernel*#
_class
loc:@conv2d_15/kernel*
	container 
q
1conv2d_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_15/kernel*
_output_shapes
: 
Ь
conv2d_15/kernel/AssignAssignVariableOpconv2d_15/kernel+conv2d_15/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@conv2d_15/kernel
г
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*#
_class
loc:@conv2d_15/kernel*
dtype0*'
_output_shapes
:Р0
Р
 conv2d_15/bias/Initializer/zerosConst*
valueB0*    *!
_class
loc:@conv2d_15/bias*
dtype0*
_output_shapes
:0
и
conv2d_15/biasVarHandleOp*!
_class
loc:@conv2d_15/bias*
	container *
shape:0*
dtype0*
_output_shapes
: *
shared_nameconv2d_15/bias
m
/conv2d_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_15/bias*
_output_shapes
: 
Л
conv2d_15/bias/AssignAssignVariableOpconv2d_15/bias conv2d_15/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_15/bias
Р
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*!
_class
loc:@conv2d_15/bias*
dtype0*
_output_shapes
:0
h
conv2d_15/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
y
conv2d_15/Conv2D/ReadVariableOpReadVariableOpconv2d_15/kernel*
dtype0*'
_output_shapes
:Р0
∙
conv2d_15/Conv2DConv2Dconcatenate_2/concatconv2d_15/Conv2D/ReadVariableOp*/
_output_shapes
:         xx0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOpconv2d_15/bias*
dtype0*
_output_shapes
:0
б
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D conv2d_15/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         xx0
c
conv2d_15/ReluReluconv2d_15/BiasAdd*
T0*/
_output_shapes
:         xx0
п
1conv2d_16/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   0   *#
_class
loc:@conv2d_16/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_16/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*#
_class
loc:@conv2d_16/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_16/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *лкк=*#
_class
loc:@conv2d_16/kernel
∙
9conv2d_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_16/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:00*

seed *
T0*#
_class
loc:@conv2d_16/kernel*
seed2 
▐
/conv2d_16/kernel/Initializer/random_uniform/subSub/conv2d_16/kernel/Initializer/random_uniform/max/conv2d_16/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv2d_16/kernel
°
/conv2d_16/kernel/Initializer/random_uniform/mulMul9conv2d_16/kernel/Initializer/random_uniform/RandomUniform/conv2d_16/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_16/kernel*&
_output_shapes
:00
ъ
+conv2d_16/kernel/Initializer/random_uniformAdd/conv2d_16/kernel/Initializer/random_uniform/mul/conv2d_16/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_16/kernel*&
_output_shapes
:00
║
conv2d_16/kernelVarHandleOp*!
shared_nameconv2d_16/kernel*#
_class
loc:@conv2d_16/kernel*
	container *
shape:00*
dtype0*
_output_shapes
: 
q
1conv2d_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_16/kernel*
_output_shapes
: 
Ь
conv2d_16/kernel/AssignAssignVariableOpconv2d_16/kernel+conv2d_16/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_16/kernel*
dtype0
в
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*#
_class
loc:@conv2d_16/kernel*
dtype0*&
_output_shapes
:00
Р
 conv2d_16/bias/Initializer/zerosConst*
valueB0*    *!
_class
loc:@conv2d_16/bias*
dtype0*
_output_shapes
:0
и
conv2d_16/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_16/bias*!
_class
loc:@conv2d_16/bias*
	container *
shape:0
m
/conv2d_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_16/bias*
_output_shapes
: 
Л
conv2d_16/bias/AssignAssignVariableOpconv2d_16/bias conv2d_16/bias/Initializer/zeros*!
_class
loc:@conv2d_16/bias*
dtype0
Р
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
dtype0*
_output_shapes
:0*!
_class
loc:@conv2d_16/bias
h
conv2d_16/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
x
conv2d_16/Conv2D/ReadVariableOpReadVariableOpconv2d_16/kernel*
dtype0*&
_output_shapes
:00
є
conv2d_16/Conv2DConv2Dconv2d_15/Reluconv2d_16/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx0*
	dilations

k
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOpconv2d_16/bias*
dtype0*
_output_shapes
:0
б
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D conv2d_16/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:         xx0*
T0
c
conv2d_16/ReluReluconv2d_16/BiasAdd*
T0*/
_output_shapes
:         xx0
j
	add_5/addAddconv2d_14/Reluconv2d_16/Relu*
T0*/
_output_shapes
:         xx0
^
up_sampling2d_2/ShapeShape	add_5/add*
T0*
out_type0*
_output_shapes
:
m
#up_sampling2d_2/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
o
%up_sampling2d_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
o
%up_sampling2d_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
═
up_sampling2d_2/strided_sliceStridedSliceup_sampling2d_2/Shape#up_sampling2d_2/strided_slice/stack%up_sampling2d_2/strided_slice/stack_1%up_sampling2d_2/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
f
up_sampling2d_2/ConstConst*
dtype0*
_output_shapes
:*
valueB"      
u
up_sampling2d_2/mulMulup_sampling2d_2/strided_sliceup_sampling2d_2/Const*
_output_shapes
:*
T0
п
%up_sampling2d_2/ResizeNearestNeighborResizeNearestNeighbor	add_5/addup_sampling2d_2/mul*1
_output_shapes
:         ЁЁ0*
align_corners( *
T0
[
concatenate_3/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
╝
concatenate_3/concatConcatV2add/add%up_sampling2d_2/ResizeNearestNeighborconcatenate_3/concat/axis*

Tidx0*
T0*
N*1
_output_shapes
:         ЁЁH
п
1conv2d_17/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      H      *#
_class
loc:@conv2d_17/kernel
Щ
/conv2d_17/kernel/Initializer/random_uniform/minConst*
valueB
 *  А╛*#
_class
loc:@conv2d_17/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_17/kernel/Initializer/random_uniform/maxConst*
valueB
 *  А>*#
_class
loc:@conv2d_17/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_17/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:H*

seed *
T0*#
_class
loc:@conv2d_17/kernel*
seed2 
▐
/conv2d_17/kernel/Initializer/random_uniform/subSub/conv2d_17/kernel/Initializer/random_uniform/max/conv2d_17/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_17/kernel*
_output_shapes
: 
°
/conv2d_17/kernel/Initializer/random_uniform/mulMul9conv2d_17/kernel/Initializer/random_uniform/RandomUniform/conv2d_17/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_17/kernel*&
_output_shapes
:H
ъ
+conv2d_17/kernel/Initializer/random_uniformAdd/conv2d_17/kernel/Initializer/random_uniform/mul/conv2d_17/kernel/Initializer/random_uniform/min*&
_output_shapes
:H*
T0*#
_class
loc:@conv2d_17/kernel
║
conv2d_17/kernelVarHandleOp*
	container *
shape:H*
dtype0*
_output_shapes
: *!
shared_nameconv2d_17/kernel*#
_class
loc:@conv2d_17/kernel
q
1conv2d_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_17/kernel*
_output_shapes
: 
Ь
conv2d_17/kernel/AssignAssignVariableOpconv2d_17/kernel+conv2d_17/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@conv2d_17/kernel
в
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*#
_class
loc:@conv2d_17/kernel*
dtype0*&
_output_shapes
:H
Р
 conv2d_17/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_17/bias*
dtype0*
_output_shapes
:
и
conv2d_17/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_17/bias*!
_class
loc:@conv2d_17/bias*
	container *
shape:
m
/conv2d_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_17/bias*
_output_shapes
: 
Л
conv2d_17/bias/AssignAssignVariableOpconv2d_17/bias conv2d_17/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_17/bias
Р
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*!
_class
loc:@conv2d_17/bias*
dtype0*
_output_shapes
:
h
conv2d_17/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_17/Conv2D/ReadVariableOpReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
:H
√
conv2d_17/Conv2DConv2Dconcatenate_3/concatconv2d_17/Conv2D/ReadVariableOp*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOpconv2d_17/bias*
dtype0*
_output_shapes
:
г
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D conv2d_17/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_17/ReluReluconv2d_17/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
п
1conv2d_18/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      H      *#
_class
loc:@conv2d_18/kernel
Щ
/conv2d_18/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *лкк╜*#
_class
loc:@conv2d_18/kernel
Щ
/conv2d_18/kernel/Initializer/random_uniform/maxConst*
valueB
 *лкк=*#
_class
loc:@conv2d_18/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_18/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_18/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:H*

seed *
T0*#
_class
loc:@conv2d_18/kernel*
seed2 
▐
/conv2d_18/kernel/Initializer/random_uniform/subSub/conv2d_18/kernel/Initializer/random_uniform/max/conv2d_18/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_18/kernel*
_output_shapes
: 
°
/conv2d_18/kernel/Initializer/random_uniform/mulMul9conv2d_18/kernel/Initializer/random_uniform/RandomUniform/conv2d_18/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_18/kernel*&
_output_shapes
:H
ъ
+conv2d_18/kernel/Initializer/random_uniformAdd/conv2d_18/kernel/Initializer/random_uniform/mul/conv2d_18/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_18/kernel*&
_output_shapes
:H
║
conv2d_18/kernelVarHandleOp*#
_class
loc:@conv2d_18/kernel*
	container *
shape:H*
dtype0*
_output_shapes
: *!
shared_nameconv2d_18/kernel
q
1conv2d_18/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_18/kernel*
_output_shapes
: 
Ь
conv2d_18/kernel/AssignAssignVariableOpconv2d_18/kernel+conv2d_18/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_18/kernel*
dtype0
в
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*#
_class
loc:@conv2d_18/kernel*
dtype0*&
_output_shapes
:H
Р
 conv2d_18/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_18/bias*
dtype0*
_output_shapes
:
и
conv2d_18/biasVarHandleOp*
shared_nameconv2d_18/bias*!
_class
loc:@conv2d_18/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
m
/conv2d_18/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_18/bias*
_output_shapes
: 
Л
conv2d_18/bias/AssignAssignVariableOpconv2d_18/bias conv2d_18/bias/Initializer/zeros*!
_class
loc:@conv2d_18/bias*
dtype0
Р
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*!
_class
loc:@conv2d_18/bias*
dtype0*
_output_shapes
:
h
conv2d_18/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_18/Conv2D/ReadVariableOpReadVariableOpconv2d_18/kernel*
dtype0*&
_output_shapes
:H
√
conv2d_18/Conv2DConv2Dconcatenate_3/concatconv2d_18/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ
k
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOpconv2d_18/bias*
dtype0*
_output_shapes
:
г
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D conv2d_18/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_18/ReluReluconv2d_18/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
п
1conv2d_19/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *#
_class
loc:@conv2d_19/kernel
Щ
/conv2d_19/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *я[ё╜*#
_class
loc:@conv2d_19/kernel
Щ
/conv2d_19/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *я[ё=*#
_class
loc:@conv2d_19/kernel
∙
9conv2d_19/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_19/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*#
_class
loc:@conv2d_19/kernel*
seed2 
▐
/conv2d_19/kernel/Initializer/random_uniform/subSub/conv2d_19/kernel/Initializer/random_uniform/max/conv2d_19/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_19/kernel*
_output_shapes
: 
°
/conv2d_19/kernel/Initializer/random_uniform/mulMul9conv2d_19/kernel/Initializer/random_uniform/RandomUniform/conv2d_19/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*#
_class
loc:@conv2d_19/kernel
ъ
+conv2d_19/kernel/Initializer/random_uniformAdd/conv2d_19/kernel/Initializer/random_uniform/mul/conv2d_19/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_19/kernel*&
_output_shapes
:
║
conv2d_19/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_19/kernel*#
_class
loc:@conv2d_19/kernel*
	container *
shape:
q
1conv2d_19/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_19/kernel*
_output_shapes
: 
Ь
conv2d_19/kernel/AssignAssignVariableOpconv2d_19/kernel+conv2d_19/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_19/kernel*
dtype0
в
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*#
_class
loc:@conv2d_19/kernel*
dtype0*&
_output_shapes
:
Р
 conv2d_19/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_19/bias*
dtype0*
_output_shapes
:
и
conv2d_19/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_19/bias*!
_class
loc:@conv2d_19/bias*
	container *
shape:
m
/conv2d_19/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_19/bias*
_output_shapes
: 
Л
conv2d_19/bias/AssignAssignVariableOpconv2d_19/bias conv2d_19/bias/Initializer/zeros*!
_class
loc:@conv2d_19/bias*
dtype0
Р
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*!
_class
loc:@conv2d_19/bias*
dtype0*
_output_shapes
:
h
conv2d_19/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_19/Conv2D/ReadVariableOpReadVariableOpconv2d_19/kernel*
dtype0*&
_output_shapes
:
ї
conv2d_19/Conv2DConv2Dconv2d_18/Reluconv2d_19/Conv2D/ReadVariableOp*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOpconv2d_19/bias*
dtype0*
_output_shapes
:
г
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D conv2d_19/BiasAdd/ReadVariableOp*
data_formatNHWC*1
_output_shapes
:         ЁЁ*
T0
e
conv2d_19/ReluReluconv2d_19/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
l
	add_6/addAddconv2d_17/Reluconv2d_19/Relu*
T0*1
_output_shapes
:         ЁЁ
п
1conv2d_20/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@conv2d_20/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_20/kernel/Initializer/random_uniform/minConst*
valueB
 *ч╙·╛*#
_class
loc:@conv2d_20/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_20/kernel/Initializer/random_uniform/maxConst*
valueB
 *ч╙·>*#
_class
loc:@conv2d_20/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_20/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_20/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*#
_class
loc:@conv2d_20/kernel*
seed2 
▐
/conv2d_20/kernel/Initializer/random_uniform/subSub/conv2d_20/kernel/Initializer/random_uniform/max/conv2d_20/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_20/kernel*
_output_shapes
: 
°
/conv2d_20/kernel/Initializer/random_uniform/mulMul9conv2d_20/kernel/Initializer/random_uniform/RandomUniform/conv2d_20/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*#
_class
loc:@conv2d_20/kernel
ъ
+conv2d_20/kernel/Initializer/random_uniformAdd/conv2d_20/kernel/Initializer/random_uniform/mul/conv2d_20/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_20/kernel*&
_output_shapes
:
║
conv2d_20/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: *!
shared_nameconv2d_20/kernel*#
_class
loc:@conv2d_20/kernel*
	container 
q
1conv2d_20/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_20/kernel*
_output_shapes
: 
Ь
conv2d_20/kernel/AssignAssignVariableOpconv2d_20/kernel+conv2d_20/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_20/kernel*
dtype0
в
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*#
_class
loc:@conv2d_20/kernel*
dtype0*&
_output_shapes
:
Р
 conv2d_20/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_20/bias*
dtype0*
_output_shapes
:
и
conv2d_20/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_20/bias*!
_class
loc:@conv2d_20/bias*
	container *
shape:
m
/conv2d_20/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_20/bias*
_output_shapes
: 
Л
conv2d_20/bias/AssignAssignVariableOpconv2d_20/bias conv2d_20/bias/Initializer/zeros*!
_class
loc:@conv2d_20/bias*
dtype0
Р
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*!
_class
loc:@conv2d_20/bias*
dtype0*
_output_shapes
:
h
conv2d_20/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_20/Conv2D/ReadVariableOpReadVariableOpconv2d_20/kernel*
dtype0*&
_output_shapes
:
Ё
conv2d_20/Conv2DConv2D	add_6/addconv2d_20/Conv2D/ReadVariableOp*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOpconv2d_20/bias*
dtype0*
_output_shapes
:
г
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D conv2d_20/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_20/ReluReluconv2d_20/BiasAdd*1
_output_shapes
:         ЁЁ*
T0
e
	add_7/addAddinput_1conv2d_20/Relu*1
_output_shapes
:         ЁЁ*
T0
п
1conv2d_21/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@conv2d_21/kernel*
dtype0*
_output_shapes
:
Щ
/conv2d_21/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│▌┐*#
_class
loc:@conv2d_21/kernel*
dtype0*
_output_shapes
: 
Щ
/conv2d_21/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│▌?*#
_class
loc:@conv2d_21/kernel*
dtype0*
_output_shapes
: 
∙
9conv2d_21/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_21/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_21/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
▐
/conv2d_21/kernel/Initializer/random_uniform/subSub/conv2d_21/kernel/Initializer/random_uniform/max/conv2d_21/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_21/kernel*
_output_shapes
: 
°
/conv2d_21/kernel/Initializer/random_uniform/mulMul9conv2d_21/kernel/Initializer/random_uniform/RandomUniform/conv2d_21/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_21/kernel*&
_output_shapes
:
ъ
+conv2d_21/kernel/Initializer/random_uniformAdd/conv2d_21/kernel/Initializer/random_uniform/mul/conv2d_21/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_21/kernel*&
_output_shapes
:
║
conv2d_21/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_21/kernel*#
_class
loc:@conv2d_21/kernel*
	container *
shape:
q
1conv2d_21/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_21/kernel*
_output_shapes
: 
Ь
conv2d_21/kernel/AssignAssignVariableOpconv2d_21/kernel+conv2d_21/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_21/kernel*
dtype0
в
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*#
_class
loc:@conv2d_21/kernel*
dtype0*&
_output_shapes
:
Р
 conv2d_21/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv2d_21/bias*
dtype0*
_output_shapes
:
и
conv2d_21/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_21/bias*!
_class
loc:@conv2d_21/bias*
	container *
shape:
m
/conv2d_21/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_21/bias*
_output_shapes
: 
Л
conv2d_21/bias/AssignAssignVariableOpconv2d_21/bias conv2d_21/bias/Initializer/zeros*!
_class
loc:@conv2d_21/bias*
dtype0
Р
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*!
_class
loc:@conv2d_21/bias*
dtype0*
_output_shapes
:
h
conv2d_21/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_21/Conv2D/ReadVariableOpReadVariableOpconv2d_21/kernel*
dtype0*&
_output_shapes
:
Ё
conv2d_21/Conv2DConv2D	add_7/addconv2d_21/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations

k
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOpconv2d_21/bias*
dtype0*
_output_shapes
:
г
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D conv2d_21/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*1
_output_shapes
:         ЁЁ
e
conv2d_21/ReluReluconv2d_21/BiasAdd*
T0*1
_output_shapes
:         ЁЁ
Н
(SGD/iterations/Initializer/initial_valueConst*
value	B	 R *!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
д
SGD/iterationsVarHandleOp*
shared_nameSGD/iterations*!
_class
loc:@SGD/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 
У
SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*!
_class
loc:@SGD/iterations*
dtype0	
М
"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
А
 SGD/lr/Initializer/initial_valueConst*
valueB
 *
╫#<*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 
М
SGD/lrVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameSGD/lr*
_class
loc:@SGD/lr
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
М
&SGD/momentum/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 
Ю
SGD/momentumVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameSGD/momentum*
_class
loc:@SGD/momentum
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 
Л
SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
dtype0*
_class
loc:@SGD/momentum
Ж
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 
Ж
#SGD/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
Х
	SGD/decayVarHandleOp*
_class
loc:@SGD/decay*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	SGD/decay
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
dtype0*
_output_shapes
: *
_class
loc:@SGD/decay
╣
conv2d_21_targetPlaceholder*
dtype0*J
_output_shapes8
6:4                                    *?
shape6:4                                    
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
Е
conv2d_21_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:         *
shape:         
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
Й
totalVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container *
shape: 
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
count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class

loc:@count
Й
countVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container 
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
Е
loss/conv2d_21_loss/subSubconv2d_21/Reluconv2d_21_target*
T0*:
_output_shapes(
&:$         ЁЁ         
|
loss/conv2d_21_loss/AbsAbsloss/conv2d_21_loss/sub*
T0*:
_output_shapes(
&:$         ЁЁ         
u
*loss/conv2d_21_loss/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
         
║
loss/conv2d_21_loss/MeanMeanloss/conv2d_21_loss/Abs*loss/conv2d_21_loss/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*-
_output_shapes
:         ЁЁ
а
Hloss/conv2d_21_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeconv2d_21_sample_weights*
T0*
out_type0*
_output_shapes
:
Й
Gloss/conv2d_21_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :
Я
Gloss/conv2d_21_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/conv2d_21_loss/Mean*
T0*
out_type0*
_output_shapes
:
И
Floss/conv2d_21_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
}
,loss/conv2d_21_loss/Mean_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
╡
loss/conv2d_21_loss/Mean_1Meanloss/conv2d_21_loss/Mean,loss/conv2d_21_loss/Mean_1/reduction_indices*#
_output_shapes
:         *
	keep_dims( *

Tidx0*
T0
В
loss/conv2d_21_loss/MulMulloss/conv2d_21_loss/Mean_1conv2d_21_sample_weights*
T0*#
_output_shapes
:         
c
loss/conv2d_21_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Р
loss/conv2d_21_loss/SumSumloss/conv2d_21_loss/Mulloss/conv2d_21_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
loss/conv2d_21_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Х
loss/conv2d_21_loss/Sum_1Sumconv2d_21_sample_weightsloss/conv2d_21_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss/conv2d_21_loss/div_no_nanDivNoNanloss/conv2d_21_loss/Sumloss/conv2d_21_loss/Sum_1*
T0*
_output_shapes
: 
^
loss/conv2d_21_loss/Const_2Const*
dtype0*
_output_shapes
: *
valueB 
Э
loss/conv2d_21_loss/Mean_2Meanloss/conv2d_21_loss/div_no_nanloss/conv2d_21_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
X
loss/mulMul
loss/mul/xloss/conv2d_21_loss/Mean_2*
_output_shapes
: *
T0
~
metrics/psnr/subSubconv2d_21/Reluconv2d_21_target*
T0*:
_output_shapes(
&:$         ЁЁ         
t
metrics/psnr/SquareSquaremetrics/psnr/sub*
T0*:
_output_shapes(
&:$         ЁЁ         
k
metrics/psnr/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
А
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
metrics/psnr/mul/xConst*
valueB
 *   ┴*
dtype0*
_output_shapes
: 
b
metrics/psnr/mulMulmetrics/psnr/mul/xmetrics/psnr/truediv*
_output_shapes
: *
T0
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
metrics/psnr/Const_2Const*
dtype0*
_output_shapes
: *
valueB 
}
metrics/psnr/SumSummetrics/psnr/mulmetrics/psnr/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
Ю
metrics/psnr/ReadVariableOp_1ReadVariableOpcount#^metrics/psnr/AssignAddVariableOp_1^metrics/psnr/ReadVariableOp*
dtype0*
_output_shapes
: 
Д
&metrics/psnr/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ж
(metrics/psnr/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/psnr/ReadVariableOp_1*
dtype0*
_output_shapes
: 
Ц
metrics/psnr/div_no_nanDivNoNan&metrics/psnr/div_no_nan/ReadVariableOp(metrics/psnr/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
А
metrics/psnr/sub_1Subconv2d_21/Reluconv2d_21_target*
T0*:
_output_shapes(
&:$         ЁЁ         
x
metrics/psnr/Square_1Squaremetrics/psnr/sub_1*
T0*:
_output_shapes(
&:$         ЁЁ         
m
metrics/psnr/Const_3Const*%
valueB"             *
dtype0*
_output_shapes
:
Ж
metrics/psnr/Mean_1Meanmetrics/psnr/Square_1metrics/psnr/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O
metrics/psnr/Log_2Logmetrics/psnr/Mean_1*
_output_shapes
: *
T0
Y
metrics/psnr/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *   A
P
metrics/psnr/Log_3Logmetrics/psnr/Const_4*
_output_shapes
: *
T0
j
metrics/psnr/truediv_1RealDivmetrics/psnr/Log_2metrics/psnr/Log_3*
T0*
_output_shapes
: 
Y
metrics/psnr/mul_1/xConst*
valueB
 *   ┴*
dtype0*
_output_shapes
: 
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
Г
metrics/psnr/Mean_2Meanmetrics/psnr/mul_1metrics/psnr/Const_5*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
|
training/SGD/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
В
 training/SGD/gradients/grad_ys_0Const*
valueB
 *  А?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
│
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
ж
(training/SGD/gradients/loss/mul_grad/MulMultraining/SGD/gradients/Fillloss/conv2d_21_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ш
*training/SGD/gradients/loss/mul_grad/Mul_1Multraining/SGD/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
╢
Dtraining/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Reshape/shapeConst*
valueB *-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
dtype0*
_output_shapes
: 
Щ
>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/ReshapeReshape*training/SGD/gradients/loss/mul_grad/Mul_1Dtraining/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
_output_shapes
: 
о
<training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/ConstConst*
valueB *-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
dtype0*
_output_shapes
: 
г
;training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/TileTile>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Reshape<training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Const*

Tmultiples0*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
_output_shapes
: 
▓
>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Const_1Const*
valueB
 *  А?*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
dtype0*
_output_shapes
: 
Ц
>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/truedivRealDiv;training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Tile>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/Const_1*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_2*
_output_shapes
: 
╢
@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ShapeConst*
valueB *1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
dtype0*
_output_shapes
: 
╕
Btraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape_1Const*
valueB *1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
dtype0*
_output_shapes
: 
▀
Ptraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ShapeBtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape_1*2
_output_shapes 
:         :         *
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan
А
Etraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nanDivNoNan>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/truedivloss/conv2d_21_loss/Sum_1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
╧
>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/SumSumEtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nanPtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
▒
Btraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ReshapeReshape>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Sum@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape*
T0*
Tshape0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
▓
>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/NegNegloss/conv2d_21_loss/Sum*
_output_shapes
: *
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan
В
Gtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_1DivNoNan>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Negloss/conv2d_21_loss/Sum_1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
Л
Gtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_2DivNoNanGtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_1loss/conv2d_21_loss/Sum_1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: 
в
>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/mulMul>training/SGD/gradients/loss/conv2d_21_loss/Mean_2_grad/truedivGtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/div_no_nan_2*
_output_shapes
: *
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan
╠
@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Sum_1Sum>training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/mulRtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/BroadcastGradientArgs:1*
T0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( 
╖
Dtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Reshape_1Reshape@training/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Sum_1Btraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*1
_class'
%#loc:@loss/conv2d_21_loss/div_no_nan
╖
Atraining/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Reshape/shapeConst*
valueB:**
_class 
loc:@loss/conv2d_21_loss/Sum*
dtype0*
_output_shapes
:
м
;training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/ReshapeReshapeBtraining/SGD/gradients/loss/conv2d_21_loss/div_no_nan_grad/ReshapeAtraining/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Reshape/shape*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/Sum*
_output_shapes
:
╝
9training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/ShapeShapeloss/conv2d_21_loss/Mul*
_output_shapes
:*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/Sum
д
8training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/TileTile;training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Reshape9training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Shape*

Tmultiples0*
T0**
_class 
loc:@loss/conv2d_21_loss/Sum*#
_output_shapes
:         
┐
9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/ShapeShapeloss/conv2d_21_loss/Mean_1*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/Mul*
_output_shapes
:
┐
;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape_1Shapeconv2d_21_sample_weights*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/Mul*
_output_shapes
:
├
Itraining/SGD/gradients/loss/conv2d_21_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0**
_class 
loc:@loss/conv2d_21_loss/Mul
ь
7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/MulMul8training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Tileconv2d_21_sample_weights*#
_output_shapes
:         *
T0**
_class 
loc:@loss/conv2d_21_loss/Mul
о
7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/SumSum7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/MulItraining/SGD/gradients/loss/conv2d_21_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/conv2d_21_loss/Mul
в
;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/ReshapeReshape7training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Sum9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/Mul*#
_output_shapes
:         
Ё
9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Mul_1Mulloss/conv2d_21_loss/Mean_18training/SGD/gradients/loss/conv2d_21_loss/Sum_grad/Tile*
T0**
_class 
loc:@loss/conv2d_21_loss/Mul*#
_output_shapes
:         
┤
9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Sum_1Sum9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Mul_1Ktraining/SGD/gradients/loss/conv2d_21_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/conv2d_21_loss/Mul
и
=training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Reshape_1Reshape9training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Sum_1;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/Mul*#
_output_shapes
:         
├
<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ShapeShapeloss/conv2d_21_loss/Mean*
T0*
out_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
м
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/SizeConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
А
:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/addAdd,loss/conv2d_21_loss/Mean_1/reduction_indices;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Size*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
У
:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/modFloorMod:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/add;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Size*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
╖
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
│
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
│
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/deltaConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
с
<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/rangeRangeBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/start;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/SizeBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
▓
Atraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Fill/valueConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
м
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/FillFill>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_1Atraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
з
Dtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/DynamicStitchDynamicStitch<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/range:training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/mod<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Fill*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
N*
_output_shapes
:
▒
@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
е
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/MaximumMaximumDtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/DynamicStitch@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum/y*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
Э
?training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordivFloorDiv<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum*
_output_shapes
:*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
╤
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ReshapeReshape;training/SGD/gradients/loss/conv2d_21_loss/Mul_grad/ReshapeDtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*=
_output_shapes+
):'                           
═
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/TileTile>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Reshape?training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordiv*

Tmultiples0*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*=
_output_shapes+
):'                           
┼
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_2Shapeloss/conv2d_21_loss/Mean*
T0*
out_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
╟
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_3Shapeloss/conv2d_21_loss/Mean_1*
T0*
out_type0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
:
╡
<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
о
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/ProdProd>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_2<training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Const*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
╖
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
▓
=training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Prod_1Prod>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Shape_3>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Const_1*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
│
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
dtype0*
_output_shapes
: 
Ю
@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1Maximum=training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Prod_1Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1/y*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
: 
Ь
Atraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordiv_1FloorDiv;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Prod@training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Maximum_1*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1*
_output_shapes
: 
ї
;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/CastCastAtraining/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/floordiv_1*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
к
>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/truedivRealDiv;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Tile;training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/Cast*-
_output_shapes
:         ЁЁ*
T0*-
_class#
!loc:@loss/conv2d_21_loss/Mean_1
╛
:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ShapeShapeloss/conv2d_21_loss/Abs*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean
и
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/SizeConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
Ї
8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/addAdd*loss/conv2d_21_loss/Mean/reduction_indices9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Size*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
З
8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/modFloorMod8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/add9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Size*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
м
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_1Const*
valueB *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
п
@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/startConst*
value	B : *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
п
@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean
╫
:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/rangeRange@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/start9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Size@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range/delta*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:*

Tidx0
о
?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
а
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/FillFill<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_1?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
Ы
Btraining/SGD/gradients/loss/conv2d_21_loss/Mean_grad/DynamicStitchDynamicStitch:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/range8training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/mod:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Fill*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
N*
_output_shapes
:
н
>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
: 
Э
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/MaximumMaximumBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_grad/DynamicStitch>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum/y*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:
Х
=training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordivFloorDiv:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:
█
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ReshapeReshape>training/SGD/gradients/loss/conv2d_21_loss/Mean_1_grad/truedivBtraining/SGD/gradients/loss/conv2d_21_loss/Mean_grad/DynamicStitch*J
_output_shapes8
6:4                                    *
T0*
Tshape0*+
_class!
loc:@loss/conv2d_21_loss/Mean
╥
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/TileTile<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Reshape=training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordiv*

Tmultiples0*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*J
_output_shapes8
6:4                                    
└
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_2Shapeloss/conv2d_21_loss/Abs*
T0*
out_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:
┴
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_3Shapeloss/conv2d_21_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
:
▒
:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ConstConst*
valueB: *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
:
ж
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/ProdProd<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_2:training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Const*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
│
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/conv2d_21_loss/Mean*
dtype0*
_output_shapes
:
к
;training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Prod_1Prod<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Shape_3<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
п
@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@loss/conv2d_21_loss/Mean
Ц
>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1Maximum;training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Prod_1@training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1/y*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
Ф
?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordiv_1FloorDiv9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Prod>training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Maximum_1*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
_output_shapes
: 
я
9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/CastCast?training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/conv2d_21_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
п
<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/truedivRealDiv9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Tile9training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/Cast*
T0*+
_class!
loc:@loss/conv2d_21_loss/Mean*:
_output_shapes(
&:$         ЁЁ         
╩
8training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/SignSignloss/conv2d_21_loss/sub*
T0**
_class 
loc:@loss/conv2d_21_loss/Abs*:
_output_shapes(
&:$         ЁЁ         
з
7training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/mulMul<training/SGD/gradients/loss/conv2d_21_loss/Mean_grad/truediv8training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/Sign*
T0**
_class 
loc:@loss/conv2d_21_loss/Abs*:
_output_shapes(
&:$         ЁЁ         
│
9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/ShapeShapeconv2d_21/Relu*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:
╖
;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape_1Shapeconv2d_21_target*
T0*
out_type0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:
├
Itraining/SGD/gradients/loss/conv2d_21_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0**
_class 
loc:@loss/conv2d_21_loss/sub
о
7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/SumSum7training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/mulItraining/SGD/gradients/loss/conv2d_21_loss/sub_grad/BroadcastGradientArgs*
T0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
░
;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/ReshapeReshape7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Sum9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/sub*1
_output_shapes
:         ЁЁ
▓
9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Sum_1Sum7training/SGD/gradients/loss/conv2d_21_loss/Abs_grad/mulKtraining/SGD/gradients/loss/conv2d_21_loss/sub_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
╚
7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/NegNeg9training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Sum_1*
T0**
_class 
loc:@loss/conv2d_21_loss/sub*
_output_shapes
:
═
=training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Reshape_1Reshape7training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Neg;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/conv2d_21_loss/sub*J
_output_shapes8
6:4                                    
ы
3training/SGD/gradients/conv2d_21/Relu_grad/ReluGradReluGrad;training/SGD/gradients/loss/conv2d_21_loss/sub_grad/Reshapeconv2d_21/Relu*
T0*!
_class
loc:@conv2d_21/Relu*1
_output_shapes
:         ЁЁ
▀
9training/SGD/gradients/conv2d_21/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_21/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*$
_class
loc:@conv2d_21/BiasAdd
╥
3training/SGD/gradients/conv2d_21/Conv2D_grad/ShapeNShapeN	add_7/addconv2d_21/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_21/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_21/Conv2D_grad/ShapeNconv2d_21/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_21/Relu_grad/ReluGrad*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*#
_class
loc:@conv2d_21/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ф
Atraining/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter	add_7/add5training/SGD/gradients/conv2d_21/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_21/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_21/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Р
+training/SGD/gradients/add_7/add_grad/ShapeShapeinput_1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_7/add
Щ
-training/SGD/gradients/add_7/add_grad/Shape_1Shapeconv2d_20/Relu*
T0*
out_type0*
_class
loc:@add_7/add*
_output_shapes
:
Л
;training/SGD/gradients/add_7/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_7/add_grad/Shape-training/SGD/gradients/add_7/add_grad/Shape_1*2
_output_shapes 
:         :         *
T0*
_class
loc:@add_7/add
Н
)training/SGD/gradients/add_7/add_grad/SumSum@training/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropInput;training/SGD/gradients/add_7/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_7/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
°
-training/SGD/gradients/add_7/add_grad/ReshapeReshape)training/SGD/gradients/add_7/add_grad/Sum+training/SGD/gradients/add_7/add_grad/Shape*1
_output_shapes
:         ЁЁ*
T0*
Tshape0*
_class
loc:@add_7/add
С
+training/SGD/gradients/add_7/add_grad/Sum_1Sum@training/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropInput=training/SGD/gradients/add_7/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_7/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
■
/training/SGD/gradients/add_7/add_grad/Reshape_1Reshape+training/SGD/gradients/add_7/add_grad/Sum_1-training/SGD/gradients/add_7/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_7/add*1
_output_shapes
:         ЁЁ
▀
3training/SGD/gradients/conv2d_20/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_7/add_grad/Reshape_1conv2d_20/Relu*
T0*!
_class
loc:@conv2d_20/Relu*1
_output_shapes
:         ЁЁ
▀
9training/SGD/gradients/conv2d_20/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_20/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_20/BiasAdd*
data_formatNHWC*
_output_shapes
:
╥
3training/SGD/gradients/conv2d_20/Conv2D_grad/ShapeNShapeN	add_6/addconv2d_20/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*#
_class
loc:@conv2d_20/Conv2D
▒
@training/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_20/Conv2D_grad/ShapeNconv2d_20/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_20/Relu_grad/ReluGrad*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*#
_class
loc:@conv2d_20/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ф
Atraining/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter	add_6/add5training/SGD/gradients/conv2d_20/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_20/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_20/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

Ч
+training/SGD/gradients/add_6/add_grad/ShapeShapeconv2d_17/Relu*
T0*
out_type0*
_class
loc:@add_6/add*
_output_shapes
:
Щ
-training/SGD/gradients/add_6/add_grad/Shape_1Shapeconv2d_19/Relu*
T0*
out_type0*
_class
loc:@add_6/add*
_output_shapes
:
Л
;training/SGD/gradients/add_6/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_6/add_grad/Shape-training/SGD/gradients/add_6/add_grad/Shape_1*2
_output_shapes 
:         :         *
T0*
_class
loc:@add_6/add
Н
)training/SGD/gradients/add_6/add_grad/SumSum@training/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropInput;training/SGD/gradients/add_6/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_6/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
°
-training/SGD/gradients/add_6/add_grad/ReshapeReshape)training/SGD/gradients/add_6/add_grad/Sum+training/SGD/gradients/add_6/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_6/add*1
_output_shapes
:         ЁЁ
С
+training/SGD/gradients/add_6/add_grad/Sum_1Sum@training/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropInput=training/SGD/gradients/add_6/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_6/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
■
/training/SGD/gradients/add_6/add_grad/Reshape_1Reshape+training/SGD/gradients/add_6/add_grad/Sum_1-training/SGD/gradients/add_6/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_6/add*1
_output_shapes
:         ЁЁ
▌
3training/SGD/gradients/conv2d_17/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_6/add_grad/Reshapeconv2d_17/Relu*1
_output_shapes
:         ЁЁ*
T0*!
_class
loc:@conv2d_17/Relu
▀
3training/SGD/gradients/conv2d_19/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_6/add_grad/Reshape_1conv2d_19/Relu*
T0*!
_class
loc:@conv2d_19/Relu*1
_output_shapes
:         ЁЁ
▀
9training/SGD/gradients/conv2d_17/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_17/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_17/BiasAdd*
data_formatNHWC*
_output_shapes
:
▀
9training/SGD/gradients/conv2d_19/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_19/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_19/BiasAdd*
data_formatNHWC*
_output_shapes
:
▌
3training/SGD/gradients/conv2d_17/Conv2D_grad/ShapeNShapeNconcatenate_3/concatconv2d_17/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_17/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_17/Conv2D_grad/ShapeNconv2d_17/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_17/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_17/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁH
Я
Atraining/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_3/concat5training/SGD/gradients/conv2d_17/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_17/Relu_grad/ReluGrad*&
_output_shapes
:H*
	dilations
*
T0*#
_class
loc:@conv2d_17/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
╫
3training/SGD/gradients/conv2d_19/Conv2D_grad/ShapeNShapeNconv2d_18/Reluconv2d_19/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*#
_class
loc:@conv2d_19/Conv2D
▒
@training/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_19/Conv2D_grad/ShapeNconv2d_19/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_19/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*#
_class
loc:@conv2d_19/Conv2D
Щ
Atraining/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_18/Relu5training/SGD/gradients/conv2d_19/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_19/Relu_grad/ReluGrad*&
_output_shapes
:*
	dilations
*
T0*#
_class
loc:@conv2d_19/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ё
3training/SGD/gradients/conv2d_18/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropInputconv2d_18/Relu*
T0*!
_class
loc:@conv2d_18/Relu*1
_output_shapes
:         ЁЁ
▀
9training/SGD/gradients/conv2d_18/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_18/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_18/BiasAdd*
data_formatNHWC*
_output_shapes
:
▌
3training/SGD/gradients/conv2d_18/Conv2D_grad/ShapeNShapeNconcatenate_3/concatconv2d_18/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_18/Conv2D*
N* 
_output_shapes
::
▒
@training/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_18/Conv2D_grad/ShapeNconv2d_18/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_18/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*1
_output_shapes
:         ЁЁH*
	dilations
*
T0*#
_class
loc:@conv2d_18/Conv2D
Я
Atraining/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_3/concat5training/SGD/gradients/conv2d_18/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_18/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_18/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:H
С
training/SGD/gradients/AddNAddN@training/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropInput@training/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropInput*
N*1
_output_shapes
:         ЁЁH*
T0*#
_class
loc:@conv2d_17/Conv2D
а
5training/SGD/gradients/concatenate_3/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_3/concat*
dtype0*
_output_shapes
: 
▄
4training/SGD/gradients/concatenate_3/concat_grad/modFloorModconcatenate_3/concat/axis5training/SGD/gradients/concatenate_3/concat_grad/Rank*
_output_shapes
: *
T0*'
_class
loc:@concatenate_3/concat
ж
6training/SGD/gradients/concatenate_3/concat_grad/ShapeShapeadd/add*
T0*
out_type0*'
_class
loc:@concatenate_3/concat*
_output_shapes
:
▐
7training/SGD/gradients/concatenate_3/concat_grad/ShapeNShapeNadd/add%up_sampling2d_2/ResizeNearestNeighbor*
T0*
out_type0*'
_class
loc:@concatenate_3/concat*
N* 
_output_shapes
::
╦
=training/SGD/gradients/concatenate_3/concat_grad/ConcatOffsetConcatOffset4training/SGD/gradients/concatenate_3/concat_grad/mod7training/SGD/gradients/concatenate_3/concat_grad/ShapeN9training/SGD/gradients/concatenate_3/concat_grad/ShapeN:1*
N* 
_output_shapes
::*'
_class
loc:@concatenate_3/concat
╞
6training/SGD/gradients/concatenate_3/concat_grad/SliceSlicetraining/SGD/gradients/AddN=training/SGD/gradients/concatenate_3/concat_grad/ConcatOffset7training/SGD/gradients/concatenate_3/concat_grad/ShapeN*1
_output_shapes
:         ЁЁ*
T0*
Index0*'
_class
loc:@concatenate_3/concat
╠
8training/SGD/gradients/concatenate_3/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN?training/SGD/gradients/concatenate_3/concat_grad/ConcatOffset:19training/SGD/gradients/concatenate_3/concat_grad/ShapeN:1*1
_output_shapes
:         ЁЁ0*
T0*
Index0*'
_class
loc:@concatenate_3/concat
ы
`training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"x   x   *8
_class.
,*loc:@up_sampling2d_2/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
Э
[training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad8training/SGD/gradients/concatenate_3/concat_grad/Slice_1`training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*
T0*8
_class.
,*loc:@up_sampling2d_2/ResizeNearestNeighbor*/
_output_shapes
:         xx0*
align_corners( 
Ч
+training/SGD/gradients/add_5/add_grad/ShapeShapeconv2d_14/Relu*
T0*
out_type0*
_class
loc:@add_5/add*
_output_shapes
:
Щ
-training/SGD/gradients/add_5/add_grad/Shape_1Shapeconv2d_16/Relu*
T0*
out_type0*
_class
loc:@add_5/add*
_output_shapes
:
Л
;training/SGD/gradients/add_5/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_5/add_grad/Shape-training/SGD/gradients/add_5/add_grad/Shape_1*
T0*
_class
loc:@add_5/add*2
_output_shapes 
:         :         
и
)training/SGD/gradients/add_5/add_grad/SumSum[training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_5/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_5/add
Ў
-training/SGD/gradients/add_5/add_grad/ReshapeReshape)training/SGD/gradients/add_5/add_grad/Sum+training/SGD/gradients/add_5/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_5/add*/
_output_shapes
:         xx0
м
+training/SGD/gradients/add_5/add_grad/Sum_1Sum[training/SGD/gradients/up_sampling2d_2/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_5/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_5/add
№
/training/SGD/gradients/add_5/add_grad/Reshape_1Reshape+training/SGD/gradients/add_5/add_grad/Sum_1-training/SGD/gradients/add_5/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_5/add*/
_output_shapes
:         xx0
█
3training/SGD/gradients/conv2d_14/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_5/add_grad/Reshapeconv2d_14/Relu*
T0*!
_class
loc:@conv2d_14/Relu*/
_output_shapes
:         xx0
▌
3training/SGD/gradients/conv2d_16/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_5/add_grad/Reshape_1conv2d_16/Relu*
T0*!
_class
loc:@conv2d_16/Relu*/
_output_shapes
:         xx0
▀
9training/SGD/gradients/conv2d_14/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_14/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_14/BiasAdd*
data_formatNHWC*
_output_shapes
:0
▀
9training/SGD/gradients/conv2d_16/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_16/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_16/BiasAdd*
data_formatNHWC*
_output_shapes
:0
▌
3training/SGD/gradients/conv2d_14/Conv2D_grad/ShapeNShapeNconcatenate_2/concatconv2d_14/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_14/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_14/Conv2D_grad/ShapeNconv2d_14/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_14/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_14/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         xxР
а
Atraining/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_2/concat5training/SGD/gradients/conv2d_14/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_14/Relu_grad/ReluGrad*'
_output_shapes
:Р0*
	dilations
*
T0*#
_class
loc:@conv2d_14/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
╫
3training/SGD/gradients/conv2d_16/Conv2D_grad/ShapeNShapeNconv2d_15/Reluconv2d_16/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*#
_class
loc:@conv2d_16/Conv2D
п
@training/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_16/Conv2D_grad/ShapeNconv2d_16/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_16/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_16/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx0
Щ
Atraining/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_15/Relu5training/SGD/gradients/conv2d_16/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_16/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00*
	dilations
*
T0*#
_class
loc:@conv2d_16/Conv2D
ю
3training/SGD/gradients/conv2d_15/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropInputconv2d_15/Relu*/
_output_shapes
:         xx0*
T0*!
_class
loc:@conv2d_15/Relu
▀
9training/SGD/gradients/conv2d_15/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_15/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*$
_class
loc:@conv2d_15/BiasAdd
▌
3training/SGD/gradients/conv2d_15/Conv2D_grad/ShapeNShapeNconcatenate_2/concatconv2d_15/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_15/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_15/Conv2D_grad/ShapeNconv2d_15/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_15/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         xxР*
	dilations
*
T0*#
_class
loc:@conv2d_15/Conv2D
а
Atraining/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_2/concat5training/SGD/gradients/conv2d_15/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_15/Relu_grad/ReluGrad*'
_output_shapes
:Р0*
	dilations
*
T0*#
_class
loc:@conv2d_15/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Т
training/SGD/gradients/AddN_1AddN@training/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropInput@training/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropInput*
T0*#
_class
loc:@conv2d_14/Conv2D*
N*0
_output_shapes
:         xxР
а
5training/SGD/gradients/concatenate_2/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_2/concat*
dtype0*
_output_shapes
: 
▄
4training/SGD/gradients/concatenate_2/concat_grad/modFloorModconcatenate_2/concat/axis5training/SGD/gradients/concatenate_2/concat_grad/Rank*
_output_shapes
: *
T0*'
_class
loc:@concatenate_2/concat
и
6training/SGD/gradients/concatenate_2/concat_grad/ShapeShape	add_1/add*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@concatenate_2/concat
р
7training/SGD/gradients/concatenate_2/concat_grad/ShapeNShapeN	add_1/add%up_sampling2d_1/ResizeNearestNeighbor*
T0*
out_type0*'
_class
loc:@concatenate_2/concat*
N* 
_output_shapes
::
╦
=training/SGD/gradients/concatenate_2/concat_grad/ConcatOffsetConcatOffset4training/SGD/gradients/concatenate_2/concat_grad/mod7training/SGD/gradients/concatenate_2/concat_grad/ShapeN9training/SGD/gradients/concatenate_2/concat_grad/ShapeN:1*
N* 
_output_shapes
::*'
_class
loc:@concatenate_2/concat
╞
6training/SGD/gradients/concatenate_2/concat_grad/SliceSlicetraining/SGD/gradients/AddN_1=training/SGD/gradients/concatenate_2/concat_grad/ConcatOffset7training/SGD/gradients/concatenate_2/concat_grad/ShapeN*
T0*
Index0*'
_class
loc:@concatenate_2/concat*/
_output_shapes
:         xx0
╠
8training/SGD/gradients/concatenate_2/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN_1?training/SGD/gradients/concatenate_2/concat_grad/ConcatOffset:19training/SGD/gradients/concatenate_2/concat_grad/ShapeN:1*/
_output_shapes
:         xx`*
T0*
Index0*'
_class
loc:@concatenate_2/concat
ы
`training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
dtype0*
_output_shapes
:*
valueB"<   <   *8
_class.
,*loc:@up_sampling2d_1/ResizeNearestNeighbor
Э
[training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad8training/SGD/gradients/concatenate_2/concat_grad/Slice_1`training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*
align_corners( *
T0*8
_class.
,*loc:@up_sampling2d_1/ResizeNearestNeighbor*/
_output_shapes
:         <<`
Ч
+training/SGD/gradients/add_4/add_grad/ShapeShapeconv2d_11/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_4/add
Щ
-training/SGD/gradients/add_4/add_grad/Shape_1Shapeconv2d_13/Relu*
T0*
out_type0*
_class
loc:@add_4/add*
_output_shapes
:
Л
;training/SGD/gradients/add_4/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_4/add_grad/Shape-training/SGD/gradients/add_4/add_grad/Shape_1*
T0*
_class
loc:@add_4/add*2
_output_shapes 
:         :         
и
)training/SGD/gradients/add_4/add_grad/SumSum[training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_4/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_4/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
-training/SGD/gradients/add_4/add_grad/ReshapeReshape)training/SGD/gradients/add_4/add_grad/Sum+training/SGD/gradients/add_4/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_4/add*/
_output_shapes
:         <<`
м
+training/SGD/gradients/add_4/add_grad/Sum_1Sum[training/SGD/gradients/up_sampling2d_1/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_4/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_4/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
№
/training/SGD/gradients/add_4/add_grad/Reshape_1Reshape+training/SGD/gradients/add_4/add_grad/Sum_1-training/SGD/gradients/add_4/add_grad/Shape_1*/
_output_shapes
:         <<`*
T0*
Tshape0*
_class
loc:@add_4/add
█
3training/SGD/gradients/conv2d_11/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_4/add_grad/Reshapeconv2d_11/Relu*
T0*!
_class
loc:@conv2d_11/Relu*/
_output_shapes
:         <<`
▌
3training/SGD/gradients/conv2d_13/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_4/add_grad/Reshape_1conv2d_13/Relu*/
_output_shapes
:         <<`*
T0*!
_class
loc:@conv2d_13/Relu
▀
9training/SGD/gradients/conv2d_11/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_11/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_11/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▀
9training/SGD/gradients/conv2d_13/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_13/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_13/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▌
3training/SGD/gradients/conv2d_11/Conv2D_grad/ShapeNShapeNconcatenate_1/concatconv2d_11/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_11/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_11/Conv2D_grad/ShapeNconv2d_11/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_11/Relu_grad/ReluGrad*0
_output_shapes
:         <<а*
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
а
Atraining/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_1/concat5training/SGD/gradients/conv2d_11/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_11/Relu_grad/ReluGrad*'
_output_shapes
:а`*
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
╫
3training/SGD/gradients/conv2d_13/Conv2D_grad/ShapeNShapeNconv2d_12/Reluconv2d_13/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_13/Conv2D*
N* 
_output_shapes
::
п
@training/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_13/Conv2D_grad/ShapeNconv2d_13/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_13/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:         <<`*
	dilations
*
T0*#
_class
loc:@conv2d_13/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Щ
Atraining/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_12/Relu5training/SGD/gradients/conv2d_13/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_13/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:``*
	dilations
*
T0*#
_class
loc:@conv2d_13/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ю
3training/SGD/gradients/conv2d_12/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropInputconv2d_12/Relu*/
_output_shapes
:         <<`*
T0*!
_class
loc:@conv2d_12/Relu
▀
9training/SGD/gradients/conv2d_12/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_12/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_12/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▌
3training/SGD/gradients/conv2d_12/Conv2D_grad/ShapeNShapeNconcatenate_1/concatconv2d_12/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_12/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_12/Conv2D_grad/ShapeNconv2d_12/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_12/Relu_grad/ReluGrad*
paddingSAME*0
_output_shapes
:         <<а*
	dilations
*
T0*#
_class
loc:@conv2d_12/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
а
Atraining/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconcatenate_1/concat5training/SGD/gradients/conv2d_12/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_12/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_12/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:а`
Т
training/SGD/gradients/AddN_2AddN@training/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInput@training/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInput*
T0*#
_class
loc:@conv2d_11/Conv2D*
N*0
_output_shapes
:         <<а
а
5training/SGD/gradients/concatenate_1/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_1/concat*
dtype0*
_output_shapes
: 
▄
4training/SGD/gradients/concatenate_1/concat_grad/modFloorModconcatenate_1/concat/axis5training/SGD/gradients/concatenate_1/concat_grad/Rank*
T0*'
_class
loc:@concatenate_1/concat*
_output_shapes
: 
и
6training/SGD/gradients/concatenate_1/concat_grad/ShapeShape	add_2/add*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
_output_shapes
:
▐
7training/SGD/gradients/concatenate_1/concat_grad/ShapeNShapeN	add_2/add#up_sampling2d/ResizeNearestNeighbor*
N* 
_output_shapes
::*
T0*
out_type0*'
_class
loc:@concatenate_1/concat
╦
=training/SGD/gradients/concatenate_1/concat_grad/ConcatOffsetConcatOffset4training/SGD/gradients/concatenate_1/concat_grad/mod7training/SGD/gradients/concatenate_1/concat_grad/ShapeN9training/SGD/gradients/concatenate_1/concat_grad/ShapeN:1*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
╞
6training/SGD/gradients/concatenate_1/concat_grad/SliceSlicetraining/SGD/gradients/AddN_2=training/SGD/gradients/concatenate_1/concat_grad/ConcatOffset7training/SGD/gradients/concatenate_1/concat_grad/ShapeN*
T0*
Index0*'
_class
loc:@concatenate_1/concat*/
_output_shapes
:         <<`
═
8training/SGD/gradients/concatenate_1/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN_2?training/SGD/gradients/concatenate_1/concat_grad/ConcatOffset:19training/SGD/gradients/concatenate_1/concat_grad/ShapeN:1*
T0*
Index0*'
_class
loc:@concatenate_1/concat*0
_output_shapes
:         <<└
ч
^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/sizeConst*
valueB"      *6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor*
dtype0*
_output_shapes
:
Ш
Ytraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGradResizeNearestNeighborGrad8training/SGD/gradients/concatenate_1/concat_grad/Slice_1^training/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad/size*0
_output_shapes
:         └*
align_corners( *
T0*6
_class,
*(loc:@up_sampling2d/ResizeNearestNeighbor
Ц
+training/SGD/gradients/add_3/add_grad/ShapeShapeconv2d_8/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_3/add
Щ
-training/SGD/gradients/add_3/add_grad/Shape_1Shapeconv2d_10/Relu*
T0*
out_type0*
_class
loc:@add_3/add*
_output_shapes
:
Л
;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_3/add_grad/Shape-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
_class
loc:@add_3/add*2
_output_shapes 
:         :         
ж
)training/SGD/gradients/add_3/add_grad/SumSumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad;training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_3/add
ў
-training/SGD/gradients/add_3/add_grad/ReshapeReshape)training/SGD/gradients/add_3/add_grad/Sum+training/SGD/gradients/add_3/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_3/add*0
_output_shapes
:         └
к
+training/SGD/gradients/add_3/add_grad/Sum_1SumYtraining/SGD/gradients/up_sampling2d/ResizeNearestNeighbor_grad/ResizeNearestNeighborGrad=training/SGD/gradients/add_3/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_3/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
¤
/training/SGD/gradients/add_3/add_grad/Reshape_1Reshape+training/SGD/gradients/add_3/add_grad/Sum_1-training/SGD/gradients/add_3/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_3/add*0
_output_shapes
:         └
┘
2training/SGD/gradients/conv2d_8/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_3/add_grad/Reshapeconv2d_8/Relu*0
_output_shapes
:         └*
T0* 
_class
loc:@conv2d_8/Relu
▐
3training/SGD/gradients/conv2d_10/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_3/add_grad/Reshape_1conv2d_10/Relu*
T0*!
_class
loc:@conv2d_10/Relu*0
_output_shapes
:         └
▌
8training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_8/BiasAdd*
data_formatNHWC*
_output_shapes	
:└
р
9training/SGD/gradients/conv2d_10/BiasAdd_grad/BiasAddGradBiasAddGrad3training/SGD/gradients/conv2d_10/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:└*
T0*$
_class
loc:@conv2d_10/BiasAdd
▌
2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv2d_8/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_8/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeNconv2d_8/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*/
_output_shapes
:         `*
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
Я
@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool4training/SGD/gradients/conv2d_8/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_8/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_8/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:`└
╓
3training/SGD/gradients/conv2d_10/Conv2D_grad/ShapeNShapeNconv2d_9/Reluconv2d_10/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_10/Conv2D*
N* 
_output_shapes
::
░
@training/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3training/SGD/gradients/conv2d_10/Conv2D_grad/ShapeNconv2d_10/Conv2D/ReadVariableOp3training/SGD/gradients/conv2d_10/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_10/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         └
Ъ
Atraining/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_9/Relu5training/SGD/gradients/conv2d_10/Conv2D_grad/ShapeN:13training/SGD/gradients/conv2d_10/Relu_grad/ReluGrad*
paddingSAME*(
_output_shapes
:└└*
	dilations
*
T0*#
_class
loc:@conv2d_10/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ь
2training/SGD/gradients/conv2d_9/Relu_grad/ReluGradReluGrad@training/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropInputconv2d_9/Relu*
T0* 
_class
loc:@conv2d_9/Relu*0
_output_shapes
:         └
▌
8training/SGD/gradients/conv2d_9/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_9/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:└*
T0*#
_class
loc:@conv2d_9/BiasAdd
▌
2training/SGD/gradients/conv2d_9/Conv2D_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv2d_9/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_9/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_9/Conv2D_grad/ShapeNconv2d_9/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_9/Relu_grad/ReluGrad*/
_output_shapes
:         `*
	dilations
*
T0*"
_class
loc:@conv2d_9/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Я
@training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool4training/SGD/gradients/conv2d_9/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_9/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:`└*
	dilations
*
T0*"
_class
loc:@conv2d_9/Conv2D
О
training/SGD/gradients/AddN_3AddN?training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropInput*
T0*"
_class
loc:@conv2d_8/Conv2D*
N*/
_output_shapes
:         `
╔
?training/SGD/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad	add_2/addmax_pooling2d_2/MaxPooltraining/SGD/gradients/AddN_3*
ksize
*
paddingSAME*/
_output_shapes
:         <<`*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*
strides
*
data_formatNHWC
К
training/SGD/gradients/AddN_4AddN6training/SGD/gradients/concatenate_1/concat_grad/Slice?training/SGD/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGrad*
T0*'
_class
loc:@concatenate_1/concat*
N*/
_output_shapes
:         <<`
Ц
+training/SGD/gradients/add_2/add_grad/ShapeShapeconv2d_5/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_2/add
Ш
-training/SGD/gradients/add_2/add_grad/Shape_1Shapeconv2d_7/Relu*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add_2/add
Л
;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_2/add_grad/Shape-training/SGD/gradients/add_2/add_grad/Shape_1*2
_output_shapes 
:         :         *
T0*
_class
loc:@add_2/add
ъ
)training/SGD/gradients/add_2/add_grad/SumSumtraining/SGD/gradients/AddN_4;training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs*
T0*
_class
loc:@add_2/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
-training/SGD/gradients/add_2/add_grad/ReshapeReshape)training/SGD/gradients/add_2/add_grad/Sum+training/SGD/gradients/add_2/add_grad/Shape*/
_output_shapes
:         <<`*
T0*
Tshape0*
_class
loc:@add_2/add
ю
+training/SGD/gradients/add_2/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_4=training/SGD/gradients/add_2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_2/add
№
/training/SGD/gradients/add_2/add_grad/Reshape_1Reshape+training/SGD/gradients/add_2/add_grad/Sum_1-training/SGD/gradients/add_2/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_2/add*/
_output_shapes
:         <<`
╪
2training/SGD/gradients/conv2d_5/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_2/add_grad/Reshapeconv2d_5/Relu*
T0* 
_class
loc:@conv2d_5/Relu*/
_output_shapes
:         <<`
┌
2training/SGD/gradients/conv2d_7/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_2/add_grad/Reshape_1conv2d_7/Relu*
T0* 
_class
loc:@conv2d_7/Relu*/
_output_shapes
:         <<`
▄
8training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:`*
T0*#
_class
loc:@conv2d_5/BiasAdd
▄
8training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_7/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▌
2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_5/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0*"
_class
loc:@conv2d_5/Conv2D
к
?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<0*
	dilations
*
T0*"
_class
loc:@conv2d_5/Conv2D
Ю
@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool4training/SGD/gradients/conv2d_5/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_5/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_5/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0`*
	dilations

╙
2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNconv2d_6/Reluconv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_7/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:         <<`*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ф
@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6/Relu4training/SGD/gradients/conv2d_7/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_7/Relu_grad/ReluGrad*&
_output_shapes
:``*
	dilations
*
T0*"
_class
loc:@conv2d_7/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ъ
2training/SGD/gradients/conv2d_6/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputconv2d_6/Relu*
T0* 
_class
loc:@conv2d_6/Relu*/
_output_shapes
:         <<`
▄
8training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_6/BiasAdd*
data_formatNHWC*
_output_shapes
:`
▌
2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_6/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         <<0
Ю
@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool4training/SGD/gradients/conv2d_6/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_6/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_6/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:0`
О
training/SGD/gradients/AddN_5AddN?training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInput*
N*/
_output_shapes
:         <<0*
T0*"
_class
loc:@conv2d_5/Conv2D
╔
?training/SGD/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad	add_1/addmax_pooling2d_1/MaxPooltraining/SGD/gradients/AddN_5*
T0**
_class 
loc:@max_pooling2d_1/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:         xx0
К
training/SGD/gradients/AddN_6AddN6training/SGD/gradients/concatenate_2/concat_grad/Slice?training/SGD/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGrad*
T0*'
_class
loc:@concatenate_2/concat*
N*/
_output_shapes
:         xx0
Ц
+training/SGD/gradients/add_1/add_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:
Ш
-training/SGD/gradients/add_1/add_grad/Shape_1Shapeconv2d_4/Relu*
T0*
out_type0*
_class
loc:@add_1/add*
_output_shapes
:
Л
;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs+training/SGD/gradients/add_1/add_grad/Shape-training/SGD/gradients/add_1/add_grad/Shape_1*
T0*
_class
loc:@add_1/add*2
_output_shapes 
:         :         
ъ
)training/SGD/gradients/add_1/add_grad/SumSumtraining/SGD/gradients/AddN_6;training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add_1/add*
_output_shapes
:
Ў
-training/SGD/gradients/add_1/add_grad/ReshapeReshape)training/SGD/gradients/add_1/add_grad/Sum+training/SGD/gradients/add_1/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:         xx0
ю
+training/SGD/gradients/add_1/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_6=training/SGD/gradients/add_1/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add_1/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
№
/training/SGD/gradients/add_1/add_grad/Reshape_1Reshape+training/SGD/gradients/add_1/add_grad/Sum_1-training/SGD/gradients/add_1/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add_1/add*/
_output_shapes
:         xx0
╪
2training/SGD/gradients/conv2d_2/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add_1/add_grad/Reshapeconv2d_2/Relu*
T0* 
_class
loc:@conv2d_2/Relu*/
_output_shapes
:         xx0
┌
2training/SGD/gradients/conv2d_4/Relu_grad/ReluGradReluGrad/training/SGD/gradients/add_1/add_grad/Reshape_1conv2d_4/Relu*
T0* 
_class
loc:@conv2d_4/Relu*/
_output_shapes
:         xx0
▄
8training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_2/BiasAdd*
data_formatNHWC*
_output_shapes
:0
▄
8training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_4/BiasAdd*
data_formatNHWC*
_output_shapes
:0
█
2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_2/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_2/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         xx*
	dilations

Ь
@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_2/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_2/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_2/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
╙
2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNShapeNconv2d_3/Reluconv2d_4/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_4/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:         xx0*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ф
@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_3/Relu4training/SGD/gradients/conv2d_4/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_4/Relu_grad/ReluGrad*
	dilations
*
T0*"
_class
loc:@conv2d_4/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:00
ъ
2training/SGD/gradients/conv2d_3/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputconv2d_3/Relu*/
_output_shapes
:         xx0*
T0* 
_class
loc:@conv2d_3/Relu
▄
8training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_3/BiasAdd*
data_formatNHWC*
_output_shapes
:0
█
2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_3/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_3/Conv2D*
N* 
_output_shapes
::
к
?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*/
_output_shapes
:         xx*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ь
@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool4training/SGD/gradients/conv2d_3/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_3/Relu_grad/ReluGrad*&
_output_shapes
:0*
	dilations
*
T0*"
_class
loc:@conv2d_3/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
О
training/SGD/gradients/AddN_7AddN?training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput?training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*
N*/
_output_shapes
:         xx*
T0*"
_class
loc:@conv2d_2/Conv2D
├
=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradadd/addmax_pooling2d/MaxPooltraining/SGD/gradients/AddN_7*
ksize
*
paddingSAME*1
_output_shapes
:         ЁЁ*
T0*(
_class
loc:@max_pooling2d/MaxPool*
strides
*
data_formatNHWC
К
training/SGD/gradients/AddN_8AddN6training/SGD/gradients/concatenate_3/concat_grad/Slice=training/SGD/gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad*
T0*'
_class
loc:@concatenate_3/concat*
N*1
_output_shapes
:         ЁЁ
М
)training/SGD/gradients/add/add_grad/ShapeShapeinput_2*
_output_shapes
:*
T0*
out_type0*
_class
loc:@add/add
Ф
+training/SGD/gradients/add/add_grad/Shape_1Shapeconv2d_1/Relu*
T0*
out_type0*
_class
loc:@add/add*
_output_shapes
:
Г
9training/SGD/gradients/add/add_grad/BroadcastGradientArgsBroadcastGradientArgs)training/SGD/gradients/add/add_grad/Shape+training/SGD/gradients/add/add_grad/Shape_1*
T0*
_class
loc:@add/add*2
_output_shapes 
:         :         
ф
'training/SGD/gradients/add/add_grad/SumSumtraining/SGD/gradients/AddN_89training/SGD/gradients/add/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*
_class
loc:@add/add
Ё
+training/SGD/gradients/add/add_grad/ReshapeReshape'training/SGD/gradients/add/add_grad/Sum)training/SGD/gradients/add/add_grad/Shape*
T0*
Tshape0*
_class
loc:@add/add*1
_output_shapes
:         ЁЁ
ш
)training/SGD/gradients/add/add_grad/Sum_1Sumtraining/SGD/gradients/AddN_8;training/SGD/gradients/add/add_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@add/add*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
-training/SGD/gradients/add/add_grad/Reshape_1Reshape)training/SGD/gradients/add/add_grad/Sum_1+training/SGD/gradients/add/add_grad/Shape_1*
T0*
Tshape0*
_class
loc:@add/add*1
_output_shapes
:         ЁЁ
┌
2training/SGD/gradients/conv2d_1/Relu_grad/ReluGradReluGrad-training/SGD/gradients/add/add_grad/Reshape_1conv2d_1/Relu*
T0* 
_class
loc:@conv2d_1/Relu*1
_output_shapes
:         ЁЁ
▄
8training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
╤
2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d/Reluconv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*"
_class
loc:@conv2d_1/Conv2D*
N* 
_output_shapes
::
м
?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput2training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp2training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*1
_output_shapes
:         ЁЁ*
	dilations
*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Т
@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu4training/SGD/gradients/conv2d_1/Conv2D_grad/ShapeN:12training/SGD/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@conv2d_1/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

ц
0training/SGD/gradients/conv2d/Relu_grad/ReluGradReluGrad?training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputconv2d/Relu*
T0*
_class
loc:@conv2d/Relu*1
_output_shapes
:         ЁЁ
╓
6training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*!
_class
loc:@conv2d/BiasAdd
╠
0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNShapeNsubtract/subconv2d/Conv2D/ReadVariableOp*
T0*
out_type0* 
_class
loc:@conv2d/Conv2D*
N* 
_output_shapes
::
в
=training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0training/SGD/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp0training/SGD/gradients/conv2d/Relu_grad/ReluGrad*1
_output_shapes
:         ЁЁ*
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
Л
>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltersubtract/sub2training/SGD/gradients/conv2d/Conv2D_grad/ShapeN:10training/SGD/gradients/conv2d/Relu_grad/ReluGrad*&
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
use_cudnn_on_gpu(*
paddingSAME
T
training/SGD/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
h
 training/SGD/AssignAddVariableOpAssignAddVariableOpSGD/iterationstraining/SGD/Const*
dtype0	
Е
training/SGD/ReadVariableOpReadVariableOpSGD/iterations!^training/SGD/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
w
training/SGD/zerosConst*%
valueB*    *
dtype0*&
_output_shapes
:
╔
training/SGD/VariableVarHandleOp*&
shared_nametraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
	container *
shape:*
dtype0*
_output_shapes
: 
{
6training/SGD/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
Т
training/SGD/Variable/AssignAssignVariableOptraining/SGD/Variabletraining/SGD/zeros*
dtype0*(
_class
loc:@training/SGD/Variable
▒
)training/SGD/Variable/Read/ReadVariableOpReadVariableOptraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*&
_output_shapes
:
a
training/SGD/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
├
training/SGD/Variable_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
	container 

8training/SGD/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
Ъ
training/SGD/Variable_1/AssignAssignVariableOptraining/SGD/Variable_1training/SGD/zeros_1*
dtype0**
_class 
loc:@training/SGD/Variable_1
л
+training/SGD/Variable_1/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"            
_
training/SGD/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
б
training/SGD/zeros_2Fill$training/SGD/zeros_2/shape_as_tensortraining/SGD/zeros_2/Const*
T0*

index_type0*&
_output_shapes
:
╧
training/SGD/Variable_2VarHandleOp*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
	container *
shape:

8training/SGD/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
Ъ
training/SGD/Variable_2/AssignAssignVariableOptraining/SGD/Variable_2training/SGD/zeros_2**
_class 
loc:@training/SGD/Variable_2*
dtype0
╖
+training/SGD/Variable_2/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
dtype0*&
_output_shapes
:
a
training/SGD/zeros_3Const*
dtype0*
_output_shapes
:*
valueB*    
├
training/SGD/Variable_3VarHandleOp*(
shared_nametraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
	container *
shape:*
dtype0*
_output_shapes
: 

8training/SGD/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
Ъ
training/SGD/Variable_3/AssignAssignVariableOptraining/SGD/Variable_3training/SGD/zeros_3**
_class 
loc:@training/SGD/Variable_3*
dtype0
л
+training/SGD/Variable_3/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
dtype0*
_output_shapes
:
}
$training/SGD/zeros_4/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
б
training/SGD/zeros_4Fill$training/SGD/zeros_4/shape_as_tensortraining/SGD/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:0
╧
training/SGD/Variable_4VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4

8training/SGD/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
Ъ
training/SGD/Variable_4/AssignAssignVariableOptraining/SGD/Variable_4training/SGD/zeros_4**
_class 
loc:@training/SGD/Variable_4*
dtype0
╖
+training/SGD/Variable_4/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
dtype0*&
_output_shapes
:0
a
training/SGD/zeros_5Const*
valueB0*    *
dtype0*
_output_shapes
:0
├
training/SGD/Variable_5VarHandleOp*
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
	container 

8training/SGD/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
Ъ
training/SGD/Variable_5/AssignAssignVariableOptraining/SGD/Variable_5training/SGD/zeros_5**
_class 
loc:@training/SGD/Variable_5*
dtype0
л
+training/SGD/Variable_5/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_5*
dtype0*
_output_shapes
:0**
_class 
loc:@training/SGD/Variable_5
}
$training/SGD/zeros_6/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_6/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
б
training/SGD/zeros_6Fill$training/SGD/zeros_6/shape_as_tensortraining/SGD/zeros_6/Const*
T0*

index_type0*&
_output_shapes
:0
╧
training/SGD/Variable_6VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6

8training/SGD/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
Ъ
training/SGD/Variable_6/AssignAssignVariableOptraining/SGD/Variable_6training/SGD/zeros_6**
_class 
loc:@training/SGD/Variable_6*
dtype0
╖
+training/SGD/Variable_6/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*&
_output_shapes
:0
a
training/SGD/zeros_7Const*
valueB0*    *
dtype0*
_output_shapes
:0
├
training/SGD/Variable_7VarHandleOp**
_class 
loc:@training/SGD/Variable_7*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_7

8training/SGD/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
Ъ
training/SGD/Variable_7/AssignAssignVariableOptraining/SGD/Variable_7training/SGD/zeros_7**
_class 
loc:@training/SGD/Variable_7*
dtype0
л
+training/SGD/Variable_7/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
:0
}
$training/SGD/zeros_8/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   0   
_
training/SGD/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
б
training/SGD/zeros_8Fill$training/SGD/zeros_8/shape_as_tensortraining/SGD/zeros_8/Const*
T0*

index_type0*&
_output_shapes
:00
╧
training/SGD/Variable_8VarHandleOp**
_class 
loc:@training/SGD/Variable_8*
	container *
shape:00*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_8

8training/SGD/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
Ъ
training/SGD/Variable_8/AssignAssignVariableOptraining/SGD/Variable_8training/SGD/zeros_8**
_class 
loc:@training/SGD/Variable_8*
dtype0
╖
+training/SGD/Variable_8/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
dtype0*&
_output_shapes
:00
a
training/SGD/zeros_9Const*
valueB0*    *
dtype0*
_output_shapes
:0
├
training/SGD/Variable_9VarHandleOp**
_class 
loc:@training/SGD/Variable_9*
	container *
shape:0*
dtype0*
_output_shapes
: *(
shared_nametraining/SGD/Variable_9

8training/SGD/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
Ъ
training/SGD/Variable_9/AssignAssignVariableOptraining/SGD/Variable_9training/SGD/zeros_9**
_class 
loc:@training/SGD/Variable_9*
dtype0
л
+training/SGD/Variable_9/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_9*
dtype0*
_output_shapes
:0**
_class 
loc:@training/SGD/Variable_9
~
%training/SGD/zeros_10/shape_as_tensorConst*%
valueB"      0   `   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
д
training/SGD/zeros_10Fill%training/SGD/zeros_10/shape_as_tensortraining/SGD/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:0`
╥
training/SGD/Variable_10VarHandleOp*)
shared_nametraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
	container *
shape:0`*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
Ю
training/SGD/Variable_10/AssignAssignVariableOptraining/SGD/Variable_10training/SGD/zeros_10*
dtype0*+
_class!
loc:@training/SGD/Variable_10
║
,training/SGD/Variable_10/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*&
_output_shapes
:0`
b
training/SGD/zeros_11Const*
dtype0*
_output_shapes
:`*
valueB`*    
╞
training/SGD/Variable_11VarHandleOp*
	container *
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11
Б
9training/SGD/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
Ю
training/SGD/Variable_11/AssignAssignVariableOptraining/SGD/Variable_11training/SGD/zeros_11*
dtype0*+
_class!
loc:@training/SGD/Variable_11
о
,training/SGD/Variable_11/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_12/shape_as_tensorConst*%
valueB"      0   `   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_12/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
д
training/SGD/zeros_12Fill%training/SGD/zeros_12/shape_as_tensortraining/SGD/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:0`
╥
training/SGD/Variable_12VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
	container *
shape:0`
Б
9training/SGD/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
Ю
training/SGD/Variable_12/AssignAssignVariableOptraining/SGD/Variable_12training/SGD/zeros_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0
║
,training/SGD/Variable_12/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_12*
dtype0*&
_output_shapes
:0`*+
_class!
loc:@training/SGD/Variable_12
b
training/SGD/zeros_13Const*
dtype0*
_output_shapes
:`*
valueB`*    
╞
training/SGD/Variable_13VarHandleOp*
	container *
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13
Б
9training/SGD/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
Ю
training/SGD/Variable_13/AssignAssignVariableOptraining/SGD/Variable_13training/SGD/zeros_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0
о
,training/SGD/Variable_13/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_14/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_14Fill%training/SGD/zeros_14/shape_as_tensortraining/SGD/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:``
╥
training/SGD/Variable_14VarHandleOp*
shape:``*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
	container 
Б
9training/SGD/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
Ю
training/SGD/Variable_14/AssignAssignVariableOptraining/SGD/Variable_14training/SGD/zeros_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0
║
,training/SGD/Variable_14/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0*&
_output_shapes
:``
b
training/SGD/zeros_15Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_15VarHandleOp*
	container *
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15
Б
9training/SGD/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
Ю
training/SGD/Variable_15/AssignAssignVariableOptraining/SGD/Variable_15training/SGD/zeros_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0
о
,training/SGD/Variable_15/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_16/shape_as_tensorConst*%
valueB"      `   └   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
е
training/SGD/zeros_16Fill%training/SGD/zeros_16/shape_as_tensortraining/SGD/zeros_16/Const*
T0*

index_type0*'
_output_shapes
:`└
╙
training/SGD/Variable_16VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
	container *
shape:`└
Б
9training/SGD/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
Ю
training/SGD/Variable_16/AssignAssignVariableOptraining/SGD/Variable_16training/SGD/zeros_16*+
_class!
loc:@training/SGD/Variable_16*
dtype0
╗
,training/SGD/Variable_16/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
dtype0*'
_output_shapes
:`└
d
training/SGD/zeros_17Const*
valueB└*    *
dtype0*
_output_shapes	
:└
╟
training/SGD/Variable_17VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
	container *
shape:└
Б
9training/SGD/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
Ю
training/SGD/Variable_17/AssignAssignVariableOptraining/SGD/Variable_17training/SGD/zeros_17*+
_class!
loc:@training/SGD/Variable_17*
dtype0
п
,training/SGD/Variable_17/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_17*
dtype0*
_output_shapes	
:└*+
_class!
loc:@training/SGD/Variable_17
~
%training/SGD/zeros_18/shape_as_tensorConst*%
valueB"      `   └   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_18/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
training/SGD/zeros_18Fill%training/SGD/zeros_18/shape_as_tensortraining/SGD/zeros_18/Const*'
_output_shapes
:`└*
T0*

index_type0
╙
training/SGD/Variable_18VarHandleOp*
shape:`└*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_18*+
_class!
loc:@training/SGD/Variable_18*
	container 
Б
9training/SGD/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_18*
_output_shapes
: 
Ю
training/SGD/Variable_18/AssignAssignVariableOptraining/SGD/Variable_18training/SGD/zeros_18*+
_class!
loc:@training/SGD/Variable_18*
dtype0
╗
,training/SGD/Variable_18/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_18*+
_class!
loc:@training/SGD/Variable_18*
dtype0*'
_output_shapes
:`└
d
training/SGD/zeros_19Const*
valueB└*    *
dtype0*
_output_shapes	
:└
╟
training/SGD/Variable_19VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_19*+
_class!
loc:@training/SGD/Variable_19*
	container *
shape:└
Б
9training/SGD/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_19*
_output_shapes
: 
Ю
training/SGD/Variable_19/AssignAssignVariableOptraining/SGD/Variable_19training/SGD/zeros_19*+
_class!
loc:@training/SGD/Variable_19*
dtype0
п
,training/SGD/Variable_19/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_19*+
_class!
loc:@training/SGD/Variable_19*
dtype0*
_output_shapes	
:└
~
%training/SGD/zeros_20/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      └   └   
`
training/SGD/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
training/SGD/zeros_20Fill%training/SGD/zeros_20/shape_as_tensortraining/SGD/zeros_20/Const*
T0*

index_type0*(
_output_shapes
:└└
╘
training/SGD/Variable_20VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_20*+
_class!
loc:@training/SGD/Variable_20*
	container *
shape:└└
Б
9training/SGD/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_20*
_output_shapes
: 
Ю
training/SGD/Variable_20/AssignAssignVariableOptraining/SGD/Variable_20training/SGD/zeros_20*+
_class!
loc:@training/SGD/Variable_20*
dtype0
╝
,training/SGD/Variable_20/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_20*+
_class!
loc:@training/SGD/Variable_20*
dtype0*(
_output_shapes
:└└
d
training/SGD/zeros_21Const*
valueB└*    *
dtype0*
_output_shapes	
:└
╟
training/SGD/Variable_21VarHandleOp*)
shared_nametraining/SGD/Variable_21*+
_class!
loc:@training/SGD/Variable_21*
	container *
shape:└*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_21*
_output_shapes
: 
Ю
training/SGD/Variable_21/AssignAssignVariableOptraining/SGD/Variable_21training/SGD/zeros_21*+
_class!
loc:@training/SGD/Variable_21*
dtype0
п
,training/SGD/Variable_21/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_21*+
_class!
loc:@training/SGD/Variable_21*
dtype0*
_output_shapes	
:└
~
%training/SGD/zeros_22/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_22/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
training/SGD/zeros_22Fill%training/SGD/zeros_22/shape_as_tensortraining/SGD/zeros_22/Const*
T0*

index_type0*'
_output_shapes
:а`
╙
training/SGD/Variable_22VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_22*+
_class!
loc:@training/SGD/Variable_22*
	container *
shape:а`
Б
9training/SGD/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_22*
_output_shapes
: 
Ю
training/SGD/Variable_22/AssignAssignVariableOptraining/SGD/Variable_22training/SGD/zeros_22*+
_class!
loc:@training/SGD/Variable_22*
dtype0
╗
,training/SGD/Variable_22/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_22*+
_class!
loc:@training/SGD/Variable_22*
dtype0*'
_output_shapes
:а`
b
training/SGD/zeros_23Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_23VarHandleOp*
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_23*+
_class!
loc:@training/SGD/Variable_23*
	container 
Б
9training/SGD/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_23*
_output_shapes
: 
Ю
training/SGD/Variable_23/AssignAssignVariableOptraining/SGD/Variable_23training/SGD/zeros_23*+
_class!
loc:@training/SGD/Variable_23*
dtype0
о
,training/SGD/Variable_23/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_23*
dtype0*
_output_shapes
:`*+
_class!
loc:@training/SGD/Variable_23
~
%training/SGD/zeros_24/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_24/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
training/SGD/zeros_24Fill%training/SGD/zeros_24/shape_as_tensortraining/SGD/zeros_24/Const*'
_output_shapes
:а`*
T0*

index_type0
╙
training/SGD/Variable_24VarHandleOp*)
shared_nametraining/SGD/Variable_24*+
_class!
loc:@training/SGD/Variable_24*
	container *
shape:а`*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_24*
_output_shapes
: 
Ю
training/SGD/Variable_24/AssignAssignVariableOptraining/SGD/Variable_24training/SGD/zeros_24*+
_class!
loc:@training/SGD/Variable_24*
dtype0
╗
,training/SGD/Variable_24/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_24*+
_class!
loc:@training/SGD/Variable_24*
dtype0*'
_output_shapes
:а`
b
training/SGD/zeros_25Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_25VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_25*+
_class!
loc:@training/SGD/Variable_25*
	container *
shape:`
Б
9training/SGD/Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_25*
_output_shapes
: 
Ю
training/SGD/Variable_25/AssignAssignVariableOptraining/SGD/Variable_25training/SGD/zeros_25*+
_class!
loc:@training/SGD/Variable_25*
dtype0
о
,training/SGD/Variable_25/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_25*+
_class!
loc:@training/SGD/Variable_25*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_26/shape_as_tensorConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_26Fill%training/SGD/zeros_26/shape_as_tensortraining/SGD/zeros_26/Const*
T0*

index_type0*&
_output_shapes
:``
╥
training/SGD/Variable_26VarHandleOp*)
shared_nametraining/SGD/Variable_26*+
_class!
loc:@training/SGD/Variable_26*
	container *
shape:``*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_26*
_output_shapes
: 
Ю
training/SGD/Variable_26/AssignAssignVariableOptraining/SGD/Variable_26training/SGD/zeros_26*+
_class!
loc:@training/SGD/Variable_26*
dtype0
║
,training/SGD/Variable_26/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_26*+
_class!
loc:@training/SGD/Variable_26*
dtype0*&
_output_shapes
:``
b
training/SGD/zeros_27Const*
valueB`*    *
dtype0*
_output_shapes
:`
╞
training/SGD/Variable_27VarHandleOp*
	container *
shape:`*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_27*+
_class!
loc:@training/SGD/Variable_27
Б
9training/SGD/Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_27*
_output_shapes
: 
Ю
training/SGD/Variable_27/AssignAssignVariableOptraining/SGD/Variable_27training/SGD/zeros_27*
dtype0*+
_class!
loc:@training/SGD/Variable_27
о
,training/SGD/Variable_27/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_27*+
_class!
loc:@training/SGD/Variable_27*
dtype0*
_output_shapes
:`
~
%training/SGD/zeros_28/shape_as_tensorConst*%
valueB"      Р   0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
training/SGD/zeros_28Fill%training/SGD/zeros_28/shape_as_tensortraining/SGD/zeros_28/Const*
T0*

index_type0*'
_output_shapes
:Р0
╙
training/SGD/Variable_28VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_28*+
_class!
loc:@training/SGD/Variable_28*
	container *
shape:Р0
Б
9training/SGD/Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_28*
_output_shapes
: 
Ю
training/SGD/Variable_28/AssignAssignVariableOptraining/SGD/Variable_28training/SGD/zeros_28*+
_class!
loc:@training/SGD/Variable_28*
dtype0
╗
,training/SGD/Variable_28/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_28*+
_class!
loc:@training/SGD/Variable_28*
dtype0*'
_output_shapes
:Р0
b
training/SGD/zeros_29Const*
valueB0*    *
dtype0*
_output_shapes
:0
╞
training/SGD/Variable_29VarHandleOp*
shape:0*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_29*+
_class!
loc:@training/SGD/Variable_29*
	container 
Б
9training/SGD/Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_29*
_output_shapes
: 
Ю
training/SGD/Variable_29/AssignAssignVariableOptraining/SGD/Variable_29training/SGD/zeros_29*+
_class!
loc:@training/SGD/Variable_29*
dtype0
о
,training/SGD/Variable_29/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_29*+
_class!
loc:@training/SGD/Variable_29*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_30/shape_as_tensorConst*%
valueB"      Р   0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_30/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
е
training/SGD/zeros_30Fill%training/SGD/zeros_30/shape_as_tensortraining/SGD/zeros_30/Const*
T0*

index_type0*'
_output_shapes
:Р0
╙
training/SGD/Variable_30VarHandleOp*
shape:Р0*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_30*+
_class!
loc:@training/SGD/Variable_30*
	container 
Б
9training/SGD/Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_30*
_output_shapes
: 
Ю
training/SGD/Variable_30/AssignAssignVariableOptraining/SGD/Variable_30training/SGD/zeros_30*+
_class!
loc:@training/SGD/Variable_30*
dtype0
╗
,training/SGD/Variable_30/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_30*+
_class!
loc:@training/SGD/Variable_30*
dtype0*'
_output_shapes
:Р0
b
training/SGD/zeros_31Const*
valueB0*    *
dtype0*
_output_shapes
:0
╞
training/SGD/Variable_31VarHandleOp*
	container *
shape:0*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_31*+
_class!
loc:@training/SGD/Variable_31
Б
9training/SGD/Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_31*
_output_shapes
: 
Ю
training/SGD/Variable_31/AssignAssignVariableOptraining/SGD/Variable_31training/SGD/zeros_31*+
_class!
loc:@training/SGD/Variable_31*
dtype0
о
,training/SGD/Variable_31/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_31*+
_class!
loc:@training/SGD/Variable_31*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_32/shape_as_tensorConst*%
valueB"      0   0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_32Fill%training/SGD/zeros_32/shape_as_tensortraining/SGD/zeros_32/Const*
T0*

index_type0*&
_output_shapes
:00
╥
training/SGD/Variable_32VarHandleOp*
	container *
shape:00*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_32*+
_class!
loc:@training/SGD/Variable_32
Б
9training/SGD/Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_32*
_output_shapes
: 
Ю
training/SGD/Variable_32/AssignAssignVariableOptraining/SGD/Variable_32training/SGD/zeros_32*+
_class!
loc:@training/SGD/Variable_32*
dtype0
║
,training/SGD/Variable_32/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_32*+
_class!
loc:@training/SGD/Variable_32*
dtype0*&
_output_shapes
:00
b
training/SGD/zeros_33Const*
valueB0*    *
dtype0*
_output_shapes
:0
╞
training/SGD/Variable_33VarHandleOp*)
shared_nametraining/SGD/Variable_33*+
_class!
loc:@training/SGD/Variable_33*
	container *
shape:0*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_33*
_output_shapes
: 
Ю
training/SGD/Variable_33/AssignAssignVariableOptraining/SGD/Variable_33training/SGD/zeros_33*+
_class!
loc:@training/SGD/Variable_33*
dtype0
о
,training/SGD/Variable_33/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_33*+
_class!
loc:@training/SGD/Variable_33*
dtype0*
_output_shapes
:0
~
%training/SGD/zeros_34/shape_as_tensorConst*%
valueB"      H      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_34Fill%training/SGD/zeros_34/shape_as_tensortraining/SGD/zeros_34/Const*
T0*

index_type0*&
_output_shapes
:H
╥
training/SGD/Variable_34VarHandleOp*
shape:H*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_34*+
_class!
loc:@training/SGD/Variable_34*
	container 
Б
9training/SGD/Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_34*
_output_shapes
: 
Ю
training/SGD/Variable_34/AssignAssignVariableOptraining/SGD/Variable_34training/SGD/zeros_34*
dtype0*+
_class!
loc:@training/SGD/Variable_34
║
,training/SGD/Variable_34/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_34*+
_class!
loc:@training/SGD/Variable_34*
dtype0*&
_output_shapes
:H
b
training/SGD/zeros_35Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_35VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_35*+
_class!
loc:@training/SGD/Variable_35*
	container *
shape:
Б
9training/SGD/Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_35*
_output_shapes
: 
Ю
training/SGD/Variable_35/AssignAssignVariableOptraining/SGD/Variable_35training/SGD/zeros_35*+
_class!
loc:@training/SGD/Variable_35*
dtype0
о
,training/SGD/Variable_35/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_35*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_35
~
%training/SGD/zeros_36/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      H      
`
training/SGD/zeros_36/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
д
training/SGD/zeros_36Fill%training/SGD/zeros_36/shape_as_tensortraining/SGD/zeros_36/Const*
T0*

index_type0*&
_output_shapes
:H
╥
training/SGD/Variable_36VarHandleOp*
shape:H*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_36*+
_class!
loc:@training/SGD/Variable_36*
	container 
Б
9training/SGD/Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_36*
_output_shapes
: 
Ю
training/SGD/Variable_36/AssignAssignVariableOptraining/SGD/Variable_36training/SGD/zeros_36*+
_class!
loc:@training/SGD/Variable_36*
dtype0
║
,training/SGD/Variable_36/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_36*+
_class!
loc:@training/SGD/Variable_36*
dtype0*&
_output_shapes
:H
b
training/SGD/zeros_37Const*
dtype0*
_output_shapes
:*
valueB*    
╞
training/SGD/Variable_37VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_37*+
_class!
loc:@training/SGD/Variable_37*
	container *
shape:
Б
9training/SGD/Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_37*
_output_shapes
: 
Ю
training/SGD/Variable_37/AssignAssignVariableOptraining/SGD/Variable_37training/SGD/zeros_37*+
_class!
loc:@training/SGD/Variable_37*
dtype0
о
,training/SGD/Variable_37/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_37*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_37
~
%training/SGD/zeros_38/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"            
`
training/SGD/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/SGD/zeros_38Fill%training/SGD/zeros_38/shape_as_tensortraining/SGD/zeros_38/Const*
T0*

index_type0*&
_output_shapes
:
╥
training/SGD/Variable_38VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_38*+
_class!
loc:@training/SGD/Variable_38*
	container *
shape:
Б
9training/SGD/Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_38*
_output_shapes
: 
Ю
training/SGD/Variable_38/AssignAssignVariableOptraining/SGD/Variable_38training/SGD/zeros_38*+
_class!
loc:@training/SGD/Variable_38*
dtype0
║
,training/SGD/Variable_38/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_38*
dtype0*&
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_38
b
training/SGD/zeros_39Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_39VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_39*+
_class!
loc:@training/SGD/Variable_39*
	container 
Б
9training/SGD/Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_39*
_output_shapes
: 
Ю
training/SGD/Variable_39/AssignAssignVariableOptraining/SGD/Variable_39training/SGD/zeros_39*+
_class!
loc:@training/SGD/Variable_39*
dtype0
о
,training/SGD/Variable_39/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_39*+
_class!
loc:@training/SGD/Variable_39*
dtype0*
_output_shapes
:
z
training/SGD/zeros_40Const*%
valueB*    *
dtype0*&
_output_shapes
:
╥
training/SGD/Variable_40VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_40*+
_class!
loc:@training/SGD/Variable_40*
	container *
shape:
Б
9training/SGD/Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_40*
_output_shapes
: 
Ю
training/SGD/Variable_40/AssignAssignVariableOptraining/SGD/Variable_40training/SGD/zeros_40*+
_class!
loc:@training/SGD/Variable_40*
dtype0
║
,training/SGD/Variable_40/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_40*+
_class!
loc:@training/SGD/Variable_40*
dtype0*&
_output_shapes
:
b
training/SGD/zeros_41Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_41VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_41*+
_class!
loc:@training/SGD/Variable_41*
	container *
shape:
Б
9training/SGD/Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_41*
_output_shapes
: 
Ю
training/SGD/Variable_41/AssignAssignVariableOptraining/SGD/Variable_41training/SGD/zeros_41*+
_class!
loc:@training/SGD/Variable_41*
dtype0
о
,training/SGD/Variable_41/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_41*+
_class!
loc:@training/SGD/Variable_41*
dtype0*
_output_shapes
:
z
training/SGD/zeros_42Const*
dtype0*&
_output_shapes
:*%
valueB*    
╥
training/SGD/Variable_42VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/SGD/Variable_42*+
_class!
loc:@training/SGD/Variable_42
Б
9training/SGD/Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_42*
_output_shapes
: 
Ю
training/SGD/Variable_42/AssignAssignVariableOptraining/SGD/Variable_42training/SGD/zeros_42*+
_class!
loc:@training/SGD/Variable_42*
dtype0
║
,training/SGD/Variable_42/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_42*
dtype0*&
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_42
b
training/SGD/zeros_43Const*
valueB*    *
dtype0*
_output_shapes
:
╞
training/SGD/Variable_43VarHandleOp*)
shared_nametraining/SGD/Variable_43*+
_class!
loc:@training/SGD/Variable_43*
	container *
shape:*
dtype0*
_output_shapes
: 
Б
9training/SGD/Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/Variable_43*
_output_shapes
: 
Ю
training/SGD/Variable_43/AssignAssignVariableOptraining/SGD/Variable_43training/SGD/zeros_43*+
_class!
loc:@training/SGD/Variable_43*
dtype0
о
,training/SGD/Variable_43/Read/ReadVariableOpReadVariableOptraining/SGD/Variable_43*
dtype0*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_43
b
training/SGD/ReadVariableOp_1ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
}
training/SGD/mul/ReadVariableOpReadVariableOptraining/SGD/Variable*
dtype0*&
_output_shapes
:
И
training/SGD/mulMultraining/SGD/ReadVariableOp_1training/SGD/mul/ReadVariableOp*&
_output_shapes
:*
T0
\
training/SGD/ReadVariableOp_2ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
й
training/SGD/mul_1Multraining/SGD/ReadVariableOp_2>training/SGD/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
n
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*
T0*&
_output_shapes
:
g
training/SGD/AssignVariableOpAssignVariableOptraining/SGD/Variabletraining/SGD/sub*
dtype0
Ы
training/SGD/ReadVariableOp_3ReadVariableOptraining/SGD/Variable^training/SGD/AssignVariableOp*
dtype0*&
_output_shapes
:
s
training/SGD/ReadVariableOp_4ReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
:
y
training/SGD/addAddtraining/SGD/ReadVariableOp_4training/SGD/sub*
T0*&
_output_shapes
:
a
training/SGD/AssignVariableOp_1AssignVariableOpconv2d/kerneltraining/SGD/add*
dtype0
Х
training/SGD/ReadVariableOp_5ReadVariableOpconv2d/kernel ^training/SGD/AssignVariableOp_1*
dtype0*&
_output_shapes
:
b
training/SGD/ReadVariableOp_6ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
u
!training/SGD/mul_2/ReadVariableOpReadVariableOptraining/SGD/Variable_1*
dtype0*
_output_shapes
:
А
training/SGD/mul_2Multraining/SGD/ReadVariableOp_6!training/SGD/mul_2/ReadVariableOp*
T0*
_output_shapes
:
\
training/SGD/ReadVariableOp_7ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Х
training/SGD/mul_3Multraining/SGD/ReadVariableOp_76training/SGD/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
f
training/SGD/sub_1Subtraining/SGD/mul_2training/SGD/mul_3*
T0*
_output_shapes
:
m
training/SGD/AssignVariableOp_2AssignVariableOptraining/SGD/Variable_1training/SGD/sub_1*
dtype0
У
training/SGD/ReadVariableOp_8ReadVariableOptraining/SGD/Variable_1 ^training/SGD/AssignVariableOp_2*
dtype0*
_output_shapes
:
e
training/SGD/ReadVariableOp_9ReadVariableOpconv2d/bias*
dtype0*
_output_shapes
:
q
training/SGD/add_1Addtraining/SGD/ReadVariableOp_9training/SGD/sub_1*
T0*
_output_shapes
:
a
training/SGD/AssignVariableOp_3AssignVariableOpconv2d/biastraining/SGD/add_1*
dtype0
И
training/SGD/ReadVariableOp_10ReadVariableOpconv2d/bias ^training/SGD/AssignVariableOp_3*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_11ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Б
!training/SGD/mul_4/ReadVariableOpReadVariableOptraining/SGD/Variable_2*
dtype0*&
_output_shapes
:
Н
training/SGD/mul_4Multraining/SGD/ReadVariableOp_11!training/SGD/mul_4/ReadVariableOp*&
_output_shapes
:*
T0
]
training/SGD/ReadVariableOp_12ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
м
training/SGD/mul_5Multraining/SGD/ReadVariableOp_12@training/SGD/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
r
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*
T0*&
_output_shapes
:
m
training/SGD/AssignVariableOp_4AssignVariableOptraining/SGD/Variable_2training/SGD/sub_2*
dtype0
а
training/SGD/ReadVariableOp_13ReadVariableOptraining/SGD/Variable_2 ^training/SGD/AssignVariableOp_4*
dtype0*&
_output_shapes
:
v
training/SGD/ReadVariableOp_14ReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
:
~
training/SGD/add_2Addtraining/SGD/ReadVariableOp_14training/SGD/sub_2*
T0*&
_output_shapes
:
e
training/SGD/AssignVariableOp_5AssignVariableOpconv2d_1/kerneltraining/SGD/add_2*
dtype0
Ш
training/SGD/ReadVariableOp_15ReadVariableOpconv2d_1/kernel ^training/SGD/AssignVariableOp_5*
dtype0*&
_output_shapes
:
c
training/SGD/ReadVariableOp_16ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
u
!training/SGD/mul_6/ReadVariableOpReadVariableOptraining/SGD/Variable_3*
dtype0*
_output_shapes
:
Б
training/SGD/mul_6Multraining/SGD/ReadVariableOp_16!training/SGD/mul_6/ReadVariableOp*
T0*
_output_shapes
:
]
training/SGD/ReadVariableOp_17ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ш
training/SGD/mul_7Multraining/SGD/ReadVariableOp_178training/SGD/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
f
training/SGD/sub_3Subtraining/SGD/mul_6training/SGD/mul_7*
T0*
_output_shapes
:
m
training/SGD/AssignVariableOp_6AssignVariableOptraining/SGD/Variable_3training/SGD/sub_3*
dtype0
Ф
training/SGD/ReadVariableOp_18ReadVariableOptraining/SGD/Variable_3 ^training/SGD/AssignVariableOp_6*
dtype0*
_output_shapes
:
h
training/SGD/ReadVariableOp_19ReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:
r
training/SGD/add_3Addtraining/SGD/ReadVariableOp_19training/SGD/sub_3*
T0*
_output_shapes
:
c
training/SGD/AssignVariableOp_7AssignVariableOpconv2d_1/biastraining/SGD/add_3*
dtype0
К
training/SGD/ReadVariableOp_20ReadVariableOpconv2d_1/bias ^training/SGD/AssignVariableOp_7*
dtype0*
_output_shapes
:
c
training/SGD/ReadVariableOp_21ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Б
!training/SGD/mul_8/ReadVariableOpReadVariableOptraining/SGD/Variable_4*
dtype0*&
_output_shapes
:0
Н
training/SGD/mul_8Multraining/SGD/ReadVariableOp_21!training/SGD/mul_8/ReadVariableOp*
T0*&
_output_shapes
:0
]
training/SGD/ReadVariableOp_22ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
м
training/SGD/mul_9Multraining/SGD/ReadVariableOp_22@training/SGD/gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
r
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*
T0*&
_output_shapes
:0
m
training/SGD/AssignVariableOp_8AssignVariableOptraining/SGD/Variable_4training/SGD/sub_4*
dtype0
а
training/SGD/ReadVariableOp_23ReadVariableOptraining/SGD/Variable_4 ^training/SGD/AssignVariableOp_8*
dtype0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_24ReadVariableOpconv2d_3/kernel*
dtype0*&
_output_shapes
:0
~
training/SGD/add_4Addtraining/SGD/ReadVariableOp_24training/SGD/sub_4*
T0*&
_output_shapes
:0
e
training/SGD/AssignVariableOp_9AssignVariableOpconv2d_3/kerneltraining/SGD/add_4*
dtype0
Ш
training/SGD/ReadVariableOp_25ReadVariableOpconv2d_3/kernel ^training/SGD/AssignVariableOp_9*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_26ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_10/ReadVariableOpReadVariableOptraining/SGD/Variable_5*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_10Multraining/SGD/ReadVariableOp_26"training/SGD/mul_10/ReadVariableOp*
T0*
_output_shapes
:0
]
training/SGD/ReadVariableOp_27ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_11Multraining/SGD/ReadVariableOp_278training/SGD/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
h
training/SGD/sub_5Subtraining/SGD/mul_10training/SGD/mul_11*
T0*
_output_shapes
:0
n
 training/SGD/AssignVariableOp_10AssignVariableOptraining/SGD/Variable_5training/SGD/sub_5*
dtype0
Х
training/SGD/ReadVariableOp_28ReadVariableOptraining/SGD/Variable_5!^training/SGD/AssignVariableOp_10*
dtype0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_29ReadVariableOpconv2d_3/bias*
dtype0*
_output_shapes
:0
r
training/SGD/add_5Addtraining/SGD/ReadVariableOp_29training/SGD/sub_5*
_output_shapes
:0*
T0
d
 training/SGD/AssignVariableOp_11AssignVariableOpconv2d_3/biastraining/SGD/add_5*
dtype0
Л
training/SGD/ReadVariableOp_30ReadVariableOpconv2d_3/bias!^training/SGD/AssignVariableOp_11*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_31ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_12/ReadVariableOpReadVariableOptraining/SGD/Variable_6*
dtype0*&
_output_shapes
:0
П
training/SGD/mul_12Multraining/SGD/ReadVariableOp_31"training/SGD/mul_12/ReadVariableOp*
T0*&
_output_shapes
:0
]
training/SGD/ReadVariableOp_32ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_13Multraining/SGD/ReadVariableOp_32@training/SGD/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0
t
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*
T0*&
_output_shapes
:0
n
 training/SGD/AssignVariableOp_12AssignVariableOptraining/SGD/Variable_6training/SGD/sub_6*
dtype0
б
training/SGD/ReadVariableOp_33ReadVariableOptraining/SGD/Variable_6!^training/SGD/AssignVariableOp_12*
dtype0*&
_output_shapes
:0
v
training/SGD/ReadVariableOp_34ReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:0
~
training/SGD/add_6Addtraining/SGD/ReadVariableOp_34training/SGD/sub_6*&
_output_shapes
:0*
T0
f
 training/SGD/AssignVariableOp_13AssignVariableOpconv2d_2/kerneltraining/SGD/add_6*
dtype0
Щ
training/SGD/ReadVariableOp_35ReadVariableOpconv2d_2/kernel!^training/SGD/AssignVariableOp_13*
dtype0*&
_output_shapes
:0
c
training/SGD/ReadVariableOp_36ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_14/ReadVariableOpReadVariableOptraining/SGD/Variable_7*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_14Multraining/SGD/ReadVariableOp_36"training/SGD/mul_14/ReadVariableOp*
_output_shapes
:0*
T0
]
training/SGD/ReadVariableOp_37ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_15Multraining/SGD/ReadVariableOp_378training/SGD/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
h
training/SGD/sub_7Subtraining/SGD/mul_14training/SGD/mul_15*
T0*
_output_shapes
:0
n
 training/SGD/AssignVariableOp_14AssignVariableOptraining/SGD/Variable_7training/SGD/sub_7*
dtype0
Х
training/SGD/ReadVariableOp_38ReadVariableOptraining/SGD/Variable_7!^training/SGD/AssignVariableOp_14*
dtype0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_39ReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:0
r
training/SGD/add_7Addtraining/SGD/ReadVariableOp_39training/SGD/sub_7*
_output_shapes
:0*
T0
d
 training/SGD/AssignVariableOp_15AssignVariableOpconv2d_2/biastraining/SGD/add_7*
dtype0
Л
training/SGD/ReadVariableOp_40ReadVariableOpconv2d_2/bias!^training/SGD/AssignVariableOp_15*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_41ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
В
"training/SGD/mul_16/ReadVariableOpReadVariableOptraining/SGD/Variable_8*
dtype0*&
_output_shapes
:00
П
training/SGD/mul_16Multraining/SGD/ReadVariableOp_41"training/SGD/mul_16/ReadVariableOp*
T0*&
_output_shapes
:00
]
training/SGD/ReadVariableOp_42ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_17Multraining/SGD/ReadVariableOp_42@training/SGD/gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
t
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*
T0*&
_output_shapes
:00
n
 training/SGD/AssignVariableOp_16AssignVariableOptraining/SGD/Variable_8training/SGD/sub_8*
dtype0
б
training/SGD/ReadVariableOp_43ReadVariableOptraining/SGD/Variable_8!^training/SGD/AssignVariableOp_16*
dtype0*&
_output_shapes
:00
v
training/SGD/ReadVariableOp_44ReadVariableOpconv2d_4/kernel*
dtype0*&
_output_shapes
:00
~
training/SGD/add_8Addtraining/SGD/ReadVariableOp_44training/SGD/sub_8*
T0*&
_output_shapes
:00
f
 training/SGD/AssignVariableOp_17AssignVariableOpconv2d_4/kerneltraining/SGD/add_8*
dtype0
Щ
training/SGD/ReadVariableOp_45ReadVariableOpconv2d_4/kernel!^training/SGD/AssignVariableOp_17*
dtype0*&
_output_shapes
:00
c
training/SGD/ReadVariableOp_46ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
v
"training/SGD/mul_18/ReadVariableOpReadVariableOptraining/SGD/Variable_9*
dtype0*
_output_shapes
:0
Г
training/SGD/mul_18Multraining/SGD/ReadVariableOp_46"training/SGD/mul_18/ReadVariableOp*
_output_shapes
:0*
T0
]
training/SGD/ReadVariableOp_47ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_19Multraining/SGD/ReadVariableOp_478training/SGD/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
h
training/SGD/sub_9Subtraining/SGD/mul_18training/SGD/mul_19*
T0*
_output_shapes
:0
n
 training/SGD/AssignVariableOp_18AssignVariableOptraining/SGD/Variable_9training/SGD/sub_9*
dtype0
Х
training/SGD/ReadVariableOp_48ReadVariableOptraining/SGD/Variable_9!^training/SGD/AssignVariableOp_18*
dtype0*
_output_shapes
:0
h
training/SGD/ReadVariableOp_49ReadVariableOpconv2d_4/bias*
dtype0*
_output_shapes
:0
r
training/SGD/add_9Addtraining/SGD/ReadVariableOp_49training/SGD/sub_9*
_output_shapes
:0*
T0
d
 training/SGD/AssignVariableOp_19AssignVariableOpconv2d_4/biastraining/SGD/add_9*
dtype0
Л
training/SGD/ReadVariableOp_50ReadVariableOpconv2d_4/bias!^training/SGD/AssignVariableOp_19*
dtype0*
_output_shapes
:0
c
training/SGD/ReadVariableOp_51ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_20/ReadVariableOpReadVariableOptraining/SGD/Variable_10*
dtype0*&
_output_shapes
:0`
П
training/SGD/mul_20Multraining/SGD/ReadVariableOp_51"training/SGD/mul_20/ReadVariableOp*
T0*&
_output_shapes
:0`
]
training/SGD/ReadVariableOp_52ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_21Multraining/SGD/ReadVariableOp_52@training/SGD/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0`
u
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*
T0*&
_output_shapes
:0`
p
 training/SGD/AssignVariableOp_20AssignVariableOptraining/SGD/Variable_10training/SGD/sub_10*
dtype0
в
training/SGD/ReadVariableOp_53ReadVariableOptraining/SGD/Variable_10!^training/SGD/AssignVariableOp_20*
dtype0*&
_output_shapes
:0`
v
training/SGD/ReadVariableOp_54ReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
:0`
А
training/SGD/add_10Addtraining/SGD/ReadVariableOp_54training/SGD/sub_10*
T0*&
_output_shapes
:0`
g
 training/SGD/AssignVariableOp_21AssignVariableOpconv2d_6/kerneltraining/SGD/add_10*
dtype0
Щ
training/SGD/ReadVariableOp_55ReadVariableOpconv2d_6/kernel!^training/SGD/AssignVariableOp_21*
dtype0*&
_output_shapes
:0`
c
training/SGD/ReadVariableOp_56ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_22/ReadVariableOpReadVariableOptraining/SGD/Variable_11*
dtype0*
_output_shapes
:`
Г
training/SGD/mul_22Multraining/SGD/ReadVariableOp_56"training/SGD/mul_22/ReadVariableOp*
_output_shapes
:`*
T0
]
training/SGD/ReadVariableOp_57ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_23Multraining/SGD/ReadVariableOp_578training/SGD/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_11Subtraining/SGD/mul_22training/SGD/mul_23*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_22AssignVariableOptraining/SGD/Variable_11training/SGD/sub_11*
dtype0
Ц
training/SGD/ReadVariableOp_58ReadVariableOptraining/SGD/Variable_11!^training/SGD/AssignVariableOp_22*
dtype0*
_output_shapes
:`
h
training/SGD/ReadVariableOp_59ReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
:`
t
training/SGD/add_11Addtraining/SGD/ReadVariableOp_59training/SGD/sub_11*
_output_shapes
:`*
T0
e
 training/SGD/AssignVariableOp_23AssignVariableOpconv2d_6/biastraining/SGD/add_11*
dtype0
Л
training/SGD/ReadVariableOp_60ReadVariableOpconv2d_6/bias!^training/SGD/AssignVariableOp_23*
dtype0*
_output_shapes
:`
c
training/SGD/ReadVariableOp_61ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_24/ReadVariableOpReadVariableOptraining/SGD/Variable_12*
dtype0*&
_output_shapes
:0`
П
training/SGD/mul_24Multraining/SGD/ReadVariableOp_61"training/SGD/mul_24/ReadVariableOp*
T0*&
_output_shapes
:0`
]
training/SGD/ReadVariableOp_62ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_25Multraining/SGD/ReadVariableOp_62@training/SGD/gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:0`
u
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25*
T0*&
_output_shapes
:0`
p
 training/SGD/AssignVariableOp_24AssignVariableOptraining/SGD/Variable_12training/SGD/sub_12*
dtype0
в
training/SGD/ReadVariableOp_63ReadVariableOptraining/SGD/Variable_12!^training/SGD/AssignVariableOp_24*
dtype0*&
_output_shapes
:0`
v
training/SGD/ReadVariableOp_64ReadVariableOpconv2d_5/kernel*
dtype0*&
_output_shapes
:0`
А
training/SGD/add_12Addtraining/SGD/ReadVariableOp_64training/SGD/sub_12*
T0*&
_output_shapes
:0`
g
 training/SGD/AssignVariableOp_25AssignVariableOpconv2d_5/kerneltraining/SGD/add_12*
dtype0
Щ
training/SGD/ReadVariableOp_65ReadVariableOpconv2d_5/kernel!^training/SGD/AssignVariableOp_25*
dtype0*&
_output_shapes
:0`
c
training/SGD/ReadVariableOp_66ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_26/ReadVariableOpReadVariableOptraining/SGD/Variable_13*
dtype0*
_output_shapes
:`
Г
training/SGD/mul_26Multraining/SGD/ReadVariableOp_66"training/SGD/mul_26/ReadVariableOp*
_output_shapes
:`*
T0
]
training/SGD/ReadVariableOp_67ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_27Multraining/SGD/ReadVariableOp_678training/SGD/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_13Subtraining/SGD/mul_26training/SGD/mul_27*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_26AssignVariableOptraining/SGD/Variable_13training/SGD/sub_13*
dtype0
Ц
training/SGD/ReadVariableOp_68ReadVariableOptraining/SGD/Variable_13!^training/SGD/AssignVariableOp_26*
dtype0*
_output_shapes
:`
h
training/SGD/ReadVariableOp_69ReadVariableOpconv2d_5/bias*
dtype0*
_output_shapes
:`
t
training/SGD/add_13Addtraining/SGD/ReadVariableOp_69training/SGD/sub_13*
T0*
_output_shapes
:`
e
 training/SGD/AssignVariableOp_27AssignVariableOpconv2d_5/biastraining/SGD/add_13*
dtype0
Л
training/SGD/ReadVariableOp_70ReadVariableOpconv2d_5/bias!^training/SGD/AssignVariableOp_27*
dtype0*
_output_shapes
:`
c
training/SGD/ReadVariableOp_71ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_28/ReadVariableOpReadVariableOptraining/SGD/Variable_14*
dtype0*&
_output_shapes
:``
П
training/SGD/mul_28Multraining/SGD/ReadVariableOp_71"training/SGD/mul_28/ReadVariableOp*
T0*&
_output_shapes
:``
]
training/SGD/ReadVariableOp_72ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
н
training/SGD/mul_29Multraining/SGD/ReadVariableOp_72@training/SGD/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:``*
T0
u
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
T0*&
_output_shapes
:``
p
 training/SGD/AssignVariableOp_28AssignVariableOptraining/SGD/Variable_14training/SGD/sub_14*
dtype0
в
training/SGD/ReadVariableOp_73ReadVariableOptraining/SGD/Variable_14!^training/SGD/AssignVariableOp_28*
dtype0*&
_output_shapes
:``
v
training/SGD/ReadVariableOp_74ReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:``
А
training/SGD/add_14Addtraining/SGD/ReadVariableOp_74training/SGD/sub_14*
T0*&
_output_shapes
:``
g
 training/SGD/AssignVariableOp_29AssignVariableOpconv2d_7/kerneltraining/SGD/add_14*
dtype0
Щ
training/SGD/ReadVariableOp_75ReadVariableOpconv2d_7/kernel!^training/SGD/AssignVariableOp_29*
dtype0*&
_output_shapes
:``
c
training/SGD/ReadVariableOp_76ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_30/ReadVariableOpReadVariableOptraining/SGD/Variable_15*
dtype0*
_output_shapes
:`
Г
training/SGD/mul_30Multraining/SGD/ReadVariableOp_76"training/SGD/mul_30/ReadVariableOp*
T0*
_output_shapes
:`
]
training/SGD/ReadVariableOp_77ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Щ
training/SGD/mul_31Multraining/SGD/ReadVariableOp_778training/SGD/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_15Subtraining/SGD/mul_30training/SGD/mul_31*
_output_shapes
:`*
T0
p
 training/SGD/AssignVariableOp_30AssignVariableOptraining/SGD/Variable_15training/SGD/sub_15*
dtype0
Ц
training/SGD/ReadVariableOp_78ReadVariableOptraining/SGD/Variable_15!^training/SGD/AssignVariableOp_30*
dtype0*
_output_shapes
:`
h
training/SGD/ReadVariableOp_79ReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
:`
t
training/SGD/add_15Addtraining/SGD/ReadVariableOp_79training/SGD/sub_15*
T0*
_output_shapes
:`
e
 training/SGD/AssignVariableOp_31AssignVariableOpconv2d_7/biastraining/SGD/add_15*
dtype0
Л
training/SGD/ReadVariableOp_80ReadVariableOpconv2d_7/bias!^training/SGD/AssignVariableOp_31*
dtype0*
_output_shapes
:`
c
training/SGD/ReadVariableOp_81ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_32/ReadVariableOpReadVariableOptraining/SGD/Variable_16*
dtype0*'
_output_shapes
:`└
Р
training/SGD/mul_32Multraining/SGD/ReadVariableOp_81"training/SGD/mul_32/ReadVariableOp*
T0*'
_output_shapes
:`└
]
training/SGD/ReadVariableOp_82ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
о
training/SGD/mul_33Multraining/SGD/ReadVariableOp_82@training/SGD/gradients/conv2d_9/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`└
v
training/SGD/sub_16Subtraining/SGD/mul_32training/SGD/mul_33*
T0*'
_output_shapes
:`└
p
 training/SGD/AssignVariableOp_32AssignVariableOptraining/SGD/Variable_16training/SGD/sub_16*
dtype0
г
training/SGD/ReadVariableOp_83ReadVariableOptraining/SGD/Variable_16!^training/SGD/AssignVariableOp_32*
dtype0*'
_output_shapes
:`└
w
training/SGD/ReadVariableOp_84ReadVariableOpconv2d_9/kernel*
dtype0*'
_output_shapes
:`└
Б
training/SGD/add_16Addtraining/SGD/ReadVariableOp_84training/SGD/sub_16*'
_output_shapes
:`└*
T0
g
 training/SGD/AssignVariableOp_33AssignVariableOpconv2d_9/kerneltraining/SGD/add_16*
dtype0
Ъ
training/SGD/ReadVariableOp_85ReadVariableOpconv2d_9/kernel!^training/SGD/AssignVariableOp_33*
dtype0*'
_output_shapes
:`└
c
training/SGD/ReadVariableOp_86ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
x
"training/SGD/mul_34/ReadVariableOpReadVariableOptraining/SGD/Variable_17*
dtype0*
_output_shapes	
:└
Д
training/SGD/mul_34Multraining/SGD/ReadVariableOp_86"training/SGD/mul_34/ReadVariableOp*
T0*
_output_shapes	
:└
]
training/SGD/ReadVariableOp_87ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ъ
training/SGD/mul_35Multraining/SGD/ReadVariableOp_878training/SGD/gradients/conv2d_9/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:└
j
training/SGD/sub_17Subtraining/SGD/mul_34training/SGD/mul_35*
T0*
_output_shapes	
:└
p
 training/SGD/AssignVariableOp_34AssignVariableOptraining/SGD/Variable_17training/SGD/sub_17*
dtype0
Ч
training/SGD/ReadVariableOp_88ReadVariableOptraining/SGD/Variable_17!^training/SGD/AssignVariableOp_34*
dtype0*
_output_shapes	
:└
i
training/SGD/ReadVariableOp_89ReadVariableOpconv2d_9/bias*
dtype0*
_output_shapes	
:└
u
training/SGD/add_17Addtraining/SGD/ReadVariableOp_89training/SGD/sub_17*
T0*
_output_shapes	
:└
e
 training/SGD/AssignVariableOp_35AssignVariableOpconv2d_9/biastraining/SGD/add_17*
dtype0
М
training/SGD/ReadVariableOp_90ReadVariableOpconv2d_9/bias!^training/SGD/AssignVariableOp_35*
dtype0*
_output_shapes	
:└
c
training/SGD/ReadVariableOp_91ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_36/ReadVariableOpReadVariableOptraining/SGD/Variable_18*
dtype0*'
_output_shapes
:`└
Р
training/SGD/mul_36Multraining/SGD/ReadVariableOp_91"training/SGD/mul_36/ReadVariableOp*
T0*'
_output_shapes
:`└
]
training/SGD/ReadVariableOp_92ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
о
training/SGD/mul_37Multraining/SGD/ReadVariableOp_92@training/SGD/gradients/conv2d_8/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`└
v
training/SGD/sub_18Subtraining/SGD/mul_36training/SGD/mul_37*
T0*'
_output_shapes
:`└
p
 training/SGD/AssignVariableOp_36AssignVariableOptraining/SGD/Variable_18training/SGD/sub_18*
dtype0
г
training/SGD/ReadVariableOp_93ReadVariableOptraining/SGD/Variable_18!^training/SGD/AssignVariableOp_36*
dtype0*'
_output_shapes
:`└
w
training/SGD/ReadVariableOp_94ReadVariableOpconv2d_8/kernel*
dtype0*'
_output_shapes
:`└
Б
training/SGD/add_18Addtraining/SGD/ReadVariableOp_94training/SGD/sub_18*
T0*'
_output_shapes
:`└
g
 training/SGD/AssignVariableOp_37AssignVariableOpconv2d_8/kerneltraining/SGD/add_18*
dtype0
Ъ
training/SGD/ReadVariableOp_95ReadVariableOpconv2d_8/kernel!^training/SGD/AssignVariableOp_37*
dtype0*'
_output_shapes
:`└
c
training/SGD/ReadVariableOp_96ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
x
"training/SGD/mul_38/ReadVariableOpReadVariableOptraining/SGD/Variable_19*
dtype0*
_output_shapes	
:└
Д
training/SGD/mul_38Multraining/SGD/ReadVariableOp_96"training/SGD/mul_38/ReadVariableOp*
T0*
_output_shapes	
:└
]
training/SGD/ReadVariableOp_97ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ъ
training/SGD/mul_39Multraining/SGD/ReadVariableOp_978training/SGD/gradients/conv2d_8/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:└
j
training/SGD/sub_19Subtraining/SGD/mul_38training/SGD/mul_39*
_output_shapes	
:└*
T0
p
 training/SGD/AssignVariableOp_38AssignVariableOptraining/SGD/Variable_19training/SGD/sub_19*
dtype0
Ч
training/SGD/ReadVariableOp_98ReadVariableOptraining/SGD/Variable_19!^training/SGD/AssignVariableOp_38*
dtype0*
_output_shapes	
:└
i
training/SGD/ReadVariableOp_99ReadVariableOpconv2d_8/bias*
dtype0*
_output_shapes	
:└
u
training/SGD/add_19Addtraining/SGD/ReadVariableOp_99training/SGD/sub_19*
T0*
_output_shapes	
:└
e
 training/SGD/AssignVariableOp_39AssignVariableOpconv2d_8/biastraining/SGD/add_19*
dtype0
Н
training/SGD/ReadVariableOp_100ReadVariableOpconv2d_8/bias!^training/SGD/AssignVariableOp_39*
dtype0*
_output_shapes	
:└
d
training/SGD/ReadVariableOp_101ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Е
"training/SGD/mul_40/ReadVariableOpReadVariableOptraining/SGD/Variable_20*
dtype0*(
_output_shapes
:└└
Т
training/SGD/mul_40Multraining/SGD/ReadVariableOp_101"training/SGD/mul_40/ReadVariableOp*
T0*(
_output_shapes
:└└
^
training/SGD/ReadVariableOp_102ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
▒
training/SGD/mul_41Multraining/SGD/ReadVariableOp_102Atraining/SGD/gradients/conv2d_10/Conv2D_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:└└
w
training/SGD/sub_20Subtraining/SGD/mul_40training/SGD/mul_41*
T0*(
_output_shapes
:└└
p
 training/SGD/AssignVariableOp_40AssignVariableOptraining/SGD/Variable_20training/SGD/sub_20*
dtype0
е
training/SGD/ReadVariableOp_103ReadVariableOptraining/SGD/Variable_20!^training/SGD/AssignVariableOp_40*
dtype0*(
_output_shapes
:└└
z
training/SGD/ReadVariableOp_104ReadVariableOpconv2d_10/kernel*
dtype0*(
_output_shapes
:└└
Г
training/SGD/add_20Addtraining/SGD/ReadVariableOp_104training/SGD/sub_20*
T0*(
_output_shapes
:└└
h
 training/SGD/AssignVariableOp_41AssignVariableOpconv2d_10/kerneltraining/SGD/add_20*
dtype0
Э
training/SGD/ReadVariableOp_105ReadVariableOpconv2d_10/kernel!^training/SGD/AssignVariableOp_41*
dtype0*(
_output_shapes
:└└
d
training/SGD/ReadVariableOp_106ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
x
"training/SGD/mul_42/ReadVariableOpReadVariableOptraining/SGD/Variable_21*
dtype0*
_output_shapes	
:└
Е
training/SGD/mul_42Multraining/SGD/ReadVariableOp_106"training/SGD/mul_42/ReadVariableOp*
T0*
_output_shapes	
:└
^
training/SGD/ReadVariableOp_107ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ь
training/SGD/mul_43Multraining/SGD/ReadVariableOp_1079training/SGD/gradients/conv2d_10/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:└*
T0
j
training/SGD/sub_21Subtraining/SGD/mul_42training/SGD/mul_43*
_output_shapes	
:└*
T0
p
 training/SGD/AssignVariableOp_42AssignVariableOptraining/SGD/Variable_21training/SGD/sub_21*
dtype0
Ш
training/SGD/ReadVariableOp_108ReadVariableOptraining/SGD/Variable_21!^training/SGD/AssignVariableOp_42*
dtype0*
_output_shapes	
:└
k
training/SGD/ReadVariableOp_109ReadVariableOpconv2d_10/bias*
dtype0*
_output_shapes	
:└
v
training/SGD/add_21Addtraining/SGD/ReadVariableOp_109training/SGD/sub_21*
T0*
_output_shapes	
:└
f
 training/SGD/AssignVariableOp_43AssignVariableOpconv2d_10/biastraining/SGD/add_21*
dtype0
О
training/SGD/ReadVariableOp_110ReadVariableOpconv2d_10/bias!^training/SGD/AssignVariableOp_43*
dtype0*
_output_shapes	
:└
d
training/SGD/ReadVariableOp_111ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_44/ReadVariableOpReadVariableOptraining/SGD/Variable_22*
dtype0*'
_output_shapes
:а`
С
training/SGD/mul_44Multraining/SGD/ReadVariableOp_111"training/SGD/mul_44/ReadVariableOp*
T0*'
_output_shapes
:а`
^
training/SGD/ReadVariableOp_112ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_45Multraining/SGD/ReadVariableOp_112Atraining/SGD/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:а`
v
training/SGD/sub_22Subtraining/SGD/mul_44training/SGD/mul_45*
T0*'
_output_shapes
:а`
p
 training/SGD/AssignVariableOp_44AssignVariableOptraining/SGD/Variable_22training/SGD/sub_22*
dtype0
д
training/SGD/ReadVariableOp_113ReadVariableOptraining/SGD/Variable_22!^training/SGD/AssignVariableOp_44*
dtype0*'
_output_shapes
:а`
y
training/SGD/ReadVariableOp_114ReadVariableOpconv2d_12/kernel*
dtype0*'
_output_shapes
:а`
В
training/SGD/add_22Addtraining/SGD/ReadVariableOp_114training/SGD/sub_22*
T0*'
_output_shapes
:а`
h
 training/SGD/AssignVariableOp_45AssignVariableOpconv2d_12/kerneltraining/SGD/add_22*
dtype0
Ь
training/SGD/ReadVariableOp_115ReadVariableOpconv2d_12/kernel!^training/SGD/AssignVariableOp_45*
dtype0*'
_output_shapes
:а`
d
training/SGD/ReadVariableOp_116ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_46/ReadVariableOpReadVariableOptraining/SGD/Variable_23*
dtype0*
_output_shapes
:`
Д
training/SGD/mul_46Multraining/SGD/ReadVariableOp_116"training/SGD/mul_46/ReadVariableOp*
_output_shapes
:`*
T0
^
training/SGD/ReadVariableOp_117ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_47Multraining/SGD/ReadVariableOp_1179training/SGD/gradients/conv2d_12/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_23Subtraining/SGD/mul_46training/SGD/mul_47*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_46AssignVariableOptraining/SGD/Variable_23training/SGD/sub_23*
dtype0
Ч
training/SGD/ReadVariableOp_118ReadVariableOptraining/SGD/Variable_23!^training/SGD/AssignVariableOp_46*
dtype0*
_output_shapes
:`
j
training/SGD/ReadVariableOp_119ReadVariableOpconv2d_12/bias*
dtype0*
_output_shapes
:`
u
training/SGD/add_23Addtraining/SGD/ReadVariableOp_119training/SGD/sub_23*
T0*
_output_shapes
:`
f
 training/SGD/AssignVariableOp_47AssignVariableOpconv2d_12/biastraining/SGD/add_23*
dtype0
Н
training/SGD/ReadVariableOp_120ReadVariableOpconv2d_12/bias!^training/SGD/AssignVariableOp_47*
dtype0*
_output_shapes
:`
d
training/SGD/ReadVariableOp_121ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_48/ReadVariableOpReadVariableOptraining/SGD/Variable_24*
dtype0*'
_output_shapes
:а`
С
training/SGD/mul_48Multraining/SGD/ReadVariableOp_121"training/SGD/mul_48/ReadVariableOp*'
_output_shapes
:а`*
T0
^
training/SGD/ReadVariableOp_122ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_49Multraining/SGD/ReadVariableOp_122Atraining/SGD/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:а`*
T0
v
training/SGD/sub_24Subtraining/SGD/mul_48training/SGD/mul_49*
T0*'
_output_shapes
:а`
p
 training/SGD/AssignVariableOp_48AssignVariableOptraining/SGD/Variable_24training/SGD/sub_24*
dtype0
д
training/SGD/ReadVariableOp_123ReadVariableOptraining/SGD/Variable_24!^training/SGD/AssignVariableOp_48*
dtype0*'
_output_shapes
:а`
y
training/SGD/ReadVariableOp_124ReadVariableOpconv2d_11/kernel*
dtype0*'
_output_shapes
:а`
В
training/SGD/add_24Addtraining/SGD/ReadVariableOp_124training/SGD/sub_24*'
_output_shapes
:а`*
T0
h
 training/SGD/AssignVariableOp_49AssignVariableOpconv2d_11/kerneltraining/SGD/add_24*
dtype0
Ь
training/SGD/ReadVariableOp_125ReadVariableOpconv2d_11/kernel!^training/SGD/AssignVariableOp_49*
dtype0*'
_output_shapes
:а`
d
training/SGD/ReadVariableOp_126ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_50/ReadVariableOpReadVariableOptraining/SGD/Variable_25*
dtype0*
_output_shapes
:`
Д
training/SGD/mul_50Multraining/SGD/ReadVariableOp_126"training/SGD/mul_50/ReadVariableOp*
T0*
_output_shapes
:`
^
training/SGD/ReadVariableOp_127ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_51Multraining/SGD/ReadVariableOp_1279training/SGD/gradients/conv2d_11/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/SGD/sub_25Subtraining/SGD/mul_50training/SGD/mul_51*
T0*
_output_shapes
:`
p
 training/SGD/AssignVariableOp_50AssignVariableOptraining/SGD/Variable_25training/SGD/sub_25*
dtype0
Ч
training/SGD/ReadVariableOp_128ReadVariableOptraining/SGD/Variable_25!^training/SGD/AssignVariableOp_50*
dtype0*
_output_shapes
:`
j
training/SGD/ReadVariableOp_129ReadVariableOpconv2d_11/bias*
dtype0*
_output_shapes
:`
u
training/SGD/add_25Addtraining/SGD/ReadVariableOp_129training/SGD/sub_25*
T0*
_output_shapes
:`
f
 training/SGD/AssignVariableOp_51AssignVariableOpconv2d_11/biastraining/SGD/add_25*
dtype0
Н
training/SGD/ReadVariableOp_130ReadVariableOpconv2d_11/bias!^training/SGD/AssignVariableOp_51*
dtype0*
_output_shapes
:`
d
training/SGD/ReadVariableOp_131ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_52/ReadVariableOpReadVariableOptraining/SGD/Variable_26*
dtype0*&
_output_shapes
:``
Р
training/SGD/mul_52Multraining/SGD/ReadVariableOp_131"training/SGD/mul_52/ReadVariableOp*
T0*&
_output_shapes
:``
^
training/SGD/ReadVariableOp_132ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_53Multraining/SGD/ReadVariableOp_132Atraining/SGD/gradients/conv2d_13/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:``
u
training/SGD/sub_26Subtraining/SGD/mul_52training/SGD/mul_53*
T0*&
_output_shapes
:``
p
 training/SGD/AssignVariableOp_52AssignVariableOptraining/SGD/Variable_26training/SGD/sub_26*
dtype0
г
training/SGD/ReadVariableOp_133ReadVariableOptraining/SGD/Variable_26!^training/SGD/AssignVariableOp_52*
dtype0*&
_output_shapes
:``
x
training/SGD/ReadVariableOp_134ReadVariableOpconv2d_13/kernel*
dtype0*&
_output_shapes
:``
Б
training/SGD/add_26Addtraining/SGD/ReadVariableOp_134training/SGD/sub_26*
T0*&
_output_shapes
:``
h
 training/SGD/AssignVariableOp_53AssignVariableOpconv2d_13/kerneltraining/SGD/add_26*
dtype0
Ы
training/SGD/ReadVariableOp_135ReadVariableOpconv2d_13/kernel!^training/SGD/AssignVariableOp_53*
dtype0*&
_output_shapes
:``
d
training/SGD/ReadVariableOp_136ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_54/ReadVariableOpReadVariableOptraining/SGD/Variable_27*
dtype0*
_output_shapes
:`
Д
training/SGD/mul_54Multraining/SGD/ReadVariableOp_136"training/SGD/mul_54/ReadVariableOp*
T0*
_output_shapes
:`
^
training/SGD/ReadVariableOp_137ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_55Multraining/SGD/ReadVariableOp_1379training/SGD/gradients/conv2d_13/BiasAdd_grad/BiasAddGrad*
_output_shapes
:`*
T0
i
training/SGD/sub_27Subtraining/SGD/mul_54training/SGD/mul_55*
_output_shapes
:`*
T0
p
 training/SGD/AssignVariableOp_54AssignVariableOptraining/SGD/Variable_27training/SGD/sub_27*
dtype0
Ч
training/SGD/ReadVariableOp_138ReadVariableOptraining/SGD/Variable_27!^training/SGD/AssignVariableOp_54*
dtype0*
_output_shapes
:`
j
training/SGD/ReadVariableOp_139ReadVariableOpconv2d_13/bias*
dtype0*
_output_shapes
:`
u
training/SGD/add_27Addtraining/SGD/ReadVariableOp_139training/SGD/sub_27*
T0*
_output_shapes
:`
f
 training/SGD/AssignVariableOp_55AssignVariableOpconv2d_13/biastraining/SGD/add_27*
dtype0
Н
training/SGD/ReadVariableOp_140ReadVariableOpconv2d_13/bias!^training/SGD/AssignVariableOp_55*
dtype0*
_output_shapes
:`
d
training/SGD/ReadVariableOp_141ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_56/ReadVariableOpReadVariableOptraining/SGD/Variable_28*
dtype0*'
_output_shapes
:Р0
С
training/SGD/mul_56Multraining/SGD/ReadVariableOp_141"training/SGD/mul_56/ReadVariableOp*
T0*'
_output_shapes
:Р0
^
training/SGD/ReadVariableOp_142ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_57Multraining/SGD/ReadVariableOp_142Atraining/SGD/gradients/conv2d_15/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:Р0
v
training/SGD/sub_28Subtraining/SGD/mul_56training/SGD/mul_57*
T0*'
_output_shapes
:Р0
p
 training/SGD/AssignVariableOp_56AssignVariableOptraining/SGD/Variable_28training/SGD/sub_28*
dtype0
д
training/SGD/ReadVariableOp_143ReadVariableOptraining/SGD/Variable_28!^training/SGD/AssignVariableOp_56*
dtype0*'
_output_shapes
:Р0
y
training/SGD/ReadVariableOp_144ReadVariableOpconv2d_15/kernel*
dtype0*'
_output_shapes
:Р0
В
training/SGD/add_28Addtraining/SGD/ReadVariableOp_144training/SGD/sub_28*'
_output_shapes
:Р0*
T0
h
 training/SGD/AssignVariableOp_57AssignVariableOpconv2d_15/kerneltraining/SGD/add_28*
dtype0
Ь
training/SGD/ReadVariableOp_145ReadVariableOpconv2d_15/kernel!^training/SGD/AssignVariableOp_57*
dtype0*'
_output_shapes
:Р0
d
training/SGD/ReadVariableOp_146ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_58/ReadVariableOpReadVariableOptraining/SGD/Variable_29*
dtype0*
_output_shapes
:0
Д
training/SGD/mul_58Multraining/SGD/ReadVariableOp_146"training/SGD/mul_58/ReadVariableOp*
T0*
_output_shapes
:0
^
training/SGD/ReadVariableOp_147ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_59Multraining/SGD/ReadVariableOp_1479training/SGD/gradients/conv2d_15/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_29Subtraining/SGD/mul_58training/SGD/mul_59*
T0*
_output_shapes
:0
p
 training/SGD/AssignVariableOp_58AssignVariableOptraining/SGD/Variable_29training/SGD/sub_29*
dtype0
Ч
training/SGD/ReadVariableOp_148ReadVariableOptraining/SGD/Variable_29!^training/SGD/AssignVariableOp_58*
dtype0*
_output_shapes
:0
j
training/SGD/ReadVariableOp_149ReadVariableOpconv2d_15/bias*
dtype0*
_output_shapes
:0
u
training/SGD/add_29Addtraining/SGD/ReadVariableOp_149training/SGD/sub_29*
T0*
_output_shapes
:0
f
 training/SGD/AssignVariableOp_59AssignVariableOpconv2d_15/biastraining/SGD/add_29*
dtype0
Н
training/SGD/ReadVariableOp_150ReadVariableOpconv2d_15/bias!^training/SGD/AssignVariableOp_59*
dtype0*
_output_shapes
:0
d
training/SGD/ReadVariableOp_151ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Д
"training/SGD/mul_60/ReadVariableOpReadVariableOptraining/SGD/Variable_30*
dtype0*'
_output_shapes
:Р0
С
training/SGD/mul_60Multraining/SGD/ReadVariableOp_151"training/SGD/mul_60/ReadVariableOp*
T0*'
_output_shapes
:Р0
^
training/SGD/ReadVariableOp_152ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
░
training/SGD/mul_61Multraining/SGD/ReadVariableOp_152Atraining/SGD/gradients/conv2d_14/Conv2D_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:Р0
v
training/SGD/sub_30Subtraining/SGD/mul_60training/SGD/mul_61*'
_output_shapes
:Р0*
T0
p
 training/SGD/AssignVariableOp_60AssignVariableOptraining/SGD/Variable_30training/SGD/sub_30*
dtype0
д
training/SGD/ReadVariableOp_153ReadVariableOptraining/SGD/Variable_30!^training/SGD/AssignVariableOp_60*
dtype0*'
_output_shapes
:Р0
y
training/SGD/ReadVariableOp_154ReadVariableOpconv2d_14/kernel*
dtype0*'
_output_shapes
:Р0
В
training/SGD/add_30Addtraining/SGD/ReadVariableOp_154training/SGD/sub_30*'
_output_shapes
:Р0*
T0
h
 training/SGD/AssignVariableOp_61AssignVariableOpconv2d_14/kerneltraining/SGD/add_30*
dtype0
Ь
training/SGD/ReadVariableOp_155ReadVariableOpconv2d_14/kernel!^training/SGD/AssignVariableOp_61*
dtype0*'
_output_shapes
:Р0
d
training/SGD/ReadVariableOp_156ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_62/ReadVariableOpReadVariableOptraining/SGD/Variable_31*
dtype0*
_output_shapes
:0
Д
training/SGD/mul_62Multraining/SGD/ReadVariableOp_156"training/SGD/mul_62/ReadVariableOp*
_output_shapes
:0*
T0
^
training/SGD/ReadVariableOp_157ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_63Multraining/SGD/ReadVariableOp_1579training/SGD/gradients/conv2d_14/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_31Subtraining/SGD/mul_62training/SGD/mul_63*
T0*
_output_shapes
:0
p
 training/SGD/AssignVariableOp_62AssignVariableOptraining/SGD/Variable_31training/SGD/sub_31*
dtype0
Ч
training/SGD/ReadVariableOp_158ReadVariableOptraining/SGD/Variable_31!^training/SGD/AssignVariableOp_62*
dtype0*
_output_shapes
:0
j
training/SGD/ReadVariableOp_159ReadVariableOpconv2d_14/bias*
dtype0*
_output_shapes
:0
u
training/SGD/add_31Addtraining/SGD/ReadVariableOp_159training/SGD/sub_31*
T0*
_output_shapes
:0
f
 training/SGD/AssignVariableOp_63AssignVariableOpconv2d_14/biastraining/SGD/add_31*
dtype0
Н
training/SGD/ReadVariableOp_160ReadVariableOpconv2d_14/bias!^training/SGD/AssignVariableOp_63*
dtype0*
_output_shapes
:0
d
training/SGD/ReadVariableOp_161ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_64/ReadVariableOpReadVariableOptraining/SGD/Variable_32*
dtype0*&
_output_shapes
:00
Р
training/SGD/mul_64Multraining/SGD/ReadVariableOp_161"training/SGD/mul_64/ReadVariableOp*
T0*&
_output_shapes
:00
^
training/SGD/ReadVariableOp_162ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_65Multraining/SGD/ReadVariableOp_162Atraining/SGD/gradients/conv2d_16/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:00
u
training/SGD/sub_32Subtraining/SGD/mul_64training/SGD/mul_65*&
_output_shapes
:00*
T0
p
 training/SGD/AssignVariableOp_64AssignVariableOptraining/SGD/Variable_32training/SGD/sub_32*
dtype0
г
training/SGD/ReadVariableOp_163ReadVariableOptraining/SGD/Variable_32!^training/SGD/AssignVariableOp_64*
dtype0*&
_output_shapes
:00
x
training/SGD/ReadVariableOp_164ReadVariableOpconv2d_16/kernel*
dtype0*&
_output_shapes
:00
Б
training/SGD/add_32Addtraining/SGD/ReadVariableOp_164training/SGD/sub_32*
T0*&
_output_shapes
:00
h
 training/SGD/AssignVariableOp_65AssignVariableOpconv2d_16/kerneltraining/SGD/add_32*
dtype0
Ы
training/SGD/ReadVariableOp_165ReadVariableOpconv2d_16/kernel!^training/SGD/AssignVariableOp_65*
dtype0*&
_output_shapes
:00
d
training/SGD/ReadVariableOp_166ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_66/ReadVariableOpReadVariableOptraining/SGD/Variable_33*
dtype0*
_output_shapes
:0
Д
training/SGD/mul_66Multraining/SGD/ReadVariableOp_166"training/SGD/mul_66/ReadVariableOp*
T0*
_output_shapes
:0
^
training/SGD/ReadVariableOp_167ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_67Multraining/SGD/ReadVariableOp_1679training/SGD/gradients/conv2d_16/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
i
training/SGD/sub_33Subtraining/SGD/mul_66training/SGD/mul_67*
T0*
_output_shapes
:0
p
 training/SGD/AssignVariableOp_66AssignVariableOptraining/SGD/Variable_33training/SGD/sub_33*
dtype0
Ч
training/SGD/ReadVariableOp_168ReadVariableOptraining/SGD/Variable_33!^training/SGD/AssignVariableOp_66*
dtype0*
_output_shapes
:0
j
training/SGD/ReadVariableOp_169ReadVariableOpconv2d_16/bias*
dtype0*
_output_shapes
:0
u
training/SGD/add_33Addtraining/SGD/ReadVariableOp_169training/SGD/sub_33*
T0*
_output_shapes
:0
f
 training/SGD/AssignVariableOp_67AssignVariableOpconv2d_16/biastraining/SGD/add_33*
dtype0
Н
training/SGD/ReadVariableOp_170ReadVariableOpconv2d_16/bias!^training/SGD/AssignVariableOp_67*
dtype0*
_output_shapes
:0
d
training/SGD/ReadVariableOp_171ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_68/ReadVariableOpReadVariableOptraining/SGD/Variable_34*
dtype0*&
_output_shapes
:H
Р
training/SGD/mul_68Multraining/SGD/ReadVariableOp_171"training/SGD/mul_68/ReadVariableOp*
T0*&
_output_shapes
:H
^
training/SGD/ReadVariableOp_172ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_69Multraining/SGD/ReadVariableOp_172Atraining/SGD/gradients/conv2d_18/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:H
u
training/SGD/sub_34Subtraining/SGD/mul_68training/SGD/mul_69*
T0*&
_output_shapes
:H
p
 training/SGD/AssignVariableOp_68AssignVariableOptraining/SGD/Variable_34training/SGD/sub_34*
dtype0
г
training/SGD/ReadVariableOp_173ReadVariableOptraining/SGD/Variable_34!^training/SGD/AssignVariableOp_68*
dtype0*&
_output_shapes
:H
x
training/SGD/ReadVariableOp_174ReadVariableOpconv2d_18/kernel*
dtype0*&
_output_shapes
:H
Б
training/SGD/add_34Addtraining/SGD/ReadVariableOp_174training/SGD/sub_34*
T0*&
_output_shapes
:H
h
 training/SGD/AssignVariableOp_69AssignVariableOpconv2d_18/kerneltraining/SGD/add_34*
dtype0
Ы
training/SGD/ReadVariableOp_175ReadVariableOpconv2d_18/kernel!^training/SGD/AssignVariableOp_69*
dtype0*&
_output_shapes
:H
d
training/SGD/ReadVariableOp_176ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_70/ReadVariableOpReadVariableOptraining/SGD/Variable_35*
dtype0*
_output_shapes
:
Д
training/SGD/mul_70Multraining/SGD/ReadVariableOp_176"training/SGD/mul_70/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_177ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_71Multraining/SGD/ReadVariableOp_1779training/SGD/gradients/conv2d_18/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_35Subtraining/SGD/mul_70training/SGD/mul_71*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_70AssignVariableOptraining/SGD/Variable_35training/SGD/sub_35*
dtype0
Ч
training/SGD/ReadVariableOp_178ReadVariableOptraining/SGD/Variable_35!^training/SGD/AssignVariableOp_70*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_179ReadVariableOpconv2d_18/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_35Addtraining/SGD/ReadVariableOp_179training/SGD/sub_35*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_71AssignVariableOpconv2d_18/biastraining/SGD/add_35*
dtype0
Н
training/SGD/ReadVariableOp_180ReadVariableOpconv2d_18/bias!^training/SGD/AssignVariableOp_71*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_181ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_72/ReadVariableOpReadVariableOptraining/SGD/Variable_36*
dtype0*&
_output_shapes
:H
Р
training/SGD/mul_72Multraining/SGD/ReadVariableOp_181"training/SGD/mul_72/ReadVariableOp*
T0*&
_output_shapes
:H
^
training/SGD/ReadVariableOp_182ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_73Multraining/SGD/ReadVariableOp_182Atraining/SGD/gradients/conv2d_17/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:H
u
training/SGD/sub_36Subtraining/SGD/mul_72training/SGD/mul_73*
T0*&
_output_shapes
:H
p
 training/SGD/AssignVariableOp_72AssignVariableOptraining/SGD/Variable_36training/SGD/sub_36*
dtype0
г
training/SGD/ReadVariableOp_183ReadVariableOptraining/SGD/Variable_36!^training/SGD/AssignVariableOp_72*
dtype0*&
_output_shapes
:H
x
training/SGD/ReadVariableOp_184ReadVariableOpconv2d_17/kernel*
dtype0*&
_output_shapes
:H
Б
training/SGD/add_36Addtraining/SGD/ReadVariableOp_184training/SGD/sub_36*
T0*&
_output_shapes
:H
h
 training/SGD/AssignVariableOp_73AssignVariableOpconv2d_17/kerneltraining/SGD/add_36*
dtype0
Ы
training/SGD/ReadVariableOp_185ReadVariableOpconv2d_17/kernel!^training/SGD/AssignVariableOp_73*
dtype0*&
_output_shapes
:H
d
training/SGD/ReadVariableOp_186ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_74/ReadVariableOpReadVariableOptraining/SGD/Variable_37*
dtype0*
_output_shapes
:
Д
training/SGD/mul_74Multraining/SGD/ReadVariableOp_186"training/SGD/mul_74/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_187ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_75Multraining/SGD/ReadVariableOp_1879training/SGD/gradients/conv2d_17/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_37Subtraining/SGD/mul_74training/SGD/mul_75*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_74AssignVariableOptraining/SGD/Variable_37training/SGD/sub_37*
dtype0
Ч
training/SGD/ReadVariableOp_188ReadVariableOptraining/SGD/Variable_37!^training/SGD/AssignVariableOp_74*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_189ReadVariableOpconv2d_17/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_37Addtraining/SGD/ReadVariableOp_189training/SGD/sub_37*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_75AssignVariableOpconv2d_17/biastraining/SGD/add_37*
dtype0
Н
training/SGD/ReadVariableOp_190ReadVariableOpconv2d_17/bias!^training/SGD/AssignVariableOp_75*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_191ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_76/ReadVariableOpReadVariableOptraining/SGD/Variable_38*
dtype0*&
_output_shapes
:
Р
training/SGD/mul_76Multraining/SGD/ReadVariableOp_191"training/SGD/mul_76/ReadVariableOp*
T0*&
_output_shapes
:
^
training/SGD/ReadVariableOp_192ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_77Multraining/SGD/ReadVariableOp_192Atraining/SGD/gradients/conv2d_19/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_38Subtraining/SGD/mul_76training/SGD/mul_77*
T0*&
_output_shapes
:
p
 training/SGD/AssignVariableOp_76AssignVariableOptraining/SGD/Variable_38training/SGD/sub_38*
dtype0
г
training/SGD/ReadVariableOp_193ReadVariableOptraining/SGD/Variable_38!^training/SGD/AssignVariableOp_76*
dtype0*&
_output_shapes
:
x
training/SGD/ReadVariableOp_194ReadVariableOpconv2d_19/kernel*
dtype0*&
_output_shapes
:
Б
training/SGD/add_38Addtraining/SGD/ReadVariableOp_194training/SGD/sub_38*
T0*&
_output_shapes
:
h
 training/SGD/AssignVariableOp_77AssignVariableOpconv2d_19/kerneltraining/SGD/add_38*
dtype0
Ы
training/SGD/ReadVariableOp_195ReadVariableOpconv2d_19/kernel!^training/SGD/AssignVariableOp_77*
dtype0*&
_output_shapes
:
d
training/SGD/ReadVariableOp_196ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_78/ReadVariableOpReadVariableOptraining/SGD/Variable_39*
dtype0*
_output_shapes
:
Д
training/SGD/mul_78Multraining/SGD/ReadVariableOp_196"training/SGD/mul_78/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_197ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_79Multraining/SGD/ReadVariableOp_1979training/SGD/gradients/conv2d_19/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_39Subtraining/SGD/mul_78training/SGD/mul_79*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_78AssignVariableOptraining/SGD/Variable_39training/SGD/sub_39*
dtype0
Ч
training/SGD/ReadVariableOp_198ReadVariableOptraining/SGD/Variable_39!^training/SGD/AssignVariableOp_78*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_199ReadVariableOpconv2d_19/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_39Addtraining/SGD/ReadVariableOp_199training/SGD/sub_39*
_output_shapes
:*
T0
f
 training/SGD/AssignVariableOp_79AssignVariableOpconv2d_19/biastraining/SGD/add_39*
dtype0
Н
training/SGD/ReadVariableOp_200ReadVariableOpconv2d_19/bias!^training/SGD/AssignVariableOp_79*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_201ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_80/ReadVariableOpReadVariableOptraining/SGD/Variable_40*
dtype0*&
_output_shapes
:
Р
training/SGD/mul_80Multraining/SGD/ReadVariableOp_201"training/SGD/mul_80/ReadVariableOp*
T0*&
_output_shapes
:
^
training/SGD/ReadVariableOp_202ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_81Multraining/SGD/ReadVariableOp_202Atraining/SGD/gradients/conv2d_20/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
u
training/SGD/sub_40Subtraining/SGD/mul_80training/SGD/mul_81*&
_output_shapes
:*
T0
p
 training/SGD/AssignVariableOp_80AssignVariableOptraining/SGD/Variable_40training/SGD/sub_40*
dtype0
г
training/SGD/ReadVariableOp_203ReadVariableOptraining/SGD/Variable_40!^training/SGD/AssignVariableOp_80*
dtype0*&
_output_shapes
:
x
training/SGD/ReadVariableOp_204ReadVariableOpconv2d_20/kernel*
dtype0*&
_output_shapes
:
Б
training/SGD/add_40Addtraining/SGD/ReadVariableOp_204training/SGD/sub_40*&
_output_shapes
:*
T0
h
 training/SGD/AssignVariableOp_81AssignVariableOpconv2d_20/kerneltraining/SGD/add_40*
dtype0
Ы
training/SGD/ReadVariableOp_205ReadVariableOpconv2d_20/kernel!^training/SGD/AssignVariableOp_81*
dtype0*&
_output_shapes
:
d
training/SGD/ReadVariableOp_206ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_82/ReadVariableOpReadVariableOptraining/SGD/Variable_41*
dtype0*
_output_shapes
:
Д
training/SGD/mul_82Multraining/SGD/ReadVariableOp_206"training/SGD/mul_82/ReadVariableOp*
_output_shapes
:*
T0
^
training/SGD/ReadVariableOp_207ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_83Multraining/SGD/ReadVariableOp_2079training/SGD/gradients/conv2d_20/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_41Subtraining/SGD/mul_82training/SGD/mul_83*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_82AssignVariableOptraining/SGD/Variable_41training/SGD/sub_41*
dtype0
Ч
training/SGD/ReadVariableOp_208ReadVariableOptraining/SGD/Variable_41!^training/SGD/AssignVariableOp_82*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_209ReadVariableOpconv2d_20/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_41Addtraining/SGD/ReadVariableOp_209training/SGD/sub_41*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_83AssignVariableOpconv2d_20/biastraining/SGD/add_41*
dtype0
Н
training/SGD/ReadVariableOp_210ReadVariableOpconv2d_20/bias!^training/SGD/AssignVariableOp_83*
dtype0*
_output_shapes
:
d
training/SGD/ReadVariableOp_211ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
Г
"training/SGD/mul_84/ReadVariableOpReadVariableOptraining/SGD/Variable_42*
dtype0*&
_output_shapes
:
Р
training/SGD/mul_84Multraining/SGD/ReadVariableOp_211"training/SGD/mul_84/ReadVariableOp*
T0*&
_output_shapes
:
^
training/SGD/ReadVariableOp_212ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
п
training/SGD/mul_85Multraining/SGD/ReadVariableOp_212Atraining/SGD/gradients/conv2d_21/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
u
training/SGD/sub_42Subtraining/SGD/mul_84training/SGD/mul_85*
T0*&
_output_shapes
:
p
 training/SGD/AssignVariableOp_84AssignVariableOptraining/SGD/Variable_42training/SGD/sub_42*
dtype0
г
training/SGD/ReadVariableOp_213ReadVariableOptraining/SGD/Variable_42!^training/SGD/AssignVariableOp_84*
dtype0*&
_output_shapes
:
x
training/SGD/ReadVariableOp_214ReadVariableOpconv2d_21/kernel*
dtype0*&
_output_shapes
:
Б
training/SGD/add_42Addtraining/SGD/ReadVariableOp_214training/SGD/sub_42*
T0*&
_output_shapes
:
h
 training/SGD/AssignVariableOp_85AssignVariableOpconv2d_21/kerneltraining/SGD/add_42*
dtype0
Ы
training/SGD/ReadVariableOp_215ReadVariableOpconv2d_21/kernel!^training/SGD/AssignVariableOp_85*
dtype0*&
_output_shapes
:
d
training/SGD/ReadVariableOp_216ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
w
"training/SGD/mul_86/ReadVariableOpReadVariableOptraining/SGD/Variable_43*
dtype0*
_output_shapes
:
Д
training/SGD/mul_86Multraining/SGD/ReadVariableOp_216"training/SGD/mul_86/ReadVariableOp*
T0*
_output_shapes
:
^
training/SGD/ReadVariableOp_217ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 
Ы
training/SGD/mul_87Multraining/SGD/ReadVariableOp_2179training/SGD/gradients/conv2d_21/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_43Subtraining/SGD/mul_86training/SGD/mul_87*
T0*
_output_shapes
:
p
 training/SGD/AssignVariableOp_86AssignVariableOptraining/SGD/Variable_43training/SGD/sub_43*
dtype0
Ч
training/SGD/ReadVariableOp_218ReadVariableOptraining/SGD/Variable_43!^training/SGD/AssignVariableOp_86*
dtype0*
_output_shapes
:
j
training/SGD/ReadVariableOp_219ReadVariableOpconv2d_21/bias*
dtype0*
_output_shapes
:
u
training/SGD/add_43Addtraining/SGD/ReadVariableOp_219training/SGD/sub_43*
T0*
_output_shapes
:
f
 training/SGD/AssignVariableOp_87AssignVariableOpconv2d_21/biastraining/SGD/add_43*
dtype0
Н
training/SGD/ReadVariableOp_220ReadVariableOpconv2d_21/bias!^training/SGD/AssignVariableOp_87*
dtype0*
_output_shapes
:
ц
training_1/group_depsNoOp	^loss/mul^metrics/psnr/div_no_nan^training/SGD/ReadVariableOp^training/SGD/ReadVariableOp_10 ^training/SGD/ReadVariableOp_100 ^training/SGD/ReadVariableOp_103 ^training/SGD/ReadVariableOp_105 ^training/SGD/ReadVariableOp_108 ^training/SGD/ReadVariableOp_110 ^training/SGD/ReadVariableOp_113 ^training/SGD/ReadVariableOp_115 ^training/SGD/ReadVariableOp_118 ^training/SGD/ReadVariableOp_120 ^training/SGD/ReadVariableOp_123 ^training/SGD/ReadVariableOp_125 ^training/SGD/ReadVariableOp_128^training/SGD/ReadVariableOp_13 ^training/SGD/ReadVariableOp_130 ^training/SGD/ReadVariableOp_133 ^training/SGD/ReadVariableOp_135 ^training/SGD/ReadVariableOp_138 ^training/SGD/ReadVariableOp_140 ^training/SGD/ReadVariableOp_143 ^training/SGD/ReadVariableOp_145 ^training/SGD/ReadVariableOp_148^training/SGD/ReadVariableOp_15 ^training/SGD/ReadVariableOp_150 ^training/SGD/ReadVariableOp_153 ^training/SGD/ReadVariableOp_155 ^training/SGD/ReadVariableOp_158 ^training/SGD/ReadVariableOp_160 ^training/SGD/ReadVariableOp_163 ^training/SGD/ReadVariableOp_165 ^training/SGD/ReadVariableOp_168 ^training/SGD/ReadVariableOp_170 ^training/SGD/ReadVariableOp_173 ^training/SGD/ReadVariableOp_175 ^training/SGD/ReadVariableOp_178^training/SGD/ReadVariableOp_18 ^training/SGD/ReadVariableOp_180 ^training/SGD/ReadVariableOp_183 ^training/SGD/ReadVariableOp_185 ^training/SGD/ReadVariableOp_188 ^training/SGD/ReadVariableOp_190 ^training/SGD/ReadVariableOp_193 ^training/SGD/ReadVariableOp_195 ^training/SGD/ReadVariableOp_198^training/SGD/ReadVariableOp_20 ^training/SGD/ReadVariableOp_200 ^training/SGD/ReadVariableOp_203 ^training/SGD/ReadVariableOp_205 ^training/SGD/ReadVariableOp_208 ^training/SGD/ReadVariableOp_210 ^training/SGD/ReadVariableOp_213 ^training/SGD/ReadVariableOp_215 ^training/SGD/ReadVariableOp_218 ^training/SGD/ReadVariableOp_220^training/SGD/ReadVariableOp_23^training/SGD/ReadVariableOp_25^training/SGD/ReadVariableOp_28^training/SGD/ReadVariableOp_3^training/SGD/ReadVariableOp_30^training/SGD/ReadVariableOp_33^training/SGD/ReadVariableOp_35^training/SGD/ReadVariableOp_38^training/SGD/ReadVariableOp_40^training/SGD/ReadVariableOp_43^training/SGD/ReadVariableOp_45^training/SGD/ReadVariableOp_48^training/SGD/ReadVariableOp_5^training/SGD/ReadVariableOp_50^training/SGD/ReadVariableOp_53^training/SGD/ReadVariableOp_55^training/SGD/ReadVariableOp_58^training/SGD/ReadVariableOp_60^training/SGD/ReadVariableOp_63^training/SGD/ReadVariableOp_65^training/SGD/ReadVariableOp_68^training/SGD/ReadVariableOp_70^training/SGD/ReadVariableOp_73^training/SGD/ReadVariableOp_75^training/SGD/ReadVariableOp_78^training/SGD/ReadVariableOp_8^training/SGD/ReadVariableOp_80^training/SGD/ReadVariableOp_83^training/SGD/ReadVariableOp_85^training/SGD/ReadVariableOp_88^training/SGD/ReadVariableOp_90^training/SGD/ReadVariableOp_93^training/SGD/ReadVariableOp_95^training/SGD/ReadVariableOp_98
O
VarIsInitializedOpVarIsInitializedOpconv2d_4/bias*
_output_shapes
: 
\
VarIsInitializedOp_1VarIsInitializedOptraining/SGD/Variable_16*
_output_shapes
: 
\
VarIsInitializedOp_2VarIsInitializedOptraining/SGD/Variable_21*
_output_shapes
: 
\
VarIsInitializedOp_3VarIsInitializedOptraining/SGD/Variable_31*
_output_shapes
: 
\
VarIsInitializedOp_4VarIsInitializedOptraining/SGD/Variable_36*
_output_shapes
: 
R
VarIsInitializedOp_5VarIsInitializedOpconv2d_15/bias*
_output_shapes
: 
\
VarIsInitializedOp_6VarIsInitializedOptraining/SGD/Variable_38*
_output_shapes
: 
\
VarIsInitializedOp_7VarIsInitializedOptraining/SGD/Variable_19*
_output_shapes
: 
[
VarIsInitializedOp_8VarIsInitializedOptraining/SGD/Variable_8*
_output_shapes
: 
[
VarIsInitializedOp_9VarIsInitializedOptraining/SGD/Variable_9*
_output_shapes
: 
]
VarIsInitializedOp_10VarIsInitializedOptraining/SGD/Variable_39*
_output_shapes
: 
S
VarIsInitializedOp_11VarIsInitializedOpSGD/iterations*
_output_shapes
: 
]
VarIsInitializedOp_12VarIsInitializedOptraining/SGD/Variable_20*
_output_shapes
: 
K
VarIsInitializedOp_13VarIsInitializedOpSGD/lr*
_output_shapes
: 
N
VarIsInitializedOp_14VarIsInitializedOp	SGD/decay*
_output_shapes
: 
]
VarIsInitializedOp_15VarIsInitializedOptraining/SGD/Variable_30*
_output_shapes
: 
J
VarIsInitializedOp_16VarIsInitializedOptotal*
_output_shapes
: 
\
VarIsInitializedOp_17VarIsInitializedOptraining/SGD/Variable_4*
_output_shapes
: 
U
VarIsInitializedOp_18VarIsInitializedOpconv2d_15/kernel*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/SGD/Variable_17*
_output_shapes
: 
]
VarIsInitializedOp_20VarIsInitializedOptraining/SGD/Variable_34*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_22VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
S
VarIsInitializedOp_23VarIsInitializedOpconv2d_14/bias*
_output_shapes
: 
]
VarIsInitializedOp_24VarIsInitializedOptraining/SGD/Variable_37*
_output_shapes
: 
]
VarIsInitializedOp_25VarIsInitializedOptraining/SGD/Variable_18*
_output_shapes
: 
U
VarIsInitializedOp_26VarIsInitializedOpconv2d_14/kernel*
_output_shapes
: 
R
VarIsInitializedOp_27VarIsInitializedOpconv2d_9/bias*
_output_shapes
: 
J
VarIsInitializedOp_28VarIsInitializedOpcount*
_output_shapes
: 
\
VarIsInitializedOp_29VarIsInitializedOptraining/SGD/Variable_5*
_output_shapes
: 
Q
VarIsInitializedOp_30VarIsInitializedOpSGD/momentum*
_output_shapes
: 
]
VarIsInitializedOp_31VarIsInitializedOptraining/SGD/Variable_35*
_output_shapes
: 
T
VarIsInitializedOp_32VarIsInitializedOpconv2d_9/kernel*
_output_shapes
: 
S
VarIsInitializedOp_33VarIsInitializedOpconv2d_17/bias*
_output_shapes
: 
U
VarIsInitializedOp_34VarIsInitializedOpconv2d_17/kernel*
_output_shapes
: 
]
VarIsInitializedOp_35VarIsInitializedOptraining/SGD/Variable_40*
_output_shapes
: 
]
VarIsInitializedOp_36VarIsInitializedOptraining/SGD/Variable_22*
_output_shapes
: 
]
VarIsInitializedOp_37VarIsInitializedOptraining/SGD/Variable_32*
_output_shapes
: 
]
VarIsInitializedOp_38VarIsInitializedOptraining/SGD/Variable_23*
_output_shapes
: 
]
VarIsInitializedOp_39VarIsInitializedOptraining/SGD/Variable_33*
_output_shapes
: 
]
VarIsInitializedOp_40VarIsInitializedOptraining/SGD/Variable_28*
_output_shapes
: 
]
VarIsInitializedOp_41VarIsInitializedOptraining/SGD/Variable_26*
_output_shapes
: 
]
VarIsInitializedOp_42VarIsInitializedOptraining/SGD/Variable_11*
_output_shapes
: 
R
VarIsInitializedOp_43VarIsInitializedOpconv2d_3/bias*
_output_shapes
: 
S
VarIsInitializedOp_44VarIsInitializedOpconv2d_19/bias*
_output_shapes
: 
\
VarIsInitializedOp_45VarIsInitializedOptraining/SGD/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_46VarIsInitializedOptraining/SGD/Variable_41*
_output_shapes
: 
]
VarIsInitializedOp_47VarIsInitializedOptraining/SGD/Variable_42*
_output_shapes
: 
S
VarIsInitializedOp_48VarIsInitializedOpconv2d_11/bias*
_output_shapes
: 
R
VarIsInitializedOp_49VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
T
VarIsInitializedOp_50VarIsInitializedOpconv2d_5/kernel*
_output_shapes
: 
R
VarIsInitializedOp_51VarIsInitializedOpconv2d_5/bias*
_output_shapes
: 
U
VarIsInitializedOp_52VarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
]
VarIsInitializedOp_53VarIsInitializedOptraining/SGD/Variable_29*
_output_shapes
: 
U
VarIsInitializedOp_54VarIsInitializedOpconv2d_21/kernel*
_output_shapes
: 
S
VarIsInitializedOp_55VarIsInitializedOpconv2d_10/bias*
_output_shapes
: 
S
VarIsInitializedOp_56VarIsInitializedOpconv2d_21/bias*
_output_shapes
: 
]
VarIsInitializedOp_57VarIsInitializedOptraining/SGD/Variable_10*
_output_shapes
: 
U
VarIsInitializedOp_58VarIsInitializedOpconv2d_20/kernel*
_output_shapes
: 
S
VarIsInitializedOp_59VarIsInitializedOpconv2d_20/bias*
_output_shapes
: 
S
VarIsInitializedOp_60VarIsInitializedOpconv2d_18/bias*
_output_shapes
: 
]
VarIsInitializedOp_61VarIsInitializedOptraining/SGD/Variable_14*
_output_shapes
: 
Z
VarIsInitializedOp_62VarIsInitializedOptraining/SGD/Variable*
_output_shapes
: 
T
VarIsInitializedOp_63VarIsInitializedOpconv2d_3/kernel*
_output_shapes
: 
U
VarIsInitializedOp_64VarIsInitializedOpconv2d_19/kernel*
_output_shapes
: 
]
VarIsInitializedOp_65VarIsInitializedOptraining/SGD/Variable_24*
_output_shapes
: 
P
VarIsInitializedOp_66VarIsInitializedOpconv2d/bias*
_output_shapes
: 
U
VarIsInitializedOp_67VarIsInitializedOpconv2d_10/kernel*
_output_shapes
: 
]
VarIsInitializedOp_68VarIsInitializedOptraining/SGD/Variable_27*
_output_shapes
: 
\
VarIsInitializedOp_69VarIsInitializedOptraining/SGD/Variable_7*
_output_shapes
: 
T
VarIsInitializedOp_70VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_71VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
\
VarIsInitializedOp_72VarIsInitializedOptraining/SGD/Variable_1*
_output_shapes
: 
U
VarIsInitializedOp_73VarIsInitializedOpconv2d_18/kernel*
_output_shapes
: 
R
VarIsInitializedOp_74VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
S
VarIsInitializedOp_75VarIsInitializedOpconv2d_13/bias*
_output_shapes
: 
]
VarIsInitializedOp_76VarIsInitializedOptraining/SGD/Variable_43*
_output_shapes
: 
]
VarIsInitializedOp_77VarIsInitializedOptraining/SGD/Variable_15*
_output_shapes
: 
]
VarIsInitializedOp_78VarIsInitializedOptraining/SGD/Variable_25*
_output_shapes
: 
\
VarIsInitializedOp_79VarIsInitializedOptraining/SGD/Variable_2*
_output_shapes
: 
T
VarIsInitializedOp_80VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
U
VarIsInitializedOp_81VarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
T
VarIsInitializedOp_82VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
U
VarIsInitializedOp_83VarIsInitializedOpconv2d_13/kernel*
_output_shapes
: 
U
VarIsInitializedOp_84VarIsInitializedOpconv2d_16/kernel*
_output_shapes
: 
]
VarIsInitializedOp_85VarIsInitializedOptraining/SGD/Variable_13*
_output_shapes
: 
\
VarIsInitializedOp_86VarIsInitializedOptraining/SGD/Variable_3*
_output_shapes
: 
]
VarIsInitializedOp_87VarIsInitializedOptraining/SGD/Variable_12*
_output_shapes
: 
T
VarIsInitializedOp_88VarIsInitializedOpconv2d_4/kernel*
_output_shapes
: 
R
VarIsInitializedOp_89VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
T
VarIsInitializedOp_90VarIsInitializedOpconv2d_8/kernel*
_output_shapes
: 
S
VarIsInitializedOp_91VarIsInitializedOpconv2d_12/bias*
_output_shapes
: 
S
VarIsInitializedOp_92VarIsInitializedOpconv2d_16/bias*
_output_shapes
: 
R
VarIsInitializedOp_93VarIsInitializedOpconv2d_8/bias*
_output_shapes
: 
√
initNoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_10/bias/Assign^conv2d_10/kernel/Assign^conv2d_11/bias/Assign^conv2d_11/kernel/Assign^conv2d_12/bias/Assign^conv2d_12/kernel/Assign^conv2d_13/bias/Assign^conv2d_13/kernel/Assign^conv2d_14/bias/Assign^conv2d_14/kernel/Assign^conv2d_15/bias/Assign^conv2d_15/kernel/Assign^conv2d_16/bias/Assign^conv2d_16/kernel/Assign^conv2d_17/bias/Assign^conv2d_17/kernel/Assign^conv2d_18/bias/Assign^conv2d_18/kernel/Assign^conv2d_19/bias/Assign^conv2d_19/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_20/bias/Assign^conv2d_20/kernel/Assign^conv2d_21/bias/Assign^conv2d_21/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^conv2d_8/bias/Assign^conv2d_8/kernel/Assign^conv2d_9/bias/Assign^conv2d_9/kernel/Assign^count/Assign^total/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign ^training/SGD/Variable_16/Assign ^training/SGD/Variable_17/Assign ^training/SGD/Variable_18/Assign ^training/SGD/Variable_19/Assign^training/SGD/Variable_2/Assign ^training/SGD/Variable_20/Assign ^training/SGD/Variable_21/Assign ^training/SGD/Variable_22/Assign ^training/SGD/Variable_23/Assign ^training/SGD/Variable_24/Assign ^training/SGD/Variable_25/Assign ^training/SGD/Variable_26/Assign ^training/SGD/Variable_27/Assign ^training/SGD/Variable_28/Assign ^training/SGD/Variable_29/Assign^training/SGD/Variable_3/Assign ^training/SGD/Variable_30/Assign ^training/SGD/Variable_31/Assign ^training/SGD/Variable_32/Assign ^training/SGD/Variable_33/Assign ^training/SGD/Variable_34/Assign ^training/SGD/Variable_35/Assign ^training/SGD/Variable_36/Assign ^training/SGD/Variable_37/Assign ^training/SGD/Variable_38/Assign ^training/SGD/Variable_39/Assign^training/SGD/Variable_4/Assign ^training/SGD/Variable_40/Assign ^training/SGD/Variable_41/Assign ^training/SGD/Variable_42/Assign ^training/SGD/Variable_43/Assign^training/SGD/Variable_5/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign""х_
trainable_variables═_╩_
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
Д
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
Д
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
Д
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
Д
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
Д
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
Д
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
Д
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
И
conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2-conv2d_10/kernel/Initializer/random_uniform:08
w
conv2d_10/bias:0conv2d_10/bias/Assign$conv2d_10/bias/Read/ReadVariableOp:0(2"conv2d_10/bias/Initializer/zeros:08
И
conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08
И
conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08
И
conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2-conv2d_13/kernel/Initializer/random_uniform:08
w
conv2d_13/bias:0conv2d_13/bias/Assign$conv2d_13/bias/Read/ReadVariableOp:0(2"conv2d_13/bias/Initializer/zeros:08
И
conv2d_14/kernel:0conv2d_14/kernel/Assign&conv2d_14/kernel/Read/ReadVariableOp:0(2-conv2d_14/kernel/Initializer/random_uniform:08
w
conv2d_14/bias:0conv2d_14/bias/Assign$conv2d_14/bias/Read/ReadVariableOp:0(2"conv2d_14/bias/Initializer/zeros:08
И
conv2d_15/kernel:0conv2d_15/kernel/Assign&conv2d_15/kernel/Read/ReadVariableOp:0(2-conv2d_15/kernel/Initializer/random_uniform:08
w
conv2d_15/bias:0conv2d_15/bias/Assign$conv2d_15/bias/Read/ReadVariableOp:0(2"conv2d_15/bias/Initializer/zeros:08
И
conv2d_16/kernel:0conv2d_16/kernel/Assign&conv2d_16/kernel/Read/ReadVariableOp:0(2-conv2d_16/kernel/Initializer/random_uniform:08
w
conv2d_16/bias:0conv2d_16/bias/Assign$conv2d_16/bias/Read/ReadVariableOp:0(2"conv2d_16/bias/Initializer/zeros:08
И
conv2d_17/kernel:0conv2d_17/kernel/Assign&conv2d_17/kernel/Read/ReadVariableOp:0(2-conv2d_17/kernel/Initializer/random_uniform:08
w
conv2d_17/bias:0conv2d_17/bias/Assign$conv2d_17/bias/Read/ReadVariableOp:0(2"conv2d_17/bias/Initializer/zeros:08
И
conv2d_18/kernel:0conv2d_18/kernel/Assign&conv2d_18/kernel/Read/ReadVariableOp:0(2-conv2d_18/kernel/Initializer/random_uniform:08
w
conv2d_18/bias:0conv2d_18/bias/Assign$conv2d_18/bias/Read/ReadVariableOp:0(2"conv2d_18/bias/Initializer/zeros:08
И
conv2d_19/kernel:0conv2d_19/kernel/Assign&conv2d_19/kernel/Read/ReadVariableOp:0(2-conv2d_19/kernel/Initializer/random_uniform:08
w
conv2d_19/bias:0conv2d_19/bias/Assign$conv2d_19/bias/Read/ReadVariableOp:0(2"conv2d_19/bias/Initializer/zeros:08
И
conv2d_20/kernel:0conv2d_20/kernel/Assign&conv2d_20/kernel/Read/ReadVariableOp:0(2-conv2d_20/kernel/Initializer/random_uniform:08
w
conv2d_20/bias:0conv2d_20/bias/Assign$conv2d_20/bias/Read/ReadVariableOp:0(2"conv2d_20/bias/Initializer/zeros:08
И
conv2d_21/kernel:0conv2d_21/kernel/Assign&conv2d_21/kernel/Read/ReadVariableOp:0(2-conv2d_21/kernel/Initializer/random_uniform:08
w
conv2d_21/bias:0conv2d_21/bias/Assign$conv2d_21/bias/Read/ReadVariableOp:0(2"conv2d_21/bias/Initializer/zeros:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08
~
training/SGD/Variable:0training/SGD/Variable/Assign+training/SGD/Variable/Read/ReadVariableOp:0(2training/SGD/zeros:08
Ж
training/SGD/Variable_1:0training/SGD/Variable_1/Assign-training/SGD/Variable_1/Read/ReadVariableOp:0(2training/SGD/zeros_1:08
Ж
training/SGD/Variable_2:0training/SGD/Variable_2/Assign-training/SGD/Variable_2/Read/ReadVariableOp:0(2training/SGD/zeros_2:08
Ж
training/SGD/Variable_3:0training/SGD/Variable_3/Assign-training/SGD/Variable_3/Read/ReadVariableOp:0(2training/SGD/zeros_3:08
Ж
training/SGD/Variable_4:0training/SGD/Variable_4/Assign-training/SGD/Variable_4/Read/ReadVariableOp:0(2training/SGD/zeros_4:08
Ж
training/SGD/Variable_5:0training/SGD/Variable_5/Assign-training/SGD/Variable_5/Read/ReadVariableOp:0(2training/SGD/zeros_5:08
Ж
training/SGD/Variable_6:0training/SGD/Variable_6/Assign-training/SGD/Variable_6/Read/ReadVariableOp:0(2training/SGD/zeros_6:08
Ж
training/SGD/Variable_7:0training/SGD/Variable_7/Assign-training/SGD/Variable_7/Read/ReadVariableOp:0(2training/SGD/zeros_7:08
Ж
training/SGD/Variable_8:0training/SGD/Variable_8/Assign-training/SGD/Variable_8/Read/ReadVariableOp:0(2training/SGD/zeros_8:08
Ж
training/SGD/Variable_9:0training/SGD/Variable_9/Assign-training/SGD/Variable_9/Read/ReadVariableOp:0(2training/SGD/zeros_9:08
К
training/SGD/Variable_10:0training/SGD/Variable_10/Assign.training/SGD/Variable_10/Read/ReadVariableOp:0(2training/SGD/zeros_10:08
К
training/SGD/Variable_11:0training/SGD/Variable_11/Assign.training/SGD/Variable_11/Read/ReadVariableOp:0(2training/SGD/zeros_11:08
К
training/SGD/Variable_12:0training/SGD/Variable_12/Assign.training/SGD/Variable_12/Read/ReadVariableOp:0(2training/SGD/zeros_12:08
К
training/SGD/Variable_13:0training/SGD/Variable_13/Assign.training/SGD/Variable_13/Read/ReadVariableOp:0(2training/SGD/zeros_13:08
К
training/SGD/Variable_14:0training/SGD/Variable_14/Assign.training/SGD/Variable_14/Read/ReadVariableOp:0(2training/SGD/zeros_14:08
К
training/SGD/Variable_15:0training/SGD/Variable_15/Assign.training/SGD/Variable_15/Read/ReadVariableOp:0(2training/SGD/zeros_15:08
К
training/SGD/Variable_16:0training/SGD/Variable_16/Assign.training/SGD/Variable_16/Read/ReadVariableOp:0(2training/SGD/zeros_16:08
К
training/SGD/Variable_17:0training/SGD/Variable_17/Assign.training/SGD/Variable_17/Read/ReadVariableOp:0(2training/SGD/zeros_17:08
К
training/SGD/Variable_18:0training/SGD/Variable_18/Assign.training/SGD/Variable_18/Read/ReadVariableOp:0(2training/SGD/zeros_18:08
К
training/SGD/Variable_19:0training/SGD/Variable_19/Assign.training/SGD/Variable_19/Read/ReadVariableOp:0(2training/SGD/zeros_19:08
К
training/SGD/Variable_20:0training/SGD/Variable_20/Assign.training/SGD/Variable_20/Read/ReadVariableOp:0(2training/SGD/zeros_20:08
К
training/SGD/Variable_21:0training/SGD/Variable_21/Assign.training/SGD/Variable_21/Read/ReadVariableOp:0(2training/SGD/zeros_21:08
К
training/SGD/Variable_22:0training/SGD/Variable_22/Assign.training/SGD/Variable_22/Read/ReadVariableOp:0(2training/SGD/zeros_22:08
К
training/SGD/Variable_23:0training/SGD/Variable_23/Assign.training/SGD/Variable_23/Read/ReadVariableOp:0(2training/SGD/zeros_23:08
К
training/SGD/Variable_24:0training/SGD/Variable_24/Assign.training/SGD/Variable_24/Read/ReadVariableOp:0(2training/SGD/zeros_24:08
К
training/SGD/Variable_25:0training/SGD/Variable_25/Assign.training/SGD/Variable_25/Read/ReadVariableOp:0(2training/SGD/zeros_25:08
К
training/SGD/Variable_26:0training/SGD/Variable_26/Assign.training/SGD/Variable_26/Read/ReadVariableOp:0(2training/SGD/zeros_26:08
К
training/SGD/Variable_27:0training/SGD/Variable_27/Assign.training/SGD/Variable_27/Read/ReadVariableOp:0(2training/SGD/zeros_27:08
К
training/SGD/Variable_28:0training/SGD/Variable_28/Assign.training/SGD/Variable_28/Read/ReadVariableOp:0(2training/SGD/zeros_28:08
К
training/SGD/Variable_29:0training/SGD/Variable_29/Assign.training/SGD/Variable_29/Read/ReadVariableOp:0(2training/SGD/zeros_29:08
К
training/SGD/Variable_30:0training/SGD/Variable_30/Assign.training/SGD/Variable_30/Read/ReadVariableOp:0(2training/SGD/zeros_30:08
К
training/SGD/Variable_31:0training/SGD/Variable_31/Assign.training/SGD/Variable_31/Read/ReadVariableOp:0(2training/SGD/zeros_31:08
К
training/SGD/Variable_32:0training/SGD/Variable_32/Assign.training/SGD/Variable_32/Read/ReadVariableOp:0(2training/SGD/zeros_32:08
К
training/SGD/Variable_33:0training/SGD/Variable_33/Assign.training/SGD/Variable_33/Read/ReadVariableOp:0(2training/SGD/zeros_33:08
К
training/SGD/Variable_34:0training/SGD/Variable_34/Assign.training/SGD/Variable_34/Read/ReadVariableOp:0(2training/SGD/zeros_34:08
К
training/SGD/Variable_35:0training/SGD/Variable_35/Assign.training/SGD/Variable_35/Read/ReadVariableOp:0(2training/SGD/zeros_35:08
К
training/SGD/Variable_36:0training/SGD/Variable_36/Assign.training/SGD/Variable_36/Read/ReadVariableOp:0(2training/SGD/zeros_36:08
К
training/SGD/Variable_37:0training/SGD/Variable_37/Assign.training/SGD/Variable_37/Read/ReadVariableOp:0(2training/SGD/zeros_37:08
К
training/SGD/Variable_38:0training/SGD/Variable_38/Assign.training/SGD/Variable_38/Read/ReadVariableOp:0(2training/SGD/zeros_38:08
К
training/SGD/Variable_39:0training/SGD/Variable_39/Assign.training/SGD/Variable_39/Read/ReadVariableOp:0(2training/SGD/zeros_39:08
К
training/SGD/Variable_40:0training/SGD/Variable_40/Assign.training/SGD/Variable_40/Read/ReadVariableOp:0(2training/SGD/zeros_40:08
К
training/SGD/Variable_41:0training/SGD/Variable_41/Assign.training/SGD/Variable_41/Read/ReadVariableOp:0(2training/SGD/zeros_41:08
К
training/SGD/Variable_42:0training/SGD/Variable_42/Assign.training/SGD/Variable_42/Read/ReadVariableOp:0(2training/SGD/zeros_42:08
К
training/SGD/Variable_43:0training/SGD/Variable_43/Assign.training/SGD/Variable_43/Read/ReadVariableOp:0(2training/SGD/zeros_43:08"█_
	variables═_╩_
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
Д
conv2d_3/kernel:0conv2d_3/kernel/Assign%conv2d_3/kernel/Read/ReadVariableOp:0(2,conv2d_3/kernel/Initializer/random_uniform:08
s
conv2d_3/bias:0conv2d_3/bias/Assign#conv2d_3/bias/Read/ReadVariableOp:0(2!conv2d_3/bias/Initializer/zeros:08
Д
conv2d_4/kernel:0conv2d_4/kernel/Assign%conv2d_4/kernel/Read/ReadVariableOp:0(2,conv2d_4/kernel/Initializer/random_uniform:08
s
conv2d_4/bias:0conv2d_4/bias/Assign#conv2d_4/bias/Read/ReadVariableOp:0(2!conv2d_4/bias/Initializer/zeros:08
Д
conv2d_5/kernel:0conv2d_5/kernel/Assign%conv2d_5/kernel/Read/ReadVariableOp:0(2,conv2d_5/kernel/Initializer/random_uniform:08
s
conv2d_5/bias:0conv2d_5/bias/Assign#conv2d_5/bias/Read/ReadVariableOp:0(2!conv2d_5/bias/Initializer/zeros:08
Д
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
Д
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
Д
conv2d_8/kernel:0conv2d_8/kernel/Assign%conv2d_8/kernel/Read/ReadVariableOp:0(2,conv2d_8/kernel/Initializer/random_uniform:08
s
conv2d_8/bias:0conv2d_8/bias/Assign#conv2d_8/bias/Read/ReadVariableOp:0(2!conv2d_8/bias/Initializer/zeros:08
Д
conv2d_9/kernel:0conv2d_9/kernel/Assign%conv2d_9/kernel/Read/ReadVariableOp:0(2,conv2d_9/kernel/Initializer/random_uniform:08
s
conv2d_9/bias:0conv2d_9/bias/Assign#conv2d_9/bias/Read/ReadVariableOp:0(2!conv2d_9/bias/Initializer/zeros:08
И
conv2d_10/kernel:0conv2d_10/kernel/Assign&conv2d_10/kernel/Read/ReadVariableOp:0(2-conv2d_10/kernel/Initializer/random_uniform:08
w
conv2d_10/bias:0conv2d_10/bias/Assign$conv2d_10/bias/Read/ReadVariableOp:0(2"conv2d_10/bias/Initializer/zeros:08
И
conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08
И
conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08
И
conv2d_13/kernel:0conv2d_13/kernel/Assign&conv2d_13/kernel/Read/ReadVariableOp:0(2-conv2d_13/kernel/Initializer/random_uniform:08
w
conv2d_13/bias:0conv2d_13/bias/Assign$conv2d_13/bias/Read/ReadVariableOp:0(2"conv2d_13/bias/Initializer/zeros:08
И
conv2d_14/kernel:0conv2d_14/kernel/Assign&conv2d_14/kernel/Read/ReadVariableOp:0(2-conv2d_14/kernel/Initializer/random_uniform:08
w
conv2d_14/bias:0conv2d_14/bias/Assign$conv2d_14/bias/Read/ReadVariableOp:0(2"conv2d_14/bias/Initializer/zeros:08
И
conv2d_15/kernel:0conv2d_15/kernel/Assign&conv2d_15/kernel/Read/ReadVariableOp:0(2-conv2d_15/kernel/Initializer/random_uniform:08
w
conv2d_15/bias:0conv2d_15/bias/Assign$conv2d_15/bias/Read/ReadVariableOp:0(2"conv2d_15/bias/Initializer/zeros:08
И
conv2d_16/kernel:0conv2d_16/kernel/Assign&conv2d_16/kernel/Read/ReadVariableOp:0(2-conv2d_16/kernel/Initializer/random_uniform:08
w
conv2d_16/bias:0conv2d_16/bias/Assign$conv2d_16/bias/Read/ReadVariableOp:0(2"conv2d_16/bias/Initializer/zeros:08
И
conv2d_17/kernel:0conv2d_17/kernel/Assign&conv2d_17/kernel/Read/ReadVariableOp:0(2-conv2d_17/kernel/Initializer/random_uniform:08
w
conv2d_17/bias:0conv2d_17/bias/Assign$conv2d_17/bias/Read/ReadVariableOp:0(2"conv2d_17/bias/Initializer/zeros:08
И
conv2d_18/kernel:0conv2d_18/kernel/Assign&conv2d_18/kernel/Read/ReadVariableOp:0(2-conv2d_18/kernel/Initializer/random_uniform:08
w
conv2d_18/bias:0conv2d_18/bias/Assign$conv2d_18/bias/Read/ReadVariableOp:0(2"conv2d_18/bias/Initializer/zeros:08
И
conv2d_19/kernel:0conv2d_19/kernel/Assign&conv2d_19/kernel/Read/ReadVariableOp:0(2-conv2d_19/kernel/Initializer/random_uniform:08
w
conv2d_19/bias:0conv2d_19/bias/Assign$conv2d_19/bias/Read/ReadVariableOp:0(2"conv2d_19/bias/Initializer/zeros:08
И
conv2d_20/kernel:0conv2d_20/kernel/Assign&conv2d_20/kernel/Read/ReadVariableOp:0(2-conv2d_20/kernel/Initializer/random_uniform:08
w
conv2d_20/bias:0conv2d_20/bias/Assign$conv2d_20/bias/Read/ReadVariableOp:0(2"conv2d_20/bias/Initializer/zeros:08
И
conv2d_21/kernel:0conv2d_21/kernel/Assign&conv2d_21/kernel/Read/ReadVariableOp:0(2-conv2d_21/kernel/Initializer/random_uniform:08
w
conv2d_21/bias:0conv2d_21/bias/Assign$conv2d_21/bias/Read/ReadVariableOp:0(2"conv2d_21/bias/Initializer/zeros:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08
~
training/SGD/Variable:0training/SGD/Variable/Assign+training/SGD/Variable/Read/ReadVariableOp:0(2training/SGD/zeros:08
Ж
training/SGD/Variable_1:0training/SGD/Variable_1/Assign-training/SGD/Variable_1/Read/ReadVariableOp:0(2training/SGD/zeros_1:08
Ж
training/SGD/Variable_2:0training/SGD/Variable_2/Assign-training/SGD/Variable_2/Read/ReadVariableOp:0(2training/SGD/zeros_2:08
Ж
training/SGD/Variable_3:0training/SGD/Variable_3/Assign-training/SGD/Variable_3/Read/ReadVariableOp:0(2training/SGD/zeros_3:08
Ж
training/SGD/Variable_4:0training/SGD/Variable_4/Assign-training/SGD/Variable_4/Read/ReadVariableOp:0(2training/SGD/zeros_4:08
Ж
training/SGD/Variable_5:0training/SGD/Variable_5/Assign-training/SGD/Variable_5/Read/ReadVariableOp:0(2training/SGD/zeros_5:08
Ж
training/SGD/Variable_6:0training/SGD/Variable_6/Assign-training/SGD/Variable_6/Read/ReadVariableOp:0(2training/SGD/zeros_6:08
Ж
training/SGD/Variable_7:0training/SGD/Variable_7/Assign-training/SGD/Variable_7/Read/ReadVariableOp:0(2training/SGD/zeros_7:08
Ж
training/SGD/Variable_8:0training/SGD/Variable_8/Assign-training/SGD/Variable_8/Read/ReadVariableOp:0(2training/SGD/zeros_8:08
Ж
training/SGD/Variable_9:0training/SGD/Variable_9/Assign-training/SGD/Variable_9/Read/ReadVariableOp:0(2training/SGD/zeros_9:08
К
training/SGD/Variable_10:0training/SGD/Variable_10/Assign.training/SGD/Variable_10/Read/ReadVariableOp:0(2training/SGD/zeros_10:08
К
training/SGD/Variable_11:0training/SGD/Variable_11/Assign.training/SGD/Variable_11/Read/ReadVariableOp:0(2training/SGD/zeros_11:08
К
training/SGD/Variable_12:0training/SGD/Variable_12/Assign.training/SGD/Variable_12/Read/ReadVariableOp:0(2training/SGD/zeros_12:08
К
training/SGD/Variable_13:0training/SGD/Variable_13/Assign.training/SGD/Variable_13/Read/ReadVariableOp:0(2training/SGD/zeros_13:08
К
training/SGD/Variable_14:0training/SGD/Variable_14/Assign.training/SGD/Variable_14/Read/ReadVariableOp:0(2training/SGD/zeros_14:08
К
training/SGD/Variable_15:0training/SGD/Variable_15/Assign.training/SGD/Variable_15/Read/ReadVariableOp:0(2training/SGD/zeros_15:08
К
training/SGD/Variable_16:0training/SGD/Variable_16/Assign.training/SGD/Variable_16/Read/ReadVariableOp:0(2training/SGD/zeros_16:08
К
training/SGD/Variable_17:0training/SGD/Variable_17/Assign.training/SGD/Variable_17/Read/ReadVariableOp:0(2training/SGD/zeros_17:08
К
training/SGD/Variable_18:0training/SGD/Variable_18/Assign.training/SGD/Variable_18/Read/ReadVariableOp:0(2training/SGD/zeros_18:08
К
training/SGD/Variable_19:0training/SGD/Variable_19/Assign.training/SGD/Variable_19/Read/ReadVariableOp:0(2training/SGD/zeros_19:08
К
training/SGD/Variable_20:0training/SGD/Variable_20/Assign.training/SGD/Variable_20/Read/ReadVariableOp:0(2training/SGD/zeros_20:08
К
training/SGD/Variable_21:0training/SGD/Variable_21/Assign.training/SGD/Variable_21/Read/ReadVariableOp:0(2training/SGD/zeros_21:08
К
training/SGD/Variable_22:0training/SGD/Variable_22/Assign.training/SGD/Variable_22/Read/ReadVariableOp:0(2training/SGD/zeros_22:08
К
training/SGD/Variable_23:0training/SGD/Variable_23/Assign.training/SGD/Variable_23/Read/ReadVariableOp:0(2training/SGD/zeros_23:08
К
training/SGD/Variable_24:0training/SGD/Variable_24/Assign.training/SGD/Variable_24/Read/ReadVariableOp:0(2training/SGD/zeros_24:08
К
training/SGD/Variable_25:0training/SGD/Variable_25/Assign.training/SGD/Variable_25/Read/ReadVariableOp:0(2training/SGD/zeros_25:08
К
training/SGD/Variable_26:0training/SGD/Variable_26/Assign.training/SGD/Variable_26/Read/ReadVariableOp:0(2training/SGD/zeros_26:08
К
training/SGD/Variable_27:0training/SGD/Variable_27/Assign.training/SGD/Variable_27/Read/ReadVariableOp:0(2training/SGD/zeros_27:08
К
training/SGD/Variable_28:0training/SGD/Variable_28/Assign.training/SGD/Variable_28/Read/ReadVariableOp:0(2training/SGD/zeros_28:08
К
training/SGD/Variable_29:0training/SGD/Variable_29/Assign.training/SGD/Variable_29/Read/ReadVariableOp:0(2training/SGD/zeros_29:08
К
training/SGD/Variable_30:0training/SGD/Variable_30/Assign.training/SGD/Variable_30/Read/ReadVariableOp:0(2training/SGD/zeros_30:08
К
training/SGD/Variable_31:0training/SGD/Variable_31/Assign.training/SGD/Variable_31/Read/ReadVariableOp:0(2training/SGD/zeros_31:08
К
training/SGD/Variable_32:0training/SGD/Variable_32/Assign.training/SGD/Variable_32/Read/ReadVariableOp:0(2training/SGD/zeros_32:08
К
training/SGD/Variable_33:0training/SGD/Variable_33/Assign.training/SGD/Variable_33/Read/ReadVariableOp:0(2training/SGD/zeros_33:08
К
training/SGD/Variable_34:0training/SGD/Variable_34/Assign.training/SGD/Variable_34/Read/ReadVariableOp:0(2training/SGD/zeros_34:08
К
training/SGD/Variable_35:0training/SGD/Variable_35/Assign.training/SGD/Variable_35/Read/ReadVariableOp:0(2training/SGD/zeros_35:08
К
training/SGD/Variable_36:0training/SGD/Variable_36/Assign.training/SGD/Variable_36/Read/ReadVariableOp:0(2training/SGD/zeros_36:08
К
training/SGD/Variable_37:0training/SGD/Variable_37/Assign.training/SGD/Variable_37/Read/ReadVariableOp:0(2training/SGD/zeros_37:08
К
training/SGD/Variable_38:0training/SGD/Variable_38/Assign.training/SGD/Variable_38/Read/ReadVariableOp:0(2training/SGD/zeros_38:08
К
training/SGD/Variable_39:0training/SGD/Variable_39/Assign.training/SGD/Variable_39/Read/ReadVariableOp:0(2training/SGD/zeros_39:08
К
training/SGD/Variable_40:0training/SGD/Variable_40/Assign.training/SGD/Variable_40/Read/ReadVariableOp:0(2training/SGD/zeros_40:08
К
training/SGD/Variable_41:0training/SGD/Variable_41/Assign.training/SGD/Variable_41/Read/ReadVariableOp:0(2training/SGD/zeros_41:08
К
training/SGD/Variable_42:0training/SGD/Variable_42/Assign.training/SGD/Variable_42/Read/ReadVariableOp:0(2training/SGD/zeros_42:08
К
training/SGD/Variable_43:0training/SGD/Variable_43/Assign.training/SGD/Variable_43/Read/ReadVariableOp:0(2training/SGD/zeros_43:08┴¤mc