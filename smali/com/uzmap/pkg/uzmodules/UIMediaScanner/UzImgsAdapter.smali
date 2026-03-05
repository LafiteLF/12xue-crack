.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UzImgsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$ImgCallBackLisner;,
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;,
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;
    }
.end annotation


# instance fields
.field private cacheMap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

.field mActivity:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

.field private mAllImgFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRow:I

.field private mScreenWidth:I

.field private mSelectedIconBmp:Landroid/graphics/Bitmap;

.field private mShowPreview:Z

.field private markPosition:Ljava/lang/String;

.field private markSize:I

.field private onItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    .line 72
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mActivity:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    .line 73
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mAllImgFiles:Ljava/util/ArrayList;

    .line 75
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->onItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;

    .line 77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p3

    const-wide/16 v1, 0x400

    div-long/2addr p3, v1

    .line 79
    new-instance p1, Landroid/support/v4/util/LruCache;

    const-wide/16 v1, 0x8

    div-long/2addr p3, v1

    long-to-int p3, p3

    invoke-direct {p1, p3}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->cacheMap:Landroid/support/v4/util/LruCache;

    const/4 p1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->cacheMap:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object p4, p4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p4, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Landroid/support/v4/util/LruCache;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->cacheMap:Landroid/support/v4/util/LruCache;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mAllImgFiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->onItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;

    return-object p0
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, "imageView1"

    if-nez p2, :cond_0

    .line 104
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "uz_media_scanner_imgsitem"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    .line 106
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    const-string v1, "checkBox1"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    .line 108
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    const-string v1, "selectIcon"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mScreenWidth:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mRow:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mScreenWidth:I

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mRow:I

    div-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/apicloud/glide/Glide;->with(Landroid/content/Context;)Lcom/apicloud/glide/RequestManager;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apicloud/glide/RequestManager;->load(Ljava/lang/String;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v1

    const-string v2, "uz_media_scanner_imgbg"

    .line 146
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/apicloud/glide/DrawableTypeRequest;->placeholder(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v0, v0}, Lcom/apicloud/glide/DrawableRequestBuilder;->override(II)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 148
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/DrawableRequestBuilder;->error(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/apicloud/glide/DrawableRequestBuilder;->centerCrop()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    .line 155
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markPosition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "top_left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v1, :cond_3

    .line 158
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 159
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 160
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markSize:I

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markPosition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bottom_left"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xc

    if-eqz v1, :cond_4

    .line 170
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "markSize : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markSize:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Debug"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markSize:I

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markPosition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bottom_right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_5

    .line 184
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 185
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markSize:I

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markPosition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "top_right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 196
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 197
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    invoke-virtual {v0, v2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 204
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p3, p3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    :cond_6
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p3, p3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    if-eqz p3, :cond_9

    .line 209
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p3, p3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 210
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p3, p3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    if-eqz p1, :cond_7

    .line 213
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 215
    :cond_7
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mShowPreview:Z

    if-eqz p1, :cond_8

    .line 216
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    const-string p3, "mo_media_scanner_select"

    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 218
    :cond_8
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 222
    :cond_9
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    .line 224
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    .line 229
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->holder:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    return-object p2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMarkPosition(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markPosition:Ljava/lang/String;

    return-void
.end method

.method public setMarkSize(I)V
    .locals 0

    .line 68
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->markSize:I

    return-void
.end method

.method public setRow(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mRow:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mScreenWidth:I

    return-void
.end method

.method public setShowPreview(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mShowPreview:Z

    return-void
.end method
