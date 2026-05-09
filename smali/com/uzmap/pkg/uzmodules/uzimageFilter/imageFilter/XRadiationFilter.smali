.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;
.super Ljava/lang/Object;
.source "XRadiationFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

.field private gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    .line 36
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient$TintColors;->LightCyan()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x1000000

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v2, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->Map:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    .line 43
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    sget v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->ColorBurn:I

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    .line 44
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/XRadiationFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-virtual {v0, p1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
