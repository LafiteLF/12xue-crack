.class Lcom/apicloud/a/i/a/u/f;
.super Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/f;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/f;->getSelectedItemPosition()I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/f;->a(I)V

    :cond_0
    return-void
.end method

.method public setSelection(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/f;->getSelectedItemPosition()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->setSelection(IZ)V

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/f;->a(I)V

    :cond_0
    return-void
.end method
