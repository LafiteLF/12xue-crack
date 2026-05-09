.class public Lcom/apicloud/a/i/c/b;
.super Lcom/apicloud/a/i/c/k;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/c/k<",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/c/k;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/c/b;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method private a(Landroid/view/View;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/c/b;->a:Lcom/apicloud/a/d;

    invoke-static {v0, p1, p2, p3}, Lcom/apicloud/a/g/b/b;->a(Lcom/apicloud/a/d;Landroid/view/View;ZI)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const v0, 0x10100a0

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/c/b;->a(Landroid/view/View;ZI)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/c/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method
