.class Lcom/apicloud/a/d/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/d/g;

.field private final synthetic b:Lcom/apicloud/a/d/f;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d/g;Lcom/apicloud/a/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/d/g$1;->a:Lcom/apicloud/a/d/g;

    iput-object p2, p0, Lcom/apicloud/a/d/g$1;->b:Lcom/apicloud/a/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetError(Lcom/deepe/c/c/d;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/d/g$1;->b:Lcom/apicloud/a/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/d/f;->a(Lcom/deepe/c/c/d;)V

    :cond_0
    return-void
.end method

.method public onGetSuccess(Lcom/deepe/c/c/m;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/d/g$1;->b:Lcom/apicloud/a/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/d/f;->a(Lcom/deepe/c/c/m;)V

    :cond_0
    return-void
.end method
