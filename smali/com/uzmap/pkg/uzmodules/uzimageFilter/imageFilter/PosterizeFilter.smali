.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PosterizeFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;
.source "PosterizeFilter.java"


# instance fields
.field _level:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 33
    :goto_0
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PosterizeFilter;->_level:I

    return-void
.end method


# virtual methods
.method public InitLUTtable(I)I
    .locals 6

    .line 26
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PosterizeFilter;->_level:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v0

    int-to-double v0, p1

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-int p1, v0

    int-to-double v0, p1

    mul-double/2addr v2, v0

    .line 28
    invoke-static {v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result p1

    return p1
.end method
