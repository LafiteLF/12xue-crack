.class Lcom/artifex/mupdf/MuPDFActivity$20$1;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFActivity$20;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/artifex/mupdf/MuPDFActivity$20;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/MuPDFActivity$20;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$20$1;->this$1:Lcom/artifex/mupdf/MuPDFActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20$1;->this$1:Lcom/artifex/mupdf/MuPDFActivity$20;

    iget-object v0, v0, Lcom/artifex/mupdf/MuPDFActivity$20;->val$progressDialog:Lcom/artifex/mupdf/ProgressDialogX;

    invoke-virtual {v0}, Lcom/artifex/mupdf/ProgressDialogX;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20$1;->this$1:Lcom/artifex/mupdf/MuPDFActivity$20;

    iget-object v0, v0, Lcom/artifex/mupdf/MuPDFActivity$20;->val$progressDialog:Lcom/artifex/mupdf/ProgressDialogX;

    invoke-virtual {v0}, Lcom/artifex/mupdf/ProgressDialogX;->show()V

    :cond_0
    return-void
.end method
