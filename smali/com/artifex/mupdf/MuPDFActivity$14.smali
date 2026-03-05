.class Lcom/artifex/mupdf/MuPDFActivity$14;
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

    .line 438
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$14;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 440
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$14;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/artifex/mupdf/MuPDFCore;->getOutline()[Lcom/artifex/mupdf/OutlineItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 442
    invoke-static {}, Lcom/artifex/mupdf/OutlineActivityData;->get()Lcom/artifex/mupdf/OutlineActivityData;

    move-result-object v0

    iput-object p1, v0, Lcom/artifex/mupdf/OutlineActivityData;->items:[Lcom/artifex/mupdf/OutlineItem;

    .line 443
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$14;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    const-class v1, Lcom/artifex/mupdf/OutlineActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$14;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/artifex/mupdf/MuPDFActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
