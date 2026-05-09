.class Lcom/apicloud/a/i/a/w/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/w/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/w/d;->a(Lcom/apicloud/a/i/a/w/c;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/w/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/w/d$1;->a:Lcom/apicloud/a/i/a/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/w/c;Landroid/widget/CompoundButton;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/d$1;->a:Lcom/apicloud/a/i/a/w/d;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/w/d;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f040005

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    new-instance v1, Lcom/apicloud/a/i/c/d;

    invoke-direct {v1}, Lcom/apicloud/a/i/c/d;-><init>()V

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    :cond_1
    const-string p1, "change"

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
