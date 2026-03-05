.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;
.super Ljava/lang/Object;
.source "YCBCrLinearFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;,
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;,
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;
    }
.end annotation


# instance fields
.field private inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

.field private inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

.field private inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

.field private outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

.field private outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

.field private outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;)V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 48
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 49
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 51
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 52
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 53
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;)V
    .locals 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 48
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 49
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 51
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 52
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 53
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 62
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    .line 63
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 69
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;-><init>()V

    .line 70
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;

    invoke-direct {v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;-><init>()V

    .line 77
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    sub-float/2addr v3, v5

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    sub-float/2addr v5, v6

    div-float/2addr v3, v5

    .line 80
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    move v8, v3

    move v9, v5

    goto :goto_0

    :cond_0
    move v8, v4

    move v9, v8

    .line 83
    :goto_0
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    sub-float/2addr v3, v5

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    sub-float/2addr v5, v6

    div-float/2addr v3, v5

    .line 86
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    move v10, v3

    move v11, v5

    goto :goto_1

    :cond_1
    move v10, v4

    move v11, v10

    .line 89
    :goto_1
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    sub-float/2addr v3, v4

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    sub-float/2addr v4, v5

    div-float v4, v3, v4

    .line 92
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    move v13, v3

    move v12, v4

    goto :goto_2

    :cond_2
    move v12, v4

    move v13, v12

    :goto_2
    const/4 v14, 0x0

    move v15, v14

    .line 95
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    if-lt v15, v3, :cond_3

    return-object v7

    :cond_3
    move v6, v14

    .line 97
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    if-lt v6, v3, :cond_4

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 99
    :cond_4
    invoke-virtual {v7, v15, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    iput v3, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->R:I

    .line 100
    invoke-virtual {v7, v15, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    iput v3, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->G:I

    .line 101
    invoke-virtual {v7, v15, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    iput v3, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->B:I

    .line 104
    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->FromRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;

    move-result-object v5

    .line 107
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 108
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    goto :goto_5

    .line 109
    :cond_5
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    .line 110
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outY:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    goto :goto_5

    .line 112
    :cond_6
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    mul-float/2addr v2, v8

    add-float/2addr v2, v9

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    .line 115
    :goto_5
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 116
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    goto :goto_6

    .line 117
    :cond_7
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 118
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCb:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    goto :goto_6

    .line 120
    :cond_8
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    mul-float/2addr v2, v10

    add-float/2addr v2, v11

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    .line 123
    :goto_6
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    .line 124
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    goto :goto_7

    .line 125
    :cond_9
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->inCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    .line 126
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;->outCr:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    goto :goto_7

    .line 128
    :cond_a
    iget v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    mul-float/2addr v2, v12

    add-float/2addr v2, v13

    iput v2, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    .line 131
    :goto_7
    invoke-static {v5, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->ToRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;

    move-result-object v4

    .line 133
    iget v3, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->R:I

    iget v2, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->G:I

    iget v1, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->B:I

    move/from16 v16, v1

    move-object/from16 v1, p1

    move/from16 v17, v2

    move v2, v15

    move/from16 v18, v3

    move v3, v6

    move-object/from16 v19, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    goto/16 :goto_4
.end method
