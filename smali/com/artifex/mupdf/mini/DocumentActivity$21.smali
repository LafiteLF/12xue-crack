.class Lcom/artifex/mupdf/mini/DocumentActivity$21;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public hits:[Lcom/artifex/mupdf/fitz/Quad;

.field public links:[Lcom/artifex/mupdf/fitz/Link;

.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

.field final synthetic val$pageNumber:I

.field final synthetic val$zoom:F


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;IF)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iput p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$pageNumber:I

    iput p3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$zoom:F

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 568
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageView:Lcom/artifex/mupdf/mini/PageView;

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$zoom:F

    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-boolean v4, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->wentBack:Z

    iget-object v5, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->links:[Lcom/artifex/mupdf/fitz/Link;

    iget-object v6, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    invoke-virtual/range {v1 .. v6}, Lcom/artifex/mupdf/mini/PageView;->setBitmap(Landroid/graphics/Bitmap;FZ[Lcom/artifex/mupdf/fitz/Link;[Lcom/artifex/mupdf/fitz/Quad;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageView:Lcom/artifex/mupdf/mini/PageView;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/PageView;->setError()V

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 574
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageSeekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$pageNumber:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 575
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->wentBack:Z

    return-void
.end method

.method public work()V
    .locals 8

    const-string v0, "MuPDF"

    .line 542
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$pageNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$pageNumber:I

    invoke-virtual {v1, v2}, Lcom/artifex/mupdf/fitz/Document;->loadPage(I)Lcom/artifex/mupdf/fitz/Page;

    move-result-object v1

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$pageNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " zoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$zoom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-boolean v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->fitPage:Z

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->canvasW:I

    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->canvasH:I

    invoke-static {v1, v2, v3}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->fitPage(Lcom/artifex/mupdf/fitz/Page;II)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object v2

    goto :goto_0

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->canvasW:I

    invoke-static {v1, v2}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->fitPageWidth(Lcom/artifex/mupdf/fitz/Page;I)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object v2

    .line 550
    :goto_0
    invoke-virtual {v1}, Lcom/artifex/mupdf/fitz/Page;->getLinks()[Lcom/artifex/mupdf/fitz/Link;

    move-result-object v3

    iput-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->links:[Lcom/artifex/mupdf/fitz/Link;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 552
    array-length v5, v3

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 553
    iget-object v7, v7, Lcom/artifex/mupdf/fitz/Link;->bounds:Lcom/artifex/mupdf/fitz/Rect;

    invoke-virtual {v7, v2}, Lcom/artifex/mupdf/fitz/Rect;->transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Rect;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 554
    :cond_1
    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 555
    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/artifex/mupdf/fitz/Page;->search(Ljava/lang/String;)[Lcom/artifex/mupdf/fitz/Quad;

    move-result-object v3

    iput-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    if-eqz v3, :cond_2

    .line 557
    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v6, v3, v4

    .line 558
    invoke-virtual {v6, v2}, Lcom/artifex/mupdf/fitz/Quad;->transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Quad;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 560
    :cond_2
    iget v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$zoom:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 561
    iget v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->val$zoom:F

    invoke-virtual {v2, v3}, Lcom/artifex/mupdf/fitz/Matrix;->scale(F)Lcom/artifex/mupdf/fitz/Matrix;

    .line 562
    :cond_3
    invoke-static {v1, v2}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->drawPage(Lcom/artifex/mupdf/fitz/Page;Lcom/artifex/mupdf/fitz/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$21;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 564
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
