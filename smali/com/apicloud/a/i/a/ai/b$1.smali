.class Lcom/apicloud/a/i/a/ai/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ai/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b$1;->a:Lcom/apicloud/a/i/a/ai/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b$1;->a:Lcom/apicloud/a/i/a/ai/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/b;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b$1;->a:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/b$1;->a:Lcom/apicloud/a/i/a/ai/b;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/b;->b(Lcom/apicloud/a/i/a/ai/b;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/apicloud/a/i/a/ai/b;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
