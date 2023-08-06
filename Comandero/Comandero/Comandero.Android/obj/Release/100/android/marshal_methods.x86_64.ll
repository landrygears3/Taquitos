; ModuleID = 'obj\Release\100\android\marshal_methods.x86_64.ll'
source_filename = "obj\Release\100\android\marshal_methods.x86_64.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [160 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 8
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 29
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 30
	i64 125503650289234629, ; 3: Prism.DryIoc.Forms => 0x1bde0e7ad8132c5 => 34
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 53
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 65
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 76
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 59
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 57
	i64 913290893418446787, ; 9: Essential.Interfaces.dll => 0xcaca93a8ece3fc3 => 5
	i64 996343623809489702, ; 10: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 71
	i64 1000557547492888992, ; 11: Mono.Security.dll => 0xde2b1c9cba651a0 => 78
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 73
	i64 1425944114962822056, ; 13: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1624659445732251991, ; 14: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 50
	i64 1731380447121279447, ; 15: Newtonsoft.Json => 0x18071957e9b889d7 => 32
	i64 1795316252682057001, ; 16: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1836611346387731153, ; 17: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 65
	i64 1865037103900624886, ; 18: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 22
	i64 1981742497975770890, ; 19: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 62
	i64 1984538867944326539, ; 20: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 9
	i64 2040001226662520565, ; 21: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 79
	i64 2133195048986300728, ; 22: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 32
	i64 2262844636196693701, ; 23: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 57
	i64 2329709569556905518, ; 24: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 61
	i64 2335503487726329082, ; 25: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 44
	i64 2337758774805907496, ; 26: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 43
	i64 2470498323731680442, ; 27: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 54
	i64 2541787113603107559, ; 28: Lottie.Android.dll => 0x23463de9b0fa8ae7 => 13
	i64 2547086958574651984, ; 29: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 49
	i64 2592350477072141967, ; 30: System.Xml.dll => 0x23f9e10627330e8f => 47
	i64 2624866290265602282, ; 31: mscorlib.dll => 0x246d65fbde2db8ea => 31
	i64 2656907746661064104, ; 32: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 24
	i64 2783046991838674048, ; 33: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 43
	i64 2863324215353042462, ; 34: FFImageLoading.Forms => 0x27bc92340ce4661e => 7
	i64 2960931600190307745, ; 35: Xamarin.Forms.Core => 0x2917579a49927da1 => 69
	i64 3017704767998173186, ; 36: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 73
	i64 3171992396844006720, ; 37: Square.OkIO => 0x2c052e476c207d40 => 36
	i64 3260998928894807349, ; 38: Lottie.Forms.dll => 0x2d41653f91b44d35 => 14
	i64 3289520064315143713, ; 39: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 60
	i64 3522470458906976663, ; 40: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 66
	i64 3531994851595924923, ; 41: System.Numerics => 0x31042a9aade235bb => 42
	i64 3727469159507183293, ; 42: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 64
	i64 3783726507060260521, ; 43: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 20
	i64 3869221888984012293, ; 44: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 27
	i64 4525561845656915374, ; 45: System.ServiceModel.Internals => 0x3ece06856b710dae => 77
	i64 4794310189461587505, ; 46: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 49
	i64 4795410492532947900, ; 47: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 66
	i64 4914391832395879945, ; 48: FFImageLoading.Transformations => 0x44336d5581099609 => 10
	i64 5142919913060024034, ; 49: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 70
	i64 5203618020066742981, ; 50: Xamarin.Essentials => 0x4836f704f0e652c5 => 68
	i64 5486095413573346643, ; 51: Essential.Interfaces => 0x4c2286b649f06553 => 5
	i64 5507995362134886206, ; 52: System.Core.dll => 0x4c705499688c873e => 38
	i64 6014447449592687183, ; 53: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 17
	i64 6034224070161570862, ; 54: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 19
	i64 6085203216496545422, ; 55: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 71
	i64 6086316965293125504, ; 56: FormsViewGroup.dll => 0x5476f10882baef80 => 11
	i64 6222399776351216807, ; 57: System.Text.Json.dll => 0x565a67a0ffe264a7 => 45
	i64 6401687960814735282, ; 58: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 61
	i64 6548213210057960872, ; 59: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 56
	i64 6560151584539558821, ; 60: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 28
	i64 6659513131007730089, ; 61: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 59
	i64 6783125919820072783, ; 62: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 15
	i64 6870591353058300706, ; 63: Prism.DryIoc.Forms.dll => 0x5f593e6f03e91322 => 34
	i64 6876862101832370452, ; 64: System.Xml.Linq => 0x5f6f85a57d108914 => 48
	i64 7017588408768804231, ; 65: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 21
	i64 7488575175965059935, ; 66: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 48
	i64 7635363394907363464, ; 67: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 69
	i64 7637365915383206639, ; 68: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 68
	i64 7654504624184590948, ; 69: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7710895609346150079, ; 70: DryIoc.dll => 0x6b029ab3df324ebf => 4
	i64 7820441508502274321, ; 71: System.Data => 0x6c87ca1e14ff8111 => 75
	i64 7836164640616011524, ; 72: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 50
	i64 8083354569033831015, ; 73: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 60
	i64 8087206902342787202, ; 74: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 39
	i64 8167236081217502503, ; 75: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 12
	i64 8243855692487634729, ; 76: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 21
	i64 8609060182490045521, ; 77: Square.OkIO.dll => 0x7779869f8b475c51 => 36
	i64 8626175481042262068, ; 78: Java.Interop => 0x77b654e585b55834 => 12
	i64 8725526185868997716, ; 79: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 39
	i64 8844628981206701741, ; 80: Comandero.Android => 0x7abe6f3292f356ad => 0
	i64 9114191852432800567, ; 81: FFImageLoading.dll => 0x7e7c1d3363043b37 => 6
	i64 9238306115887712111, ; 82: FFImageLoading.Forms.dll => 0x80350e773bce476f => 7
	i64 9324707631942237306, ; 83: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9662334977499516867, ; 84: System.Numerics.dll => 0x8617827802b0cfc3 => 42
	i64 9678050649315576968, ; 85: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 54
	i64 9759257784415387573, ; 86: Comandero => 0x876fd93f878b7fb5 => 3
	i64 9808709177481450983, ; 87: Mono.Android.dll => 0x881f890734e555e7 => 30
	i64 9998632235833408227, ; 88: Mono.Security => 0x8ac2470b209ebae3 => 78
	i64 10038780035334861115, ; 89: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10226498071391929720, ; 90: Microsoft.Extensions.Features => 0x8debd1d049888578 => 25
	i64 10229024438826829339, ; 91: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 56
	i64 10430153318873392755, ; 92: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 55
	i64 10447083246144586668, ; 93: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 22
	i64 11002576679268595294, ; 94: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 26
	i64 11023048688141570732, ; 95: System.Core => 0x98f9bc61168392ac => 38
	i64 11037814507248023548, ; 96: System.Xml => 0x992e31d0412bf7fc => 47
	i64 11162124722117608902, ; 97: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 67
	i64 11201462017695523848, ; 98: FFImageLoading.Transformations.dll => 0x9b73965b71c5a408 => 10
	i64 11226290749488709958, ; 99: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 28
	i64 11513602507638267977, ; 100: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 41
	i64 11529969570048099689, ; 101: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 67
	i64 11530571088791430846, ; 102: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 27
	i64 12102847907131387746, ; 103: System.Buffers => 0xa7f5f40c43256f62 => 37
	i64 12145679461940342714, ; 104: System.Text.Json => 0xa88e1f1ebcb62fba => 45
	i64 12313367145828839434, ; 105: System.IO.Pipelines => 0xaae1de2e1c17f00a => 41
	i64 12451044538927396471, ; 106: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 58
	i64 12466513435562512481, ; 107: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 63
	i64 12488608402635344228, ; 108: Lottie.Android => 0xad50732cba09c964 => 13
	i64 12538491095302438457, ; 109: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 52
	i64 12700543734426720211, ; 110: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 53
	i64 12843321153144804894, ; 111: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 29
	i64 12953969983053113793, ; 112: Prism.Forms => 0xb3c5bf1106f429c1 => 35
	i64 12963446364377008305, ; 113: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 76
	i64 13196197655982686080, ; 114: Prism => 0xb7224fda06b0bf80 => 33
	i64 13295219713260136977, ; 115: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 16
	i64 13370592475155966277, ; 116: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13428779960367410341, ; 117: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 18
	i64 13454009404024712428, ; 118: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 74
	i64 13572454107664307259, ; 119: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 64
	i64 13647894001087880694, ; 120: System.Data.dll => 0xbd670f48cb071df6 => 75
	i64 13959074834287824816, ; 121: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 58
	i64 13967638549803255703, ; 122: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 70
	i64 14124974489674258913, ; 123: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 52
	i64 14551742072151931844, ; 124: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 44
	i64 14604329626201521481, ; 125: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 19
	i64 14669215534098758659, ; 126: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 24
	i64 14792063746108907174, ; 127: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 74
	i64 14809184851036126845, ; 128: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 18
	i64 14954917835170835695, ; 129: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 23
	i64 15020741785497507190, ; 130: DryIoc => 0xd074651213721576 => 4
	i64 15204818078425529879, ; 131: Comandero.Android.dll => 0xd3025d7bd6fdbe17 => 0
	i64 15329153246590474763, ; 132: Comandero.dll => 0xd4bc17a9128d1a0b => 3
	i64 15370334346939861994, ; 133: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 55
	i64 15391712275433856905, ; 134: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 23
	i64 15398511348637731642, ; 135: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 8
	i64 15609085926864131306, ; 136: System.dll => 0xd89e9cf3334914ea => 40
	i64 15810740023422282496, ; 137: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 72
	i64 15847085070278954535, ; 138: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 46
	i64 15963349826457351533, ; 139: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 79
	i64 16035518054986892682, ; 140: Prism.dll => 0xde899ab610db458a => 33
	i64 16154507427712707110, ; 141: System => 0xe03056ea4e39aa26 => 40
	i64 16156430004425724367, ; 142: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 16
	i64 16321164108206115771, ; 143: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 26
	i64 16343918515847859304, ; 144: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 25
	i64 16605226748660468415, ; 145: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 20
	i64 16833383113903931215, ; 146: mscorlib => 0xe99c30c1484d7f4f => 31
	i64 17118171214553292978, ; 147: System.Threading.Channels => 0xed8ff6060fc420b2 => 46
	i64 17124705692820578889, ; 148: Lottie.Forms => 0xeda72d18d7ae2249 => 14
	i64 17571845317586269034, ; 149: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 15
	i64 17636563193350668017, ; 150: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 17
	i64 17643123953373031521, ; 151: FFImageLoading => 0xf4d8f7c220fc2c61 => 6
	i64 17704177640604968747, ; 152: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 63
	i64 17710060891934109755, ; 153: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 62
	i64 17838668724098252521, ; 154: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 37
	i64 17882897186074144999, ; 155: FormsViewGroup => 0xf82cd03e3ac830e7 => 11
	i64 17892495832318972303, ; 156: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 72
	i64 17947624217716767869, ; 157: FFImageLoading.Platform => 0xf912c522ab34bc7d => 9
	i64 18129453464017766560, ; 158: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 77
	i64 18434045720645380019 ; 159: Prism.Forms.dll => 0xffd2e2ea4860a7b3 => 35
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [160 x i32] [
	i32 8, i32 29, i32 30, i32 34, i32 53, i32 65, i32 76, i32 59, ; 0..7
	i32 57, i32 5, i32 71, i32 78, i32 73, i32 2, i32 50, i32 32, ; 8..15
	i32 51, i32 65, i32 22, i32 62, i32 9, i32 79, i32 32, i32 57, ; 16..23
	i32 61, i32 44, i32 43, i32 54, i32 13, i32 49, i32 47, i32 31, ; 24..31
	i32 24, i32 43, i32 7, i32 69, i32 73, i32 36, i32 14, i32 60, ; 32..39
	i32 66, i32 42, i32 64, i32 20, i32 27, i32 77, i32 49, i32 66, ; 40..47
	i32 10, i32 70, i32 68, i32 5, i32 38, i32 17, i32 19, i32 71, ; 48..55
	i32 11, i32 45, i32 61, i32 56, i32 28, i32 59, i32 15, i32 34, ; 56..63
	i32 48, i32 21, i32 48, i32 69, i32 68, i32 1, i32 4, i32 75, ; 64..71
	i32 50, i32 60, i32 39, i32 12, i32 21, i32 36, i32 12, i32 39, ; 72..79
	i32 0, i32 6, i32 7, i32 51, i32 42, i32 54, i32 3, i32 30, ; 80..87
	i32 78, i32 1, i32 25, i32 56, i32 55, i32 22, i32 26, i32 38, ; 88..95
	i32 47, i32 67, i32 10, i32 28, i32 41, i32 67, i32 27, i32 37, ; 96..103
	i32 45, i32 41, i32 58, i32 63, i32 13, i32 52, i32 53, i32 29, ; 104..111
	i32 35, i32 76, i32 33, i32 16, i32 2, i32 18, i32 74, i32 64, ; 112..119
	i32 75, i32 58, i32 70, i32 52, i32 44, i32 19, i32 24, i32 74, ; 120..127
	i32 18, i32 23, i32 4, i32 0, i32 3, i32 55, i32 23, i32 8, ; 128..135
	i32 40, i32 72, i32 46, i32 79, i32 33, i32 40, i32 16, i32 26, ; 136..143
	i32 25, i32 20, i32 31, i32 46, i32 14, i32 15, i32 17, i32 6, ; 144..151
	i32 63, i32 62, i32 37, i32 11, i32 72, i32 9, i32 77, i32 35 ; 160..159
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
