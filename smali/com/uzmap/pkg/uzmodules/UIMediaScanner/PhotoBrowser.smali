.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;
.super Landroid/app/Activity;
.source "PhotoBrowser.java"


# instance fields
.field private mAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

.field private mBrowserPager:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;

.field private mImgPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    return-object p0
.end method


# virtual methods
.method public clearCache(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$3;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public getExistChild(I)Landroid/view/View;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const-string p1, "meidascanner_photobrowser_main_layout"

    .line 33
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->setContentView(I)V

    .line 34
    new-instance p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    .line 35
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imgPaths"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mImgPaths:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mImgPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->open(I)V

    return-void
.end method

.method public open(I)V
    .locals 4

    const-string v0, "browserPager"

    .line 46
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;

    const/high16 v1, -0x1000000

    .line 48
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;->setBackgroundColor(I)V

    .line 49
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mImgPaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/ArrayList;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

    .line 50
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageBrowserAdapter;->setZoomEnable(Z)V

    .line 52
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/HackyViewPager;->setCurrentItem(I)V

    const-string p1, "back"

    .line 53
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "confirm"

    .line 63
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
