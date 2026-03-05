.class Lcom/deepe/c/j/e/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/j/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/j/e/b;


# direct methods
.method constructor <init>(Lcom/deepe/c/j/e/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/b$1;->a:Lcom/deepe/c/j/e/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/deepe/c/j/e/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "acount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/deepe/c/j/e/b$1;->a:Lcom/deepe/c/j/e/b;

    invoke-static {v2}, Lcom/deepe/c/j/e/b;->a(Lcom/deepe/c/j/e/b;)Lcom/deepe/c/j/e/b$a;

    move-result-object v2

    invoke-interface {v2, p1, v1, v0}, Lcom/deepe/c/j/e/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/j/e/a;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a;->a()V

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a;->b()V

    :cond_0
    return-void
.end method
