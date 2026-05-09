.class public Lcom/deepe/c/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/e$a;,
        Lcom/deepe/c/c/e$b;,
        Lcom/deepe/c/c/e$c;,
        Lcom/deepe/c/c/e$d;,
        Lcom/deepe/c/c/e$e;
    }
.end annotation


# static fields
.field private static final A:[Lcom/deepe/c/c/e$c;

.field private static final B:[Lcom/deepe/c/c/e$c;

.field private static final C:[Lcom/deepe/c/c/e$c;

.field private static final D:[Lcom/deepe/c/c/e$c;

.field private static final E:[[Lcom/deepe/c/c/e$c;

.field private static final F:[Lcom/deepe/c/c/e$c;

.field private static final G:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/deepe/c/c/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final H:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final I:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final J:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final K:Ljava/nio/charset/Charset;

.field private static final L:[B

.field private static final M:[B

.field private static final U:Ljava/util/regex/Pattern;

.field private static final a:[Ljava/lang/String;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B

.field private static final l:[B

.field private static final m:[B

.field private static final n:[B

.field private static final o:[B

.field private static final p:[B

.field private static final q:[B

.field private static final r:Ljava/text/SimpleDateFormat;

.field private static final s:Ljava/text/SimpleDateFormat;

.field private static final t:[Ljava/lang/String;

.field private static final u:[I

.field private static final v:[B

.field private static final w:[Lcom/deepe/c/c/e$c;

.field private static final x:[Lcom/deepe/c/c/e$c;

.field private static final y:[Lcom/deepe/c/c/e$c;

.field private static final z:[Lcom/deepe/c/c/e$c;


# instance fields
.field private N:I

.field private O:Z

.field private final P:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/nio/ByteOrder;

.field private S:I

.field private T:Lcom/deepe/c/c/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "UNKNOWN"

    const-string v1, "JPEG"

    const-string v2, "PNG "

    const-string v3, "WEBP"

    const-string v4, "GIF "

    const-string v5, "SVG "

    const-string v6, "TIFF"

    const-string v7, "HEIC"

    const-string v8, "AVIF"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/e;->a:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/deepe/c/c/e;->b:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/deepe/c/c/e;->c:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/deepe/c/c/e;->d:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/deepe/c/c/e;->e:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/deepe/c/c/e;->f:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/deepe/c/c/e;->g:[B

    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    sput-object v2, Lcom/deepe/c/c/e;->h:[B

    const/4 v2, 0x3

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    sput-object v3, Lcom/deepe/c/c/e;->i:[B

    const/4 v3, 0x5

    new-array v4, v3, [B

    fill-array-data v4, :array_7

    sput-object v4, Lcom/deepe/c/c/e;->j:[B

    new-array v4, v0, [B

    fill-array-data v4, :array_8

    sput-object v4, Lcom/deepe/c/c/e;->k:[B

    new-array v4, v2, [B

    fill-array-data v4, :array_9

    sput-object v4, Lcom/deepe/c/c/e;->l:[B

    new-array v4, v2, [B

    fill-array-data v4, :array_a

    sput-object v4, Lcom/deepe/c/c/e;->m:[B

    new-array v4, v2, [B

    fill-array-data v4, :array_b

    sput-object v4, Lcom/deepe/c/c/e;->n:[B

    new-array v4, v0, [B

    fill-array-data v4, :array_c

    sput-object v4, Lcom/deepe/c/c/e;->o:[B

    new-array v4, v0, [B

    fill-array-data v4, :array_d

    sput-object v4, Lcom/deepe/c/c/e;->p:[B

    new-array v4, v0, [B

    fill-array-data v4, :array_e

    sput-object v4, Lcom/deepe/c/c/e;->q:[B

    const-string v5, ""

    const-string v6, "BYTE"

    const-string v7, "STRING"

    const-string v8, "USHORT"

    const-string v9, "ULONG"

    const-string v10, "URATIONAL"

    const-string v11, "SBYTE"

    const-string v12, "UNDEFINED"

    const-string v13, "SSHORT"

    const-string v14, "SLONG"

    const-string v15, "SRATIONAL"

    const-string v16, "SINGLE"

    const-string v17, "DOUBLE"

    const-string v18, "IFD"

    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/deepe/c/c/e;->t:[Ljava/lang/String;

    const/16 v4, 0xe

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v6, v5, v6

    const/4 v7, 0x2

    aput v6, v5, v7

    aput v7, v5, v2

    aput v0, v5, v0

    aput v1, v5, v3

    const/4 v8, 0x6

    aput v6, v5, v8

    const/4 v9, 0x7

    aput v6, v5, v9

    aput v7, v5, v1

    const/16 v10, 0x9

    aput v0, v5, v10

    const/16 v11, 0xa

    aput v1, v5, v11

    const/16 v12, 0xb

    aput v0, v5, v12

    const/16 v13, 0xc

    aput v1, v5, v13

    const/16 v14, 0xd

    aput v6, v5, v14

    sput-object v5, Lcom/deepe/c/c/e;->u:[I

    new-array v5, v1, [B

    const/16 v15, 0x41

    const/16 v16, 0x0

    aput-byte v15, v5, v16

    const/16 v15, 0x53

    aput-byte v15, v5, v6

    const/16 v15, 0x43

    aput-byte v15, v5, v7

    const/16 v15, 0x49

    aput-byte v15, v5, v2

    aput-byte v15, v5, v0

    sput-object v5, Lcom/deepe/c/c/e;->v:[B

    const/16 v5, 0x2a

    new-array v5, v5, [Lcom/deepe/c/c/e$c;

    new-instance v15, Lcom/deepe/c/c/e$c;

    const-string v4, "NewSubfileType"

    const/16 v14, 0xfe

    invoke-direct {v15, v4, v14, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v15, v5, v16

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v4, v14, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v6

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "ImageWidth"

    const/16 v15, 0x100

    invoke-direct {v4, v14, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    aput-object v4, v5, v7

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "ImageLength"

    const/16 v15, 0x101

    invoke-direct {v4, v14, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    aput-object v4, v5, v2

    new-instance v4, Lcom/deepe/c/c/e$c;

    const/16 v14, 0x102

    const-string v15, "BitsPerSample"

    invoke-direct {v4, v15, v14, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v0

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v15, "Compression"

    const/16 v14, 0x103

    invoke-direct {v4, v15, v14, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v3

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v4, v14, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v8

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v4, v14, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v9

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v4, v14, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v1

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v4, v14, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v10

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v4, v14, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    aput-object v4, v5, v11

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "Orientation"

    const/16 v15, 0x112

    invoke-direct {v4, v14, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v12

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v4, v14, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "RowsPerStrip"

    const/16 v15, 0x116

    invoke-direct {v4, v14, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    const/16 v14, 0xd

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "StripByteCounts"

    const/16 v15, 0x117

    invoke-direct {v4, v14, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    const/16 v14, 0xe

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v4, v14, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xf

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v15, "YResolution"

    const/16 v14, 0x11b

    invoke-direct {v4, v15, v14, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x10

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v15, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v4, v15, v14, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x11

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v15, "ResolutionUnit"

    const/16 v14, 0x128

    invoke-direct {v4, v15, v14, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x12

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v15, "TransferFunction"

    const/16 v14, 0x12d

    invoke-direct {v4, v15, v14, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x13

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "Software"

    const/16 v15, 0x131

    invoke-direct {v4, v14, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x14

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v4, v14, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x15

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v4, v14, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x16

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v14, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v4, v14, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x17

    aput-object v4, v5, v14

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v15, "PrimaryChromaticities"

    const/16 v13, 0x13f

    invoke-direct {v4, v15, v13, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x18

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v4, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x19

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v4, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1a

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v4, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1b

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v4, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1c

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v4, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1d

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v4, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1e

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v4, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1f

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "Copyright"

    const v15, 0x8298

    invoke-direct {v4, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x20

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v4, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x21

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v4, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x22

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "SensorTopBorder"

    invoke-direct {v4, v13, v0, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x23

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "SensorLeftBorder"

    invoke-direct {v4, v13, v3, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x24

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "SensorBottomBorder"

    invoke-direct {v4, v13, v8, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x25

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "SensorRightBorder"

    invoke-direct {v4, v13, v9, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x26

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "ISO"

    invoke-direct {v4, v13, v14, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x27

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v4, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x28

    aput-object v4, v5, v13

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v13, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v4, v13, v15, v6}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x29

    aput-object v4, v5, v13

    sput-object v5, Lcom/deepe/c/c/e;->w:[Lcom/deepe/c/c/e$c;

    const/16 v4, 0x4a

    new-array v4, v4, [Lcom/deepe/c/c/e$c;

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v16

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FNumber"

    const v15, 0x829d

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v7

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v2

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "PhotographicSensitivity"

    const v15, 0x8827

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v0

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "OECF"

    const v15, 0x8828

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v3

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SensitivityType"

    const v15, 0x8830

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "StandardOutputSensitivity"

    const v15, 0x8831

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v9

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "RecommendedExposureIndex"

    const v15, 0x8832

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v1

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ISOSpeed"

    const v15, 0x8833

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v10

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ISOSpeedLatitudeyyy"

    const v15, 0x8834

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ISOSpeedLatitudezzz"

    const v15, 0x8835

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v12

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0xc

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0xd

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0xe

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "OffsetTime"

    const v15, 0x9010

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0xf

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "OffsetTimeOriginal"

    const v15, 0x9011

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x10

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "OffsetTimeDigitized"

    const v15, 0x9012

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x11

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x12

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x13

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ShutterSpeedValue"

    const v15, 0x9201

    invoke-direct {v5, v13, v15, v11}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x14

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x15

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v5, v13, v15, v11}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x16

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v5, v13, v15, v11}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v14

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "MaxApertureValue"

    const v15, 0x9205

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x18

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubjectDistance"

    const v15, 0x9206

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x19

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "MeteringMode"

    const v15, 0x9207

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1a

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "LightSource"

    const v15, 0x9208

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1b

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Flash"

    const v15, 0x9209

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1c

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FocalLength"

    const v15, 0x920a

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1d

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubjectArea"

    const v15, 0x9214

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1e

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "MakerNote"

    const v15, 0x927c

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x1f

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "UserComment"

    const v15, 0x9286

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x20

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubSecTime"

    const v15, 0x9290

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x21

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubSecTimeOriginal"

    const v15, 0x9291

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x22

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubSecTimeDigitized"

    const v15, 0x9292

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x23

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FlashpixVersion"

    const v15, 0xa000

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x24

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ColorSpace"

    const v15, 0xa001

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x25

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "PixelXDimension"

    const v15, 0xa002

    invoke-direct {v5, v13, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    const/16 v13, 0x26

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "PixelYDimension"

    const v15, 0xa003

    invoke-direct {v5, v13, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    const/16 v13, 0x27

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "RelatedSoundFile"

    const v15, 0xa004

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x28

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "InteroperabilityIFDPointer"

    const v15, 0xa005

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x29

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FlashEnergy"

    const v15, 0xa20b

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x2a

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SpatialFrequencyResponse"

    const v15, 0xa20c

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x2b

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FocalPlaneXResolution"

    const v15, 0xa20e

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x2c

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FocalPlaneYResolution"

    const v15, 0xa20f

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x2d

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x2e

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubjectLocation"

    const v15, 0xa214

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x2f

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ExposureIndex"

    const v15, 0xa215

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x30

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SensingMethod"

    const v15, 0xa217

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x31

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FileSource"

    const v15, 0xa300

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x32

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SceneType"

    const v15, 0xa301

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x33

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "CFAPattern"

    const v15, 0xa302

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x34

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "CustomRendered"

    const v15, 0xa401

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x35

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ExposureMode"

    const v15, 0xa402

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x36

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "WhiteBalance"

    const v15, 0xa403

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x37

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "DigitalZoomRatio"

    const v15, 0xa404

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x38

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x39

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SceneCaptureType"

    const v15, 0xa406

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x3a

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "GainControl"

    const v15, 0xa407

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x3b

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Contrast"

    const v15, 0xa408

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x3c

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Saturation"

    const v15, 0xa409

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x3d

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Sharpness"

    const v15, 0xa40a

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x3e

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "DeviceSettingDescription"

    const v15, 0xa40b

    invoke-direct {v5, v13, v15, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x3f

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubjectDistanceRange"

    const v15, 0xa40c

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x40

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ImageUniqueID"

    const v15, 0xa420

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x41

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "CameraOwnerName"

    const v15, 0xa430

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x42

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "BodySerialNumber"

    const v15, 0xa431

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x43

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "LensSpecification"

    const v15, 0xa432

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x44

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "LensMake"

    const v15, 0xa433

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x45

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "LensModel"

    const v15, 0xa434

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x46

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Gamma"

    const v15, 0xa500

    invoke-direct {v5, v13, v15, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x47

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v5, v13, v15, v6}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x48

    aput-object v5, v4, v13

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "DefaultCropSize"

    const v15, 0xc620

    invoke-direct {v5, v13, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    const/16 v13, 0x49

    aput-object v5, v4, v13

    sput-object v4, Lcom/deepe/c/c/e;->x:[Lcom/deepe/c/c/e$c;

    new-array v4, v6, [Lcom/deepe/c/c/e$c;

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "InteroperabilityIndex"

    invoke-direct {v5, v13, v6, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v16

    sput-object v4, Lcom/deepe/c/c/e;->y:[Lcom/deepe/c/c/e$c;

    const/16 v4, 0x23

    new-array v4, v4, [Lcom/deepe/c/c/e$c;

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "NewSubfileType"

    const/16 v15, 0xfe

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v16

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v5, v13, v15, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v7

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Compression"

    const/16 v15, 0x103

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v2

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v0

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v3

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Make"

    const/16 v15, 0x10f

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "Model"

    const/16 v15, 0x110

    invoke-direct {v5, v13, v15, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v9

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v5, v13, v15, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    aput-object v5, v4, v1

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "ThumbnailOrientation"

    const/16 v15, 0x112

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v10

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v13, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v5, v13, v15, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "RowsPerStrip"

    const/16 v13, 0x116

    invoke-direct {v5, v11, v13, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    aput-object v5, v4, v12

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "StripByteCounts"

    const/16 v12, 0x117

    invoke-direct {v5, v11, v12, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    const/16 v11, 0xc

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v5, v11, v12, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0xd

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v5, v11, v12, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0xe

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "PlanarConfiguration"

    const/16 v12, 0x11c

    invoke-direct {v5, v11, v12, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0xf

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "ResolutionUnit"

    const/16 v12, 0x128

    invoke-direct {v5, v11, v12, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x10

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "TransferFunction"

    const/16 v12, 0x12d

    invoke-direct {v5, v11, v12, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x11

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "Software"

    const/16 v12, 0x131

    invoke-direct {v5, v11, v12, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x12

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v5, v11, v12, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x13

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "Artist"

    const/16 v12, 0x13b

    invoke-direct {v5, v11, v12, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x14

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "WhitePoint"

    const/16 v12, 0x13e

    invoke-direct {v5, v11, v12, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x15

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "PrimaryChromaticities"

    const/16 v12, 0x13f

    invoke-direct {v5, v11, v12, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x16

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "SubIFDPointer"

    const/16 v12, 0x14a

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v14

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x18

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "JPEGInterchangeFormatLength"

    const/16 v12, 0x202

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x19

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v5, v11, v12, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x1a

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v5, v11, v12, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x1b

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v5, v11, v12, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x1c

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v5, v11, v12, v3}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x1d

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "Copyright"

    const v12, 0x8298

    invoke-direct {v5, v11, v12, v7}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x1e

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x1f

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x20

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "DNGVersion"

    const v12, 0xc612

    invoke-direct {v5, v11, v12, v6}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x21

    aput-object v5, v4, v11

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "DefaultCropSize"

    const v12, 0xc620

    invoke-direct {v5, v11, v12, v2, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;III)V

    const/16 v11, 0x22

    aput-object v5, v4, v11

    sput-object v4, Lcom/deepe/c/c/e;->z:[Lcom/deepe/c/c/e$c;

    new-array v4, v2, [Lcom/deepe/c/c/e$c;

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "ThumbnailImage"

    const/16 v12, 0x100

    invoke-direct {v5, v11, v12, v9}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v16

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v12, 0x2020

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v12, 0x2040

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v7

    sput-object v4, Lcom/deepe/c/c/e;->A:[Lcom/deepe/c/c/e$c;

    new-array v4, v7, [Lcom/deepe/c/c/e$c;

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "PreviewImageStart"

    const/16 v12, 0x101

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v16

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "PreviewImageLength"

    const/16 v12, 0x102

    invoke-direct {v5, v11, v12, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v6

    sput-object v4, Lcom/deepe/c/c/e;->B:[Lcom/deepe/c/c/e$c;

    new-array v4, v6, [Lcom/deepe/c/c/e$c;

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "AspectFrame"

    const/16 v12, 0x1113

    invoke-direct {v5, v11, v12, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v16

    sput-object v4, Lcom/deepe/c/c/e;->C:[Lcom/deepe/c/c/e$c;

    new-array v4, v6, [Lcom/deepe/c/c/e$c;

    new-instance v5, Lcom/deepe/c/c/e$c;

    const-string v11, "ColorSpace"

    const/16 v12, 0x37

    invoke-direct {v5, v11, v12, v2}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v16

    sput-object v4, Lcom/deepe/c/c/e;->D:[Lcom/deepe/c/c/e$c;

    new-array v5, v10, [[Lcom/deepe/c/c/e$c;

    sget-object v10, Lcom/deepe/c/c/e;->w:[Lcom/deepe/c/c/e$c;

    aput-object v10, v5, v16

    sget-object v11, Lcom/deepe/c/c/e;->x:[Lcom/deepe/c/c/e$c;

    aput-object v11, v5, v6

    sget-object v11, Lcom/deepe/c/c/e;->y:[Lcom/deepe/c/c/e$c;

    aput-object v11, v5, v7

    sget-object v11, Lcom/deepe/c/c/e;->z:[Lcom/deepe/c/c/e$c;

    aput-object v11, v5, v2

    aput-object v10, v5, v0

    sget-object v10, Lcom/deepe/c/c/e;->A:[Lcom/deepe/c/c/e$c;

    aput-object v10, v5, v3

    sget-object v10, Lcom/deepe/c/c/e;->B:[Lcom/deepe/c/c/e$c;

    aput-object v10, v5, v8

    sget-object v10, Lcom/deepe/c/c/e;->C:[Lcom/deepe/c/c/e$c;

    aput-object v10, v5, v9

    aput-object v4, v5, v1

    sput-object v5, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    new-array v1, v8, [Lcom/deepe/c/c/e$c;

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v5, "SubIFDPointer"

    const/16 v9, 0x14a

    invoke-direct {v4, v5, v9, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v16

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v5, "ExifIFDPointer"

    const v9, 0x8769

    invoke-direct {v4, v5, v9, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v6

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v5, "GPSInfoIFDPointer"

    const v9, 0x8825

    invoke-direct {v4, v5, v9, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v7

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v5, "InteroperabilityIFDPointer"

    const v9, 0xa005

    invoke-direct {v4, v5, v9, v0}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v2

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v9, 0x2020

    invoke-direct {v4, v5, v9, v6}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v0

    new-instance v4, Lcom/deepe/c/c/e$c;

    const-string v5, "ImageProcessingIFDPointer"

    const/16 v9, 0x2040

    invoke-direct {v4, v5, v9, v6}, Lcom/deepe/c/c/e$c;-><init>(Ljava/lang/String;II)V

    aput-object v4, v1, v3

    sput-object v1, Lcom/deepe/c/c/e;->F:[Lcom/deepe/c/c/e$c;

    sget-object v1, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v4, v1

    new-array v4, v4, [Ljava/util/HashMap;

    sput-object v4, Lcom/deepe/c/c/e;->G:[Ljava/util/HashMap;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Lcom/deepe/c/c/e;->H:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    const-string v4, "FNumber"

    const-string v5, "DigitalZoomRatio"

    const-string v9, "ExposureTime"

    const-string v10, "SubjectDistance"

    filled-new-array {v4, v5, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/deepe/c/c/e;->I:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/deepe/c/c/e;->K:Ljava/nio/charset/Charset;

    const-string v4, "Exif\u0000\u0000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/deepe/c/c/e;->L:[B

    sget-object v1, Lcom/deepe/c/c/e;->K:Ljava/nio/charset/Charset;

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/deepe/c/c/e;->M:[B

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/deepe/c/c/e;->r:Ljava/text/SimpleDateFormat;

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/deepe/c/c/e;->s:Ljava/text/SimpleDateFormat;

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move/from16 v1, v16

    :goto_0
    sget-object v4, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    sget-object v1, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    sget-object v4, Lcom/deepe/c/c/e;->F:[Lcom/deepe/c/c/e$c;

    aget-object v4, v4, v16

    iget v4, v4, Lcom/deepe/c/c/e$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    sget-object v4, Lcom/deepe/c/c/e;->F:[Lcom/deepe/c/c/e$c;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/deepe/c/c/e$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    sget-object v4, Lcom/deepe/c/c/e;->F:[Lcom/deepe/c/c/e$c;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/deepe/c/c/e$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    sget-object v4, Lcom/deepe/c/c/e;->F:[Lcom/deepe/c/c/e$c;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/deepe/c/c/e$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    sget-object v2, Lcom/deepe/c/c/e;->F:[Lcom/deepe/c/c/e$c;

    aget-object v0, v2, v0

    iget v0, v0, Lcom/deepe/c/c/e$c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    sget-object v1, Lcom/deepe/c/c/e;->F:[Lcom/deepe/c/c/e$c;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/deepe/c/c/e$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/e;->U:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    sget-object v4, Lcom/deepe/c/c/e;->G:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v4, v1

    sget-object v4, Lcom/deepe/c/c/e;->H:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v4, v1

    sget-object v4, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    aget-object v4, v4, v1

    array-length v5, v4

    move/from16 v9, v16

    :goto_1
    if-lt v9, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    aget-object v10, v4, v9

    sget-object v11, Lcom/deepe/c/c/e;->G:[Ljava/util/HashMap;

    aget-object v11, v11, v1

    iget v12, v10, Lcom/deepe/c/c/e$c;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/deepe/c/c/e;->H:[Ljava/util/HashMap;

    aget-object v11, v11, v1

    iget-object v12, v10, Lcom/deepe/c/c/e$c;->b:Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :array_0
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_1
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_2
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_3
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_5
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_6
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_7
    .array-data 1
        0x3ct
        0x3ft
        0x78t
        0x6dt
        0x6ct
    .end array-data

    nop

    :array_8
    .array-data 1
        0x3ct
        0x73t
        0x76t
        0x67t
    .end array-data

    :array_9
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_a
    .array-data 1
        0x49t
        0x49t
        0x2at
    .end array-data

    :array_b
    .array-data 1
        0x4dt
        0x4dt
        0x2at
    .end array-data

    :array_c
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_e
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/deepe/c/c/e;->Q:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/deepe/c/c/e;->O:Z

    invoke-direct {p0, p1, p3}, Lcom/deepe/c/c/e;->a(Ljava/io/InputStream;Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inputStream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/deepe/c/c/e;->Q:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/e;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filename cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/i/d;

    invoke-direct {v0, p1}, Lcom/deepe/c/i/d;-><init>([B)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/deepe/c/c/e;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method private a(Ljava/io/BufferedInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    invoke-static {v0}, Lcom/deepe/c/c/e;->b([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {v0}, Lcom/deepe/c/c/e;->d([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    invoke-static {v0}, Lcom/deepe/c/c/e;->e([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    invoke-static {v0}, Lcom/deepe/c/c/e;->f([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    invoke-static {v0}, Lcom/deepe/c/c/e;->g([B)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    invoke-static {v0}, Lcom/deepe/c/c/e;->h([B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    invoke-static {v0}, Lcom/deepe/c/c/e;->c([B)I

    move-result p1

    if-eqz p1, :cond_6

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public static a(Ljava/lang/String;)Lcom/deepe/c/c/e;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/deepe/c/c/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepe/c/c/e;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Lcom/deepe/c/c/e;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/deepe/c/c/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepe/c/c/e;-><init>([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/e;->a:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private a(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/e$b;

    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, p1

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/e$b;

    iget-object v4, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/e$b;

    iget-object v4, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/e$b;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v4, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v4, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v4, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_3

    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    :cond_3
    :goto_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/e$b;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object p1, p3, p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/deepe/c/c/e$a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/e$a;->a(Ljava/nio/ByteOrder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->a()I

    move-result v2

    sget-object v3, Lcom/deepe/c/c/e;->h:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Lcom/deepe/c/c/e$a;->a(I)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->a()I

    move-result v8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->a()I

    move-result v9

    sub-int/2addr v9, v2

    const/16 v10, 0x10

    if-ne v9, v10, :cond_2

    const v9, 0x49484452

    if-ne v7, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered invalid PNG file--IHDR chunk should appear as the first chunk"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const v9, 0x49454e44    # 808164.25f

    if-ne v7, v9, :cond_3

    :goto_2
    return-void

    :cond_3
    const v9, 0x65584966

    const/4 v10, 0x1

    if-ne v7, v9, :cond_5

    if-nez v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->a()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/deepe/c/c/e;->S:I

    new-array v4, v6, [B

    invoke-virtual {v0, v4}, Lcom/deepe/c/c/e$a;->readFully([B)V

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v6

    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {v9, v7}, Lcom/deepe/c/c/e;->a(Ljava/util/zip/CRC32;I)V

    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v11

    long-to-int v7, v11

    if-ne v7, v6, :cond_4

    invoke-direct {v1, v4, v3}, Lcom/deepe/c/c/e;->a([BI)V

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/e;->i()V

    move v4, v10

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calculated CRC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const v9, 0x69545874

    if-ne v7, v9, :cond_6

    if-nez v5, :cond_6

    sget-object v7, Lcom/deepe/c/c/e;->g:[B

    array-length v7, v7

    if-lt v6, v7, :cond_6

    sget-object v7, Lcom/deepe/c/c/e;->g:[B

    array-length v7, v7

    new-array v9, v7, [B

    invoke-virtual {v0, v9}, Lcom/deepe/c/c/e$a;->readFully([B)V

    sget-object v11, Lcom/deepe/c/c/e;->g:[B

    invoke-static {v9, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->a()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int v13, v6, v7

    new-array v6, v13, [B

    invoke-virtual {v0, v6}, Lcom/deepe/c/c/e$a;->readFully([B)V

    new-instance v7, Lcom/deepe/c/c/e$b;

    const/4 v12, 0x1

    int-to-long v14, v5

    move-object v11, v7

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/deepe/c/c/e$b;-><init>(IIJ[B)V

    iput-object v7, v1, Lcom/deepe/c/c/e;->T:Lcom/deepe/c/c/e$b;

    move v5, v10

    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->a()I

    move-result v6

    sub-int/2addr v8, v6

    invoke-virtual {v0, v8}, Lcom/deepe/c/c/e$a;->a(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered corrupt PNG file."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private a(Lcom/deepe/c/c/e$a;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lcom/deepe/c/c/e$a;->a(Ljava/nio/ByteOrder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readByte()B

    move-result v3

    const-string v4, "Invalid marker: "

    const/4 v5, -0x1

    if-ne v3, v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readByte()B

    move-result v6

    const/16 v7, -0x28

    if-ne v6, v7, :cond_a

    const/4 v3, 0x2

    move v4, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_9

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readByte()B

    move-result v7

    add-int/2addr v4, v6

    const/16 v8, -0x27

    if-eq v7, v8, :cond_8

    const/16 v8, -0x26

    if-ne v7, v8, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readUnsignedShort()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/2addr v4, v3

    const-string v9, "Invalid length"

    if-ltz v8, :cond_7

    const/16 v10, -0x1f

    const/4 v11, 0x0

    if-eq v7, v10, :cond_3

    const/4 v10, -0x2

    if-eq v7, v10, :cond_1

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v1, v6}, Lcom/deepe/c/c/e$a;->a(I)V

    iget-object v6, v0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readUnsignedShort()I

    move-result v7

    int-to-long v10, v7

    iget-object v7, v0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v7}, Lcom/deepe/c/c/e$b;->a(JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v7

    const-string v10, "ImageLength"

    invoke-virtual {v6, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$a;->readUnsignedShort()I

    move-result v7

    int-to-long v10, v7

    iget-object v7, v0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v7}, Lcom/deepe/c/c/e$b;->a(JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v7

    const-string v10, "ImageWidth"

    invoke-virtual {v6, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x5

    goto :goto_3

    :cond_1
    new-array v7, v8, [B

    invoke-virtual {v1, v7}, Lcom/deepe/c/c/e$a;->readFully([B)V

    const-string v8, "UserComment"

    invoke-virtual {v0, v8}, Lcom/deepe/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    iget-object v10, v0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v6, v10, v6

    new-instance v10, Ljava/lang/String;

    sget-object v12, Lcom/deepe/c/c/e;->K:Ljava/nio/charset/Charset;

    invoke-direct {v10, v7, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v10}, Lcom/deepe/c/c/e$b;->a(Ljava/lang/String;)Lcom/deepe/c/c/e$b;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    move v8, v11

    goto :goto_3

    :cond_3
    new-array v6, v8, [B

    invoke-virtual {v1, v6}, Lcom/deepe/c/c/e$a;->readFully([B)V

    add-int v7, v4, v8

    sget-object v10, Lcom/deepe/c/c/e;->L:[B

    invoke-static {v6, v10}, Lcom/deepe/c/c/f;->a([B[B)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/deepe/c/c/e;->L:[B

    array-length v10, v10

    invoke-static {v6, v10, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    add-int v4, p2, v4

    sget-object v8, Lcom/deepe/c/c/e;->L:[B

    array-length v8, v8

    add-int/2addr v4, v8

    iput v4, v0, Lcom/deepe/c/c/e;->S:I

    invoke-direct {v0, v6, v2}, Lcom/deepe/c/c/e;->a([BI)V

    goto :goto_2

    :cond_4
    sget-object v10, Lcom/deepe/c/c/e;->M:[B

    invoke-static {v6, v10}, Lcom/deepe/c/c/f;->a([B[B)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/deepe/c/c/e;->M:[B

    array-length v12, v10

    add-int/2addr v4, v12

    array-length v10, v10

    invoke-static {v6, v10, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    new-instance v8, Lcom/deepe/c/c/e$b;

    const/4 v13, 0x1

    array-length v14, v6

    int-to-long v3, v4

    move-object v12, v8

    move-wide v15, v3

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Lcom/deepe/c/c/e$b;-><init>(IIJ[B)V

    iput-object v8, v0, Lcom/deepe/c/c/e;->T:Lcom/deepe/c/c/e$b;

    :cond_5
    :goto_2
    move v4, v7

    goto :goto_1

    :goto_3
    if-ltz v8, :cond_6

    invoke-virtual {v1, v8}, Lcom/deepe/c/c/e$a;->a(I)V

    add-int/2addr v4, v8

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/deepe/c/c/e$a;->a(Ljava/nio/ByteOrder;)V

    return-void

    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid marker:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v6, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/deepe/c/c/e$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/deepe/c/c/e;->d(Lcom/deepe/c/c/e$a;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/e;->b(Lcom/deepe/c/c/e$e;I)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/e;->d(Lcom/deepe/c/c/e$e;I)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/e;->d(Lcom/deepe/c/c/e$e;I)V

    invoke-direct {p0}, Lcom/deepe/c/c/e;->i()V

    return-void
.end method

.method private a(Lcom/deepe/c/c/e$e;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "yes"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_e

    const/16 v1, 0x1f

    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Reading EXIF from AVIF files is supported from SDK 31 and above"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    new-instance v3, Lcom/deepe/c/c/e$1;

    invoke-direct {v3, p0, p1}, Lcom/deepe/c/c/e$1;-><init>(Lcom/deepe/c/c/e;Lcom/deepe/c/c/e$e;)V

    invoke-static {p2, v3}, Lcom/deepe/c/c/f$a;->a(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    const/16 v3, 0x21

    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    const/16 v0, 0x1d

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v0, v7

    move-object v1, v0

    :goto_1
    const/4 v5, 0x0

    if-eqz v7, :cond_4

    iget-object v6, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v6, v6, v5

    const-string v8, "ImageWidth"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v9, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v7, v9}, Lcom/deepe/c/c/e$b;->a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v6, v6, v5

    const-string v7, "ImageLength"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v8, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v0, v8}, Lcom/deepe/c/c/e$b;->a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v0, 0x6

    if-eqz v1, :cond_9

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x5a

    if-eq v1, v7, :cond_7

    const/16 v7, 0xb4

    if-eq v1, v7, :cond_6

    const/16 v7, 0x10e

    if-eq v1, v7, :cond_8

    move v2, v6

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    move v2, v0

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v1, v5

    const-string v6, "Orientation"

    iget-object v7, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v2, v7}, Lcom/deepe/c/c/e$b;->a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v0, :cond_b

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/deepe/c/c/e$e;->a(J)V

    new-array v3, v0, [B

    invoke-virtual {p1, v3}, Lcom/deepe/c/c/e$e;->readFully([B)V

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, -0x6

    sget-object v0, Lcom/deepe/c/c/e;->L:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$e;->readFully([B)V

    iput v1, p0, Lcom/deepe/c/c/e;->S:I

    invoke-direct {p0, v0, v5}, Lcom/deepe/c/c/e;->a([BI)V

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_3
    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {p2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v5, v0

    invoke-virtual {p1, v5, v6}, Lcom/deepe/c/c/e$e;->a(J)V

    new-array v7, v4, [B

    invoke-virtual {p1, v7}, Lcom/deepe/c/c/e$e;->readFully([B)V

    new-instance p1, Lcom/deepe/c/c/e$b;

    const/4 v3, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/deepe/c/c/e$b;-><init>(IIJ[B)V

    iput-object p1, p0, Lcom/deepe/c/c/e;->T:Lcom/deepe/c/c/e$b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :try_start_1
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p1

    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Reading EXIF from HEIC files is supported from SDK 28 and above"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/io/InputStream;Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    iget-boolean v1, p0, Lcom/deepe/c/c/e;->O:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/e;->a(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lcom/deepe/c/c/e;->N:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/deepe/c/c/e;->h()V

    return-void

    :cond_1
    :try_start_1
    iget p2, p0, Lcom/deepe/c/c/e;->N:I

    invoke-static {p2}, Lcom/deepe/c/c/e;->c(I)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/deepe/c/c/e$e;

    invoke-direct {p2, p1}, Lcom/deepe/c/c/e$e;-><init>(Ljava/io/InputStream;)V

    iget-boolean p1, p0, Lcom/deepe/c/c/e;->O:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/deepe/c/c/e;->b(Lcom/deepe/c/c/e$e;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/deepe/c/c/e;->h()V

    return-void

    :cond_2
    :try_start_2
    iget p1, p0, Lcom/deepe/c/c/e;->N:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    iget p1, p0, Lcom/deepe/c/c/e;->N:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/deepe/c/c/e;->a(Lcom/deepe/c/c/e$e;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget p1, p0, Lcom/deepe/c/c/e;->N:I

    invoke-direct {p0, p2, p1}, Lcom/deepe/c/c/e;->a(Lcom/deepe/c/c/e$e;I)V

    :cond_5
    :goto_2
    iget p1, p0, Lcom/deepe/c/c/e;->S:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/deepe/c/c/e$e;->a(J)V

    goto :goto_3

    :cond_6
    new-instance p2, Lcom/deepe/c/c/e$a;

    invoke-direct {p2, p1}, Lcom/deepe/c/c/e$a;-><init>(Ljava/io/InputStream;)V

    iget p1, p0, Lcom/deepe/c/c/e;->N:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    invoke-direct {p0, p2, v0, v0}, Lcom/deepe/c/c/e;->a(Lcom/deepe/c/c/e$a;II)V

    goto :goto_3

    :cond_7
    iget p1, p0, Lcom/deepe/c/c/e;->N:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    invoke-direct {p0, p2}, Lcom/deepe/c/c/e;->a(Lcom/deepe/c/c/e$a;)V

    goto :goto_3

    :cond_8
    iget p1, p0, Lcom/deepe/c/c/e;->N:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    invoke-direct {p0, p2}, Lcom/deepe/c/c/e;->b(Lcom/deepe/c/c/e$a;)V

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/deepe/c/c/e;->h()V

    throw p1

    :catch_0
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/deepe/c/c/e;->h()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/deepe/c/c/e;->a(Ljava/io/InputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filename cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/zip/CRC32;I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method private a([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/e$e;

    invoke-direct {v0, p1}, Lcom/deepe/c/c/e$e;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/deepe/c/c/e;->d(Lcom/deepe/c/c/e$a;)V

    invoke-direct {p0, v0, p2}, Lcom/deepe/c/c/e;->b(Lcom/deepe/c/c/e$e;I)V

    return-void
.end method

.method private static b(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x7

    if-eq p0, v2, :cond_0

    const/16 v2, 0x8

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method private b(Lcom/deepe/c/c/e$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$a;->a(Ljava/nio/ByteOrder;)V

    sget-object v0, Lcom/deepe/c/c/e;->o:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$a;->a(I)V

    invoke-virtual {p1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/deepe/c/c/e;->p:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/deepe/c/c/e$a;->a(I)V

    sget-object v1, Lcom/deepe/c/c/e;->p:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x4

    :try_start_0
    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Lcom/deepe/c/c/e$a;->readFully([B)V

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v4

    add-int/2addr v1, v2

    sget-object v2, Lcom/deepe/c/c/e;->q:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v0, v4, [B

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$a;->readFully([B)V

    sget-object p1, Lcom/deepe/c/c/e;->L:[B

    invoke-static {v0, p1}, Lcom/deepe/c/c/f;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepe/c/c/e;->L:[B

    array-length p1, p1

    invoke-static {v0, p1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :cond_0
    iput v1, p0, Lcom/deepe/c/c/e;->S:I

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/e;->a([BI)V

    goto :goto_1

    :cond_1
    rem-int/lit8 v2, v4, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/2addr v1, v4

    if-ne v1, v0, :cond_3

    :goto_1
    return-void

    :cond_3
    if-gt v1, v0, :cond_4

    invoke-virtual {p1, v4}, Lcom/deepe/c/c/e$a;->a(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered WebP file with invalid chunk size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered corrupt WebP file."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Lcom/deepe/c/c/e$e;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/deepe/c/c/e;->Q:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readShort()S

    move-result v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    if-lt v4, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readInt()I

    move-result v2

    int-to-long v3, v2

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    iget-object v6, v0, Lcom/deepe/c/c/e;->Q:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v3, v4}, Lcom/deepe/c/c/e$e;->a(J)V

    iget-object v2, v0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {v0, v1, v5}, Lcom/deepe/c/c/e;->b(Lcom/deepe/c/c/e$e;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readUnsignedShort()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readUnsignedShort()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->a()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v13, 0x4

    add-long/2addr v10, v13

    sget-object v15, Lcom/deepe/c/c/e;->G:[Ljava/util/HashMap;

    aget-object v15, v15, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/e$c;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-lez v9, :cond_8

    sget-object v15, Lcom/deepe/c/c/e;->u:[I

    array-length v15, v15

    if-lt v9, v15, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v9}, Lcom/deepe/c/c/e$c;->a(I)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_1

    :cond_5
    const/4 v15, 0x7

    if-ne v9, v15, :cond_6

    iget v9, v3, Lcom/deepe/c/c/e$c;->c:I

    :cond_6
    int-to-long v13, v12

    sget-object v15, Lcom/deepe/c/c/e;->u:[I

    aget v15, v15, v9

    move/from16 v16, v2

    move-object/from16 v17, v3

    int-to-long v2, v15

    mul-long/2addr v13, v2

    cmp-long v2, v13, v6

    if-ltz v2, :cond_9

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v13, v2

    if-lez v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    :goto_1
    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide v13, v6

    :cond_9
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_b

    :cond_a
    :goto_4
    invoke-virtual {v1, v10, v11}, Lcom/deepe/c/c/e$e;->a(J)V

    goto/16 :goto_7

    :cond_b
    const-wide/16 v2, 0x4

    cmp-long v2, v13, v2

    if-lez v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readInt()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/deepe/c/c/e$e;->a(J)V

    :cond_c
    sget-object v2, Lcom/deepe/c/c/e;->J:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_12

    const-wide/16 v12, -0x1

    const/4 v3, 0x3

    if-eq v9, v3, :cond_10

    if-eq v9, v5, :cond_f

    const/16 v3, 0x8

    if-eq v9, v3, :cond_e

    const/16 v3, 0x9

    if-eq v9, v3, :cond_d

    const/16 v3, 0xd

    if-eq v9, v3, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readInt()I

    move-result v3

    goto :goto_5

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readShort()S

    move-result v3

    goto :goto_5

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->c()J

    move-result-wide v12

    goto :goto_6

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->readUnsignedShort()I

    move-result v3

    :goto_5
    int-to-long v12, v3

    :goto_6
    cmp-long v3, v12, v6

    if-lez v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->d()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->d()I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, v12, v5

    if-gez v3, :cond_a

    :cond_11
    iget-object v3, v0, Lcom/deepe/c/c/e;->Q:Ljava/util/Set;

    long-to-int v5, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1, v12, v13}, Lcom/deepe/c/c/e$e;->a(J)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/e;->b(Lcom/deepe/c/c/e$e;I)V

    goto :goto_4

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->a()I

    move-result v2

    iget v3, v0, Lcom/deepe/c/c/e;->S:I

    add-int/2addr v2, v3

    long-to-int v3, v13

    new-array v15, v3, [B

    invoke-virtual {v1, v15}, Lcom/deepe/c/c/e$e;->readFully([B)V

    new-instance v3, Lcom/deepe/c/c/e$b;

    int-to-long v13, v2

    move-wide v5, v10

    move-object v10, v3

    move v11, v9

    invoke-direct/range {v10 .. v15}, Lcom/deepe/c/c/e$b;-><init>(IIJ[B)V

    iget-object v2, v0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    move-object/from16 v7, v17

    iget-object v7, v7, Lcom/deepe/c/c/e$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/e$e;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_13

    invoke-virtual {v1, v5, v6}, Lcom/deepe/c/c/e$e;->a(J)V

    :cond_13
    :goto_7
    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    move/from16 v2, v16

    goto/16 :goto_0
.end method

.method private b(Lcom/deepe/c/c/e$e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/c/e;->L:[B

    array-length v0, v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$e;->readFully([B)V

    sget-object v1, Lcom/deepe/c/c/e;->L:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "app3c"

    const-string v0, "Given data is not EXIF-only."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/c/e$e;->b()[B

    move-result-object p1

    sget-object v0, Lcom/deepe/c/c/e;->L:[B

    array-length v0, v0

    iput v0, p0, Lcom/deepe/c/c/e;->S:I

    invoke-direct {p0, p1, v1}, Lcom/deepe/c/c/e;->a([BI)V

    const/4 p1, 0x1

    return p1
.end method

.method public static b([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    sget-object v2, Lcom/deepe/c/c/e;->i:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/deepe/c/c/e;->i:[B

    array-length v3, v2

    if-lt v1, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static c([B)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/deepe/c/c/e$a;

    invoke-direct {v2, p0}, Lcom/deepe/c/c/e$a;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    new-array v5, v1, [B

    invoke-virtual {v2, v5}, Lcom/deepe/c/c/e$a;->readFully([B)V

    sget-object v6, Lcom/deepe/c/c/e;->b:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    invoke-static {v2}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return v0

    :cond_0
    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x10

    const-wide/16 v10, 0x8

    if-nez v7, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/deepe/c/c/e$a;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v7, v3, v8

    if-gez v7, :cond_2

    invoke-static {v2}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return v0

    :cond_1
    move-wide v8, v10

    :cond_2
    :try_start_3
    array-length v7, p0

    int-to-long v12, v7

    cmp-long v7, v3, v12

    if-lez v7, :cond_3

    array-length p0, p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v3, p0

    :cond_3
    sub-long/2addr v3, v8

    cmp-long p0, v3, v10

    if-gez p0, :cond_4

    invoke-static {v2}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return v0

    :cond_4
    :try_start_4
    new-array p0, v1, [B

    const-wide/16 v7, 0x0

    move v1, v0

    move v9, v1

    move v10, v9

    :goto_0
    const-wide/16 v11, 0x4

    div-long v11, v3, v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v11, v7, v11

    if-ltz v11, :cond_5

    invoke-static {v2}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :cond_5
    :try_start_5
    invoke-virtual {v2, p0}, Lcom/deepe/c/c/e$a;->readFully([B)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v11, v7, v5

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    :try_start_6
    sget-object v11, Lcom/deepe/c/c/e;->c:[B

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    move v1, v12

    goto :goto_1

    :cond_7
    sget-object v11, Lcom/deepe/c/c/e;->d:[B

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_8

    move v9, v12

    goto :goto_1

    :cond_8
    sget-object v11, Lcom/deepe/c/c/e;->e:[B

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lcom/deepe/c/c/e;->f:[B

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v11, :cond_a

    :cond_9
    move v10, v12

    :cond_a
    :goto_1
    if-eqz v1, :cond_c

    if-eqz v9, :cond_b

    invoke-static {v2}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x7

    return p0

    :cond_b
    if-eqz v10, :cond_c

    invoke-static {v2}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    const/16 p0, 0x8

    return p0

    :cond_c
    :goto_2
    add-long/2addr v7, v5

    goto :goto_0

    :catch_0
    invoke-static {v2}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_2
    :goto_4
    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    :goto_5
    return v0
.end method

.method private c(Ljava/lang/String;)Lcom/deepe/c/c/e$b;
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, "Xmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/deepe/c/c/e;->N:I

    invoke-static {v1}, Lcom/deepe/c/c/e;->b(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/deepe/c/c/e;->T:Lcom/deepe/c/c/e$b;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/deepe/c/c/e;->E:[[Lcom/deepe/c/c/e$c;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/c/e;->T:Lcom/deepe/c/c/e$b;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/e$b;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lcom/deepe/c/c/e$a;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/c/e$a;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private c(Lcom/deepe/c/c/e$e;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/e$b;

    iget-object v1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/e$b;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/e$b;

    iget-object v1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/e$b;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/deepe/c/c/e$e;->a(J)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$e;->readFully([B)V

    new-instance p1, Lcom/deepe/c/c/e$a;

    invoke-direct {p1, v0}, Lcom/deepe/c/c/e$a;-><init>([B)V

    invoke-direct {p0, p1, v1, p2}, Lcom/deepe/c/c/e;->a(Lcom/deepe/c/c/e$a;II)V

    :cond_1
    return-void
.end method

.method private static c(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Lcom/deepe/c/c/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/deepe/c/c/e;->c(Lcom/deepe/c/c/e$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$a;->a(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Lcom/deepe/c/c/e$a;->readUnsignedShort()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$a;->a(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid first Ifd offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid start code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/deepe/c/c/e$e;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/e$b;

    iget-object v1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/e$b;

    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/e$b;

    iget-object v3, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/e$b;

    iget-object v4, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/c/e$b;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    iget p1, v0, Lcom/deepe/c/c/e$b;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "app3c"

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/e$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/deepe/c/c/e$d;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lcom/deepe/c/c/e$b;->a(Lcom/deepe/c/c/e$d;Ljava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v0

    aget-object p1, p1, v2

    iget-object v1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Lcom/deepe/c/c/e$b;->a(Lcom/deepe/c/c/e$d;Ljava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/e$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_3

    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lcom/deepe/c/c/e$b;->a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v0

    aget p1, p1, v2

    iget-object v1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Lcom/deepe/c/c/e$b;->a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object p1

    :goto_2
    iget-object v1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object p1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result p1

    iget-object v0, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    iget-object p1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Lcom/deepe/c/c/e$b;->a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v1, v0}, Lcom/deepe/c/c/e$b;->a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/e;->c(Lcom/deepe/c/c/e$e;I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public static d([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    sget-object v2, Lcom/deepe/c/c/e;->h:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/deepe/c/c/e;->h:[B

    array-length v3, v2

    if-lt v1, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic d()[I
    .locals 1

    sget-object v0, Lcom/deepe/c/c/e;->u:[I

    return-object v0
.end method

.method static synthetic e()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/e;->K:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static e([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/deepe/c/c/e;->o:[B

    array-length v3, v2

    if-lt v1, v3, :cond_3

    move v1, v0

    :goto_1
    sget-object v2, Lcom/deepe/c/c/e;->p:[B

    array-length v3, v2

    if-lt v1, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v3, Lcom/deepe/c/c/e;->o:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p0, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static f([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    sget-object v2, Lcom/deepe/c/c/e;->l:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/deepe/c/c/e;->l:[B

    array-length v3, v2

    if-lt v1, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic f()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/e;->t:[Ljava/lang/String;

    return-object v0
.end method

.method public static g([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/deepe/c/c/e;->j:[B

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v1, v3, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_6

    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return v4

    :cond_2
    move v1, v0

    :goto_2
    sget-object v2, Lcom/deepe/c/c/e;->k:[B

    array-length v3, v2

    if-lt v1, v3, :cond_3

    move p0, v4

    goto :goto_3

    :cond_3
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_5

    move p0, v0

    :goto_3
    if-eqz p0, :cond_4

    return v4

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic g()[B
    .locals 1

    sget-object v0, Lcom/deepe/c/c/e;->v:[B

    return-object v0
.end method

.method private h()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-static {v0}, Lcom/deepe/c/c/e$b;->a(Ljava/lang/String;)Lcom/deepe/c/c/e$b;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lcom/deepe/c/c/e$b;->a(JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lcom/deepe/c/c/e$b;->a(JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Lcom/deepe/c/c/e$b;->a(JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Lcom/deepe/c/c/e$b;->a(JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static h([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/deepe/c/c/e;->m:[B

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v1, v3, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_6

    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return v4

    :cond_2
    move v1, v0

    :goto_2
    sget-object v2, Lcom/deepe/c/c/e;->n:[B

    array-length v3, v2

    if-lt v1, v3, :cond_3

    move p0, v4

    goto :goto_3

    :cond_3
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_5

    move p0, v0

    :goto_3
    if-eqz p0, :cond_4

    return v4

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/e;->a(II)V

    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "PixelXDimension"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/e$b;

    iget-object v4, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "PixelYDimension"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/e$b;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v4, v4, v1

    const-string v5, "ImageWidth"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/deepe/c/c/e;->P:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v4, "ImageLength"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "Orientation"

    const-string v3, "ThumbnailOrientation"

    invoke-direct {p0, v1, v3, v2}, Lcom/deepe/c/c/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v2}, Lcom/deepe/c/c/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/e;->N:I

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/deepe/c/c/e;->c(Ljava/lang/String;)Lcom/deepe/c/c/e$b;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/e$b;->c(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/c/e;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/deepe/c/c/e;->c(Ljava/lang/String;)Lcom/deepe/c/c/e$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/deepe/c/c/e;->I:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/e$b;->b(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/c/e;->R:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/e$b;->d(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/c/e;->a(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x5a

    return v0

    :pswitch_1
    const/16 v0, 0x10e

    return v0

    :pswitch_2
    const/16 v0, 0xb4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
