.class Lcom/apicloud/pdfReader/PdfReader$2;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/PdfReader;->jsmethod_openView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/pdfReader/PdfReader;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/PdfReader;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iput-object p2, p0, Lcom/apicloud/pdfReader/PdfReader$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iput-object p3, p0, Lcom/apicloud/pdfReader/PdfReader$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apicloud/pdfReader/FileUtils;->getRealPath(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)Lcom/apicloud/pdfReader/FileUtils$FileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-boolean v1, v0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;->isAssert:Z

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v1}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;->filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v3}, Lcom/apicloud/pdfReader/PdfReader;->access$000(Lcom/apicloud/pdfReader/PdfReader;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/apicloud/pdfReader/PdfReader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/apicloud/pdfReader/FileUtils;->copyToSdcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v3}, Lcom/apicloud/pdfReader/PdfReader;->access$000(Lcom/apicloud/pdfReader/PdfReader;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apicloud/pdfReader/PdfReader;->init(Landroid/net/Uri;)V

    .line 180
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->access$000(Lcom/apicloud/pdfReader/PdfReader;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v3, v3, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/pdfReader/PdfReader;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apicloud/pdfReader/PdfReader;->init(Landroid/net/Uri;)V

    .line 184
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->access$000(Lcom/apicloud/pdfReader/PdfReader;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$2;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v3, v3, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/pdfReader/PdfReader;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
