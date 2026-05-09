.class Lcom/apicloud/a/i/a/f/b;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/f/b$a;,
        Lcom/apicloud/a/i/a/f/b$b;,
        Lcom/apicloud/a/i/a/f/b$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private c:Lcom/apicloud/a/i/a/f/b$b;

.field private d:Lcom/apicloud/a/i/a/f/b$c;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/f/b;->a:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/f/b;->e()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Landroid/widget/CheckBox;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/widget/CheckBox;

    move-object v1, v3

    goto :goto_2

    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/apicloud/a/i/a/f/b;->a(Landroid/view/ViewGroup;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v3}, Lcom/apicloud/a/i/a/f/b;->a(Landroid/view/ViewGroup;)Landroid/widget/CheckBox;

    :goto_1
    return-object v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/f/b;)Lcom/apicloud/a/i/a/f/b$b;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/f/b;->c:Lcom/apicloud/a/i/a/f/b$b;

    return-object p0
.end method

.method private a(IZ)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/f/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/f/b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/f/b;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/f/b;->c(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/f/b;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/f/b;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/f/b;->a:I

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/CheckBox;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/apicloud/a/i/a/f/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/apicloud/a/i/a/f/b;->a:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-direct {p0, v4, v1}, Lcom/apicloud/a/i/a/f/b;->a(IZ)V

    :cond_1
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/apicloud/a/i/a/f/b;->b(I)V

    goto :goto_1

    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/apicloud/a/i/a/f/b;->b(Landroid/view/ViewGroup;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setId(I)V

    :cond_1
    iget-object v3, p0, Lcom/apicloud/a/i/a/f/b;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/f/b;->c(Landroid/view/ViewGroup;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/f/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/f/b$a;-><init>(Lcom/apicloud/a/i/a/f/b;Lcom/apicloud/a/i/a/f/b$a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/f/b;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b;->d:Lcom/apicloud/a/i/a/f/b$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/f/b$c;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/f/b$c;-><init>(Lcom/apicloud/a/i/a/f/b;Lcom/apicloud/a/i/a/f/b$c;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/f/b;->d:Lcom/apicloud/a/i/a/f/b$c;

    invoke-super {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/f/b;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(I)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/f/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/f/b;->c:Lcom/apicloud/a/i/a/f/b$b;

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/apicloud/a/i/a/f/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/apicloud/a/i/a/f/b;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/apicloud/a/i/a/f/b;->a(IZ)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/f/b;->b(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/f/b;->b(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/i/b;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 7

    invoke-static {p0}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/f/b;->d()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/apicloud/a/i/c/l;

    invoke-direct {v1, v0, v2}, Lcom/apicloud/a/i/c/l;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/apicloud/a/i/a/f/b;->a(I)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f040005

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "on"

    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b;->g:Ljava/util/ArrayList;

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

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b;->d:Lcom/apicloud/a/i/a/f/b$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/f/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/f/b$c;-><init>(Lcom/apicloud/a/i/a/f/b;Lcom/apicloud/a/i/a/f/b$c;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/f/b;->d:Lcom/apicloud/a/i/a/f/b$c;

    invoke-super {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b;->d:Lcom/apicloud/a/i/a/f/b$c;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/f/b$c;->a(Lcom/apicloud/a/i/a/f/b$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[checkbox-group]"

    return-object v0
.end method
