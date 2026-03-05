.class public Lcom/apicloud/pdfReader/Pdfium;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "Pdfium.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/ProgressDialog;

.field protected pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/apicloud/pdfReader/Pdfium;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/pdfReader/Pdfium;)Landroid/app/ProgressDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/apicloud/pdfReader/Pdfium;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/apicloud/pdfReader/Pdfium;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/apicloud/pdfReader/Pdfium;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method


# virtual methods
.method protected load(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "showLoading"

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/Pdfium;->context()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d ..."

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/apicloud/pdfReader/Pdfium;->mDialog:Landroid/app/ProgressDialog;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/apicloud/pdfReader/Pdfium;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->fromFile(Ljava/io/File;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v3}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->defaultPage(I)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v0}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->enableAnnotationRendering(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    const/16 v2, 0xa

    .line 60
    invoke-virtual {v0, v2}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->spacing(I)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    sget-object v2, Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;->BOTH:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    .line 61
    invoke-virtual {v0, v2}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy(Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    new-instance v2, Lcom/apicloud/pdfReader/Pdfium$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/apicloud/pdfReader/Pdfium$2;-><init>(Lcom/apicloud/pdfReader/Pdfium;ZLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onError(Lcom/apicloud/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    new-instance v2, Lcom/apicloud/pdfReader/Pdfium$1;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/apicloud/pdfReader/Pdfium$1;-><init>(Lcom/apicloud/pdfReader/Pdfium;ZLjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 73
    invoke-virtual {v0, v2}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onLoad(Lcom/apicloud/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->load()V

    return-void
.end method

.method protected loadPdf(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "path"

    .line 38
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "showLoading"

    .line 40
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/Pdfium;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v4, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;

    invoke-direct {v4, p0, v3, v2, p1}, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;-><init>(Lcom/apicloud/pdfReader/Pdfium;Ljava/lang/String;ZLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    new-array p1, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {v4, p1}, Lcom/apicloud/pdfReader/Pdfium$DownLoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0, v0}, Lcom/apicloud/barteksc/pdfviewer/util/MouleUtil;->getReadPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/pdfReader/Pdfium;->load(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
