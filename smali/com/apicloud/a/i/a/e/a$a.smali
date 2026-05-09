.class Lcom/apicloud/a/i/a/e/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/e/a;

.field private final b:J


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/e/a;J)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a$a;->a:Lcom/apicloud/a/i/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/apicloud/a/i/a/e/a$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/e/a;JLcom/apicloud/a/i/a/e/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/a$a;-><init>(Lcom/apicloud/a/i/a/e/a;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a$a;->a:Lcom/apicloud/a/i/a/e/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/e/a;->a(Lcom/apicloud/a/i/a/e/a;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a$a;->a:Lcom/apicloud/a/i/a/e/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/e/a;->a(Lcom/apicloud/a/i/a/e/a;)Lcom/apicloud/a/c/l;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flush"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a$a;->a:Lcom/apicloud/a/i/a/e/a;

    iget-wide v1, p0, Lcom/apicloud/a/i/a/e/a$a;->b:J

    invoke-static {v0, p0, v1, v2}, Lcom/apicloud/a/i/a/e/a;->a(Lcom/apicloud/a/i/a/e/a;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
