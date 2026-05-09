.class public Lcom/deepe/c/f/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/deepe/c/f/b;

.field private c:Lcom/deepe/c/f/h;

.field private d:Lcom/deepe/c/f/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepe/c/f/b;Lcom/deepe/c/f/h;Lcom/deepe/c/f/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/f/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepe/c/f/p;->b:Lcom/deepe/c/f/b;

    iput-object p3, p0, Lcom/deepe/c/f/p;->c:Lcom/deepe/c/f/h;

    iput-object p4, p0, Lcom/deepe/c/f/p;->d:Lcom/deepe/c/f/o;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/f/p;->c:Lcom/deepe/c/f/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepe/c/f/p;->b:Lcom/deepe/c/f/b;

    iget v1, v1, Lcom/deepe/c/f/b;->c:I

    iget-object v2, p0, Lcom/deepe/c/f/p;->b:Lcom/deepe/c/f/b;

    iget-object v2, v2, Lcom/deepe/c/f/b;->e:[Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/f/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/deepe/c/f/h;->b(ILjava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/deepe/c/f/p;->b:Lcom/deepe/c/f/b;

    iget p1, p1, Lcom/deepe/c/f/b;->c:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/deepe/c/f/p;->b:Lcom/deepe/c/f/b;

    iget-boolean p2, p2, Lcom/deepe/c/f/b;->f:Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/deepe/c/f/p;->a:Landroid/content/Context;

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-static {p1}, Lcom/deepe/c/f/n;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x7596

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/deepe/c/f/p;->b:Lcom/deepe/c/f/b;

    iget-object p2, p2, Lcom/deepe/c/f/b;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/deepe/c/f/p;->d:Lcom/deepe/c/f/o;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/deepe/c/f/o;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/f/p;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/deepe/c/f/i;->a(Landroid/app/Activity;)Lcom/deepe/c/f/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/deepe/c/f/i;->b(I[Ljava/lang/String;Lcom/deepe/c/f/k;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Host must be an Activity!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p2, p0, Lcom/deepe/c/f/p;->d:Lcom/deepe/c/f/o;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/deepe/c/f/o;->b(I)V

    :cond_4
    iget-object p1, p0, Lcom/deepe/c/f/p;->b:Lcom/deepe/c/f/b;

    iget-boolean p1, p1, Lcom/deepe/c/f/b;->f:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/deepe/c/f/p;->a()V

    :goto_0
    return-void
.end method
