; ModuleID = 'obj\Debug\100\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\100\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [280 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 84
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 113
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 35
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 108
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 98
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 98
	i32 122350210, ; 6: System.Threading.Channels.dll => 0x74aea82 => 52
	i32 148395041, ; 7: Lottie.Forms.dll => 0x8d85421 => 17
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 65
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 99
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 63
	i32 220171995, ; 11: System.Diagnostics.Debug => 0xd1f8edb => 129
	i32 221063263, ; 12: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 19
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 79
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 137
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 121
	i32 246610117, ; 16: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 124
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 68
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 83
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 77
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 55
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 46
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 81
	i32 348048101, ; 23: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 20
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 45
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 67
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 107
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 125
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 76
	i32 458494020, ; 29: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 23
	i32 465846621, ; 30: mscorlib => 0x1bc4415d => 34
	i32 469710990, ; 31: System.dll => 0x1bff388e => 43
	i32 476646585, ; 32: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 77
	i32 486930444, ; 33: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 88
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 136
	i32 501000162, ; 35: Prism.dll => 0x1ddca7e2 => 36
	i32 513247710, ; 36: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 32
	i32 520798577, ; 37: FFImageLoading.Platform => 0x1f0ac171 => 12
	i32 526420162, ; 38: System.Transactions.dll => 0x1f6088c2 => 115
	i32 539058512, ; 39: Microsoft.Extensions.Logging => 0x20216150 => 30
	i32 545304856, ; 40: System.Runtime.Extensions => 0x2080b118 => 132
	i32 548916678, ; 41: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 25
	i32 583021779, ; 42: Prism.DryIoc.Forms => 0x22c034d3 => 37
	i32 605376203, ; 43: System.IO.Compression.FileSystem => 0x24154ecb => 119
	i32 627609679, ; 44: Xamarin.AndroidX.CustomView => 0x2568904f => 72
	i32 662205335, ; 45: System.Text.Encodings.Web.dll => 0x27787397 => 50
	i32 663517072, ; 46: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 104
	i32 666292255, ; 47: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 60
	i32 690569205, ; 48: System.Xml.Linq.dll => 0x29293ff5 => 54
	i32 698030881, ; 49: FFImageLoading.Transformations => 0x299b1b21 => 13
	i32 775507847, ; 50: System.IO.Compression => 0x2e394f87 => 118
	i32 789151979, ; 51: Microsoft.Extensions.Options => 0x2f0980eb => 31
	i32 809851609, ; 52: System.Drawing.Common.dll => 0x30455ad9 => 117
	i32 832711436, ; 53: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 24
	i32 843511501, ; 54: Xamarin.AndroidX.Print => 0x3246f6cd => 95
	i32 877678880, ; 55: System.Globalization.dll => 0x34505120 => 137
	i32 928116545, ; 56: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 113
	i32 955402788, ; 57: Newtonsoft.Json => 0x38f24a24 => 35
	i32 961995525, ; 58: Square.OkIO.dll => 0x3956e305 => 39
	i32 967690846, ; 59: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 81
	i32 974778368, ; 60: FormsViewGroup.dll => 0x3a19f000 => 14
	i32 992768348, ; 61: System.Collections.dll => 0x3b2c715c => 125
	i32 1012816738, ; 62: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 97
	i32 1028951442, ; 63: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 26
	i32 1035644815, ; 64: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 59
	i32 1042160112, ; 65: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 110
	i32 1052210849, ; 66: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 85
	i32 1058641855, ; 67: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 20
	i32 1098259244, ; 68: System => 0x41761b2c => 43
	i32 1175144683, ; 69: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 102
	i32 1178241025, ; 70: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 92
	i32 1204270330, ; 71: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 60
	i32 1233093933, ; 72: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 21
	i32 1249039447, ; 73: Comandero.Android => 0x4a72d457 => 0
	i32 1267360935, ; 74: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 103
	i32 1293217323, ; 75: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 74
	i32 1324164729, ; 76: System.Linq => 0x4eed2679 => 135
	i32 1364015309, ; 77: System.IO => 0x514d38cd => 128
	i32 1365406463, ; 78: System.ServiceModel.Internals.dll => 0x516272ff => 122
	i32 1376866003, ; 79: Xamarin.AndroidX.SavedState => 0x52114ed3 => 97
	i32 1379779777, ; 80: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 81: Xamarin.AndroidX.Media.dll => 0x5333188f => 89
	i32 1406073936, ; 82: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 69
	i32 1411638395, ; 83: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 48
	i32 1414043276, ; 84: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 18
	i32 1457743152, ; 85: System.Runtime.Extensions.dll => 0x56e36530 => 132
	i32 1460219004, ; 86: Xamarin.Forms.Xaml => 0x57092c7c => 111
	i32 1462112819, ; 87: System.IO.Compression.dll => 0x57261233 => 118
	i32 1469204771, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 58
	i32 1470490898, ; 89: Microsoft.Extensions.Primitives => 0x57a5e912 => 32
	i32 1530772511, ; 90: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 11
	i32 1543031311, ; 91: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 134
	i32 1550322496, ; 92: System.Reflection.Extensions.dll => 0x5c680b40 => 4
	i32 1582372066, ; 93: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 73
	i32 1592978981, ; 94: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1622152042, ; 95: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 87
	i32 1624863272, ; 96: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 106
	i32 1635482189, ; 97: FFImageLoading.Transformations.dll => 0x617b7a4d => 13
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 71
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 3
	i32 1639986890, ; 100: System.Text.RegularExpressions => 0x61c036ca => 134
	i32 1657153582, ; 101: System.Runtime => 0x62c6282e => 49
	i32 1658241508, ; 102: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 100
	i32 1658251792, ; 103: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 112
	i32 1663627514, ; 104: DryIoc => 0x6328f0fa => 7
	i32 1670060433, ; 105: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 68
	i32 1677501392, ; 106: System.Net.Primitives.dll => 0x63fca3d0 => 130
	i32 1701541528, ; 107: System.Diagnostics.Debug.dll => 0x656b7698 => 129
	i32 1726116996, ; 108: System.Reflection.dll => 0x66e27484 => 126
	i32 1729485958, ; 109: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 64
	i32 1746115085, ; 110: System.IO.Pipelines.dll => 0x68139a0d => 44
	i32 1765942094, ; 111: System.Reflection.Extensions => 0x6942234e => 4
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 99
	i32 1770582343, ; 113: Microsoft.Extensions.Logging.dll => 0x6988f147 => 30
	i32 1776026572, ; 114: System.Core.dll => 0x69dc03cc => 41
	i32 1788241197, ; 115: Xamarin.AndroidX.Fragment => 0x6a96652d => 76
	i32 1793089559, ; 116: FFImageLoading.Forms.dll => 0x6ae06017 => 10
	i32 1796167890, ; 117: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 25
	i32 1808609942, ; 118: Xamarin.AndroidX.Loader => 0x6bcd3296 => 87
	i32 1813201214, ; 119: Xamarin.Google.Android.Material => 0x6c13413e => 112
	i32 1818569960, ; 120: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 93
	i32 1828688058, ; 121: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 29
	i32 1840964413, ; 122: FFImageLoading.Forms => 0x6dbae33d => 10
	i32 1849271627, ; 123: Prism.Forms.dll => 0x6e39a54b => 38
	i32 1867746548, ; 124: Xamarin.Essentials.dll => 0x6f538cf4 => 107
	i32 1878053835, ; 125: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 111
	i32 1885316902, ; 126: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 61
	i32 1900610850, ; 127: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 128: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 90
	i32 1945717188, ; 129: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 21
	i32 1967247327, ; 130: Comandero.dll => 0x7541cfdf => 6
	i32 1967334205, ; 131: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 23
	i32 1972520711, ; 132: Comandero => 0x75924707 => 6
	i32 2011961780, ; 133: System.Buffers.dll => 0x77ec19b4 => 40
	i32 2019465201, ; 134: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 85
	i32 2028864565, ; 135: Essential.Interfaces.dll => 0x78ee0435 => 8
	i32 2055257422, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 82
	i32 2066202781, ; 137: Prism => 0x7b27c09d => 36
	i32 2079903147, ; 138: System.Runtime.dll => 0x7bf8cdab => 49
	i32 2090596640, ; 139: System.Numerics.Vectors => 0x7c9bf920 => 47
	i32 2097448633, ; 140: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 78
	i32 2126786730, ; 141: Xamarin.Forms.Platform.Android => 0x7ec430aa => 109
	i32 2181898931, ; 142: Microsoft.Extensions.Options.dll => 0x820d22b3 => 31
	i32 2192057212, ; 143: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 29
	i32 2193016926, ; 144: System.ObjectModel.dll => 0x82b6c85e => 136
	i32 2201231467, ; 145: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 146: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 102
	i32 2229158877, ; 147: Microsoft.Extensions.Features.dll => 0x84de43dd => 28
	i32 2244775296, ; 148: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 88
	i32 2256548716, ; 149: Xamarin.AndroidX.MultiDex => 0x8680336c => 90
	i32 2261435625, ; 150: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 80
	i32 2279755925, ; 151: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 96
	i32 2315684594, ; 152: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 56
	i32 2319144366, ; 153: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 22
	i32 2340826669, ; 154: FFImageLoading.dll => 0x8b862e2d => 9
	i32 2353062107, ; 155: System.Net.Primitives => 0x8c40e0db => 130
	i32 2409053734, ; 156: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 94
	i32 2454642406, ; 157: System.Text.Encoding.dll => 0x924edee6 => 133
	i32 2465532216, ; 158: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 67
	i32 2471841756, ; 159: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 160: Java.Interop.dll => 0x93918882 => 15
	i32 2501346920, ; 161: System.Data.DataSetExtensions => 0x95178668 => 116
	i32 2505896520, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 84
	i32 2538310050, ; 163: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 124
	i32 2570120770, ; 164: System.Text.Encodings.Web => 0x9930ee42 => 50
	i32 2581819634, ; 165: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 103
	i32 2620871830, ; 166: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 71
	i32 2624644809, ; 167: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 75
	i32 2633051222, ; 168: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 83
	i32 2637500010, ; 169: Microsoft.Extensions.Features => 0x9d350e6a => 28
	i32 2693849962, ; 170: System.IO.dll => 0xa090e36a => 128
	i32 2701096212, ; 171: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 100
	i32 2715334215, ; 172: System.Threading.Tasks.dll => 0xa1d8b647 => 127
	i32 2732626843, ; 173: Xamarin.AndroidX.Activity => 0xa2e0939b => 55
	i32 2735172069, ; 174: System.Threading.Channels => 0xa30769e5 => 52
	i32 2737747696, ; 175: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 58
	i32 2766581644, ; 176: Xamarin.Forms.Core => 0xa4e6af8c => 108
	i32 2778768386, ; 177: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 105
	i32 2792073544, ; 178: Prism.DryIoc.Forms.dll => 0xa66ba948 => 37
	i32 2810250172, ; 179: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 69
	i32 2819470561, ; 180: System.Xml.dll => 0xa80db4e1 => 53
	i32 2842369275, ; 181: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 11
	i32 2843355708, ; 182: Lottie.Android.dll => 0xa97a2a3c => 16
	i32 2853208004, ; 183: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 105
	i32 2855708567, ; 184: Xamarin.AndroidX.Transition => 0xaa36a797 => 101
	i32 2873222696, ; 185: FFImageLoading => 0xab41e628 => 9
	i32 2875347124, ; 186: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 19
	i32 2901442782, ; 187: System.Reflection => 0xacf080de => 126
	i32 2903344695, ; 188: System.ComponentModel.Composition => 0xad0d8637 => 120
	i32 2905242038, ; 189: mscorlib.dll => 0xad2a79b6 => 34
	i32 2916838712, ; 190: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 106
	i32 2919462931, ; 191: System.Numerics.Vectors.dll => 0xae037813 => 47
	i32 2921128767, ; 192: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 57
	i32 2943219317, ; 193: Square.OkIO => 0xaf6df675 => 39
	i32 2978675010, ; 194: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 74
	i32 3024354802, ; 195: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 79
	i32 3044182254, ; 196: FormsViewGroup => 0xb57288ee => 14
	i32 3057625584, ; 197: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 91
	i32 3075834255, ; 198: System.Threading.Tasks => 0xb755818f => 127
	i32 3111772706, ; 199: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3124832203, ; 200: System.Threading.Tasks.Extensions => 0xba4127cb => 139
	i32 3204380047, ; 201: System.Data.dll => 0xbefef58f => 114
	i32 3211777861, ; 202: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 73
	i32 3220365878, ; 203: System.Threading => 0xbff2e236 => 131
	i32 3247949154, ; 204: Mono.Security => 0xc197c562 => 138
	i32 3258312781, ; 205: Xamarin.AndroidX.CardView => 0xc235e84d => 64
	i32 3263631797, ; 206: Lottie.Forms => 0xc28711b5 => 17
	i32 3265893370, ; 207: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 139
	i32 3267021929, ; 208: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 62
	i32 3299363146, ; 209: System.Text.Encoding => 0xc4a8494a => 133
	i32 3317135071, ; 210: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 72
	i32 3317144872, ; 211: System.Data => 0xc5b79d28 => 114
	i32 3340431453, ; 212: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 61
	i32 3346324047, ; 213: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 92
	i32 3353484488, ; 214: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 78
	i32 3358260929, ; 215: System.Text.Json => 0xc82afec1 => 51
	i32 3362522851, ; 216: Xamarin.AndroidX.Core => 0xc86c06e3 => 70
	i32 3366347497, ; 217: Java.Interop => 0xc8a662e9 => 15
	i32 3374999561, ; 218: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 96
	i32 3377305119, ; 219: Comandero.Android.dll => 0xc94d961f => 0
	i32 3395150330, ; 220: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 48
	i32 3404865022, ; 221: System.ServiceModel.Internals => 0xcaf21dfe => 122
	i32 3428513518, ; 222: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 27
	i32 3429136800, ; 223: System.Xml => 0xcc6479a0 => 53
	i32 3430777524, ; 224: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 225: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 75
	i32 3466904072, ; 226: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 22
	i32 3476120550, ; 227: Mono.Android => 0xcf3163e6 => 33
	i32 3485117614, ; 228: System.Text.Json.dll => 0xcfbaacae => 51
	i32 3486566296, ; 229: System.Transactions => 0xcfd0c798 => 115
	i32 3493954962, ; 230: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 66
	i32 3501239056, ; 231: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 62
	i32 3509114376, ; 232: System.Xml.Linq => 0xd128d608 => 54
	i32 3536029504, ; 233: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 109
	i32 3567349600, ; 234: System.ComponentModel.Composition.dll => 0xd4a16f60 => 120
	i32 3608519521, ; 235: System.Linq.dll => 0xd715a361 => 135
	i32 3618140916, ; 236: Xamarin.AndroidX.Preference => 0xd7a872f4 => 94
	i32 3627220390, ; 237: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 95
	i32 3632359727, ; 238: Xamarin.Forms.Platform => 0xd881692f => 110
	i32 3633644679, ; 239: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 57
	i32 3639449509, ; 240: Lottie.Android => 0xd8ed97a5 => 16
	i32 3641597786, ; 241: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 82
	i32 3672681054, ; 242: Mono.Android.dll => 0xdae8aa5e => 33
	i32 3676310014, ; 243: System.Web.Services.dll => 0xdb2009fe => 121
	i32 3682565725, ; 244: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 63
	i32 3684561358, ; 245: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 66
	i32 3689375977, ; 246: System.Drawing.Common => 0xdbe768e9 => 117
	i32 3691870036, ; 247: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 24
	i32 3718780102, ; 248: Xamarin.AndroidX.Annotation => 0xdda814c6 => 56
	i32 3724971120, ; 249: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 91
	i32 3748608112, ; 250: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 42
	i32 3758932259, ; 251: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 80
	i32 3786282454, ; 252: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 65
	i32 3787005001, ; 253: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 18
	i32 3822602673, ; 254: Xamarin.AndroidX.Media => 0xe3d849b1 => 89
	i32 3829621856, ; 255: System.Numerics.dll => 0xe4436460 => 46
	i32 3841636137, ; 256: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 26
	i32 3885922214, ; 257: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 101
	i32 3896760992, ; 258: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 70
	i32 3920810846, ; 259: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 119
	i32 3921031405, ; 260: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 104
	i32 3931092270, ; 261: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 93
	i32 3945713374, ; 262: System.Data.DataSetExtensions.dll => 0xeb2ecede => 116
	i32 3955647286, ; 263: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 59
	i32 4023392905, ; 264: System.IO.Pipelines => 0xefd01a89 => 44
	i32 4025784931, ; 265: System.Memory => 0xeff49a63 => 45
	i32 4054681211, ; 266: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 123
	i32 4073602200, ; 267: System.Threading.dll => 0xf2ce3c98 => 131
	i32 4085261167, ; 268: Prism.Forms => 0xf380236f => 38
	i32 4105002889, ; 269: Mono.Security.dll => 0xf4ad5f89 => 138
	i32 4126470640, ; 270: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 27
	i32 4147896353, ; 271: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 123
	i32 4151237749, ; 272: System.Core => 0xf76edc75 => 41
	i32 4165582995, ; 273: DryIoc.dll => 0xf849c093 => 7
	i32 4182413190, ; 274: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 86
	i32 4184283386, ; 275: FFImageLoading.Platform.dll => 0xf96718fa => 12
	i32 4213026141, ; 276: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 42
	i32 4260525087, ; 277: System.Buffers => 0xfdf2741f => 40
	i32 4292120959, ; 278: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 86
	i32 4293553716 ; 279: Essential.Interfaces => 0xffea6e34 => 8
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [280 x i32] [
	i32 84, i32 113, i32 35, i32 108, i32 98, i32 98, i32 52, i32 17, ; 0..7
	i32 65, i32 99, i32 63, i32 129, i32 19, i32 79, i32 137, i32 121, ; 8..15
	i32 124, i32 68, i32 83, i32 77, i32 55, i32 46, i32 81, i32 20, ; 16..23
	i32 45, i32 67, i32 107, i32 125, i32 76, i32 23, i32 34, i32 43, ; 24..31
	i32 77, i32 88, i32 136, i32 36, i32 32, i32 12, i32 115, i32 30, ; 32..39
	i32 132, i32 25, i32 37, i32 119, i32 72, i32 50, i32 104, i32 60, ; 40..47
	i32 54, i32 13, i32 118, i32 31, i32 117, i32 24, i32 95, i32 137, ; 48..55
	i32 113, i32 35, i32 39, i32 81, i32 14, i32 125, i32 97, i32 26, ; 56..63
	i32 59, i32 110, i32 85, i32 20, i32 43, i32 102, i32 92, i32 60, ; 64..71
	i32 21, i32 0, i32 103, i32 74, i32 135, i32 128, i32 122, i32 97, ; 72..79
	i32 2, i32 89, i32 69, i32 48, i32 18, i32 132, i32 111, i32 118, ; 80..87
	i32 58, i32 32, i32 11, i32 134, i32 4, i32 73, i32 5, i32 87, ; 88..95
	i32 106, i32 13, i32 71, i32 3, i32 134, i32 49, i32 100, i32 112, ; 96..103
	i32 7, i32 68, i32 130, i32 129, i32 126, i32 64, i32 44, i32 4, ; 104..111
	i32 99, i32 30, i32 41, i32 76, i32 10, i32 25, i32 87, i32 112, ; 112..119
	i32 93, i32 29, i32 10, i32 38, i32 107, i32 111, i32 61, i32 2, ; 120..127
	i32 90, i32 21, i32 6, i32 23, i32 6, i32 40, i32 85, i32 8, ; 128..135
	i32 82, i32 36, i32 49, i32 47, i32 78, i32 109, i32 31, i32 29, ; 136..143
	i32 136, i32 3, i32 102, i32 28, i32 88, i32 90, i32 80, i32 96, ; 144..151
	i32 56, i32 22, i32 9, i32 130, i32 94, i32 133, i32 67, i32 1, ; 152..159
	i32 15, i32 116, i32 84, i32 124, i32 50, i32 103, i32 71, i32 75, ; 160..167
	i32 83, i32 28, i32 128, i32 100, i32 127, i32 55, i32 52, i32 58, ; 168..175
	i32 108, i32 105, i32 37, i32 69, i32 53, i32 11, i32 16, i32 105, ; 176..183
	i32 101, i32 9, i32 19, i32 126, i32 120, i32 34, i32 106, i32 47, ; 184..191
	i32 57, i32 39, i32 74, i32 79, i32 14, i32 91, i32 127, i32 5, ; 192..199
	i32 139, i32 114, i32 73, i32 131, i32 138, i32 64, i32 17, i32 139, ; 200..207
	i32 62, i32 133, i32 72, i32 114, i32 61, i32 92, i32 78, i32 51, ; 208..215
	i32 70, i32 15, i32 96, i32 0, i32 48, i32 122, i32 27, i32 53, ; 216..223
	i32 1, i32 75, i32 22, i32 33, i32 51, i32 115, i32 66, i32 62, ; 224..231
	i32 54, i32 109, i32 120, i32 135, i32 94, i32 95, i32 110, i32 57, ; 232..239
	i32 16, i32 82, i32 33, i32 121, i32 63, i32 66, i32 117, i32 24, ; 240..247
	i32 56, i32 91, i32 42, i32 80, i32 65, i32 18, i32 89, i32 46, ; 248..255
	i32 26, i32 101, i32 70, i32 119, i32 104, i32 93, i32 116, i32 59, ; 256..263
	i32 44, i32 45, i32 123, i32 131, i32 38, i32 138, i32 27, i32 123, ; 264..271
	i32 41, i32 7, i32 86, i32 12, i32 42, i32 40, i32 86, i32 8 ; 280..279
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
