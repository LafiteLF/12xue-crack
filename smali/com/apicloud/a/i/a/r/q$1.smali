.class Lcom/apicloud/a/i/a/r/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/r/q;

.field private final synthetic b:Lcom/apicloud/a/i/a/r/n;

.field private final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/r/q;Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/q$1;->a:Lcom/apicloud/a/i/a/r/q;

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/q$1;->b:Lcom/apicloud/a/i/a/r/n;

    iput-object p3, p0, Lcom/apicloud/a/i/a/r/q$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/q$1;->a:Lcom/apicloud/a/i/a/r/q;

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/q$1;->b:Lcom/apicloud/a/i/a/r/n;

    iget-object v2, p0, Lcom/apicloud/a/i/a/r/q$1;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/q;Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V

    return-void
.end method
