.class final Lcom/apicloud/a/i/a/u/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/apicloud/a/i/a/u/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/h;->a:Lcom/apicloud/a/i/a/u/a/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/h;->a:Lcom/apicloud/a/i/a/u/a/d;

    iget-object v0, v0, Lcom/apicloud/a/i/a/u/a/d;->b:Lcom/apicloud/a/i/a/u/a/g;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/h;->a:Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/u/a/d;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/h;->a:Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {v3}, Lcom/apicloud/a/i/a/u/a/d;->d()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/apicloud/a/i/a/u/a/g;->a(Lcom/apicloud/a/i/a/u/a/d;Ljava/lang/String;I)V

    return-void
.end method
