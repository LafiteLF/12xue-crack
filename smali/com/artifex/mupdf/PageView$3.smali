.class Lcom/artifex/mupdf/PageView$3;
.super Landroid/os/AsyncTask;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/PageView;->addHq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/artifex/mupdf/PatchInfo;",
        "Ljava/lang/Void;",
        "Lcom/artifex/mupdf/PatchInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/PageView;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/PageView;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/artifex/mupdf/PatchInfo;)Lcom/artifex/mupdf/PatchInfo;
    .locals 9

    .line 333
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    const/4 v8, 0x0

    aget-object v1, p1, v8

    iget-object v1, v1, Lcom/artifex/mupdf/PatchInfo;->bm:Landroid/graphics/Bitmap;

    aget-object v2, p1, v8

    iget-object v2, v2, Lcom/artifex/mupdf/PatchInfo;->patchViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v8

    iget-object v3, v3, Lcom/artifex/mupdf/PatchInfo;->patchViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object v4, p1, v8

    iget-object v4, v4, Lcom/artifex/mupdf/PatchInfo;->patchArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v5, p1, v8

    iget-object v5, v5, Lcom/artifex/mupdf/PatchInfo;->patchArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p1, v8

    iget-object v6, v6, Lcom/artifex/mupdf/PatchInfo;->patchArea:Landroid/graphics/Rect;

    .line 335
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    aget-object v7, p1, v8

    iget-object v7, v7, Lcom/artifex/mupdf/PatchInfo;->patchArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 333
    invoke-virtual/range {v0 .. v7}, Lcom/artifex/mupdf/PageView;->drawPage(Landroid/graphics/Bitmap;IIIIII)V

    .line 336
    aget-object p1, p1, v8

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 331
    check-cast p1, [Lcom/artifex/mupdf/PatchInfo;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView$3;->doInBackground([Lcom/artifex/mupdf/PatchInfo;)Lcom/artifex/mupdf/PatchInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/artifex/mupdf/PatchInfo;)V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    iget-object v1, p1, Lcom/artifex/mupdf/PatchInfo;->patchViewSize:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/artifex/mupdf/PageView;->access$902(Lcom/artifex/mupdf/PageView;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 341
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    iget-object v1, p1, Lcom/artifex/mupdf/PatchInfo;->patchArea:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/artifex/mupdf/PageView;->access$1002(Lcom/artifex/mupdf/PageView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 342
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$1100(Lcom/artifex/mupdf/PageView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p1, p1, Lcom/artifex/mupdf/PatchInfo;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    iget-object p1, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {p1}, Lcom/artifex/mupdf/PageView;->access$1100(Lcom/artifex/mupdf/PageView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$1000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$1000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v2}, Lcom/artifex/mupdf/PageView;->access$1000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v3}, Lcom/artifex/mupdf/PageView;->access$1000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 347
    iget-object p1, p0, Lcom/artifex/mupdf/PageView$3;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-virtual {p1}, Lcom/artifex/mupdf/PageView;->invalidate()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 331
    check-cast p1, Lcom/artifex/mupdf/PatchInfo;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView$3;->onPostExecute(Lcom/artifex/mupdf/PatchInfo;)V

    return-void
.end method
