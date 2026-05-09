.class Lcom/apicloud/a/i/a/w/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/w/c;

.field private b:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/w/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/w/c$c;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/w/c;Lcom/apicloud/a/i/a/w/c$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c$c;-><init>(Lcom/apicloud/a/i/a/w/c;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/w/c$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/w/c$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c$c;->a:Lcom/apicloud/a/i/a/w/c;

    if-ne p1, v0, :cond_1

    instance-of v1, p2, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/w/c;->a(Lcom/apicloud/a/i/a/w/c;Landroid/widget/RadioButton;)V

    goto :goto_0

    :cond_0
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/w/c;->a(Lcom/apicloud/a/i/a/w/c;Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c$c;->a:Lcom/apicloud/a/i/a/w/c;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    instance-of v2, p2, Landroid/widget/RadioButton;

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    goto :goto_0

    :cond_0
    instance-of v2, p2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/apicloud/a/i/a/w/c;->b(Lcom/apicloud/a/i/a/w/c;Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method
