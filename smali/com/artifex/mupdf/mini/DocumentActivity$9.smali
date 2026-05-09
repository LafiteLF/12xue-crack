.class Lcom/artifex/mupdf/mini/DocumentActivity$9;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$9;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$9;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-boolean v0, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->fitPage:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->fitPage:Z

    .line 226
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$9;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    return-void
.end method
