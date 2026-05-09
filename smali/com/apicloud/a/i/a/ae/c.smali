.class public Lcom/apicloud/a/i/a/ae/c;
.super Lcom/apicloud/a/i/a/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/a/h/b<",
        "Lcom/apicloud/a/i/a/ae/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/ae/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/h/b;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/ae/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ae/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ae/c;->a:Lcom/apicloud/a/i/a/ae/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ae/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ae/c;->a(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/c;->a:Lcom/apicloud/a/i/a/ae/b;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/widget/CompoundButton;)Lcom/apicloud/a/i/a/h/a;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ae/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ae/c;->a(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "switch"

    return-object v0
.end method

.method public synthetic b(Lcom/apicloud/a/c;)Landroid/widget/Button;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ae/c;->c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ae/a;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ae/a;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/ae/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ae/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ae/a;->b(Z)V

    return-object p1
.end method
