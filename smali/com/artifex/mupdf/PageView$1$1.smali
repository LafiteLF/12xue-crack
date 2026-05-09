.class Lcom/artifex/mupdf/PageView$1$1;
.super Ljava/lang/Object;
.source "PageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/PageView$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artifex/mupdf/PageView$1;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/PageView$1;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/artifex/mupdf/PageView$1$1;->this$1:Lcom/artifex/mupdf/PageView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1$1;->this$1:Lcom/artifex/mupdf/PageView$1;

    iget-object v0, v0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$1$1;->this$1:Lcom/artifex/mupdf/PageView$1;

    iget-object v0, v0, Lcom/artifex/mupdf/PageView$1;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v0}, Lcom/artifex/mupdf/PageView;->access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
