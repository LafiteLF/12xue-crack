.class Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;
.super Ljava/lang/Object;
.source "DefaultScrollHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle;


# direct methods
.method constructor <init>(Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;->this$0:Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;->this$0:Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle;

    invoke-virtual {v0}, Lcom/apicloud/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hide()V

    return-void
.end method
