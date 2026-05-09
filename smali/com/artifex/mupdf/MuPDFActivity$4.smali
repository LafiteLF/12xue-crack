.class Lcom/artifex/mupdf/MuPDFActivity$4;
.super Lcom/artifex/mupdf/ReaderView;
.source "MuPDFActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFActivity;->createUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private showButtonsDisabled:Z

.field final synthetic this$0:Lcom/artifex/mupdf/MuPDFActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/MuPDFActivity;Landroid/content/Context;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0, p2}, Lcom/artifex/mupdf/ReaderView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onChildSetup(ILandroid/view/View;)V
    .locals 1

    .line 284
    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    iget v0, v0, Lcom/artifex/mupdf/SearchTaskResult;->pageNumber:I

    if-ne v0, p1, :cond_0

    .line 285
    move-object p1, p2

    check-cast p1, Lcom/artifex/mupdf/PageView;

    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    iget-object v0, v0, Lcom/artifex/mupdf/SearchTaskResult;->searchBoxes:[Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/artifex/mupdf/PageView;->setSearchBoxes([Landroid/graphics/RectF;)V

    goto :goto_0

    .line 287
    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/artifex/mupdf/PageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/artifex/mupdf/PageView;->setSearchBoxes([Landroid/graphics/RectF;)V

    .line 289
    :goto_0
    check-cast p2, Lcom/artifex/mupdf/PageView;

    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$200(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFActivity$LinkState;

    move-result-object p1

    sget-object v0, Lcom/artifex/mupdf/MuPDFActivity$LinkState;->HIGHLIGHT:Lcom/artifex/mupdf/MuPDFActivity$LinkState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Lcom/artifex/mupdf/PageView;->setLinkHighlighting(Z)V

    return-void
.end method

.method protected onMoveToChild(I)V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$500(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v2}, Lcom/artifex/mupdf/MuPDFActivity;->access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artifex/mupdf/MuPDFCore;->countPages()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$600(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v1}, Lcom/artifex/mupdf/MuPDFActivity;->access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artifex/mupdf/MuPDFCore;->countPages()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 297
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$600(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 298
    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    iget v0, v0, Lcom/artifex/mupdf/SearchTaskResult;->pageNumber:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 299
    invoke-static {p1}, Lcom/artifex/mupdf/SearchTaskResult;->set(Lcom/artifex/mupdf/SearchTaskResult;)V

    .line 300
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/artifex/mupdf/ReaderView;->resetupChildren()V

    :cond_1
    return-void
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->showButtonsDisabled:Z

    .line 273
    invoke-super {p0, p1}, Lcom/artifex/mupdf/ReaderView;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->showButtonsDisabled:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFActivity;->hideButtons()V

    .line 265
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/artifex/mupdf/ReaderView;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method protected onSettle(Landroid/view/View;)V
    .locals 0

    .line 307
    check-cast p1, Lcom/artifex/mupdf/PageView;

    invoke-virtual {p1}, Lcom/artifex/mupdf/PageView;->addHq()V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-super {p0}, Lcom/artifex/mupdf/ReaderView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 236
    invoke-super {p0}, Lcom/artifex/mupdf/ReaderView;->moveToPrevious()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-super {p0}, Lcom/artifex/mupdf/ReaderView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 238
    invoke-super {p0}, Lcom/artifex/mupdf/ReaderView;->moveToNext()V

    goto :goto_0

    .line 239
    :cond_1
    iget-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->showButtonsDisabled:Z

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$200(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFActivity$LinkState;

    move-result-object v0

    sget-object v1, Lcom/artifex/mupdf/MuPDFActivity$LinkState;->INHIBIT:Lcom/artifex/mupdf/MuPDFActivity$LinkState;

    if-eq v0, v1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artifex/mupdf/ReaderView;->getDisplayedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/artifex/mupdf/MuPDFPageView;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$400(Lcom/artifex/mupdf/MuPDFActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFActivity;->showButtons()V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFActivity;->hideButtons()V

    .line 258
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/artifex/mupdf/ReaderView;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity$4;->showButtonsDisabled:Z

    .line 280
    :cond_0
    invoke-super {p0, p1}, Lcom/artifex/mupdf/ReaderView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onUnsettle(Landroid/view/View;)V
    .locals 0

    .line 313
    check-cast p1, Lcom/artifex/mupdf/PageView;

    invoke-virtual {p1}, Lcom/artifex/mupdf/PageView;->removeHq()V

    return-void
.end method
