.class Lcom/artifex/mupdf/mini/DocumentActivity$3;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 171
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$3;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 173
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    .line 174
    iget-object p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$3;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {p2, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->search(I)V

    return p1

    :cond_0
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 178
    iget-object p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$3;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {p2, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->search(I)V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
