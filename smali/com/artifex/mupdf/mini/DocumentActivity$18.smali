.class Lcom/artifex/mupdf/mini/DocumentActivity$18;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->loadDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    if-lt v0, v2, :cond_1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iput v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->titleLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-boolean v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->isReflowable:Z

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->zoomButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    .line 478
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->access$000(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    return-void
.end method

.method public work()V
    .locals 4

    const-string v0, "MuPDF"

    :try_start_0
    const-string v1, "load document"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    const-string v2, "info:Title"

    invoke-virtual {v1, v2}, Lcom/artifex/mupdf/fitz/Document;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iput-object v1, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->title:Ljava/lang/String;

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v2}, Lcom/artifex/mupdf/fitz/Document;->isReflowable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->isReflowable:Z

    .line 457
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-boolean v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->isReflowable:Z

    if-eqz v1, :cond_1

    const-string v1, "layout document"

    .line 458
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutW:F

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutH:F

    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/artifex/mupdf/fitz/Document;->layout(FFF)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v1}, Lcom/artifex/mupdf/fitz/Document;->countPages()I

    move-result v1

    iput v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 463
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    .line 464
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v2, 0x1

    iput v2, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    .line 465
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$18;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 466
    throw v0
.end method
