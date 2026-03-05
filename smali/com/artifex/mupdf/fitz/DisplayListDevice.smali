.class public final Lcom/artifex/mupdf/fitz/DisplayListDevice;
.super Lcom/artifex/mupdf/fitz/NativeDevice;
.source "DisplayListDevice.java"


# direct methods
.method public constructor <init>(Lcom/artifex/mupdf/fitz/DisplayList;)V
    .locals 2

    .line 8
    invoke-static {p1}, Lcom/artifex/mupdf/fitz/DisplayListDevice;->newNative(Lcom/artifex/mupdf/fitz/DisplayList;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/artifex/mupdf/fitz/NativeDevice;-><init>(J)V

    return-void
.end method

.method private static native newNative(Lcom/artifex/mupdf/fitz/DisplayList;)J
.end method
