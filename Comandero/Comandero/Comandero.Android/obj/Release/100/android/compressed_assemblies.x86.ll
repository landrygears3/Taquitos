; ModuleID = 'obj\Release\100\android\compressed_assemblies.x86.ll'
source_filename = "obj\Release\100\android\compressed_assemblies.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [575488 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [146944 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [564224 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [30208 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [33280 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [91136 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [24576 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [185856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [167936 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [492544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [196096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [28160 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [104448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [19968 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [170496 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [11776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [32256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [27648 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [8704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [36352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [75776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [14848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [54784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [37888 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [53248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [36352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [2078208 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [121856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [690176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [14848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [303616 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [82432 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [121344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [14736 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [398336 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [748032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [147456 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [74240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [218624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [38912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [8192 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [419328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [55808 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [68096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [557056 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [45568 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [15248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [1397760 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [926720 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [53248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [466432 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [32256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [79360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [585728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [44032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_62 = internal global [175104 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_63 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_64 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_65 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_66 = internal global [17408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_67 = internal global [36864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_68 = internal global [424448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_69 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_70 = internal global [40448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_71 = internal global [57856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_72 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_73 = internal global [1207296 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_74 = internal global [936448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_75 = internal global [263048 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_76 = internal global [103424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_77 = internal global [258048 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_78 = internal global [18072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_79 = internal global [2198528 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [80 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 575488, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([575488 x i8], [575488 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 146944, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([146944 x i8], [146944 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 564224, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([564224 x i8], [564224 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 30208, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([30208 x i8], [30208 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 33280, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([33280 x i8], [33280 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 91136, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([91136 x i8], [91136 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 24576, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([24576 x i8], [24576 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 185856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([185856 x i8], [185856 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 167936, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([167936 x i8], [167936 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 492544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([492544 x i8], [492544 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 196096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([196096 x i8], [196096 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 28160, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([28160 x i8], [28160 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 104448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([104448 x i8], [104448 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19968 x i8], [19968 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 170496, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([170496 x i8], [170496 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11776 x i8], [11776 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 32256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([32256 x i8], [32256 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 27648, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([27648 x i8], [27648 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 8704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8704 x i8], [8704 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 36352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36352 x i8], [36352 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 75776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([75776 x i8], [75776 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14848 x i8], [14848 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 54784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([54784 x i8], [54784 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 37888, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([37888 x i8], [37888 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 53248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([53248 x i8], [53248 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 36352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36352 x i8], [36352 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 2078208, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2078208 x i8], [2078208 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 121856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([121856 x i8], [121856 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 690176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([690176 x i8], [690176 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14848 x i8], [14848 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 303616, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([303616 x i8], [303616 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 82432, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([82432 x i8], [82432 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 121344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([121344 x i8], [121344 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 14736, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14736 x i8], [14736 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 398336, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([398336 x i8], [398336 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 748032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([748032 x i8], [748032 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 147456, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([147456 x i8], [147456 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 74240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([74240 x i8], [74240 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 218624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([218624 x i8], [218624 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 38912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38912 x i8], [38912 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 419328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([419328 x i8], [419328 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 55808, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([55808 x i8], [55808 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 68096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([68096 x i8], [68096 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 557056, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([557056 x i8], [557056 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 45568, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([45568 x i8], [45568 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 15248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15248 x i8], [15248 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 1397760, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1397760 x i8], [1397760 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 926720, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([926720 x i8], [926720 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 53248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([53248 x i8], [53248 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 466432, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([466432 x i8], [466432 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 32256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([32256 x i8], [32256 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 79360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([79360 x i8], [79360 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 585728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([585728 x i8], [585728 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44032 x i8], [44032 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}, 
	; 62
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([175104 x i8], [175104 x i8]* @__CompressedAssemblyDescriptor_data_62, i32 0, i32 0); data
	}, 
	; 63
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_63, i32 0, i32 0); data
	}, 
	; 64
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_64, i32 0, i32 0); data
	}, 
	; 65
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_65, i32 0, i32 0); data
	}, 
	; 66
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17408 x i8], [17408 x i8]* @__CompressedAssemblyDescriptor_data_66, i32 0, i32 0); data
	}, 
	; 67
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36864 x i8], [36864 x i8]* @__CompressedAssemblyDescriptor_data_67, i32 0, i32 0); data
	}, 
	; 68
	%struct.CompressedAssemblyDescriptor {
		i32 424448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([424448 x i8], [424448 x i8]* @__CompressedAssemblyDescriptor_data_68, i32 0, i32 0); data
	}, 
	; 69
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_69, i32 0, i32 0); data
	}, 
	; 70
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40448 x i8], [40448 x i8]* @__CompressedAssemblyDescriptor_data_70, i32 0, i32 0); data
	}, 
	; 71
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([57856 x i8], [57856 x i8]* @__CompressedAssemblyDescriptor_data_71, i32 0, i32 0); data
	}, 
	; 72
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_72, i32 0, i32 0); data
	}, 
	; 73
	%struct.CompressedAssemblyDescriptor {
		i32 1207296, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1207296 x i8], [1207296 x i8]* @__CompressedAssemblyDescriptor_data_73, i32 0, i32 0); data
	}, 
	; 74
	%struct.CompressedAssemblyDescriptor {
		i32 936448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([936448 x i8], [936448 x i8]* @__CompressedAssemblyDescriptor_data_74, i32 0, i32 0); data
	}, 
	; 75
	%struct.CompressedAssemblyDescriptor {
		i32 263048, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([263048 x i8], [263048 x i8]* @__CompressedAssemblyDescriptor_data_75, i32 0, i32 0); data
	}, 
	; 76
	%struct.CompressedAssemblyDescriptor {
		i32 103424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([103424 x i8], [103424 x i8]* @__CompressedAssemblyDescriptor_data_76, i32 0, i32 0); data
	}, 
	; 77
	%struct.CompressedAssemblyDescriptor {
		i32 258048, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([258048 x i8], [258048 x i8]* @__CompressedAssemblyDescriptor_data_77, i32 0, i32 0); data
	}, 
	; 78
	%struct.CompressedAssemblyDescriptor {
		i32 18072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18072 x i8], [18072 x i8]* @__CompressedAssemblyDescriptor_data_78, i32 0, i32 0); data
	}, 
	; 79
	%struct.CompressedAssemblyDescriptor {
		i32 2198528, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2198528 x i8], [2198528 x i8]* @__CompressedAssemblyDescriptor_data_79, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 80, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([80 x %struct.CompressedAssemblyDescriptor], [80 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
