; ModuleID = 'obj\Debug\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\100\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [284 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 86
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 115
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 35
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 110
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 100
	i32 102832730, ; 5: Plugin.SimpleAudioPlayer => 0x6211a5a => 37
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 100
	i32 122350210, ; 7: System.Threading.Channels.dll => 0x74aea82 => 54
	i32 148395041, ; 8: Lottie.Forms.dll => 0x8d85421 => 17
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 67
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 101
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 65
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 131
	i32 221063263, ; 13: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 19
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 81
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 139
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 123
	i32 246610117, ; 17: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 126
	i32 261689757, ; 18: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 70
	i32 278686392, ; 19: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 85
	i32 280482487, ; 20: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 79
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 57
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 48
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 83
	i32 348048101, ; 24: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 20
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 47
	i32 441335492, ; 26: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 69
	i32 442521989, ; 27: Xamarin.Essentials => 0x1a605985 => 109
	i32 442565967, ; 28: System.Collections => 0x1a61054f => 127
	i32 450948140, ; 29: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 78
	i32 458494020, ; 30: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 23
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 34
	i32 469710990, ; 32: System.dll => 0x1bff388e => 45
	i32 476646585, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 79
	i32 486930444, ; 34: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 90
	i32 498788369, ; 35: System.ObjectModel => 0x1dbae811 => 138
	i32 501000162, ; 36: Prism.dll => 0x1ddca7e2 => 38
	i32 513247710, ; 37: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 32
	i32 520798577, ; 38: FFImageLoading.Platform => 0x1f0ac171 => 12
	i32 526420162, ; 39: System.Transactions.dll => 0x1f6088c2 => 117
	i32 539058512, ; 40: Microsoft.Extensions.Logging => 0x20216150 => 30
	i32 545304856, ; 41: System.Runtime.Extensions => 0x2080b118 => 134
	i32 548916678, ; 42: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 25
	i32 583021779, ; 43: Prism.DryIoc.Forms => 0x22c034d3 => 39
	i32 605376203, ; 44: System.IO.Compression.FileSystem => 0x24154ecb => 121
	i32 627609679, ; 45: Xamarin.AndroidX.CustomView => 0x2568904f => 74
	i32 662205335, ; 46: System.Text.Encodings.Web.dll => 0x27787397 => 52
	i32 663517072, ; 47: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 106
	i32 666292255, ; 48: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 62
	i32 690569205, ; 49: System.Xml.Linq.dll => 0x29293ff5 => 56
	i32 698030881, ; 50: FFImageLoading.Transformations => 0x299b1b21 => 13
	i32 775507847, ; 51: System.IO.Compression => 0x2e394f87 => 120
	i32 789151979, ; 52: Microsoft.Extensions.Options => 0x2f0980eb => 31
	i32 809851609, ; 53: System.Drawing.Common.dll => 0x30455ad9 => 119
	i32 832711436, ; 54: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 24
	i32 843511501, ; 55: Xamarin.AndroidX.Print => 0x3246f6cd => 97
	i32 877678880, ; 56: System.Globalization.dll => 0x34505120 => 139
	i32 928116545, ; 57: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 115
	i32 955402788, ; 58: Newtonsoft.Json => 0x38f24a24 => 35
	i32 961995525, ; 59: Square.OkIO.dll => 0x3956e305 => 41
	i32 967690846, ; 60: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 83
	i32 974778368, ; 61: FormsViewGroup.dll => 0x3a19f000 => 14
	i32 992768348, ; 62: System.Collections.dll => 0x3b2c715c => 127
	i32 996170219, ; 63: Plugin.SimpleAudioPlayer.Abstractions => 0x3b6059eb => 36
	i32 1012816738, ; 64: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 99
	i32 1028951442, ; 65: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 26
	i32 1035644815, ; 66: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 61
	i32 1042160112, ; 67: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 112
	i32 1052210849, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 87
	i32 1058641855, ; 69: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 20
	i32 1098259244, ; 70: System => 0x41761b2c => 45
	i32 1175144683, ; 71: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 104
	i32 1178241025, ; 72: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 94
	i32 1204270330, ; 73: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 62
	i32 1233093933, ; 74: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 21
	i32 1249039447, ; 75: Comandero.Android => 0x4a72d457 => 0
	i32 1267360935, ; 76: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 105
	i32 1293217323, ; 77: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 76
	i32 1324164729, ; 78: System.Linq => 0x4eed2679 => 137
	i32 1364015309, ; 79: System.IO => 0x514d38cd => 130
	i32 1365406463, ; 80: System.ServiceModel.Internals.dll => 0x516272ff => 124
	i32 1376866003, ; 81: Xamarin.AndroidX.SavedState => 0x52114ed3 => 99
	i32 1379779777, ; 82: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 83: Xamarin.AndroidX.Media.dll => 0x5333188f => 91
	i32 1406073936, ; 84: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 71
	i32 1411638395, ; 85: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 50
	i32 1414043276, ; 86: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 18
	i32 1457743152, ; 87: System.Runtime.Extensions.dll => 0x56e36530 => 134
	i32 1460219004, ; 88: Xamarin.Forms.Xaml => 0x57092c7c => 113
	i32 1462112819, ; 89: System.IO.Compression.dll => 0x57261233 => 120
	i32 1469204771, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 60
	i32 1470490898, ; 91: Microsoft.Extensions.Primitives => 0x57a5e912 => 32
	i32 1530772511, ; 92: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 11
	i32 1543031311, ; 93: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 136
	i32 1550322496, ; 94: System.Reflection.Extensions.dll => 0x5c680b40 => 4
	i32 1582372066, ; 95: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 75
	i32 1592978981, ; 96: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1622152042, ; 97: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 89
	i32 1624863272, ; 98: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 108
	i32 1626988262, ; 99: Plugin.SimpleAudioPlayer.Abstractions.dll => 0x60f9dee6 => 36
	i32 1635482189, ; 100: FFImageLoading.Transformations.dll => 0x617b7a4d => 13
	i32 1636350590, ; 101: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 73
	i32 1639515021, ; 102: System.Net.Http.dll => 0x61b9038d => 3
	i32 1639986890, ; 103: System.Text.RegularExpressions => 0x61c036ca => 136
	i32 1657153582, ; 104: System.Runtime => 0x62c6282e => 51
	i32 1658241508, ; 105: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 102
	i32 1658251792, ; 106: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 114
	i32 1663627514, ; 107: DryIoc => 0x6328f0fa => 7
	i32 1670060433, ; 108: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 70
	i32 1677501392, ; 109: System.Net.Primitives.dll => 0x63fca3d0 => 132
	i32 1701541528, ; 110: System.Diagnostics.Debug.dll => 0x656b7698 => 131
	i32 1726116996, ; 111: System.Reflection.dll => 0x66e27484 => 128
	i32 1729485958, ; 112: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 66
	i32 1746115085, ; 113: System.IO.Pipelines.dll => 0x68139a0d => 46
	i32 1765942094, ; 114: System.Reflection.Extensions => 0x6942234e => 4
	i32 1766324549, ; 115: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 101
	i32 1770582343, ; 116: Microsoft.Extensions.Logging.dll => 0x6988f147 => 30
	i32 1776026572, ; 117: System.Core.dll => 0x69dc03cc => 43
	i32 1788241197, ; 118: Xamarin.AndroidX.Fragment => 0x6a96652d => 78
	i32 1793089559, ; 119: FFImageLoading.Forms.dll => 0x6ae06017 => 10
	i32 1796167890, ; 120: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 25
	i32 1808609942, ; 121: Xamarin.AndroidX.Loader => 0x6bcd3296 => 89
	i32 1813201214, ; 122: Xamarin.Google.Android.Material => 0x6c13413e => 114
	i32 1818569960, ; 123: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 95
	i32 1828688058, ; 124: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 29
	i32 1840964413, ; 125: FFImageLoading.Forms => 0x6dbae33d => 10
	i32 1849271627, ; 126: Prism.Forms.dll => 0x6e39a54b => 40
	i32 1867746548, ; 127: Xamarin.Essentials.dll => 0x6f538cf4 => 109
	i32 1878053835, ; 128: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 113
	i32 1885316902, ; 129: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 63
	i32 1900610850, ; 130: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 131: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 92
	i32 1945717188, ; 132: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 21
	i32 1967247327, ; 133: Comandero.dll => 0x7541cfdf => 6
	i32 1967334205, ; 134: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 23
	i32 1972520711, ; 135: Comandero => 0x75924707 => 6
	i32 2011961780, ; 136: System.Buffers.dll => 0x77ec19b4 => 42
	i32 2019465201, ; 137: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 87
	i32 2028864565, ; 138: Essential.Interfaces.dll => 0x78ee0435 => 8
	i32 2055257422, ; 139: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 84
	i32 2066202781, ; 140: Prism => 0x7b27c09d => 38
	i32 2079903147, ; 141: System.Runtime.dll => 0x7bf8cdab => 51
	i32 2090596640, ; 142: System.Numerics.Vectors => 0x7c9bf920 => 49
	i32 2097448633, ; 143: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 80
	i32 2126786730, ; 144: Xamarin.Forms.Platform.Android => 0x7ec430aa => 111
	i32 2181898931, ; 145: Microsoft.Extensions.Options.dll => 0x820d22b3 => 31
	i32 2192057212, ; 146: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 29
	i32 2193016926, ; 147: System.ObjectModel.dll => 0x82b6c85e => 138
	i32 2201231467, ; 148: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 149: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 104
	i32 2229158877, ; 150: Microsoft.Extensions.Features.dll => 0x84de43dd => 28
	i32 2244775296, ; 151: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 90
	i32 2256548716, ; 152: Xamarin.AndroidX.MultiDex => 0x8680336c => 92
	i32 2261435625, ; 153: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 82
	i32 2279755925, ; 154: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 98
	i32 2287417322, ; 155: Plugin.SimpleAudioPlayer.dll => 0x885737ea => 37
	i32 2315684594, ; 156: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 58
	i32 2319144366, ; 157: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 22
	i32 2340826669, ; 158: FFImageLoading.dll => 0x8b862e2d => 9
	i32 2353062107, ; 159: System.Net.Primitives => 0x8c40e0db => 132
	i32 2409053734, ; 160: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 96
	i32 2454642406, ; 161: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2465532216, ; 162: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 69
	i32 2471841756, ; 163: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 164: Java.Interop.dll => 0x93918882 => 15
	i32 2501346920, ; 165: System.Data.DataSetExtensions => 0x95178668 => 118
	i32 2505896520, ; 166: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 86
	i32 2538310050, ; 167: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 126
	i32 2570120770, ; 168: System.Text.Encodings.Web => 0x9930ee42 => 52
	i32 2581819634, ; 169: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 105
	i32 2620871830, ; 170: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 73
	i32 2624644809, ; 171: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 77
	i32 2633051222, ; 172: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 85
	i32 2637500010, ; 173: Microsoft.Extensions.Features => 0x9d350e6a => 28
	i32 2693849962, ; 174: System.IO.dll => 0xa090e36a => 130
	i32 2701096212, ; 175: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 102
	i32 2715334215, ; 176: System.Threading.Tasks.dll => 0xa1d8b647 => 129
	i32 2732626843, ; 177: Xamarin.AndroidX.Activity => 0xa2e0939b => 57
	i32 2735172069, ; 178: System.Threading.Channels => 0xa30769e5 => 54
	i32 2737747696, ; 179: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 60
	i32 2766581644, ; 180: Xamarin.Forms.Core => 0xa4e6af8c => 110
	i32 2778768386, ; 181: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2792073544, ; 182: Prism.DryIoc.Forms.dll => 0xa66ba948 => 39
	i32 2810250172, ; 183: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 71
	i32 2819470561, ; 184: System.Xml.dll => 0xa80db4e1 => 55
	i32 2842369275, ; 185: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 11
	i32 2843355708, ; 186: Lottie.Android.dll => 0xa97a2a3c => 16
	i32 2853208004, ; 187: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2855708567, ; 188: Xamarin.AndroidX.Transition => 0xaa36a797 => 103
	i32 2873222696, ; 189: FFImageLoading => 0xab41e628 => 9
	i32 2875347124, ; 190: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 19
	i32 2901442782, ; 191: System.Reflection => 0xacf080de => 128
	i32 2903344695, ; 192: System.ComponentModel.Composition => 0xad0d8637 => 122
	i32 2905242038, ; 193: mscorlib.dll => 0xad2a79b6 => 34
	i32 2916838712, ; 194: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 108
	i32 2919462931, ; 195: System.Numerics.Vectors.dll => 0xae037813 => 49
	i32 2921128767, ; 196: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 59
	i32 2943219317, ; 197: Square.OkIO => 0xaf6df675 => 41
	i32 2978675010, ; 198: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 76
	i32 3024354802, ; 199: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 81
	i32 3044182254, ; 200: FormsViewGroup => 0xb57288ee => 14
	i32 3057625584, ; 201: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 93
	i32 3075834255, ; 202: System.Threading.Tasks => 0xb755818f => 129
	i32 3111772706, ; 203: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3124832203, ; 204: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3204380047, ; 205: System.Data.dll => 0xbefef58f => 116
	i32 3211777861, ; 206: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 75
	i32 3220365878, ; 207: System.Threading => 0xbff2e236 => 133
	i32 3247949154, ; 208: Mono.Security => 0xc197c562 => 140
	i32 3258312781, ; 209: Xamarin.AndroidX.CardView => 0xc235e84d => 66
	i32 3263631797, ; 210: Lottie.Forms => 0xc28711b5 => 17
	i32 3265893370, ; 211: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3267021929, ; 212: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 64
	i32 3299363146, ; 213: System.Text.Encoding => 0xc4a8494a => 135
	i32 3317135071, ; 214: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 74
	i32 3317144872, ; 215: System.Data => 0xc5b79d28 => 116
	i32 3340431453, ; 216: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 63
	i32 3346324047, ; 217: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 94
	i32 3353484488, ; 218: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 80
	i32 3358260929, ; 219: System.Text.Json => 0xc82afec1 => 53
	i32 3362522851, ; 220: Xamarin.AndroidX.Core => 0xc86c06e3 => 72
	i32 3366347497, ; 221: Java.Interop => 0xc8a662e9 => 15
	i32 3374999561, ; 222: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 98
	i32 3377305119, ; 223: Comandero.Android.dll => 0xc94d961f => 0
	i32 3395150330, ; 224: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 50
	i32 3404865022, ; 225: System.ServiceModel.Internals => 0xcaf21dfe => 124
	i32 3428513518, ; 226: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 27
	i32 3429136800, ; 227: System.Xml => 0xcc6479a0 => 55
	i32 3430777524, ; 228: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 229: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 77
	i32 3466904072, ; 230: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 22
	i32 3476120550, ; 231: Mono.Android => 0xcf3163e6 => 33
	i32 3485117614, ; 232: System.Text.Json.dll => 0xcfbaacae => 53
	i32 3486566296, ; 233: System.Transactions => 0xcfd0c798 => 117
	i32 3493954962, ; 234: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 68
	i32 3501239056, ; 235: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 64
	i32 3509114376, ; 236: System.Xml.Linq => 0xd128d608 => 56
	i32 3536029504, ; 237: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 111
	i32 3567349600, ; 238: System.ComponentModel.Composition.dll => 0xd4a16f60 => 122
	i32 3608519521, ; 239: System.Linq.dll => 0xd715a361 => 137
	i32 3618140916, ; 240: Xamarin.AndroidX.Preference => 0xd7a872f4 => 96
	i32 3627220390, ; 241: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 97
	i32 3632359727, ; 242: Xamarin.Forms.Platform => 0xd881692f => 112
	i32 3633644679, ; 243: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 59
	i32 3639449509, ; 244: Lottie.Android => 0xd8ed97a5 => 16
	i32 3641597786, ; 245: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 84
	i32 3672681054, ; 246: Mono.Android.dll => 0xdae8aa5e => 33
	i32 3676310014, ; 247: System.Web.Services.dll => 0xdb2009fe => 123
	i32 3682565725, ; 248: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 65
	i32 3684561358, ; 249: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 68
	i32 3689375977, ; 250: System.Drawing.Common => 0xdbe768e9 => 119
	i32 3691870036, ; 251: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 24
	i32 3718780102, ; 252: Xamarin.AndroidX.Annotation => 0xdda814c6 => 58
	i32 3724971120, ; 253: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 93
	i32 3748608112, ; 254: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 44
	i32 3758932259, ; 255: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 82
	i32 3786282454, ; 256: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 67
	i32 3787005001, ; 257: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 18
	i32 3822602673, ; 258: Xamarin.AndroidX.Media => 0xe3d849b1 => 91
	i32 3829621856, ; 259: System.Numerics.dll => 0xe4436460 => 48
	i32 3841636137, ; 260: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 26
	i32 3885922214, ; 261: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 103
	i32 3896760992, ; 262: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 72
	i32 3920810846, ; 263: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 121
	i32 3921031405, ; 264: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 106
	i32 3931092270, ; 265: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 95
	i32 3945713374, ; 266: System.Data.DataSetExtensions.dll => 0xeb2ecede => 118
	i32 3955647286, ; 267: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 61
	i32 4023392905, ; 268: System.IO.Pipelines => 0xefd01a89 => 46
	i32 4025784931, ; 269: System.Memory => 0xeff49a63 => 47
	i32 4054681211, ; 270: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 125
	i32 4073602200, ; 271: System.Threading.dll => 0xf2ce3c98 => 133
	i32 4085261167, ; 272: Prism.Forms => 0xf380236f => 40
	i32 4105002889, ; 273: Mono.Security.dll => 0xf4ad5f89 => 140
	i32 4126470640, ; 274: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 27
	i32 4147896353, ; 275: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 125
	i32 4151237749, ; 276: System.Core => 0xf76edc75 => 43
	i32 4165582995, ; 277: DryIoc.dll => 0xf849c093 => 7
	i32 4182413190, ; 278: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 88
	i32 4184283386, ; 279: FFImageLoading.Platform.dll => 0xf96718fa => 12
	i32 4213026141, ; 280: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 44
	i32 4260525087, ; 281: System.Buffers => 0xfdf2741f => 42
	i32 4292120959, ; 282: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 88
	i32 4293553716 ; 283: Essential.Interfaces => 0xffea6e34 => 8
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [284 x i32] [
	i32 86, i32 115, i32 35, i32 110, i32 100, i32 37, i32 100, i32 54, ; 0..7
	i32 17, i32 67, i32 101, i32 65, i32 131, i32 19, i32 81, i32 139, ; 8..15
	i32 123, i32 126, i32 70, i32 85, i32 79, i32 57, i32 48, i32 83, ; 16..23
	i32 20, i32 47, i32 69, i32 109, i32 127, i32 78, i32 23, i32 34, ; 24..31
	i32 45, i32 79, i32 90, i32 138, i32 38, i32 32, i32 12, i32 117, ; 32..39
	i32 30, i32 134, i32 25, i32 39, i32 121, i32 74, i32 52, i32 106, ; 40..47
	i32 62, i32 56, i32 13, i32 120, i32 31, i32 119, i32 24, i32 97, ; 48..55
	i32 139, i32 115, i32 35, i32 41, i32 83, i32 14, i32 127, i32 36, ; 56..63
	i32 99, i32 26, i32 61, i32 112, i32 87, i32 20, i32 45, i32 104, ; 64..71
	i32 94, i32 62, i32 21, i32 0, i32 105, i32 76, i32 137, i32 130, ; 72..79
	i32 124, i32 99, i32 2, i32 91, i32 71, i32 50, i32 18, i32 134, ; 80..87
	i32 113, i32 120, i32 60, i32 32, i32 11, i32 136, i32 4, i32 75, ; 88..95
	i32 5, i32 89, i32 108, i32 36, i32 13, i32 73, i32 3, i32 136, ; 96..103
	i32 51, i32 102, i32 114, i32 7, i32 70, i32 132, i32 131, i32 128, ; 104..111
	i32 66, i32 46, i32 4, i32 101, i32 30, i32 43, i32 78, i32 10, ; 112..119
	i32 25, i32 89, i32 114, i32 95, i32 29, i32 10, i32 40, i32 109, ; 120..127
	i32 113, i32 63, i32 2, i32 92, i32 21, i32 6, i32 23, i32 6, ; 128..135
	i32 42, i32 87, i32 8, i32 84, i32 38, i32 51, i32 49, i32 80, ; 136..143
	i32 111, i32 31, i32 29, i32 138, i32 3, i32 104, i32 28, i32 90, ; 144..151
	i32 92, i32 82, i32 98, i32 37, i32 58, i32 22, i32 9, i32 132, ; 152..159
	i32 96, i32 135, i32 69, i32 1, i32 15, i32 118, i32 86, i32 126, ; 160..167
	i32 52, i32 105, i32 73, i32 77, i32 85, i32 28, i32 130, i32 102, ; 168..175
	i32 129, i32 57, i32 54, i32 60, i32 110, i32 107, i32 39, i32 71, ; 176..183
	i32 55, i32 11, i32 16, i32 107, i32 103, i32 9, i32 19, i32 128, ; 184..191
	i32 122, i32 34, i32 108, i32 49, i32 59, i32 41, i32 76, i32 81, ; 192..199
	i32 14, i32 93, i32 129, i32 5, i32 141, i32 116, i32 75, i32 133, ; 200..207
	i32 140, i32 66, i32 17, i32 141, i32 64, i32 135, i32 74, i32 116, ; 208..215
	i32 63, i32 94, i32 80, i32 53, i32 72, i32 15, i32 98, i32 0, ; 216..223
	i32 50, i32 124, i32 27, i32 55, i32 1, i32 77, i32 22, i32 33, ; 224..231
	i32 53, i32 117, i32 68, i32 64, i32 56, i32 111, i32 122, i32 137, ; 232..239
	i32 96, i32 97, i32 112, i32 59, i32 16, i32 84, i32 33, i32 123, ; 240..247
	i32 65, i32 68, i32 119, i32 24, i32 58, i32 93, i32 44, i32 82, ; 248..255
	i32 67, i32 18, i32 91, i32 48, i32 26, i32 103, i32 72, i32 121, ; 256..263
	i32 106, i32 95, i32 118, i32 61, i32 46, i32 47, i32 125, i32 133, ; 264..271
	i32 40, i32 140, i32 27, i32 125, i32 43, i32 7, i32 88, i32 12, ; 272..279
	i32 44, i32 42, i32 88, i32 8 ; 280..283
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
