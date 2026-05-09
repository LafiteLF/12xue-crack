.class Lcom/apicloud/a/f/e/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/f/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/f/e/c;

.field private final b:J

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/apicloud/a/f/e/c;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/f/e/c$a;->a:Lcom/apicloud/a/f/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/apicloud/a/f/e/c$a;->b:J

    iput-boolean p4, p0, Lcom/apicloud/a/f/e/c$a;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/f/e/c$a;->a:Lcom/apicloud/a/f/e/c;

    invoke-static {v0}, Lcom/apicloud/a/f/e/c;->a(Lcom/apicloud/a/f/e/c;)Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/f/e/c$a;->a:Lcom/apicloud/a/f/e/c;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "run"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/l;->d(Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/apicloud/a/f/e/c$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/f/e/c$a;->a:Lcom/apicloud/a/f/e/c;

    iget-wide v1, p0, Lcom/apicloud/a/f/e/c$a;->b:J

    invoke-static {v0, p0, v1, v2}, Lcom/apicloud/a/f/e/c;->a(Lcom/apicloud/a/f/e/c;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
