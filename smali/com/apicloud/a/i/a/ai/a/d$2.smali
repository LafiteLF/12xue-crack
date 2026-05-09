.class Lcom/apicloud/a/i/a/ai/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ai/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$2;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$2;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->c(Lcom/apicloud/a/i/a/ai/a/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$2;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
