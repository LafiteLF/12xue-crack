.class Lcom/apicloud/a/i/a/o/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/a/f$a;


# instance fields
.field protected final a:Landroid/widget/EditText;

.field private b:Lcom/apicloud/a/c/l;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/apicloud/a/c/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/d;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/apicloud/a/i/a/o/d;->b:Lcom/apicloud/a/c/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/d;->b:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/d;->a:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/apicloud/a/i/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "height"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x15e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "duration"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/a/o/d;->b:Lcom/apicloud/a/c/l;

    const-string v0, "keyboardheightchange"

    invoke-virtual {p2, v0, p1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
