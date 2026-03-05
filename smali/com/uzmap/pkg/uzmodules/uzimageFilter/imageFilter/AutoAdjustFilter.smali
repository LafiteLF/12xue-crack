.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoAdjustFilter;
.super Ljava/lang/Object;
.source "AutoAdjustFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 2

    .line 27
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HistogramEqualFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HistogramEqualFilter;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 28
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HistogramEqualFilter;->ContrastIntensity:F

    .line 29
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HistogramEqualFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 31
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;-><init>()V

    .line 32
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->Intensity:F

    .line 33
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
