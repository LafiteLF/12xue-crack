.class Lcom/artifex/mupdf/MuPDFActivity$6;
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

    .line 340
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$6;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 342
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$6;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-virtual {p1}, Lcom/artifex/mupdf/MuPDFActivity;->searchModeOn()V

    return-void
.end method
