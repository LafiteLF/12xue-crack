.class public Lcom/artifex/mupdf/fitz/StrokeState;
.super Ljava/lang/Object;
.source "StrokeState.java"


# static fields
.field public static final LINE_CAP_BUTT:I = 0x0

.field public static final LINE_CAP_ROUND:I = 0x1

.field public static final LINE_CAP_SQUARE:I = 0x2

.field public static final LINE_CAP_TRIANGLE:I = 0x3

.field public static final LINE_JOIN_BEVEL:I = 0x2

.field public static final LINE_JOIN_MITER:I = 0x0

.field public static final LINE_JOIN_MITER_XPS:I = 0x3

.field public static final LINE_JOIN_ROUND:I = 0x1


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>(IIIFF)V
    .locals 9

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 41
    invoke-direct/range {v0 .. v8}, Lcom/artifex/mupdf/fitz/StrokeState;->newNative(IIIIFFF[F)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/StrokeState;->pointer:J

    return-void
.end method

.method public constructor <init>(IIIIFFF[F)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct/range {p0 .. p8}, Lcom/artifex/mupdf/fitz/StrokeState;->newNative(IIIIFFF[F)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/StrokeState;->pointer:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/StrokeState;->pointer:J

    return-void
.end method

.method private native newNative(IIIIFFF[F)J
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/StrokeState;->finalize()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/StrokeState;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getDashCap()I
.end method

.method public native getDashPhase()F
.end method

.method public native getDashes()[F
.end method

.method public native getEndCap()I
.end method

.method public native getLineJoin()I
.end method

.method public native getLineWidth()F
.end method

.method public native getMiterLimit()F
.end method

.method public native getStartCap()I
.end method
