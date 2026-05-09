.class Lcom/apicloud/a/i/a/r/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/r/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/r/m;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/r/m;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/m$1;->a:Lcom/apicloud/a/i/a/r/m;

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/m$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/apicloud/a/i/a/r/m$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/m$1;->a:Lcom/apicloud/a/i/a/r/m;

    invoke-static {v0}, Lcom/apicloud/a/i/a/r/m;->a(Lcom/apicloud/a/i/a/r/m;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/m$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/r/m$1;->a:Lcom/apicloud/a/i/a/r/m;

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/r/m;->f()Lcom/apicloud/a/c/l;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/r/m$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/apicloud/a/i/a/r/m$1;->c:Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
