.class Lcom/artifex/mupdf/MuPDFActivity$11;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 392
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$11;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 394
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$11;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/artifex/mupdf/MuPDFActivity;->search(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
