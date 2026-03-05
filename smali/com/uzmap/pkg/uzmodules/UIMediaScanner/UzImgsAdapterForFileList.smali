.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;
.super Landroid/widget/BaseAdapter;
.source "UzImgsAdapterForFileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;,
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;,
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;
    }
.end annotation


# instance fields
.field private index:I

.field public mAllImgFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedMap:Landroid/support/v4/util/LruCache;
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

.field private mContext:Landroid/content/Context;

.field private mHolderlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;

.field private mRow:I

.field private mScreenWidth:I

.field private mSelectedIconBmp:Landroid/graphics/Bitmap;

.field private mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

.field private markPosition:Ljava/lang/String;

.field private markSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->index:I

    .line 67
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    .line 69
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mOnItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;

    .line 71
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 73
    new-instance p3, Landroid/support/v4/util/LruCache;

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p3, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mCachedMap:Landroid/support/v4/util/LruCache;

    const/4 p3, 0x0

    .line 74
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 78
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mHolderlist:Ljava/util/List;

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mCachedMap:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/SoftReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;)Landroid/support/v4/util/LruCache;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mCachedMap:Landroid/support/v4/util/LruCache;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mOnItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHolderlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mHolderlist:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

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
    .locals 8

    .line 100
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->index:I

    const-string p3, "imageView1"

    if-eq p1, p2, :cond_0

    if-le p1, p2, :cond_0

    .line 101
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->index:I

    .line 102
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "uz_media_scanner_imgsitem"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;-><init>()V

    .line 104
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    const-string v1, "checkBox1"

    .line 105
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    const-string v1, "selectIcon"

    .line 106
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mHolderlist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mHolderlist:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    .line 111
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mHolderlist:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 114
    :goto_0
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mScreenWidth:I

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mRow:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mCachedMap:Landroid/support/v4/util/LruCache;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    new-instance v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;

    invoke-direct {v4, p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;I)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v4, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->imgExcute(Landroid/widget/ImageView;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;[Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;)V

    goto :goto_1

    .line 120
    :cond_1
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemIv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mCachedMap:Landroid/support/v4/util/LruCache;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_9

    .line 125
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markPosition:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top_left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eqz v3, :cond_3

    .line 128
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 129
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markSize:I

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 134
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markPosition:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "bottom_left"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v6, 0xc

    if-eqz v3, :cond_4

    .line 140
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markSize:I

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_4
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markPosition:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "bottom_right"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x7

    if-eqz v3, :cond_5

    .line 152
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markSize:I

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_5
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markPosition:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "top_right"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markSize:I

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    invoke-virtual {v1, v4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    iget-object p3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_6
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    const/16 v1, 0x8

    if-eqz p3, :cond_8

    iget-object p3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    if-eqz p3, :cond_8

    .line 176
    iget-object p3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 177
    iget-object p3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    if-eqz p1, :cond_7

    .line 180
    iget-object p1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 182
    :cond_7
    iget-object p1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 184
    :cond_8
    iget-object p1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 185
    iget-object p1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 186
    iget-object p1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_2
    return-object p2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->index:I

    return-void
.end method

.method public setMarkPosition(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markPosition:Ljava/lang/String;

    return-void
.end method

.method public setMarkSize(I)V
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->markSize:I

    return-void
.end method

.method public setRow(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mRow:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mScreenWidth:I

    return-void
.end method
