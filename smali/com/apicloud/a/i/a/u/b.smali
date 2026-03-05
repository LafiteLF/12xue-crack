.class public Lcom/apicloud/a/i/a/u/b;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;


# instance fields
.field private a:Lcom/apicloud/a/i/a/u/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/b;->i(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/b;->k(I)V

    new-instance v1, Lcom/apicloud/a/i/a/u/f;

    invoke-direct {v1, p1}, Lcom/apicloud/a/i/a/u/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    new-instance p1, Lcom/apicloud/a/i/a/q/a$a;

    invoke-direct {p1, v0, v0}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/b;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/apicloud/a/i/a/u/b$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/u/b$1;-><init>(Lcom/apicloud/a/i/a/u/b;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/b;->f()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/f;->performClick()Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/u/f;->setSelection(IZ)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/f;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/f;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Landroid/widget/SpinnerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/f;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/f;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/apicloud/a/i/a/i/b;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    if-eqz p1, :cond_0

    if-lez p4, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/b;->a:Lcom/apicloud/a/i/a/u/f;

    invoke-virtual {p1, p4}, Lcom/apicloud/a/i/a/u/f;->setDropDownWidth(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[select]"

    return-object v0
.end method
