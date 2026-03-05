.class public Lcom/apicloud/a/i/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/c/a$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/apicloud/a/d;Landroid/widget/CompoundButton;Ljava/lang/String;ZLcom/apicloud/a/c/l;)V
    .locals 2

    invoke-interface {p0}, Lcom/apicloud/a/d;->d()Lcom/apicloud/a/e/a;

    move-result-object p0

    invoke-virtual {p4}, Lcom/apicloud/a/c/l;->a()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/apicloud/a/i/c/b;

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/e/a;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/c/b;

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    new-instance p3, Lcom/apicloud/a/i/c/a$a;

    const/4 v0, 0x0

    invoke-direct {p3, p2, p4, p1, v0}, Lcom/apicloud/a/i/c/a$a;-><init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;Lcom/apicloud/a/i/c/a$a;)V

    const-class p1, Lcom/apicloud/a/i/c/a$a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/c/b;->b(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/apicloud/a/i/c/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-class p1, Lcom/apicloud/a/i/c/a$a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/c/b;->a(Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method
