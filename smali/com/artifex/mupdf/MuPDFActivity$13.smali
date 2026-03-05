.class Lcom/artifex/mupdf/MuPDFActivity$13;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 406
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$13;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$13;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/artifex/mupdf/MuPDFActivity;->search(I)V

    return-void
.end method
