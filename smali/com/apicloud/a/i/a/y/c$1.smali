.class Lcom/apicloud/a/i/a/y/c$1;
.super Lcom/apicloud/a/i/a/y/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/y/c;->b(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/y/c;

.field private final synthetic b:Lcom/apicloud/a/i/a/y/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/y/c;Lcom/apicloud/a/i/a/y/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/c$1;->a:Lcom/apicloud/a/i/a/y/c;

    iput-object p2, p0, Lcom/apicloud/a/i/a/y/c$1;->b:Lcom/apicloud/a/i/a/y/a;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/c$1;->a:Lcom/apicloud/a/i/a/y/c;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/y/c;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/c$1;->b:Lcom/apicloud/a/i/a/y/a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/c/d;

    invoke-direct {v1}, Lcom/apicloud/a/i/c/d;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "interact"

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method
