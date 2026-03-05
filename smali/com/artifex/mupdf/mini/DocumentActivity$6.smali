.class Lcom/artifex/mupdf/mini/DocumentActivity$6;
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

    .line 198
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$6;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$6;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->search(I)V

    return-void
.end method
