.class Lcom/apicloud/a/i/a/d/b$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/a/e;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/b$a;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/b$a;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/b$a$2;->a:Lcom/apicloud/a/i/a/d/b$a;

    iput-object p2, p0, Lcom/apicloud/a/i/a/d/b$a$2;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b$a$2;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/b$a$2;->a:Lcom/apicloud/a/i/a/d/b$a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/b$a;)Lcom/apicloud/a/c/f;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/apicloud/a/c/q;

    invoke-direct {v1}, Lcom/apicloud/a/c/q;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apicloud/a/i/a/d/b$a$2;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "tempVideoPath"

    invoke-virtual {v1, v4, v2}, Lcom/apicloud/a/c/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tempThumbPath"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b$a$2;->a:Lcom/apicloud/a/i/a/d/b$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/b$a;)Lcom/apicloud/a/c/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/f;->a(Lcom/apicloud/a/c/q;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b$a$2;->a:Lcom/apicloud/a/i/a/d/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/i/a/d/b$a;Lcom/apicloud/a/c/f;)V

    :cond_0
    return-void
.end method
