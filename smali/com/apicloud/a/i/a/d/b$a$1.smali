.class Lcom/apicloud/a/i/a/d/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/a/e;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/b$a;

.field private final synthetic b:[B


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/b$a;[B)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/b$a$1;->a:Lcom/apicloud/a/i/a/d/b$a;

    iput-object p2, p0, Lcom/apicloud/a/i/a/d/b$a$1;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b$a$1;->b:[B

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/b$a$1;->a:Lcom/apicloud/a/i/a/d/b$a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/d/b$a;->b(Lcom/apicloud/a/i/a/d/b$a;)Lcom/apicloud/a/i/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/d/g;->a([BLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/b$a$1;->a:Lcom/apicloud/a/i/a/d/b$a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/b$a;)Lcom/apicloud/a/c/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/b$a$1;->a:Lcom/apicloud/a/i/a/d/b$a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/b$a;)Lcom/apicloud/a/c/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tempImagePath"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b$a$1;->a:Lcom/apicloud/a/i/a/d/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/b$a;Lcom/apicloud/a/c/f;)V

    :cond_0
    return-void
.end method
