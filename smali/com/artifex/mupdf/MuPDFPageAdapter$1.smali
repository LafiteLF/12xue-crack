.class Lcom/artifex/mupdf/MuPDFPageAdapter$1;
.super Landroid/os/AsyncTask;
.source "MuPDFPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFPageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/MuPDFPageAdapter;

.field final synthetic val$pageView:Lcom/artifex/mupdf/MuPDFPageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/MuPDFPageAdapter;ILcom/artifex/mupdf/MuPDFPageView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->this$0:Lcom/artifex/mupdf/MuPDFPageAdapter;

    iput p2, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->val$pageView:Lcom/artifex/mupdf/MuPDFPageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/PointF;
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->this$0:Lcom/artifex/mupdf/MuPDFPageAdapter;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFPageAdapter;->access$000(Lcom/artifex/mupdf/MuPDFPageAdapter;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object p1

    iget v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/artifex/mupdf/MuPDFCore;->getPageSize(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/PointF;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->this$0:Lcom/artifex/mupdf/MuPDFPageAdapter;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFPageAdapter;->access$100(Lcom/artifex/mupdf/MuPDFPageAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->val$position:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->val$pageView:Lcom/artifex/mupdf/MuPDFPageView;

    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFPageView;->getPage()I

    move-result v0

    iget v1, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->val$position:I

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->val$pageView:Lcom/artifex/mupdf/MuPDFPageView;

    invoke-virtual {v0, v1, p1}, Lcom/artifex/mupdf/MuPDFPageView;->setPage(ILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFPageAdapter$1;->onPostExecute(Landroid/graphics/PointF;)V

    return-void
.end method
