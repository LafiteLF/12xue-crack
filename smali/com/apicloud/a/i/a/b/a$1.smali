.class Lcom/apicloud/a/i/a/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/b/a$1;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$1;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->a(Lcom/apicloud/a/i/a/b/a;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a$1;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/b/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a$1;->a:Lcom/apicloud/a/i/a/b/a;

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/apicloud/a/i/a/b/a;->a(Lcom/apicloud/a/i/a/b/a;J)V

    :cond_0
    return-void
.end method
