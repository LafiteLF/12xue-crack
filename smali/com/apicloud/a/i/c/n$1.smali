.class Lcom/apicloud/a/i/c/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/c/n;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/c/n;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:I

.field private final synthetic f:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/c/n;Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/c/n$1;->a:Lcom/apicloud/a/i/c/n;

    iput-object p2, p0, Lcom/apicloud/a/i/c/n$1;->b:Landroid/view/View;

    iput p3, p0, Lcom/apicloud/a/i/c/n$1;->c:I

    iput p4, p0, Lcom/apicloud/a/i/c/n$1;->d:I

    iput p5, p0, Lcom/apicloud/a/i/c/n$1;->e:I

    iput p6, p0, Lcom/apicloud/a/i/c/n$1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    iget-object v0, p0, Lcom/apicloud/a/i/c/n$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/c/n$1;->a:Lcom/apicloud/a/i/c/n;

    iget-object v3, p0, Lcom/apicloud/a/i/c/n$1;->b:Landroid/view/View;

    iget v0, p0, Lcom/apicloud/a/i/c/n$1;->c:I

    int-to-float v4, v0

    iget v0, p0, Lcom/apicloud/a/i/c/n$1;->d:I

    int-to-float v5, v0

    iget v0, p0, Lcom/apicloud/a/i/c/n$1;->e:I

    int-to-float v6, v0

    iget v0, p0, Lcom/apicloud/a/i/c/n$1;->f:I

    int-to-float v7, v0

    invoke-static/range {v2 .. v7}, Lcom/apicloud/a/i/c/n;->a(Lcom/apicloud/a/i/c/n;Landroid/view/View;FFFF)V

    const/4 v0, 0x1

    return v0
.end method
