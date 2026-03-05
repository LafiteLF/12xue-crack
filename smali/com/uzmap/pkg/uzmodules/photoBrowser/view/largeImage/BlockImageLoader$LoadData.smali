.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;
.super Ljava/lang/Object;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadData"
.end annotation


# instance fields
.field currentScale:I

.field currentScaleDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;",
            ">;"
        }
    .end annotation
.end field

.field private imageHeight:I

.field private imageWidth:I

.field private mDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

.field smallDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;",
            ">;"
        }
    .end annotation
.end field

.field private task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

.field private volatile thumbnailBlockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

.field private volatile thumbnailScale:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;)V
    .locals 0

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I
    .locals 0

    .line 659
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->imageWidth:I

    return p0
.end method

.method static synthetic access$202(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;I)I
    .locals 0

    .line 659
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->imageWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I
    .locals 0

    .line 659
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->imageHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;I)I
    .locals 0

    .line 659
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->imageHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->thumbnailBlockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    return-object p0
.end method

.method static synthetic access$402(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->thumbnailBlockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I
    .locals 0

    .line 659
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->thumbnailScale:I

    return p0
.end method

.method static synthetic access$502(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;I)I
    .locals 0

    .line 659
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->thumbnailScale:I

    return p1
.end method

.method static synthetic access$600(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    return-object p0
.end method
