.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;
.super Ljava/lang/Object;
.source "ImageFilterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterInfo"
.end annotation


# instance fields
.field public filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

.field public filterID:I

.field final synthetic this$1:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;->this$1:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;->filterID:I

    .line 118
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    return-void
.end method
