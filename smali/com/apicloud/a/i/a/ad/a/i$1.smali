.class Lcom/apicloud/a/i/a/ad/a/i$1;
.super Lcom/deepe/c/b/d/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/ad/a/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ad/a/i;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ad/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/i$1;->a:Lcom/apicloud/a/i/a/ad/a/i;

    invoke-direct {p0}, Lcom/deepe/c/b/d/b$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/a/i$1;->a:Lcom/apicloud/a/i/a/ad/a/i;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/ad/a/i;->k()Lcom/deepe/c/b/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/deepe/c/b/d/a;->g()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/i$1;->a:Lcom/apicloud/a/i/a/ad/a/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/a/i;->k(Z)V

    :cond_1
    return-void
.end method
