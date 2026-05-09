.class Lcom/apicloud/pdfReader/PdfReader$4;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/PdfReader;->openDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field needsPassword:Z

.field final synthetic this$0:Lcom/apicloud/pdfReader/PdfReader;


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/PdfReader;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$4;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$4;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->loadDocument()V

    return-void
.end method

.method public work()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$4;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$4;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, v0, Lcom/apicloud/pdfReader/PdfReader;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/artifex/mupdf/fitz/Document;->openDocument(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;

    move-result-object v1

    iput-object v1, v0, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$4;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, v0, Lcom/apicloud/pdfReader/PdfReader;->buffer:[B

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$4;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v2, v2, Lcom/apicloud/pdfReader/PdfReader;->mimetype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/artifex/mupdf/fitz/Document;->openDocument([BLjava/lang/String;)Lcom/artifex/mupdf/fitz/Document;

    move-result-object v1

    iput-object v1, v0, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$4;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/Document;->needsPassword()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apicloud/pdfReader/PdfReader$4;->needsPassword:Z

    return-void
.end method
