.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ImageBrowserAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

.field private mImagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewContainer:Landroid/view/ViewGroup;

.field private zoomEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/ArrayList;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->zoomEnable:Z

    .line 35
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    .line 36
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mImageLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    .line 37
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 58
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mViewContainer:Landroid/view/ViewGroup;

    const-string v0, "meidascanner_photo_browser_item_layout"

    .line 61
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v1, "photoView"

    .line 66
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 67
    check-cast v1, Lco/senab/photoview/PhotoView;

    .line 70
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->zoomEnable:Z

    invoke-virtual {v1, v2}, Lco/senab/photoview/PhotoView;->setZoomable(Z)V

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v1, v2}, Lco/senab/photoview/PhotoView;->setAdjustViewBounds(Z)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 72
    invoke-virtual {v1, v2}, Lco/senab/photoview/PhotoView;->setMaxScale(F)V

    const-string v2, "loadProgress"

    .line 74
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 75
    check-cast v2, Landroid/widget/ProgressBar;

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mImageLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->load(Landroid/view/View;Landroid/widget/ProgressBar;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setZoomEnable(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->zoomEnable:Z

    return-void
.end method
