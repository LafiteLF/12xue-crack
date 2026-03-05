.class public final Lcom/artifex/mupdf/fitz/android/AndroidImage;
.super Lcom/artifex/mupdf/fitz/Image;
.source "AndroidImage.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/artifex/mupdf/fitz/android/AndroidImage;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/artifex/mupdf/fitz/Image;-><init>(J)V

    .line 19
    iget-wide v0, p2, Lcom/artifex/mupdf/fitz/android/AndroidImage;->pointer:J

    invoke-direct {p0, p1, v0, v1}, Lcom/artifex/mupdf/fitz/android/AndroidImage;->newAndroidImageFromBitmap(Landroid/graphics/Bitmap;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/android/AndroidImage;->pointer:J

    return-void
.end method

.method private native newAndroidImageFromBitmap(Landroid/graphics/Bitmap;J)J
.end method
