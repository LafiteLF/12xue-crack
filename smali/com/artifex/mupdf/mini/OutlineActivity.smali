.class public Lcom/artifex/mupdf/mini/OutlineActivity;
.super Landroid/app/ListActivity;
.source "OutlineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artifex/mupdf/mini/OutlineActivity$Item;
    }
.end annotation


# instance fields
.field protected adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/artifex/mupdf/mini/OutlineActivity$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 31
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/OutlineActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/OutlineActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 35
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x1090003

    invoke-direct {p1, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/OutlineActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 36
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/OutlineActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/OutlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "POSITION"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "OUTLINE"

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 43
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artifex/mupdf/mini/OutlineActivity$Item;

    if-gez v1, :cond_0

    .line 44
    iget v4, v3, Lcom/artifex/mupdf/mini/OutlineActivity$Item;->page:I

    if-lt v4, v0, :cond_0

    move v1, v2

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/artifex/mupdf/mini/OutlineActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    .line 49
    invoke-virtual {p0, v1}, Lcom/artifex/mupdf/mini/OutlineActivity;->setSelection(I)V

    :cond_2
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/artifex/mupdf/mini/OutlineActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/artifex/mupdf/mini/OutlineActivity$Item;

    .line 54
    iget p1, p1, Lcom/artifex/mupdf/mini/OutlineActivity$Item;->page:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/OutlineActivity;->setResult(I)V

    .line 55
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/OutlineActivity;->finish()V

    return-void
.end method
