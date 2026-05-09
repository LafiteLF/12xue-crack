.class Lcom/artifex/mupdf/mini/DocumentActivity$19;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->relayoutDocument()V
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

    .line 484
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    .line 500
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->access$000(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    return-void
.end method

.method public work()V
    .locals 6

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/Document;->makeBookmark(I)J

    move-result-wide v0

    const-string v2, "MuPDF"

    const-string v3, "relayout document"

    .line 488
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutW:F

    iget-object v4, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v4, v4, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutH:F

    iget-object v5, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v5, v5, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/artifex/mupdf/fitz/Document;->layout(FFF)V

    .line 490
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/Document;->countPages()I

    move-result v3

    iput v3, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    .line 491
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v3, v0, v1}, Lcom/artifex/mupdf/fitz/Document;->findBookmark(J)I

    move-result v0

    iput v0, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 493
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v2, 0x1

    iput v2, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    .line 494
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$19;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 495
    throw v0
.end method
