.class public final Lcom/artifex/mupdf/fitz/ColorParams;
.super Ljava/lang/Object;
.source "ColorParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;
    }
.end annotation


# static fields
.field public static final BP:I = 0x20

.field public static final OP:I = 0x40

.field public static final OPM:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BP(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OP(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OPM(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static RI(I)Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;
    .locals 2

    const/4 v0, 0x3

    and-int/2addr p0, v0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 18
    sget-object p0, Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;->PERCEPTUAL:Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;

    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;->ABSOLUTE_COLORIMETRIC:Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;

    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;->SATURATION:Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;

    return-object p0

    .line 19
    :cond_2
    sget-object p0, Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;->RELATIVE_COLORIMETRIC:Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;

    return-object p0
.end method

.method public static pack(Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;ZZZ)I
    .locals 2

    .line 39
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorParams$1;->$SwitchMap$com$artifex$mupdf$fitz$ColorParams$RenderingIntent:[I

    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/ColorParams$RenderingIntent;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    if-eqz p2, :cond_4

    or-int/lit8 v0, v0, 0x40

    :cond_4
    if-eqz p3, :cond_5

    or-int/lit16 v0, v0, 0x80

    :cond_5
    return v0
.end method
