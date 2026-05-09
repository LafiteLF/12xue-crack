.class Lcom/artifex/mupdf/MuPDFActivity$15;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFActivity;->showButtons()V
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

    .line 550
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$15;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 552
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$15;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$1000(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return-void
.end method
