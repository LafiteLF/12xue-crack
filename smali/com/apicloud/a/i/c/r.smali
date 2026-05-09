.class public Lcom/apicloud/a/i/c/r;
.super Lcom/apicloud/a/i/c/k;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/c/k<",
        "Lcom/apicloud/a/i/c/p;",
        ">;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/apicloud/a/i/c/p;)V
    .locals 0

    invoke-interface {p1}, Lcom/apicloud/a/i/c/p;->a()V

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/c/p;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/c/r;->a(Lcom/apicloud/a/i/c/p;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/c/r;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/a/i/c/p;

    invoke-interface {v3, p1, p2}, Lcom/apicloud/a/i/c/p;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
