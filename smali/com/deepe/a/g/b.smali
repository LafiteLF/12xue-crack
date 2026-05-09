.class public Lcom/deepe/a/g/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/g/b$a;,
        Lcom/deepe/a/g/b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/deepe/a/g/b$b;)Lcom/deepe/a/g/a/a;
    .locals 2

    new-instance v0, Lcom/deepe/a/g/a/d;

    invoke-direct {v0}, Lcom/deepe/a/g/a/d;-><init>()V

    iget-object v1, p1, Lcom/deepe/a/g/b$b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/a/g/a/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/deepe/a/g/b$b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a/d;->a(Ljava/util/List;)V

    new-instance v1, Lcom/deepe/a/g/b$1;

    invoke-direct {v1, p0, p1}, Lcom/deepe/a/g/b$1;-><init>(Landroid/content/Context;Lcom/deepe/a/g/b$b;)V

    new-instance p0, Lcom/deepe/a/g/a/g;

    invoke-direct {p0}, Lcom/deepe/a/g/a/g;-><init>()V

    iget p1, p1, Lcom/deepe/a/g/b$b;->c:I

    iput p1, p0, Lcom/deepe/a/g/a/g;->g:I

    invoke-virtual {v1, p0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/g;)V

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/d;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x15

    if-lt p0, p1, :cond_0

    invoke-virtual {v1}, Lcom/deepe/a/g/a/a;->create()V

    :cond_0
    invoke-virtual {v1}, Lcom/deepe/a/g/a/a;->show()V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/deepe/a/g/b$a;)Lcom/deepe/a/g/a;
    .locals 1

    new-instance v0, Lcom/deepe/a/g/a$a;

    invoke-direct {v0, p0}, Lcom/deepe/a/g/a$a;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/deepe/a/g/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    iget-object p0, p1, Lcom/deepe/a/g/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    iget-object p0, p1, Lcom/deepe/a/g/b$a;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    iget p0, p1, Lcom/deepe/a/g/b$a;->g:I

    invoke-virtual {v0, p0}, Lcom/deepe/a/g/a$a;->b(I)Lcom/deepe/a/g/a$a;

    iget-boolean p0, p1, Lcom/deepe/a/g/b$a;->c:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/deepe/a/g/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    iget p0, p1, Lcom/deepe/a/g/b$a;->e:I

    invoke-virtual {v0, p0}, Lcom/deepe/a/g/a$a;->c(I)Lcom/deepe/a/g/a$a;

    :cond_0
    iget-boolean p0, p1, Lcom/deepe/a/g/b$a;->h:Z

    iget-object p1, p1, Lcom/deepe/a/g/b$a;->i:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/deepe/a/g/a$a;->a(ZLjava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-virtual {v0}, Lcom/deepe/a/g/a$a;->a()Lcom/deepe/a/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepe/a/g/a;->show()V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
