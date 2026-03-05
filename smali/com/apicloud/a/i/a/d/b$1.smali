.class Lcom/apicloud/a/i/a/d/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/b;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/b$1;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b$1;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/b;->b(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b$1;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/b;->b(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/e;->a()V

    return-void
.end method
