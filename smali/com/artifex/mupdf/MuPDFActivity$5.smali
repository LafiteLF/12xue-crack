.class Lcom/artifex/mupdf/MuPDFActivity$5;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFActivity;->createUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/MuPDFActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/MuPDFActivity;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$5;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$5;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-virtual {p1, p2}, Lcom/artifex/mupdf/MuPDFActivity;->updatePageNumView(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$5;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/artifex/mupdf/ReaderView;->setDisplayedViewIndex(I)V

    return-void
.end method
