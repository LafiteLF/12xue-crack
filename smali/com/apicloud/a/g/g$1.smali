.class Lcom/apicloud/a/g/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/g/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/g/g;->a(Ljava/lang/String;Lcom/apicloud/a/g/f;)Lcom/apicloud/a/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/apicloud/a/g/f;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/apicloud/a/g/g;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/apicloud/a/g/f;Ljava/lang/String;Lcom/apicloud/a/g/g;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/g$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/apicloud/a/g/g$1;->b:Lcom/apicloud/a/g/f;

    iput-object p3, p0, Lcom/apicloud/a/g/g$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/apicloud/a/g/g$1;->d:Lcom/apicloud/a/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/g/b/a$b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/g/g$1;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/apicloud/a/g/b/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/g/g$1;->b:Lcom/apicloud/a/g/f;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/g/f;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/g/g$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/g/g$1;->d:Lcom/apicloud/a/g/g;

    iget p1, p1, Lcom/apicloud/a/g/b/a$b;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/apicloud/a/g/g;->a(Ljava/lang/Integer;Lcom/apicloud/a/c;)V

    return-void
.end method
