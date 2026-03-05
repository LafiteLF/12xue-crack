.class Lcom/artifex/mupdf/mini/DocumentActivity$1;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public newProgress:I

.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$1;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 151
    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$1;->newProgress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 154
    iput p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$1;->newProgress:I

    .line 155
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$1;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object p1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->pageLabel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$1;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget p2, p2, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$1;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$1;->newProgress:I

    invoke-virtual {p1, v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->gotoPage(I)V

    return-void
.end method
