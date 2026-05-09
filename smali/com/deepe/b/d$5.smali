.class Lcom/deepe/b/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/b/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    iput-object p2, p0, Lcom/deepe/b/d$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    new-instance v1, Lcom/deepe/c/h/a;

    iget-object v2, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v2}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/deepe/c/h/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;Lcom/deepe/c/h/a;)V

    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/c/h/a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepe/c/h/a;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/deepe/c/h/a;->setMax(I)V

    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/d$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/h/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/h/a;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/d$5;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/d$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/h/a;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
