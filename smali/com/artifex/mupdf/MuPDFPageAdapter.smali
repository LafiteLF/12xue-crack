.class public Lcom/artifex/mupdf/MuPDFPageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MuPDFPageAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCore:Lcom/artifex/mupdf/MuPDFCore;

.field private final mPageSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/artifex/mupdf/MuPDFCore;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mPageSizes:Landroid/util/SparseArray;

    .line 18
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    return-void
.end method

.method static synthetic access$000(Lcom/artifex/mupdf/MuPDFPageAdapter;)Lcom/artifex/mupdf/MuPDFCore;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/artifex/mupdf/MuPDFPageAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mPageSizes:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFCore;->countPages()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 37
    new-instance p2, Lcom/artifex/mupdf/MuPDFPageView;

    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    invoke-direct {v2, v3, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p2, v0, v1, v2}, Lcom/artifex/mupdf/MuPDFPageView;-><init>(Landroid/content/Context;Lcom/artifex/mupdf/MuPDFCore;Landroid/graphics/Point;)V

    goto :goto_0

    .line 39
    :cond_0
    check-cast p2, Lcom/artifex/mupdf/MuPDFPageView;

    .line 42
    :goto_0
    iget-object p3, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mPageSizes:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    if-eqz p3, :cond_1

    .line 46
    invoke-virtual {p2, p1, p3}, Lcom/artifex/mupdf/MuPDFPageView;->setPage(ILandroid/graphics/PointF;)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2, p1}, Lcom/artifex/mupdf/MuPDFPageView;->blank(I)V

    .line 51
    new-instance p3, Lcom/artifex/mupdf/MuPDFPageAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/artifex/mupdf/MuPDFPageAdapter$1;-><init>(Lcom/artifex/mupdf/MuPDFPageAdapter;ILcom/artifex/mupdf/MuPDFPageView;)V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    check-cast v2, Ljava/lang/Void;

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    iget-object p3, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    invoke-virtual {p3, p1}, Lcom/artifex/mupdf/MuPDFCore;->getPageSize(I)Landroid/graphics/PointF;

    move-result-object p3

    .line 77
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter;->mPageSizes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    invoke-virtual {p2}, Lcom/artifex/mupdf/MuPDFPageView;->getPage()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 81
    invoke-virtual {p2, p1, p3}, Lcom/artifex/mupdf/MuPDFPageView;->setPage(ILandroid/graphics/PointF;)V

    :cond_2
    :goto_1
    return-object p2
.end method
