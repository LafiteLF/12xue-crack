.class Lcom/artifex/mupdf/mini/DocumentActivity$17;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->runSearch(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field searchPage:I

.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

.field final synthetic val$direction:I

.field final synthetic val$needle:Ljava/lang/String;

.field final synthetic val$startPage:I


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;ILjava/lang/String;I)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iput p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->val$startPage:I

    iput-object p3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->val$needle:Ljava/lang/String;

    iput p4, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->val$direction:I

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    .line 391
    iget p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->val$startPage:I

    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-boolean v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->stopSearch:Z

    const-string v1, " / "

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->val$needle:Ljava/lang/String;

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    if-ne v0, v2, :cond_1

    .line 413
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    goto/16 :goto_1

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    if-ltz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->history:Ljava/util/Stack;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    iput v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 417
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    goto/16 :goto_1

    .line 419
    :cond_2
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    if-ge v0, v2, :cond_3

    .line 420
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    invoke-virtual {v0, p0}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    goto :goto_1

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "MuPDF"

    const-string v1, "search not found"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    sget v1, Lcom/artifex/mupdf/mini/R$string;->toast_search_not_found:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/DocumentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 411
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public work()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-boolean v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->stopSearch:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->val$needle:Ljava/lang/String;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_3

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MuPDF"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    invoke-virtual {v1, v2}, Lcom/artifex/mupdf/fitz/Document;->loadPage(I)Lcom/artifex/mupdf/fitz/Page;

    move-result-object v1

    .line 398
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/artifex/mupdf/fitz/Page;->search(Ljava/lang/String;)[Lcom/artifex/mupdf/fitz/Quad;

    move-result-object v2

    .line 399
    invoke-virtual {v1}, Lcom/artifex/mupdf/fitz/Page;->destroy()V

    if-eqz v2, :cond_1

    .line 400
    array-length v1, v2

    if-lez v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    iput v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    goto :goto_1

    .line 404
    :cond_1
    iget v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    iget v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->val$direction:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->searchPage:I

    if-ltz v1, :cond_3

    .line 405
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$17;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
