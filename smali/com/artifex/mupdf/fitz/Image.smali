.class public Lcom/artifex/mupdf/fitz/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field protected pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Image;->pointer:J

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Pixmap;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/Image;->newNativeFromPixmap(Lcom/artifex/mupdf/fitz/Pixmap;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Image;->pointer:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/Image;->newNativeFromFile(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Image;->pointer:J

    return-void
.end method

.method private native newNativeFromFile(Ljava/lang/String;)J
.end method

.method private native newNativeFromPixmap(Lcom/artifex/mupdf/fitz/Pixmap;)J
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Image;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Image;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getBitsPerComponent()I
.end method

.method public native getColorSpace()Lcom/artifex/mupdf/fitz/ColorSpace;
.end method

.method public native getHeight()I
.end method

.method public native getImageMask()Z
.end method

.method public native getInterpolate()Z
.end method

.method public native getMask()Lcom/artifex/mupdf/fitz/Image;
.end method

.method public native getNumberOfComponents()I
.end method

.method public native getWidth()I
.end method

.method public native getXResolution()I
.end method

.method public native getYResolution()I
.end method

.method public native toPixmap()Lcom/artifex/mupdf/fitz/Pixmap;
.end method
