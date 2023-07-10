; ModuleID = 'obj\Debug\100\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\100\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [280 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 11
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 75
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 32
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 33
	i64 125503650289234629, ; 4: Prism.DryIoc.Forms => 0x1bde0e7ad8132c5 => 37
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 65
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 97
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 98
	i64 634308326490598313, ; 8: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 84
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 117
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 78
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 74
	i64 913290893418446787, ; 12: Essential.Interfaces.dll => 0xcaca93a8ece3fc3 => 8
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 115
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 110
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 138
	i64 1120440138749646132, ; 16: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 112
	i64 1315114680217950157, ; 17: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 60
	i64 1425944114962822056, ; 18: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 5
	i64 1476839205573959279, ; 19: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 130
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 58
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 86
	i64 1636321030536304333, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 79
	i64 1731380447121279447, ; 23: Newtonsoft.Json => 0x18071957e9b889d7 => 35
	i64 1743969030606105336, ; 24: System.Memory.dll => 0x1833d297e88f2af8 => 45
	i64 1795316252682057001, ; 25: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 59
	i64 1836611346387731153, ; 26: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 97
	i64 1865037103900624886, ; 27: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 25
	i64 1875917498431009007, ; 28: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 56
	i64 1981742497975770890, ; 29: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 85
	i64 1984538867944326539, ; 30: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 12
	i64 2040001226662520565, ; 31: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 139
	i64 2133195048986300728, ; 32: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 35
	i64 2136356949452311481, ; 33: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 90
	i64 2165725771938924357, ; 34: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 63
	i64 2262844636196693701, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 74
	i64 2284400282711631002, ; 36: System.Web.Services => 0x1fb3d1f42fd4249a => 121
	i64 2329709569556905518, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 82
	i64 2335503487726329082, ; 38: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 50
	i64 2337758774805907496, ; 39: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 48
	i64 2470498323731680442, ; 40: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 69
	i64 2479423007379663237, ; 41: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 102
	i64 2497223385847772520, ; 42: System.Runtime => 0x22a7eb7046413568 => 49
	i64 2541787113603107559, ; 43: Lottie.Android.dll => 0x23463de9b0fa8ae7 => 16
	i64 2547086958574651984, ; 44: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 55
	i64 2592350477072141967, ; 45: System.Xml.dll => 0x23f9e10627330e8f => 53
	i64 2624866290265602282, ; 46: mscorlib.dll => 0x246d65fbde2db8ea => 34
	i64 2656907746661064104, ; 47: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 27
	i64 2694427813909235223, ; 48: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 94
	i64 2783046991838674048, ; 49: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 48
	i64 2863324215353042462, ; 50: FFImageLoading.Forms => 0x27bc92340ce4661e => 10
	i64 2960931600190307745, ; 51: Xamarin.Forms.Core => 0x2917579a49927da1 => 108
	i64 3017704767998173186, ; 52: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 112
	i64 3171992396844006720, ; 53: Square.OkIO => 0x2c052e476c207d40 => 39
	i64 3260998928894807349, ; 54: Lottie.Forms.dll => 0x2d41653f91b44d35 => 17
	i64 3289520064315143713, ; 55: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 81
	i64 3303437397778967116, ; 56: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 57
	i64 3311221304742556517, ; 57: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 47
	i64 3493805808809882663, ; 58: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 100
	i64 3522470458906976663, ; 59: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 99
	i64 3531994851595924923, ; 60: System.Numerics => 0x31042a9aade235bb => 46
	i64 3571415421602489686, ; 61: System.Runtime.dll => 0x319037675df7e556 => 49
	i64 3716579019761409177, ; 62: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 63: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 96
	i64 3772598417116884899, ; 64: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 75
	i64 3783726507060260521, ; 65: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 23
	i64 3869221888984012293, ; 66: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 30
	i64 3966267475168208030, ; 67: System.Memory => 0x370b03412596249e => 45
	i64 4525561845656915374, ; 68: System.ServiceModel.Internals => 0x3ece06856b710dae => 122
	i64 4636684751163556186, ; 69: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 104
	i64 4782108999019072045, ; 70: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 62
	i64 4794310189461587505, ; 71: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 55
	i64 4795410492532947900, ; 72: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 99
	i64 4914391832395879945, ; 73: FFImageLoading.Transformations => 0x44336d5581099609 => 13
	i64 5081566143765835342, ; 74: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 75: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5142919913060024034, ; 76: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 109
	i64 5203618020066742981, ; 77: Xamarin.Essentials => 0x4836f704f0e652c5 => 107
	i64 5205316157927637098, ; 78: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 88
	i64 5348796042099802469, ; 79: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 89
	i64 5376510917114486089, ; 80: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 102
	i64 5408338804355907810, ; 81: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 101
	i64 5446034149219586269, ; 82: System.Diagnostics.Debug => 0x4b94333452e150dd => 129
	i64 5451019430259338467, ; 83: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 68
	i64 5486095413573346643, ; 84: Essential.Interfaces => 0x4c2286b649f06553 => 8
	i64 5507995362134886206, ; 85: System.Core.dll => 0x4c705499688c873e => 41
	i64 5692067934154308417, ; 86: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 106
	i64 5757522595884336624, ; 87: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 66
	i64 5814345312393086621, ; 88: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 94
	i64 5896680224035167651, ; 89: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 83
	i64 6014447449592687183, ; 90: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 20
	i64 6034224070161570862, ; 91: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 22
	i64 6085203216496545422, ; 92: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 110
	i64 6086316965293125504, ; 93: FormsViewGroup.dll => 0x5476f10882baef80 => 14
	i64 6222399776351216807, ; 94: System.Text.Json.dll => 0x565a67a0ffe264a7 => 51
	i64 6284145129771520194, ; 95: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 123
	i64 6319713645133255417, ; 96: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 84
	i64 6401687960814735282, ; 97: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 82
	i64 6504860066809920875, ; 98: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 63
	i64 6548213210057960872, ; 99: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 72
	i64 6560151584539558821, ; 100: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 31
	i64 6591024623626361694, ; 101: System.Web.Services.dll => 0x5b7805f9751a1b5e => 121
	i64 6659513131007730089, ; 102: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 78
	i64 6783125919820072783, ; 103: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 18
	i64 6870591353058300706, ; 104: Prism.DryIoc.Forms.dll => 0x5f593e6f03e91322 => 37
	i64 6876862101832370452, ; 105: System.Xml.Linq => 0x5f6f85a57d108914 => 54
	i64 6894844156784520562, ; 106: System.Numerics.Vectors => 0x5faf683aead1ad72 => 47
	i64 7017588408768804231, ; 107: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 24
	i64 7036436454368433159, ; 108: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 80
	i64 7103753931438454322, ; 109: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 77
	i64 7270811800166795866, ; 110: System.Linq => 0x64e71ccf51a90a5a => 135
	i64 7338192458477945005, ; 111: System.Reflection => 0x65d67f295d0740ad => 126
	i64 7488575175965059935, ; 112: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 54
	i64 7489048572193775167, ; 113: System.ObjectModel => 0x67ee71ff6b419e3f => 136
	i64 7635363394907363464, ; 114: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 108
	i64 7637365915383206639, ; 115: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 107
	i64 7654504624184590948, ; 116: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7710895609346150079, ; 117: DryIoc.dll => 0x6b029ab3df324ebf => 7
	i64 7820441508502274321, ; 118: System.Data => 0x6c87ca1e14ff8111 => 114
	i64 7836164640616011524, ; 119: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 58
	i64 8044118961405839122, ; 120: System.ComponentModel.Composition => 0x6fa2739369944712 => 120
	i64 8064050204834738623, ; 121: System.Collections.dll => 0x6fe942efa61731bf => 125
	i64 8083354569033831015, ; 122: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 81
	i64 8087206902342787202, ; 123: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 42
	i64 8103644804370223335, ; 124: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 116
	i64 8113615946733131500, ; 125: System.Reflection.Extensions => 0x70995ab73cf916ec => 4
	i64 8167236081217502503, ; 126: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 15
	i64 8185542183669246576, ; 127: System.Collections => 0x7198e33f4794aa70 => 125
	i64 8243855692487634729, ; 128: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 24
	i64 8290740647658429042, ; 129: System.Runtime.Extensions => 0x730ea0b15c929a72 => 132
	i64 8398329775253868912, ; 130: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 67
	i64 8400357532724379117, ; 131: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 93
	i64 8410671156615598628, ; 132: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 124
	i64 8601935802264776013, ; 133: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 101
	i64 8609060182490045521, ; 134: Square.OkIO.dll => 0x7779869f8b475c51 => 39
	i64 8626175481042262068, ; 135: Java.Interop => 0x77b654e585b55834 => 15
	i64 8639588376636138208, ; 136: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 92
	i64 8684531736582871431, ; 137: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 119
	i64 8725526185868997716, ; 138: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 42
	i64 8844628981206701741, ; 139: Comandero.Android => 0x7abe6f3292f356ad => 0
	i64 9114191852432800567, ; 140: FFImageLoading.dll => 0x7e7c1d3363043b37 => 9
	i64 9238306115887712111, ; 141: FFImageLoading.Forms.dll => 0x80350e773bce476f => 10
	i64 9312692141327339315, ; 142: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 106
	i64 9324707631942237306, ; 143: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 59
	i64 9584643793929893533, ; 144: System.IO.dll => 0x85037ebfbbd7f69d => 128
	i64 9659729154652888475, ; 145: System.Text.RegularExpressions => 0x860e407c9991dd9b => 134
	i64 9662334977499516867, ; 146: System.Numerics.dll => 0x8617827802b0cfc3 => 46
	i64 9678050649315576968, ; 147: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 69
	i64 9711637524876806384, ; 148: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 89
	i64 9759257784415387573, ; 149: Comandero => 0x876fd93f878b7fb5 => 6
	i64 9808709177481450983, ; 150: Mono.Android.dll => 0x881f890734e555e7 => 33
	i64 9825649861376906464, ; 151: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 66
	i64 9834056768316610435, ; 152: System.Transactions.dll => 0x8879968718899783 => 115
	i64 9998632235833408227, ; 153: Mono.Security => 0x8ac2470b209ebae3 => 138
	i64 10038780035334861115, ; 154: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10226498071391929720, ; 155: Microsoft.Extensions.Features => 0x8debd1d049888578 => 28
	i64 10229024438826829339, ; 156: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 72
	i64 10245369515835430794, ; 157: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 124
	i64 10360651442923773544, ; 158: System.Text.Encoding => 0x8fc86d98211c1e68 => 133
	i64 10364469296367737616, ; 159: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 123
	i64 10376576884623852283, ; 160: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 100
	i64 10430153318873392755, ; 161: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 70
	i64 10447083246144586668, ; 162: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 25
	i64 10566960649245365243, ; 163: System.Globalization.dll => 0x92a562b96dcd13fb => 137
	i64 10714184849103829812, ; 164: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 132
	i64 10785150219063592792, ; 165: System.Net.Primitives => 0x95ac8cfb68830758 => 130
	i64 10847732767863316357, ; 166: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 60
	i64 11002576679268595294, ; 167: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 29
	i64 11023048688141570732, ; 168: System.Core => 0x98f9bc61168392ac => 41
	i64 11037814507248023548, ; 169: System.Xml => 0x992e31d0412bf7fc => 53
	i64 11162124722117608902, ; 170: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 105
	i64 11201462017695523848, ; 171: FFImageLoading.Transformations.dll => 0x9b73965b71c5a408 => 13
	i64 11226290749488709958, ; 172: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 31
	i64 11340910727871153756, ; 173: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 71
	i64 11392833485892708388, ; 174: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 95
	i64 11513602507638267977, ; 175: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 44
	i64 11529969570048099689, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 105
	i64 11530571088791430846, ; 177: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 30
	i64 11578238080964724296, ; 178: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 80
	i64 11580057168383206117, ; 179: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 56
	i64 11597940890313164233, ; 180: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 181: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 77
	i64 11743665907891708234, ; 182: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 127
	i64 12102847907131387746, ; 183: System.Buffers => 0xa7f5f40c43256f62 => 40
	i64 12123043025855404482, ; 184: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 4
	i64 12137774235383566651, ; 185: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 103
	i64 12145679461940342714, ; 186: System.Text.Json => 0xa88e1f1ebcb62fba => 51
	i64 12313367145828839434, ; 187: System.IO.Pipelines => 0xaae1de2e1c17f00a => 44
	i64 12451044538927396471, ; 188: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 76
	i64 12466513435562512481, ; 189: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 87
	i64 12487638416075308985, ; 190: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 73
	i64 12488608402635344228, ; 191: Lottie.Android => 0xad50732cba09c964 => 16
	i64 12538491095302438457, ; 192: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 64
	i64 12550732019250633519, ; 193: System.IO.Compression => 0xae2d28465e8e1b2f => 118
	i64 12700543734426720211, ; 194: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 65
	i64 12708238894395270091, ; 195: System.IO => 0xb05cbbf17d3ba3cb => 128
	i64 12843321153144804894, ; 196: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 32
	i64 12953969983053113793, ; 197: Prism.Forms => 0xb3c5bf1106f429c1 => 38
	i64 12963446364377008305, ; 198: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 117
	i64 13196197655982686080, ; 199: Prism => 0xb7224fda06b0bf80 => 36
	i64 13295219713260136977, ; 200: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 19
	i64 13370592475155966277, ; 201: System.Runtime.Serialization => 0xb98de304062ea945 => 5
	i64 13401370062847626945, ; 202: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 103
	i64 13404347523447273790, ; 203: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 67
	i64 13428779960367410341, ; 204: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 21
	i64 13454009404024712428, ; 205: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 113
	i64 13491513212026656886, ; 206: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 61
	i64 13572454107664307259, ; 207: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 96
	i64 13647894001087880694, ; 208: System.Data.dll => 0xbd670f48cb071df6 => 114
	i64 13959074834287824816, ; 209: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 76
	i64 13967638549803255703, ; 210: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 109
	i64 14124974489674258913, ; 211: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 64
	i64 14125464355221830302, ; 212: System.Threading.dll => 0xc407bafdbc707a9e => 131
	i64 14172845254133543601, ; 213: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 90
	i64 14261073672896646636, ; 214: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 95
	i64 14327695147300244862, ; 215: System.Reflection.dll => 0xc6d632d338eb4d7e => 126
	i64 14486659737292545672, ; 216: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 83
	i64 14551742072151931844, ; 217: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 50
	i64 14604329626201521481, ; 218: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 22
	i64 14644440854989303794, ; 219: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 88
	i64 14669215534098758659, ; 220: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 27
	i64 14792063746108907174, ; 221: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 113
	i64 14809184851036126845, ; 222: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 21
	i64 14852515768018889994, ; 223: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 71
	i64 14954917835170835695, ; 224: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 26
	i64 14987728460634540364, ; 225: System.IO.Compression.dll => 0xcfff1ba06622494c => 118
	i64 14988210264188246988, ; 226: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 73
	i64 15020741785497507190, ; 227: DryIoc => 0xd074651213721576 => 7
	i64 15076659072870671916, ; 228: System.ObjectModel.dll => 0xd13b0d8c1620662c => 136
	i64 15133485256822086103, ; 229: System.Linq.dll => 0xd204f0a9127dd9d7 => 135
	i64 15204818078425529879, ; 230: Comandero.Android.dll => 0xd3025d7bd6fdbe17 => 0
	i64 15329153246590474763, ; 231: Comandero.dll => 0xd4bc17a9128d1a0b => 6
	i64 15370334346939861994, ; 232: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 70
	i64 15391712275433856905, ; 233: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 26
	i64 15398511348637731642, ; 234: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 11
	i64 15526743539506359484, ; 235: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 133
	i64 15582737692548360875, ; 236: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 86
	i64 15609085926864131306, ; 237: System.dll => 0xd89e9cf3334914ea => 43
	i64 15777549416145007739, ; 238: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 98
	i64 15810740023422282496, ; 239: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 111
	i64 15817206913877585035, ; 240: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 127
	i64 15847085070278954535, ; 241: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 52
	i64 15963349826457351533, ; 242: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 139
	i64 16035518054986892682, ; 243: Prism.dll => 0xde899ab610db458a => 36
	i64 16154507427712707110, ; 244: System => 0xe03056ea4e39aa26 => 43
	i64 16156430004425724367, ; 245: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 19
	i64 16321164108206115771, ; 246: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 29
	i64 16343918515847859304, ; 247: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 28
	i64 16565028646146589191, ; 248: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 120
	i64 16605226748660468415, ; 249: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 23
	i64 16621146507174665210, ; 250: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 68
	i64 16677317093839702854, ; 251: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 93
	i64 16822611501064131242, ; 252: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 116
	i64 16833383113903931215, ; 253: mscorlib => 0xe99c30c1484d7f4f => 34
	i64 16890310621557459193, ; 254: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 134
	i64 17024911836938395553, ; 255: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 57
	i64 17031351772568316411, ; 256: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 91
	i64 17037200463775726619, ; 257: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 79
	i64 17118171214553292978, ; 258: System.Threading.Channels => 0xed8ff6060fc420b2 => 52
	i64 17124705692820578889, ; 259: Lottie.Forms => 0xeda72d18d7ae2249 => 17
	i64 17544493274320527064, ; 260: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 62
	i64 17571845317586269034, ; 261: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 18
	i64 17627500474728259406, ; 262: System.Globalization => 0xf4a176498a351f4e => 137
	i64 17636563193350668017, ; 263: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 20
	i64 17643123953373031521, ; 264: FFImageLoading => 0xf4d8f7c220fc2c61 => 9
	i64 17685921127322830888, ; 265: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 129
	i64 17704177640604968747, ; 266: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 87
	i64 17710060891934109755, ; 267: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 85
	i64 17838668724098252521, ; 268: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 40
	i64 17882897186074144999, ; 269: FormsViewGroup => 0xf82cd03e3ac830e7 => 14
	i64 17892495832318972303, ; 270: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 111
	i64 17928294245072900555, ; 271: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 119
	i64 17947624217716767869, ; 272: FFImageLoading.Platform => 0xf912c522ab34bc7d => 12
	i64 18025913125965088385, ; 273: System.Threading => 0xfa28e87b91334681 => 131
	i64 18116111925905154859, ; 274: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 61
	i64 18121036031235206392, ; 275: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 91
	i64 18129453464017766560, ; 276: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 122
	i64 18305135509493619199, ; 277: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 92
	i64 18380184030268848184, ; 278: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 104
	i64 18434045720645380019 ; 279: Prism.Forms.dll => 0xffd2e2ea4860a7b3 => 38
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [280 x i32] [
	i32 11, i32 75, i32 32, i32 33, i32 37, i32 65, i32 97, i32 98, ; 0..7
	i32 84, i32 117, i32 78, i32 74, i32 8, i32 115, i32 110, i32 138, ; 8..15
	i32 112, i32 60, i32 5, i32 130, i32 58, i32 86, i32 79, i32 35, ; 16..23
	i32 45, i32 59, i32 97, i32 25, i32 56, i32 85, i32 12, i32 139, ; 24..31
	i32 35, i32 90, i32 63, i32 74, i32 121, i32 82, i32 50, i32 48, ; 32..39
	i32 69, i32 102, i32 49, i32 16, i32 55, i32 53, i32 34, i32 27, ; 40..47
	i32 94, i32 48, i32 10, i32 108, i32 112, i32 39, i32 17, i32 81, ; 48..55
	i32 57, i32 47, i32 100, i32 99, i32 46, i32 49, i32 1, i32 96, ; 56..63
	i32 75, i32 23, i32 30, i32 45, i32 122, i32 104, i32 62, i32 55, ; 64..71
	i32 99, i32 13, i32 2, i32 2, i32 109, i32 107, i32 88, i32 89, ; 72..79
	i32 102, i32 101, i32 129, i32 68, i32 8, i32 41, i32 106, i32 66, ; 80..87
	i32 94, i32 83, i32 20, i32 22, i32 110, i32 14, i32 51, i32 123, ; 88..95
	i32 84, i32 82, i32 63, i32 72, i32 31, i32 121, i32 78, i32 18, ; 96..103
	i32 37, i32 54, i32 47, i32 24, i32 80, i32 77, i32 135, i32 126, ; 104..111
	i32 54, i32 136, i32 108, i32 107, i32 3, i32 7, i32 114, i32 58, ; 112..119
	i32 120, i32 125, i32 81, i32 42, i32 116, i32 4, i32 15, i32 125, ; 120..127
	i32 24, i32 132, i32 67, i32 93, i32 124, i32 101, i32 39, i32 15, ; 128..135
	i32 92, i32 119, i32 42, i32 0, i32 9, i32 10, i32 106, i32 59, ; 136..143
	i32 128, i32 134, i32 46, i32 69, i32 89, i32 6, i32 33, i32 66, ; 144..151
	i32 115, i32 138, i32 3, i32 28, i32 72, i32 124, i32 133, i32 123, ; 152..159
	i32 100, i32 70, i32 25, i32 137, i32 132, i32 130, i32 60, i32 29, ; 160..167
	i32 41, i32 53, i32 105, i32 13, i32 31, i32 71, i32 95, i32 44, ; 168..175
	i32 105, i32 30, i32 80, i32 56, i32 1, i32 77, i32 127, i32 40, ; 176..183
	i32 4, i32 103, i32 51, i32 44, i32 76, i32 87, i32 73, i32 16, ; 184..191
	i32 64, i32 118, i32 65, i32 128, i32 32, i32 38, i32 117, i32 36, ; 192..199
	i32 19, i32 5, i32 103, i32 67, i32 21, i32 113, i32 61, i32 96, ; 200..207
	i32 114, i32 76, i32 109, i32 64, i32 131, i32 90, i32 95, i32 126, ; 208..215
	i32 83, i32 50, i32 22, i32 88, i32 27, i32 113, i32 21, i32 71, ; 216..223
	i32 26, i32 118, i32 73, i32 7, i32 136, i32 135, i32 0, i32 6, ; 224..231
	i32 70, i32 26, i32 11, i32 133, i32 86, i32 43, i32 98, i32 111, ; 232..239
	i32 127, i32 52, i32 139, i32 36, i32 43, i32 19, i32 29, i32 28, ; 240..247
	i32 120, i32 23, i32 68, i32 93, i32 116, i32 34, i32 134, i32 57, ; 248..255
	i32 91, i32 79, i32 52, i32 17, i32 62, i32 18, i32 137, i32 20, ; 256..263
	i32 9, i32 129, i32 87, i32 85, i32 40, i32 14, i32 111, i32 119, ; 264..271
	i32 12, i32 131, i32 61, i32 91, i32 122, i32 92, i32 104, i32 38 ; 280..279
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
