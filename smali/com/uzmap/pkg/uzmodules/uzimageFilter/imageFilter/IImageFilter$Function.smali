.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;
.super Ljava/lang/Object;
.source "IImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Function"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FClamp(III)I
    .locals 0

    if-ge p0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0

    :cond_1
    return p2
.end method

.method public static FClamp0255(D)I
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x406fe00000000000L    # 255.0

    move-wide v0, p0

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static FClampDouble(DDD)D
    .locals 1

    cmpg-double v0, p0, p4

    if-gez v0, :cond_1

    cmpl-double p4, p0, p2

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0

    :cond_1
    return-wide p4
.end method
