.class public abstract Lcom/artifex/mupdf/fitz/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final BLEND_COLOR:I = 0xe

.field public static final BLEND_COLOR_BURN:I = 0x7

.field public static final BLEND_COLOR_DODGE:I = 0x6

.field public static final BLEND_DARKEN:I = 0x4

.field public static final BLEND_DIFFERENCE:I = 0xa

.field public static final BLEND_EXCLUSION:I = 0xb

.field public static final BLEND_HARD_LIGHT:I = 0x8

.field public static final BLEND_HUE:I = 0xc

.field public static final BLEND_LIGHTEN:I = 0x5

.field public static final BLEND_LUMINOSITY:I = 0xf

.field public static final BLEND_MULTIPLY:I = 0x1

.field public static final BLEND_NORMAL:I = 0x0

.field public static final BLEND_OVERLAY:I = 0x3

.field public static final BLEND_SATURATION:I = 0xd

.field public static final BLEND_SCREEN:I = 0x2

.field public static final BLEND_SOFT_LIGHT:I = 0x9


# instance fields
.field protected pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/artifex/mupdf/fitz/Device;->newNative()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Device;->pointer:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Device;->pointer:J

    return-void
.end method

.method private native newNative()J
.end method


# virtual methods
.method public abstract beginGroup(Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/ColorSpace;ZZIF)V
.end method

.method public abstract beginLayer(Ljava/lang/String;)V
.end method

.method public abstract beginMask(Lcom/artifex/mupdf/fitz/Rect;ZLcom/artifex/mupdf/fitz/ColorSpace;[FI)V
.end method

.method public abstract beginTile(Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/Rect;FFLcom/artifex/mupdf/fitz/Matrix;I)I
.end method

.method public abstract clipImageMask(Lcom/artifex/mupdf/fitz/Image;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public abstract clipPath(Lcom/artifex/mupdf/fitz/Path;ZLcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public abstract clipStrokePath(Lcom/artifex/mupdf/fitz/Path;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public abstract clipStrokeText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public abstract clipText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public abstract close()V
.end method

.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Device;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Device;->pointer:J

    return-void
.end method

.method public abstract endGroup()V
.end method

.method public abstract endLayer()V
.end method

.method public abstract endMask()V
.end method

.method public abstract endTile()V
.end method

.method public abstract fillImage(Lcom/artifex/mupdf/fitz/Image;Lcom/artifex/mupdf/fitz/Matrix;FI)V
.end method

.method public abstract fillImageMask(Lcom/artifex/mupdf/fitz/Image;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method public abstract fillPath(Lcom/artifex/mupdf/fitz/Path;ZLcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method public abstract fillShade(Lcom/artifex/mupdf/fitz/Shade;Lcom/artifex/mupdf/fitz/Matrix;FI)V
.end method

.method public abstract fillText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method protected native finalize()V
.end method

.method public abstract ignoreText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public abstract popClip()V
.end method

.method public abstract strokePath(Lcom/artifex/mupdf/fitz/Path;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method

.method public abstract strokeText(Lcom/artifex/mupdf/fitz/Text;Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;[FFI)V
.end method
