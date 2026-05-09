.class Lcom/artifex/mupdf/mini/DocumentActivity$4;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 184
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$4;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$4;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->resetSearch()V

    return-void
.end method
