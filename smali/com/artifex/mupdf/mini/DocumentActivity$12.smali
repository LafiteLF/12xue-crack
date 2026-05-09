.class Lcom/artifex/mupdf/mini/DocumentActivity$12;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->openDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field needsPassword:Z

.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    iget-boolean v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->needsPassword:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    sget v1, Lcom/artifex/mupdf/mini/R$string;->dlog_password_message:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/DocumentActivity;->askPassword(I)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadDocument()V

    :goto_0
    return-void
.end method

.method public work()V
    .locals 3

    const-string v0, "MuPDF"

    const-string v1, "open document"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/artifex/mupdf/fitz/Document;->openDocument(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;

    move-result-object v1

    iput-object v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->buffer:[B

    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v2, v2, Lcom/artifex/mupdf/mini/DocumentActivity;->mimetype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/artifex/mupdf/fitz/Document;->openDocument([BLjava/lang/String;)Lcom/artifex/mupdf/fitz/Document;

    move-result-object v1

    iput-object v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/Document;->needsPassword()Z

    move-result v0

    iput-boolean v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$12;->needsPassword:Z

    return-void
.end method
