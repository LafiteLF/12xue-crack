.class public Lcom/apicloud/a/i/a/w/a;
.super Lcom/apicloud/a/i/a/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/a/h/b<",
        "Lcom/apicloud/a/i/a/w/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/h/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "radio"

    return-object v0
.end method

.method public synthetic b(Lcom/apicloud/a/c;)Landroid/widget/Button;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/w/a;->c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/w/b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/w/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/w/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/w/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/w/b;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/w/b;->setGravity(I)V

    new-instance v0, Lcom/apicloud/a/i/a/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/c/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/w/b;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-object p1
.end method
