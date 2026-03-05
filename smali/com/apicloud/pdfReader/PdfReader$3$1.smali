.class Lcom/apicloud/pdfReader/PdfReader$3$1;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/PdfReader$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/pdfReader/PdfReader$3;


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/PdfReader$3;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$3$1;->this$1:Lcom/apicloud/pdfReader/PdfReader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoPage(I)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3$1;->this$1:Lcom/apicloud/pdfReader/PdfReader$3;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0, p1}, Lcom/apicloud/pdfReader/PdfReader;->gotoPage(I)V

    return-void
.end method

.method public gotoURI(Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3$1;->this$1:Lcom/apicloud/pdfReader/PdfReader$3;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0, p1}, Lcom/apicloud/pdfReader/PdfReader;->gotoURI(Ljava/lang/String;)V

    return-void
.end method

.method public onBackward()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3$1;->this$1:Lcom/apicloud/pdfReader/PdfReader$3;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->goBackward()V

    return-void
.end method

.method public onForward()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3$1;->this$1:Lcom/apicloud/pdfReader/PdfReader$3;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->goForward()V

    return-void
.end method

.method public onPageViewZoomChanged(F)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3$1;->this$1:Lcom/apicloud/pdfReader/PdfReader$3;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0, p1}, Lcom/apicloud/pdfReader/PdfReader;->onPageViewZoomChanged(F)V

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3$1;->this$1:Lcom/apicloud/pdfReader/PdfReader$3;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/pdfReader/PdfReader;->onPageViewSizeChanged(II)V

    return-void
.end method
