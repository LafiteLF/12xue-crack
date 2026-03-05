.class Lcom/artifex/mupdf/MuPDFActivity$10;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 384
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$10;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$10;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/artifex/mupdf/MuPDFActivity;->search(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
