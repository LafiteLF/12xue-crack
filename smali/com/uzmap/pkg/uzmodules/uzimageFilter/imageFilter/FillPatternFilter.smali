.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;
.super Ljava/lang/Object;
.source "FillPatternFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private Mixture:F

.field private pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->Mixture:F

    .line 32
    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->LoadImage(Landroid/app/Activity;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->Mixture:F

    .line 37
    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->LoadImage(Landroid/app/Activity;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    int-to-float p1, p3

    .line 38
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->Mixture:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 13

    .line 43
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->Mixture:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    rsub-int v1, v0, 0xff

    const/4 v2, 0x0

    move v9, v2

    .line 46
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    if-lt v9, v3, :cond_0

    return-object p1

    :cond_0
    move v10, v2

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    if-lt v10, v3, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    rem-int v3, v9, v3

    .line 51
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v4

    rem-int v4, v10, v4

    .line 53
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v5

    .line 54
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v6

    .line 55
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v7

    .line 56
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v8, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v8

    .line 57
    iget-object v11, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v11, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-static {v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v11

    .line 58
    iget-object v12, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FillPatternFilter;->pattern:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v12, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v3

    mul-int/2addr v5, v1

    mul-int/2addr v8, v0

    add-int/2addr v5, v8

    mul-int/2addr v6, v1

    mul-int/2addr v11, v0

    add-int/2addr v6, v11

    mul-int/2addr v7, v1

    mul-int/2addr v3, v0

    add-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x8

    shr-int/lit8 v11, v6, 0x8

    shr-int/lit8 v12, v7, 0x8

    move-object v3, p1

    move v4, v9

    move v5, v10

    move v6, v8

    move v7, v11

    move v8, v12

    .line 62
    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
