.class public Lcom/artifex/mupdf/fitz/NativeDevice;
.super Lcom/artifex/mupdf/fitz/Device;
.source "NativeDevice.java"


# instance fields
.field private nativeInfo:J

.field private nativeResource:Ljava/lang/Object;


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
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/Device;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final native beginGroup(Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/ColorSpace;ZZIF)V
.end method

.method public final native beginLayer(Ljava/lang/String;)V
.end method

.method public final native beginMask(Lcom/artifex/mupdf/fitz/Rect;ZLcom/artifex/mupdf/fitz/ColorSpace;[FI)V
.end method

.method public final native beginTile(Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/Rect;FFLcom/artifex/mupdf/fitz/Matrix;I)I
.end method

.method public final native clipImageMask(Lcom/artifex/mupdf/fitz/Image;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public final native clipPath(Lcom/artifex/mupdf/fitz/Path;ZLcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public final native clipStrokePath(Lcom/artifex/mupdf/fitz/Path;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public final native clipStrokeText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public final native clipText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public final native close()V
.end method

.method public destroy()V
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/artifex/mupdf/fitz/Device;->destroy()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/NativeDevice;->nativeInfo:J

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/artifex/mupdf/fitz/NativeDevice;->nativeResource:Ljava/lang/Object;

    return-void
.end method

.method public final native endGroup()V
.end method

.method public final native endLayer()V
.end method

.method public final native endMask()V
.end method

.method public final native endTile()V
.end method

.method public final native fillImage(Lcom/artifex/mupdf/fitz/Image;Lcom/artifex/mupdf/fitz/Matrix;FI)V
.end method

.method public final native fillImageMask(Lcom/artifex/mupdf/fitz/Image;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method public final native fillPath(Lcom/artifex/mupdf/fitz/Path;ZLcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method public final native fillShade(Lcom/artifex/mupdf/fitz/Shade;Lcom/artifex/mupdf/fitz/Matrix;FI)V
.end method

.method public final native fillText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method protected native finalize()V
.end method

.method public final native ignoreText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public final native popClip()V
.end method

.method public final native strokePath(Lcom/artifex/mupdf/fitz/Path;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method public final native strokeText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method
