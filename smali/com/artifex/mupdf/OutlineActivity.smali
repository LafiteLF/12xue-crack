.class public Lcom/artifex/mupdf/OutlineActivity;
.super Landroid/app/ListActivity;
.source "OutlineActivity.java"


# instance fields
.field mItems:[Lcom/artifex/mupdf/OutlineItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 14
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lcom/artifex/mupdf/OutlineActivityData;->get()Lcom/artifex/mupdf/OutlineActivityData;

    move-result-object p1

    iget-object p1, p1, Lcom/artifex/mupdf/OutlineActivityData;->items:[Lcom/artifex/mupdf/OutlineItem;

    iput-object p1, p0, Lcom/artifex/mupdf/OutlineActivity;->mItems:[Lcom/artifex/mupdf/OutlineItem;

    .line 17
    new-instance p1, Lcom/artifex/mupdf/OutlineAdapter;

    invoke-virtual {p0}, Lcom/artifex/mupdf/OutlineActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/artifex/mupdf/OutlineActivity;->mItems:[Lcom/artifex/mupdf/OutlineItem;

    invoke-direct {p1, v0, v1}, Lcom/artifex/mupdf/OutlineAdapter;-><init>(Landroid/view/LayoutInflater;[Lcom/artifex/mupdf/OutlineItem;)V

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/OutlineActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    invoke-virtual {p0}, Lcom/artifex/mupdf/OutlineActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-static {}, Lcom/artifex/mupdf/OutlineActivityData;->get()Lcom/artifex/mupdf/OutlineActivityData;

    move-result-object v0

    iget v0, v0, Lcom/artifex/mupdf/OutlineActivityData;->position:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    const/4 p1, -0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/OutlineActivity;->setResult(I)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 25
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 26
    invoke-static {}, Lcom/artifex/mupdf/OutlineActivityData;->get()Lcom/artifex/mupdf/OutlineActivityData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/artifex/mupdf/OutlineActivity;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    iput p2, p1, Lcom/artifex/mupdf/OutlineActivityData;->position:I

    .line 27
    iget-object p1, p0, Lcom/artifex/mupdf/OutlineActivity;->mItems:[Lcom/artifex/mupdf/OutlineItem;

    aget-object p1, p1, p3

    iget p1, p1, Lcom/artifex/mupdf/OutlineItem;->page:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/OutlineActivity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/artifex/mupdf/OutlineActivity;->finish()V

    return-void
.end method
