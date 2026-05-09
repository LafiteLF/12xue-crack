.class Lcom/apicloud/pdfReader/PdfReader$5;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/PdfReader;->loadDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/pdfReader/PdfReader;


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/PdfReader;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v0, v0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v0, v0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v1, v1, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    if-lt v0, v1, :cond_1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    const/4 v1, 0x0

    iput v1, v0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->loadPage()V

    return-void
.end method

.method public work()V
    .locals 4

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    const-string v1, "info:Title"

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/Document;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iput-object v0, v1, Lcom/apicloud/pdfReader/PdfReader;->title:Ljava/lang/String;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, v1, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v1}, Lcom/artifex/mupdf/fitz/Document;->isReflowable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/apicloud/pdfReader/PdfReader;->isReflowable:Z

    .line 330
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-boolean v0, v0, Lcom/apicloud/pdfReader/PdfReader;->isReflowable:Z

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v1, v1, Lcom/apicloud/pdfReader/PdfReader;->layoutW:F

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v2, v2, Lcom/apicloud/pdfReader/PdfReader;->layoutH:F

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v3, v3, Lcom/apicloud/pdfReader/PdfReader;->layoutEm:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/artifex/mupdf/fitz/Document;->layout(FFF)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, v1, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v1}, Lcom/artifex/mupdf/fitz/Document;->countPages()I

    move-result v1

    iput v1, v0, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 335
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    .line 336
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    const/4 v2, 0x1

    iput v2, v1, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    .line 337
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$5;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    const/4 v2, 0x0

    iput v2, v1, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 338
    throw v0
.end method
