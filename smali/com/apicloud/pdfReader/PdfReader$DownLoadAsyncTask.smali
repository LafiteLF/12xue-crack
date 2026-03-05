.class public Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/pdfReader/PdfReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheDir:Ljava/lang/String;

.field private isOpenView:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/apicloud/pdfReader/PdfReader;

.field private uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method public constructor <init>(Lcom/apicloud/pdfReader/PdfReader;Ljava/lang/String;ZLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 547
    iput-object p2, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->cacheDir:Ljava/lang/String;

    .line 548
    iput-boolean p3, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->isOpenView:Z

    .line 549
    iput-object p4, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 539
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 592
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 595
    :cond_0
    aget-object v2, p1, v1

    .line 597
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->cacheDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/apicloud/pdfReader/PdfReader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pdf"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 599
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 603
    :cond_1
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 607
    invoke-static {p1, v3}, Lcom/apicloud/pdfReader/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 612
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p1

    .line 609
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 539
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 563
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 564
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {p1}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 566
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "eventType"

    const-string v1, "loadFail"

    .line 568
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 572
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void

    .line 577
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->isOpenView:Z

    if-nez p1, :cond_2

    .line 579
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {p1, v0}, Lcom/apicloud/pdfReader/PdfReader;->viewPdf(Ljava/io/File;)V

    goto :goto_1

    .line 580
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->isOpenView:Z

    if-eqz p1, :cond_3

    .line 581
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apicloud/pdfReader/PdfReader;->init(Landroid/net/Uri;)V

    .line 582
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v2, v2, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/apicloud/pdfReader/PdfReader;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    goto :goto_1

    .line 585
    :cond_3
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {p1}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u52a0\u8f7d\u4e2d ..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method
