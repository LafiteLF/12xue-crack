.class Lcom/apicloud/a/i/a/f/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/f/b;

.field private b:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/f/b$c;->a:Lcom/apicloud/a/i/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/f/b;Lcom/apicloud/a/i/a/f/b$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/f/b$c;-><init>(Lcom/apicloud/a/i/a/f/b;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/f/b$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/f/b$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b$c;->a:Lcom/apicloud/a/i/a/f/b;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/apicloud/a/i/a/f/b$c;->a:Lcom/apicloud/a/i/a/f/b;

    invoke-static {v1}, Lcom/apicloud/a/i/a/f/b;->b(Lcom/apicloud/a/i/a/f/b;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b$c;->a:Lcom/apicloud/a/i/a/f/b;

    if-ne p1, v0, :cond_2

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/f/b;->a(Lcom/apicloud/a/i/a/f/b;Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b$c;->a:Lcom/apicloud/a/i/a/f/b;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/CheckBox;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b$c;->a:Lcom/apicloud/a/i/a/f/b;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/apicloud/a/i/a/f/b;->a(Landroid/view/ViewGroup;)Landroid/widget/CheckBox;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method
