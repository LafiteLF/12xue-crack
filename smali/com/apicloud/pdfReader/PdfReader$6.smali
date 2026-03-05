.class Lcom/apicloud/pdfReader/PdfReader$6;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/PdfReader;->relayoutDocument()V
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

    .line 350
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->loadPage()V

    return-void
.end method

.method public work()V
    .locals 6

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v1, v1, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/Document;->makeBookmark(I)J

    move-result-wide v0

    .line 354
    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v2, v2, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v3, v3, Lcom/apicloud/pdfReader/PdfReader;->layoutW:F

    iget-object v4, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v4, v4, Lcom/apicloud/pdfReader/PdfReader;->layoutH:F

    iget-object v5, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v5, v5, Lcom/apicloud/pdfReader/PdfReader;->layoutEm:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/artifex/mupdf/fitz/Document;->layout(FFF)V

    .line 355
    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v3, v3, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/Document;->countPages()I

    move-result v3

    iput v3, v2, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    .line 356
    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v3, v3, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v3, v0, v1}, Lcom/artifex/mupdf/fitz/Document;->findBookmark(J)I

    move-result v0

    iput v0, v2, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 358
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    const/4 v2, 0x1

    iput v2, v1, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    .line 359
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$6;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    const/4 v2, 0x0

    iput v2, v1, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 360
    throw v0
.end method
