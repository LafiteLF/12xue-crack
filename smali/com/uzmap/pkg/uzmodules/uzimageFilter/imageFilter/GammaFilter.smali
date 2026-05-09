.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GammaFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;
.source "GammaFilter.java"


# instance fields
.field _fInvGamma:D


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 32
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 35
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GammaFilter;->_fInvGamma:D

    return-void
.end method


# virtual methods
.method public InitLUTtable(I)I
    .locals 6

    .line 27
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GammaFilter;->_fInvGamma:D

    const-wide v2, 0x406fe00000000000L    # 255.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    int-to-double v2, p1

    .line 28
    iget-wide v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GammaFilter;->_fInvGamma:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v2, v0

    .line 29
    invoke-static {v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result p1

    return p1
.end method
