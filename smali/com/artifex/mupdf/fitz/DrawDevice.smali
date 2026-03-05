.class public final Lcom/artifex/mupdf/fitz/DrawDevice;
.super Lcom/artifex/mupdf/fitz/NativeDevice;
.source "DrawDevice.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Pixmap;)V
    .locals 2

    .line 12
    invoke-static {p1}, Lcom/artifex/mupdf/fitz/DrawDevice;->newNative(Lcom/artifex/mupdf/fitz/Pixmap;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/artifex/mupdf/fitz/NativeDevice;-><init>(J)V

    return-void
.end method

.method private static native newNative(Lcom/artifex/mupdf/fitz/Pixmap;)J
.end method
