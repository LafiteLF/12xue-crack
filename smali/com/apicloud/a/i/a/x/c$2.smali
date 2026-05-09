.class Lcom/apicloud/a/i/a/x/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/x/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/x/c;->d(Lcom/apicloud/a/i/a/x/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/x/c;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/x/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/x/c$2;->a:Lcom/apicloud/a/i/a/x/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c$2;->a:Lcom/apicloud/a/i/a/x/c;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/x/c;->L()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c$2;->a:Lcom/apicloud/a/i/a/x/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/x/c;->q(I)V

    :goto_0
    return-void
.end method
