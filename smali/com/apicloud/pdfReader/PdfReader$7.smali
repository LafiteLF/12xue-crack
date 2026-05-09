.class Lcom/apicloud/pdfReader/PdfReader$7;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/PdfReader;->loadPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public hits:[Lcom/artifex/mupdf/fitz/Quad;

.field public links:[Lcom/artifex/mupdf/fitz/Link;

.field final synthetic this$0:Lcom/apicloud/pdfReader/PdfReader;

.field final synthetic val$pageNumber:I

.field final synthetic val$zoom:F


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/PdfReader;IF)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iput p2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->val$pageNumber:I

    iput p3, p0, Lcom/apicloud/pdfReader/PdfReader$7;->val$zoom:F

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 405
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$7;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v1, v0, Lcom/apicloud/pdfReader/PdfReader;->pageView:Lcom/artifex/mupdf/mini/PageView;

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/apicloud/pdfReader/PdfReader$7;->val$zoom:F

    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-boolean v4, v0, Lcom/apicloud/pdfReader/PdfReader;->wentBack:Z

    iget-object v5, p0, Lcom/apicloud/pdfReader/PdfReader$7;->links:[Lcom/artifex/mupdf/fitz/Link;

    iget-object v6, p0, Lcom/apicloud/pdfReader/PdfReader$7;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    invoke-virtual/range {v1 .. v6}, Lcom/artifex/mupdf/mini/PageView;->setBitmap(Landroid/graphics/Bitmap;FZ[Lcom/artifex/mupdf/fitz/Link;[Lcom/artifex/mupdf/fitz/Quad;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->pageView:Lcom/artifex/mupdf/mini/PageView;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/PageView;->setError()V

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apicloud/pdfReader/PdfReader;->wentBack:Z

    return-void
.end method

.method public work()V
    .locals 7

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget v1, p0, Lcom/apicloud/pdfReader/PdfReader$7;->val$pageNumber:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/Document;->loadPage(I)Lcom/artifex/mupdf/fitz/Page;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-boolean v1, v1, Lcom/apicloud/pdfReader/PdfReader;->fitPage:Z

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v1, v1, Lcom/apicloud/pdfReader/PdfReader;->canvasW:I

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v2, v2, Lcom/apicloud/pdfReader/PdfReader;->canvasH:I

    invoke-static {v0, v1, v2}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->fitPage(Lcom/artifex/mupdf/fitz/Page;II)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object v1

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget v1, v1, Lcom/apicloud/pdfReader/PdfReader;->canvasW:I

    invoke-static {v0, v1}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->fitPageWidth(Lcom/artifex/mupdf/fitz/Page;I)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object v1

    .line 386
    :goto_0
    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/Page;->getLinks()[Lcom/artifex/mupdf/fitz/Link;

    move-result-object v2

    iput-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->links:[Lcom/artifex/mupdf/fitz/Link;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 388
    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 389
    iget-object v6, v6, Lcom/artifex/mupdf/fitz/Link;->bounds:Lcom/artifex/mupdf/fitz/Rect;

    invoke-virtual {v6, v1}, Lcom/artifex/mupdf/fitz/Rect;->transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Rect;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v2, v2, Lcom/apicloud/pdfReader/PdfReader;->searchNeedle:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 391
    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v2, v2, Lcom/apicloud/pdfReader/PdfReader;->searchNeedle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/artifex/mupdf/fitz/Page;->search(Ljava/lang/String;)[Lcom/artifex/mupdf/fitz/Quad;

    move-result-object v2

    iput-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    if-eqz v2, :cond_2

    .line 393
    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    .line 394
    invoke-virtual {v5, v1}, Lcom/artifex/mupdf/fitz/Quad;->transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Quad;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 396
    :cond_2
    iget v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->val$zoom:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 397
    iget v2, p0, Lcom/apicloud/pdfReader/PdfReader$7;->val$zoom:F

    invoke-virtual {v1, v2}, Lcom/artifex/mupdf/fitz/Matrix;->scale(F)Lcom/artifex/mupdf/fitz/Matrix;

    .line 399
    :cond_3
    invoke-static {v0, v1}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->drawPage(Lcom/artifex/mupdf/fitz/Page;Lcom/artifex/mupdf/fitz/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$7;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
