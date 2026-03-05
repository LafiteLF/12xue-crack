.class public Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;
.super Landroid/os/AsyncTask;
.source "LoadBmpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private path:Ljava/lang/String;

.field private pb:Landroid/widget/ProgressBar;

.field private showImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->showImage:Landroid/widget/ImageView;

    .line 28
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->showImage:Landroid/widget/ImageView;

    .line 23
    iput-object p2, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->pb:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 58
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->path:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->showImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/apicloud/glide/Glide;->with(Landroid/content/Context;)Lcom/apicloud/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->path:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v0}, Lcom/apicloud/glide/RequestManager;->load(Ljava/lang/String;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object p1

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/apicloud/glide/DrawableTypeRequest;->override(II)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->centerCrop()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->showImage:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p1, v0}, Lcom/apicloud/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->pb:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
