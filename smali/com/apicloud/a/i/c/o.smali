.class public Lcom/apicloud/a/i/c/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/c/o$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/String;ZLcom/apicloud/a/c/l;Lcom/apicloud/a/i/c/r;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p2

    new-instance v1, Lcom/apicloud/a/i/c/o$a;

    invoke-direct {v1, p1, p3, p2, v0}, Lcom/apicloud/a/i/c/o$a;-><init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;Lcom/apicloud/a/i/c/o$a;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p4, :cond_1

    const-class p0, Lcom/apicloud/a/i/c/o$a;

    invoke-virtual {p4, p0}, Lcom/apicloud/a/i/c/r;->b(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p4, v1}, Lcom/apicloud/a/i/c/r;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p4, :cond_1

    const-class p0, Lcom/apicloud/a/i/c/o$a;

    invoke-virtual {p4, p0}, Lcom/apicloud/a/i/c/r;->a(Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method
