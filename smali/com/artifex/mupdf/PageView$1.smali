.class Lcom/artifex/mupdf/PageView$1;
.super Landroid/os/AsyncTask;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/PageView;->setPage(ILandroid/graphics/PointF;)V
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
        "[",
        "Lcom/artifex/mupdf/LinkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/PageView;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/PageView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView$1;->doInBackground([Ljava/lang/Void;)[Lcom/artifex/mupdf/LinkInfo;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/artifex/mupdf/LinkInfo;
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object p1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    iget-object p1, p1, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    iget-object p1, p1, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    iget-object p1, p1, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    iget-object p1, p1, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget v7, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/artifex/mupdf/PageView;->drawPage(Landroid/graphics/Bitmap;IIIIII)V

    .line 157
    iget-object p1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-virtual {p1}, Lcom/artifex/mupdf/PageView;->getLinkInfo()[Lcom/artifex/mupdf/LinkInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, [Lcom/artifex/mupdf/LinkInfo;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView$1;->onPostExecute([Lcom/artifex/mupdf/LinkInfo;)V

    return-void
.end method

.method protected onPostExecute([Lcom/artifex/mupdf/LinkInfo;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/PageView;->removeView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/artifex/mupdf/PageView;->access$202(Lcom/artifex/mupdf/PageView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 182
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$100(Lcom/artifex/mupdf/PageView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0, p1}, Lcom/artifex/mupdf/PageView;->access$502(Lcom/artifex/mupdf/PageView;[Lcom/artifex/mupdf/LinkInfo;)[Lcom/artifex/mupdf/LinkInfo;

    .line 184
    iget-object p1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-virtual {p1}, Lcom/artifex/mupdf/PageView;->invalidate()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$100(Lcom/artifex/mupdf/PageView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v2}, Lcom/artifex/mupdf/PageView;->access$300(Lcom/artifex/mupdf/PageView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/artifex/mupdf/PageView;->access$202(Lcom/artifex/mupdf/PageView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 165
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const-string v0, "busy"

    .line 166
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    .line 168
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/PageView;->addView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$400(Lcom/artifex/mupdf/PageView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/artifex/mupdf/PageView$1$1;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/PageView$1$1;-><init>(Lcom/artifex/mupdf/PageView$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
