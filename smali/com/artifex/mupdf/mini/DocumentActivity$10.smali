.class Lcom/artifex/mupdf/mini/DocumentActivity$10;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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

    .line 233
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 237
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_6pt:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto/16 :goto_0

    .line 238
    :cond_0
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_7pt:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x40e00000    # 7.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 239
    :cond_1
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_8pt:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 240
    :cond_2
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_9pt:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41100000    # 9.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 241
    :cond_3
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_10pt:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 242
    :cond_4
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_11pt:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41300000    # 11.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 243
    :cond_5
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_12pt:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 244
    :cond_6
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_13pt:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41500000    # 13.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 245
    :cond_7
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_14pt:I

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41600000    # 14.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 246
    :cond_8
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_15pt:I

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    goto :goto_0

    .line 247
    :cond_9
    sget v1, Lcom/artifex/mupdf/mini/R$id;->action_layout_16pt:I

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/high16 v1, 0x41800000    # 16.0f

    iput v1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    .line 248
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget p1, p1, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_b

    .line 249
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$10;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->relayoutDocument()V

    :cond_b
    const/4 p1, 0x1

    return p1
.end method
