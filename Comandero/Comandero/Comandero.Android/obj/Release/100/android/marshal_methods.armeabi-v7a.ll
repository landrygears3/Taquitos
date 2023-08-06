; ModuleID = 'obj\Release\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\100\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [160 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 74
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 32
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 69
	i32 122350210, ; 3: System.Threading.Channels.dll => 0x74aea82 => 46
	i32 148395041, ; 4: Lottie.Forms.dll => 0x8d85421 => 14
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 66
	i32 221063263, ; 7: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 16
	i32 318968648, ; 8: Xamarin.AndroidX.Activity.dll => 0x13031348 => 49
	i32 321597661, ; 9: System.Numerics => 0x132b30dd => 42
	i32 342366114, ; 10: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 348048101, ; 11: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 17
	i32 442521989, ; 12: Xamarin.Essentials => 0x1a605985 => 68
	i32 450948140, ; 13: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 58
	i32 458494020, ; 14: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 20
	i32 465846621, ; 15: mscorlib => 0x1bc4415d => 31
	i32 469710990, ; 16: System.dll => 0x1bff388e => 40
	i32 501000162, ; 17: Prism.dll => 0x1ddca7e2 => 33
	i32 513247710, ; 18: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 29
	i32 520798577, ; 19: FFImageLoading.Platform => 0x1f0ac171 => 9
	i32 539058512, ; 20: Microsoft.Extensions.Logging => 0x20216150 => 27
	i32 548916678, ; 21: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 22
	i32 583021779, ; 22: Prism.DryIoc.Forms => 0x22c034d3 => 34
	i32 627609679, ; 23: Xamarin.AndroidX.CustomView => 0x2568904f => 56
	i32 662205335, ; 24: System.Text.Encodings.Web.dll => 0x27787397 => 44
	i32 690569205, ; 25: System.Xml.Linq.dll => 0x29293ff5 => 48
	i32 698030881, ; 26: FFImageLoading.Transformations => 0x299b1b21 => 10
	i32 789151979, ; 27: Microsoft.Extensions.Options => 0x2f0980eb => 28
	i32 809851609, ; 28: System.Drawing.Common.dll => 0x30455ad9 => 76
	i32 832711436, ; 29: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 21
	i32 928116545, ; 30: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 74
	i32 955402788, ; 31: Newtonsoft.Json => 0x38f24a24 => 32
	i32 961995525, ; 32: Square.OkIO.dll => 0x3956e305 => 36
	i32 967690846, ; 33: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 974778368, ; 34: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 1012816738, ; 35: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 65
	i32 1028951442, ; 36: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 23
	i32 1035644815, ; 37: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1042160112, ; 38: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 71
	i32 1052210849, ; 39: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 62
	i32 1058641855, ; 40: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 17
	i32 1098259244, ; 41: System => 0x41761b2c => 40
	i32 1233093933, ; 42: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 18
	i32 1249039447, ; 43: Comandero.Android => 0x4a72d457 => 0
	i32 1293217323, ; 44: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 57
	i32 1365406463, ; 45: System.ServiceModel.Internals.dll => 0x516272ff => 77
	i32 1376866003, ; 46: Xamarin.AndroidX.SavedState => 0x52114ed3 => 65
	i32 1406073936, ; 47: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 54
	i32 1411638395, ; 48: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 43
	i32 1414043276, ; 49: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 15
	i32 1460219004, ; 50: Xamarin.Forms.Xaml => 0x57092c7c => 72
	i32 1469204771, ; 51: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 50
	i32 1470490898, ; 52: Microsoft.Extensions.Primitives => 0x57a5e912 => 29
	i32 1530772511, ; 53: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 8
	i32 1592978981, ; 54: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 55: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 63
	i32 1635482189, ; 56: FFImageLoading.Transformations.dll => 0x617b7a4d => 10
	i32 1639515021, ; 57: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 58: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 73
	i32 1663627514, ; 59: DryIoc => 0x6328f0fa => 4
	i32 1729485958, ; 60: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1746115085, ; 61: System.IO.Pipelines.dll => 0x68139a0d => 41
	i32 1766324549, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 66
	i32 1770582343, ; 63: Microsoft.Extensions.Logging.dll => 0x6988f147 => 27
	i32 1776026572, ; 64: System.Core.dll => 0x69dc03cc => 38
	i32 1788241197, ; 65: Xamarin.AndroidX.Fragment => 0x6a96652d => 58
	i32 1793089559, ; 66: FFImageLoading.Forms.dll => 0x6ae06017 => 7
	i32 1796167890, ; 67: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 22
	i32 1808609942, ; 68: Xamarin.AndroidX.Loader => 0x6bcd3296 => 63
	i32 1813201214, ; 69: Xamarin.Google.Android.Material => 0x6c13413e => 73
	i32 1828688058, ; 70: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 26
	i32 1840964413, ; 71: FFImageLoading.Forms => 0x6dbae33d => 7
	i32 1849271627, ; 72: Prism.Forms.dll => 0x6e39a54b => 35
	i32 1867746548, ; 73: Xamarin.Essentials.dll => 0x6f538cf4 => 68
	i32 1878053835, ; 74: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 72
	i32 1945717188, ; 75: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 18
	i32 1967247327, ; 76: Comandero.dll => 0x7541cfdf => 3
	i32 1967334205, ; 77: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 20
	i32 1972520711, ; 78: Comandero => 0x75924707 => 3
	i32 2011961780, ; 79: System.Buffers.dll => 0x77ec19b4 => 37
	i32 2019465201, ; 80: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 62
	i32 2028864565, ; 81: Essential.Interfaces.dll => 0x78ee0435 => 5
	i32 2055257422, ; 82: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 61
	i32 2066202781, ; 83: Prism => 0x7b27c09d => 33
	i32 2097448633, ; 84: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 59
	i32 2126786730, ; 85: Xamarin.Forms.Platform.Android => 0x7ec430aa => 70
	i32 2181898931, ; 86: Microsoft.Extensions.Options.dll => 0x820d22b3 => 28
	i32 2192057212, ; 87: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 26
	i32 2201231467, ; 88: System.Net.Http => 0x8334206b => 1
	i32 2229158877, ; 89: Microsoft.Extensions.Features.dll => 0x84de43dd => 25
	i32 2279755925, ; 90: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 64
	i32 2319144366, ; 91: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 19
	i32 2340826669, ; 92: FFImageLoading.dll => 0x8b862e2d => 6
	i32 2475788418, ; 93: Java.Interop.dll => 0x93918882 => 12
	i32 2570120770, ; 94: System.Text.Encodings.Web => 0x9930ee42 => 44
	i32 2637500010, ; 95: Microsoft.Extensions.Features => 0x9d350e6a => 25
	i32 2732626843, ; 96: Xamarin.AndroidX.Activity => 0xa2e0939b => 49
	i32 2735172069, ; 97: System.Threading.Channels => 0xa30769e5 => 46
	i32 2737747696, ; 98: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 50
	i32 2766581644, ; 99: Xamarin.Forms.Core => 0xa4e6af8c => 69
	i32 2778768386, ; 100: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 67
	i32 2792073544, ; 101: Prism.DryIoc.Forms.dll => 0xa66ba948 => 34
	i32 2810250172, ; 102: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 54
	i32 2819470561, ; 103: System.Xml.dll => 0xa80db4e1 => 47
	i32 2842369275, ; 104: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 8
	i32 2843355708, ; 105: Lottie.Android.dll => 0xa97a2a3c => 13
	i32 2853208004, ; 106: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 67
	i32 2873222696, ; 107: FFImageLoading => 0xab41e628 => 6
	i32 2875347124, ; 108: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 16
	i32 2905242038, ; 109: mscorlib.dll => 0xad2a79b6 => 31
	i32 2943219317, ; 110: Square.OkIO => 0xaf6df675 => 36
	i32 2978675010, ; 111: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 57
	i32 3044182254, ; 112: FormsViewGroup => 0xb57288ee => 11
	i32 3111772706, ; 113: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3124832203, ; 114: System.Threading.Tasks.Extensions => 0xba4127cb => 79
	i32 3204380047, ; 115: System.Data.dll => 0xbefef58f => 75
	i32 3247949154, ; 116: Mono.Security => 0xc197c562 => 78
	i32 3258312781, ; 117: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3263631797, ; 118: Lottie.Forms => 0xc28711b5 => 14
	i32 3265893370, ; 119: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 79
	i32 3317135071, ; 120: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 56
	i32 3317144872, ; 121: System.Data => 0xc5b79d28 => 75
	i32 3353484488, ; 122: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 59
	i32 3358260929, ; 123: System.Text.Json => 0xc82afec1 => 45
	i32 3362522851, ; 124: Xamarin.AndroidX.Core => 0xc86c06e3 => 55
	i32 3366347497, ; 125: Java.Interop => 0xc8a662e9 => 12
	i32 3374999561, ; 126: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 64
	i32 3377305119, ; 127: Comandero.Android.dll => 0xc94d961f => 0
	i32 3395150330, ; 128: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 43
	i32 3404865022, ; 129: System.ServiceModel.Internals => 0xcaf21dfe => 77
	i32 3428513518, ; 130: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 24
	i32 3429136800, ; 131: System.Xml => 0xcc6479a0 => 47
	i32 3466904072, ; 132: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 19
	i32 3476120550, ; 133: Mono.Android => 0xcf3163e6 => 30
	i32 3485117614, ; 134: System.Text.Json.dll => 0xcfbaacae => 45
	i32 3509114376, ; 135: System.Xml.Linq => 0xd128d608 => 48
	i32 3536029504, ; 136: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 70
	i32 3632359727, ; 137: Xamarin.Forms.Platform => 0xd881692f => 71
	i32 3639449509, ; 138: Lottie.Android => 0xd8ed97a5 => 13
	i32 3641597786, ; 139: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 61
	i32 3672681054, ; 140: Mono.Android.dll => 0xdae8aa5e => 30
	i32 3689375977, ; 141: System.Drawing.Common => 0xdbe768e9 => 76
	i32 3691870036, ; 142: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 21
	i32 3748608112, ; 143: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 39
	i32 3786282454, ; 144: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3787005001, ; 145: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 15
	i32 3829621856, ; 146: System.Numerics.dll => 0xe4436460 => 42
	i32 3841636137, ; 147: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 23
	i32 3896760992, ; 148: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 55
	i32 3955647286, ; 149: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 4023392905, ; 150: System.IO.Pipelines => 0xefd01a89 => 41
	i32 4085261167, ; 151: Prism.Forms => 0xf380236f => 35
	i32 4105002889, ; 152: Mono.Security.dll => 0xf4ad5f89 => 78
	i32 4126470640, ; 153: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 24
	i32 4151237749, ; 154: System.Core => 0xf76edc75 => 38
	i32 4165582995, ; 155: DryIoc.dll => 0xf849c093 => 4
	i32 4184283386, ; 156: FFImageLoading.Platform.dll => 0xf96718fa => 9
	i32 4213026141, ; 157: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 39
	i32 4260525087, ; 158: System.Buffers => 0xfdf2741f => 37
	i32 4293553716 ; 159: Essential.Interfaces => 0xffea6e34 => 5
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [160 x i32] [
	i32 74, i32 32, i32 69, i32 46, i32 14, i32 53, i32 66, i32 16, ; 0..7
	i32 49, i32 42, i32 60, i32 17, i32 68, i32 58, i32 20, i32 31, ; 8..15
	i32 40, i32 33, i32 29, i32 9, i32 27, i32 22, i32 34, i32 56, ; 16..23
	i32 44, i32 48, i32 10, i32 28, i32 76, i32 21, i32 74, i32 32, ; 24..31
	i32 36, i32 60, i32 11, i32 65, i32 23, i32 51, i32 71, i32 62, ; 32..39
	i32 17, i32 40, i32 18, i32 0, i32 57, i32 77, i32 65, i32 54, ; 40..47
	i32 43, i32 15, i32 72, i32 50, i32 29, i32 8, i32 2, i32 63, ; 48..55
	i32 10, i32 1, i32 73, i32 4, i32 52, i32 41, i32 66, i32 27, ; 56..63
	i32 38, i32 58, i32 7, i32 22, i32 63, i32 73, i32 26, i32 7, ; 64..71
	i32 35, i32 68, i32 72, i32 18, i32 3, i32 20, i32 3, i32 37, ; 72..79
	i32 62, i32 5, i32 61, i32 33, i32 59, i32 70, i32 28, i32 26, ; 80..87
	i32 1, i32 25, i32 64, i32 19, i32 6, i32 12, i32 44, i32 25, ; 88..95
	i32 49, i32 46, i32 50, i32 69, i32 67, i32 34, i32 54, i32 47, ; 96..103
	i32 8, i32 13, i32 67, i32 6, i32 16, i32 31, i32 36, i32 57, ; 104..111
	i32 11, i32 2, i32 79, i32 75, i32 78, i32 52, i32 14, i32 79, ; 112..119
	i32 56, i32 75, i32 59, i32 45, i32 55, i32 12, i32 64, i32 0, ; 120..127
	i32 43, i32 77, i32 24, i32 47, i32 19, i32 30, i32 45, i32 48, ; 128..135
	i32 70, i32 71, i32 13, i32 61, i32 30, i32 76, i32 21, i32 39, ; 136..143
	i32 53, i32 15, i32 42, i32 23, i32 55, i32 51, i32 41, i32 35, ; 144..151
	i32 78, i32 24, i32 38, i32 4, i32 9, i32 39, i32 37, i32 5 ; 160..159
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
