.class Lcom/artifex/mupdf/MuPDFActivity$9;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 364
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$9;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$9;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$700(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$9;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$800(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 372
    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$9;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$900(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    iget-object v0, v0, Lcom/artifex/mupdf/SearchTaskResult;->txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 373
    invoke-static {p1}, Lcom/artifex/mupdf/SearchTaskResult;->set(Lcom/artifex/mupdf/SearchTaskResult;)V

    .line 374
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$9;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/artifex/mupdf/ReaderView;->resetupChildren()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
