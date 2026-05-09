.class Lcom/apicloud/a/i/a/d/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/d/a/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/a/b;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b$1;->a:Lcom/apicloud/a/i/a/d/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b$1;->a:Lcom/apicloud/a/i/a/d/a/b;

    iget-object v0, v0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b$1;->a:Lcom/apicloud/a/i/a/d/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/b;->c()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b$1;->a:Lcom/apicloud/a/i/a/d/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/b;->l()V

    :cond_0
    return-void
.end method
