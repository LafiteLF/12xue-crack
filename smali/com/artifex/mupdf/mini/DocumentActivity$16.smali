.class Lcom/artifex/mupdf/mini/DocumentActivity$16;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->checkPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field passwordOkay:Z

.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iput-object p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 338
    iget-boolean v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->passwordOkay:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadDocument()V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    sget v1, Lcom/artifex/mupdf/mini/R$string;->dlog_password_retry:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/DocumentActivity;->askPassword(I)V

    :goto_0
    return-void
.end method

.method public work()V
    .locals 2

    const-string v0, "MuPDF"

    const-string v1, "check password"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/Document;->authenticatePassword(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$16;->passwordOkay:Z

    return-void
.end method
