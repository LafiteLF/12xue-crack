.class public final Lcom/apicloud/audio/zhaofei/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/audio/zhaofei/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final voiceView:[I

.field public static final voiceView_fineness:I = 0x0

.field public static final voiceView_lineSpeed:I = 0x1

.field public static final voiceView_maxVolume:I = 0x2

.field public static final voiceView_middleLine:I = 0x3

.field public static final voiceView_middleLineHeight:I = 0x4

.field public static final voiceView_rectInitHeight:I = 0x5

.field public static final voiceView_rectSpace:I = 0x6

.field public static final voiceView_rectWidth:I = 0x7

.field public static final voiceView_sensibility:I = 0x8

.field public static final voiceView_viewMode:I = 0x9

.field public static final voiceView_voiceLine:I = 0xa


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView:[I

    return-void

    :array_0
    .array-data 4
        0x7f020070
        0x7f020091
        0x7f0200a0
        0x7f0200a2
        0x7f0200a3
        0x7f0200c4
        0x7f0200c5
        0x7f0200c6
        0x7f0200f0
        0x7f02014a
        0x7f02014c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
