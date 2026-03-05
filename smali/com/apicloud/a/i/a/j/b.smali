.class public Lcom/apicloud/a/i/a/j/b;
.super Lcom/apicloud/a/i/a/aj/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/l;
.implements Lcom/apicloud/a/i/a/j/d;


# instance fields
.field private a:Lcom/apicloud/a/i/a/j/f;

.field private b:Ljava/lang/String;

.field private c:Lcom/apicloud/a/i/a/j/a;

.field private d:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aj/b;-><init>(Lcom/apicloud/a/d;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/b;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/j/b;->d:Z

    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/apicloud/a/i/a/j/b;->g:I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/j/b;->setClickable(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/j/f;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/j/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/j/f;->a(Lcom/apicloud/a/i/a/j/d;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/j/b;->d:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/j/f;->setCancelable(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    iget v1, p0, Lcom/apicloud/a/i/a/j/b;->g:I

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/j/f;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/j/b;->d()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/j/f;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/j/f;->a(Z)V

    return-void
.end method

.method final a(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/j/b;->g:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/j/f;->a(I)V

    :cond_0
    return-void
.end method

.method final a(Lcom/apicloud/a/i/a/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/b;->c:Lcom/apicloud/a/i/a/j/a;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/j/b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/j/f;->dismiss()V

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/j/b;->d:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/j/f;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/j/b;->d()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/j/f;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->a:Lcom/apicloud/a/i/a/j/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/j/f;->a(Z)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/b;->b:Ljava/lang/String;

    return-void
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/j/b;->c:Lcom/apicloud/a/i/a/j/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/j/a;->b()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/j/b;->c:Lcom/apicloud/a/i/a/j/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/j/a;->a()V

    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[dialog]"

    return-object v0
.end method
