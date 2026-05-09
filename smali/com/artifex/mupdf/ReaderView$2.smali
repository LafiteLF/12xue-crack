.class Lcom/artifex/mupdf/ReaderView$2;
.super Ljava/lang/Object;
.source "ReaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/ReaderView;->postUnsettle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/ReaderView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/ReaderView;Landroid/view/View;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/artifex/mupdf/ReaderView$2;->this$0:Lcom/artifex/mupdf/ReaderView;

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView$2;->this$0:Lcom/artifex/mupdf/ReaderView;

    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/ReaderView;->onUnsettle(Landroid/view/View;)V

    return-void
.end method
