.class Lcom/apicloud/a/c/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/p;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/c/p;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/p;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/p$1;->a:Lcom/apicloud/a/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/p$1;->a:Lcom/apicloud/a/c/p;

    invoke-static {v0}, Lcom/apicloud/a/c/p;->a(Lcom/apicloud/a/c/p;)Lcom/apicloud/a/c/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/c/v;->d()V

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object v0

    const-string v1, "notify start"

    invoke-virtual {v0, v1}, Lcom/deepe/d/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/apicloud/a/c/p$1;->a:Lcom/apicloud/a/c/p;

    invoke-static {v1}, Lcom/apicloud/a/c/p;->b(Lcom/apicloud/a/c/p;)Lcom/apicloud/a/c/g;

    move-result-object v1

    const-string v2, "Notify start error."

    invoke-static {v0, v2}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V

    return-void
.end method
