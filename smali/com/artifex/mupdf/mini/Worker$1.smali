.class Lcom/artifex/mupdf/mini/Worker$1;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/Worker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/mini/Worker;

.field final synthetic val$x:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/Worker;Ljava/lang/Throwable;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/artifex/mupdf/mini/Worker$1;->this$0:Lcom/artifex/mupdf/mini/Worker;

    iput-object p2, p0, Lcom/artifex/mupdf/mini/Worker$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/artifex/mupdf/mini/Worker$1;->this$0:Lcom/artifex/mupdf/mini/Worker;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/Worker;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/Worker$1;->val$x:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
