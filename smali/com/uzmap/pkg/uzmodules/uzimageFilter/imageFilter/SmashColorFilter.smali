.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SmashColorFilter;
.super Ljava/lang/Object;
.source "SmashColorFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 3

    .line 30
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K00:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    iput v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K01:F

    .line 33
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K02:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 34
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->Threshold:F

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoGrayConversion:Z

    .line 36
    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoInversion:Z

    .line 37
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    .line 38
    sget v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->LinearLight:I

    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    const/high16 v2, 0x40200000    # 2.5f

    .line 39
    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    .line 40
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
