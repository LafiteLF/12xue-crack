.class Lcom/artifex/mupdf/mini/DocumentActivity$8;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 211
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$8;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 213
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$8;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const-class v1, Lcom/artifex/mupdf/mini/OutlineActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$8;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    const-string v2, "POSITION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$8;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v1, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->flatOutline:Ljava/util/ArrayList;

    const-string v2, "OUTLINE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$8;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/artifex/mupdf/mini/DocumentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
