.class Lcom/apicloud/a/i/a/d/a/i$1;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/a/i;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/i;

.field private b:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/i$1;->a:Lcom/apicloud/a/i/a/d/a/i;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/i$1;->b:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/i$1;->a:Lcom/apicloud/a/i/a/d/a/i;

    iget-object p1, p1, Lcom/apicloud/a/i/a/d/a/i;->c:Landroid/view/Display;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/i$1;->a:Lcom/apicloud/a/i/a/d/a/i;

    iget-object p1, p1, Lcom/apicloud/a/i/a/d/a/i;->c:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/i$1;->b:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/i$1;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/i$1;->a:Lcom/apicloud/a/i/a/d/a/i;

    sget-object v1, Lcom/apicloud/a/i/a/d/a/i;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/i;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
