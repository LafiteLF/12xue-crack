.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;
.super Ljava/lang/Object;
.source "ComicFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

.field blurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

.field edgeBlender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

.field edgeDetectionFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;

.field saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    .line 31
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->blurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    .line 32
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    .line 33
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeDetectionFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;

    .line 34
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeBlender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    .line 38
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->SaturationFactor:F

    .line 39
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->blurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Sigma:F

    .line 40
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    .line 41
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    sget v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Lighten:I

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    .line 42
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeDetectionFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->Threshold:F

    .line 43
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeDetectionFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoGrayConversion:Z

    .line 44
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeBlender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    .line 45
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeBlender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    sget v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Lighten:I

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->blurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeDetectionFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ComicFilter;->edgeBlender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
