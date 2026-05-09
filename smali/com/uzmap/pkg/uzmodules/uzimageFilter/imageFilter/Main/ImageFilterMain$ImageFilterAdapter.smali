.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageFilterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageFilterAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;
    }
.end annotation


# instance fields
.field private filterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;Landroid/content/Context;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->filterArray:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->filterArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->filterArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->filterArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 254
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 255
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->filterArray:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;

    iget p3, p3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;->filterID:I

    .line 254
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 258
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 260
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;->filterArray:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;

    iget p1, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter$FilterInfo;->filterID:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    new-instance p1, Landroid/widget/Gallery$LayoutParams;

    const/16 p3, 0x190

    const/16 v0, 0x12c

    invoke-direct {p1, p3, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object p2
.end method
