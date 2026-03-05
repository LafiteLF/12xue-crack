.class public Lcom/apicloud/a/i/a/w/c;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/w/c$a;,
        Lcom/apicloud/a/i/a/w/c$b;,
        Lcom/apicloud/a/i/a/w/c$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private c:Z

.field private d:Lcom/apicloud/a/i/a/w/c$b;

.field private g:Lcom/apicloud/a/i/a/w/c$c;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/w/c;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/w/c;->c:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/w/c;->f()V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/w/c;->a:I

    return-void
.end method

.method private a(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/w/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/w/c$1;

    const-class v1, Landroid/widget/RadioButton;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/w/c$1;-><init>(Lcom/apicloud/a/i/a/w/c;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcom/apicloud/a/b/e;->a(Landroid/view/View;Lcom/apicloud/a/b/e$a;)V

    return-void
.end method

.method private a(Landroid/widget/RadioButton;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/w/c;->g()V

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/w/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/w/c;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/w/c;Landroid/widget/RadioButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c;->b(Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/w/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apicloud/a/i/a/w/c;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/w/c;Landroid/view/ViewGroup;)Landroid/widget/RadioButton;
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c;->c(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/w/c$2;

    const-class v1, Landroid/widget/RadioButton;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/w/c$2;-><init>(Lcom/apicloud/a/i/a/w/c;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcom/apicloud/a/b/e;->a(Landroid/view/View;Lcom/apicloud/a/b/e$a;)V

    return-void
.end method

.method private b(Landroid/widget/RadioButton;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setId(I)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/w/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/w/c;->g()V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/w/c;Landroid/widget/RadioButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c;->a(Landroid/widget/RadioButton;)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/widget/RadioButton;

    move-object v1, v3

    goto :goto_2

    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/apicloud/a/i/a/w/c;->c(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/w/c;)Lcom/apicloud/a/i/a/w/c$b;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/w/c;->d:Lcom/apicloud/a/i/a/w/c$b;

    return-object p0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/w/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/w/c$a;-><init>(Lcom/apicloud/a/i/a/w/c;Lcom/apicloud/a/i/a/w/c$a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/w/c;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c;->g:Lcom/apicloud/a/i/a/w/c$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/w/c$c;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/w/c$c;-><init>(Lcom/apicloud/a/i/a/w/c;Lcom/apicloud/a/i/a/w/c$c;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/w/c;->g:Lcom/apicloud/a/i/a/w/c$c;

    invoke-super {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/w/c;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/w/c;->c:Z

    iget v0, p0, Lcom/apicloud/a/i/a/w/c;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/apicloud/a/i/a/w/c;->a(IZ)V

    :cond_0
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/w/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public a(Lcom/apicloud/a/i/a/w/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/w/c;->d:Lcom/apicloud/a/i/a/w/c$b;

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/w/c;->a(Landroid/widget/RadioButton;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/w/c;->a(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/i/b;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/w/c;->d()Landroid/widget/RadioButton;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const v1, 0x7f040005

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "on"

    :goto_0
    new-instance v2, Lcom/apicloud/a/i/c/l;

    invoke-direct {v2, v0, v1}, Lcom/apicloud/a/i/c/l;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public d()Landroid/widget/RadioButton;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/w/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/w/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/w/c;->a:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/apicloud/a/i/a/i/b;->onFinishInflate()V

    iget v0, p0, Lcom/apicloud/a/i/a/w/c;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/w/c;->c:Z

    invoke-direct {p0, v0, v1}, Lcom/apicloud/a/i/a/w/c;->a(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/w/c;->c:Z

    iget v0, p0, Lcom/apicloud/a/i/a/w/c;->a:I

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/w/c;->a(I)V

    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c;->g:Lcom/apicloud/a/i/a/w/c$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/w/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/w/c$c;-><init>(Lcom/apicloud/a/i/a/w/c;Lcom/apicloud/a/i/a/w/c$c;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/w/c;->g:Lcom/apicloud/a/i/a/w/c$c;

    invoke-super {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c;->g:Lcom/apicloud/a/i/a/w/c$c;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/w/c$c;->a(Lcom/apicloud/a/i/a/w/c$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[radio-group]"

    return-object v0
.end method
