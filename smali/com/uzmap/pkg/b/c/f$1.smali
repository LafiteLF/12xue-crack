.class Lcom/uzmap/pkg/b/c/f$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/c/f;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/c/f;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/c/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/f;->a(Lcom/uzmap/pkg/b/c/f;)I

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {v2}, Lcom/uzmap/pkg/b/c/f;->b(Lcom/uzmap/pkg/b/c/f;)I

    move-result v2

    iget-object v3, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {v3}, Lcom/uzmap/pkg/b/c/f;->c(Lcom/uzmap/pkg/b/c/f;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/uzmap/pkg/b/c/f;->a(Lcom/uzmap/pkg/b/c/f;I)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/f;->d(Lcom/uzmap/pkg/b/c/f;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/c/f;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {v2}, Lcom/uzmap/pkg/b/c/f;->b(Lcom/uzmap/pkg/b/c/f;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2710

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/c/f;->invalidate()V

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/f;->b(Lcom/uzmap/pkg/b/c/f;)I

    move-result p1

    iget-object v1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {v1}, Lcom/uzmap/pkg/b/c/f;->a(Lcom/uzmap/pkg/b/c/f;)I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f$1;->a:Lcom/uzmap/pkg/b/c/f;

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/f;->e(Lcom/uzmap/pkg/b/c/f;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x28

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/b/c/f$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
