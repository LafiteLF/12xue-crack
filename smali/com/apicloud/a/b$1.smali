.class Lcom/apicloud/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/b;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/a/a/c$b<",
        "Lcom/apicloud/a/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/b;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/b$1;->a:Lcom/apicloud/a/b;

    iput-object p2, p0, Lcom/apicloud/a/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/apicloud/a/c/e;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/b;->e(Ljava/lang/String;)Lcom/apicloud/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/apicloud/a/c/e;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b$1;->a:Lcom/apicloud/a/b;

    invoke-static {v0, p1}, Lcom/apicloud/a/b;->a(Lcom/apicloud/a/b;Lcom/apicloud/a/c/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/c/e;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/b$1;->a(Lcom/apicloud/a/c/e;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/b$1;->a()Lcom/apicloud/a/c/e;

    move-result-object v0

    return-object v0
.end method
