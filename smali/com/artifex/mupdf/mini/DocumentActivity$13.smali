.class Lcom/artifex/mupdf/mini/DocumentActivity$13;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->askPassword(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

.field final synthetic val$passwordView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$13;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iput-object p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$13;->val$passwordView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 314
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$13;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity$13;->val$passwordView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/artifex/mupdf/mini/DocumentActivity;->checkPassword(Ljava/lang/String;)V

    return-void
.end method
