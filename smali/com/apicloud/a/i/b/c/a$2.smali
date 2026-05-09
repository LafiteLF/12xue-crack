.class Lcom/apicloud/a/i/b/c/a$2;
.super Lcom/apicloud/a/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/b/c/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/b/e$a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/b/c/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/b/c/a;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/b/c/a$2;->a:Lcom/apicloud/a/i/b/c/a;

    invoke-direct {p0, p2}, Lcom/apicloud/a/b/e$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/a/g/c;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/c;->c()V

    :cond_0
    return-void
.end method
