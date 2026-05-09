.class Lcom/artifex/mupdf/MuPDFActivity$2;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFActivity;->requestPassword(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/MuPDFActivity;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/MuPDFActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    iput-object p2, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object p1

    iget-object p2, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p2}, Lcom/artifex/mupdf/MuPDFActivity;->access$000(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/artifex/mupdf/MuPDFCore;->authenticatePassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    iget-object p2, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Lcom/artifex/mupdf/MuPDFActivity;->createUI(Landroid/os/Bundle;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    iget-object p2, p0, Lcom/artifex/mupdf/MuPDFActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Lcom/artifex/mupdf/MuPDFActivity;->requestPassword(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
