.class public Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "Pdfium.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/pdfReader/Pdfium;
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

.field final synthetic this$0:Lcom/apicloud/pdfReader/Pdfium;

.field private uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method public constructor <init>(Lcom/apicloud/pdfReader/Pdfium;Ljava/lang/String;ZLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->cacheDir:Ljava/lang/String;

    .line 103
    iput-boolean p3, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->isOpenView:Z

    .line 104
    iput-object p4, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 140
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 143
    :cond_0
    aget-object p1, p1, v0

    .line 145
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->cacheDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_apicloud.pdf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 153
    invoke-static {p1, v0}, Lcom/apicloud/pdfReader/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 120
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "eventType"

    const-string v1, "loadFail"

    .line 124
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    iget-object v1, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/pdfReader/Pdfium;->load(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 109
    iget-boolean v0, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->isOpenView:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/Pdfium;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u52a0\u8f7d\u4e2d ..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
