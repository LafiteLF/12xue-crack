.class Lcom/apicloud/a/i/a/ae/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ae/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ae/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ae/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ae/a$1;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$1;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$1;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->b(Lcom/apicloud/a/i/a/ae/a;)V

    :cond_0
    return-void
.end method
