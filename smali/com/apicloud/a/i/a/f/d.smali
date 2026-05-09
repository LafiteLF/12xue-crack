.class public Lcom/apicloud/a/i/a/f/d;
.super Lcom/apicloud/a/i/a/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/a/h/b<",
        "Landroid/widget/CheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/h/b;-><init>(Lcom/apicloud/a/d;)V

    const-string p1, "checkbox"

    iput-object p1, p0, Lcom/apicloud/a/i/a/f/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic b(Lcom/apicloud/a/c;)Landroid/widget/Button;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/f/d;->c(Lcom/apicloud/a/c;)Landroid/widget/CheckBox;

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

.method public c(Lcom/apicloud/a/c;)Landroid/widget/CheckBox;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/f/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/f/d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/f/a;-><init>(Landroid/content/Context;)V

    const v0, 0x800003

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/f/a;->setGravity(I)V

    new-instance v0, Lcom/apicloud/a/i/a/c/e;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/c/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/f/a;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-object p1
.end method
