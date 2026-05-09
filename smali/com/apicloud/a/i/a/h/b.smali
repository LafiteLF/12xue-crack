.class public Lcom/apicloud/a/i/a/h/b;
.super Lcom/apicloud/a/i/a/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/CompoundButton;",
        ">",
        "Lcom/apicloud/a/i/a/c/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/h/a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/c/c;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/h/a;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/h/a;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/h/b;->a:Lcom/apicloud/a/i/a/h/a;

    return-void
.end method

.method private final b(Ljava/lang/String;Landroid/widget/CompoundButton;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/a/i/c/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/h/b;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/c/b;-><init>(Lcom/apicloud/a/d;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/h/b;->g()Lcom/apicloud/a/e/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/widget/CompoundButton;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/apicloud/a/i/c;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/i/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/h/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/h/b;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/h/b;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object p1

    invoke-static {v0, p2, p3, p4, p1}, Lcom/apicloud/a/i/c/a;->a(Lcom/apicloud/a/d;Landroid/widget/CompoundButton;Ljava/lang/String;ZLcom/apicloud/a/c/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/h/b;->a(Landroid/widget/CompoundButton;)Lcom/apicloud/a/i/a/h/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/widget/Button;)Lcom/apicloud/a/i/a/c/b;
    .locals 0

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/h/b;->a(Landroid/widget/CompoundButton;)Lcom/apicloud/a/i/a/h/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/CompoundButton;)Lcom/apicloud/a/i/a/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/apicloud/a/i/a/h/a;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/a/h/b;->a:Lcom/apicloud/a/i/a/h/a;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "compoundButton"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/h/b;->a(Ljava/lang/String;Landroid/widget/CompoundButton;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/h/b;->a(Ljava/lang/String;Landroid/widget/CompoundButton;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/CompoundButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/c/c;->a(Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/h/b;->b(Ljava/lang/String;Landroid/widget/CompoundButton;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/CompoundButton;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "change"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/h/b;->b(Ljava/lang/String;Landroid/widget/CompoundButton;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/c/c;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method
