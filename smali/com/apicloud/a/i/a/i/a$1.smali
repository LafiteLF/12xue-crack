.class Lcom/apicloud/a/i/a/i/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/i/a;->a(Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/i/a;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/i/a;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/a$1;->a:Lcom/apicloud/a/i/a/i/a;

    iput-object p2, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    iput p3, p0, Lcom/apicloud/a/i/a/i/a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/apicloud/a/i/a/i/a;->a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/apicloud/a/i/a/i/a$1;->a:Lcom/apicloud/a/i/a/i/a;

    invoke-static {v2}, Lcom/apicloud/a/i/a/i/a;->a(Lcom/apicloud/a/i/a/i/a;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/a/i/a/i/a$a;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/apicloud/a/i/a/i/a$a;->c:Landroid/view/ViewGroup;

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/apicloud/a/i/a/i/a$1;->c:I

    invoke-virtual {v3, v0, v1}, Lcom/apicloud/a/i/a/i/a$a;->a(Landroid/graphics/Rect;I)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/apicloud/a/i/a/i/a$a;->a()V

    iget-object v3, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v3, Lcom/apicloud/a/i/a/i/e;

    iget-object v4, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    iget v5, p0, Lcom/apicloud/a/i/a/i/a$1;->c:I

    invoke-direct {v3, v0, v4, v5}, Lcom/apicloud/a/i/a/i/e;-><init>(Landroid/graphics/Rect;Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    new-instance v0, Lcom/apicloud/a/i/a/i/a$a;

    iget-object v4, p0, Lcom/apicloud/a/i/a/i/a$1;->a:Lcom/apicloud/a/i/a/i/a;

    iget-object v5, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/apicloud/a/i/a/i/a$a;-><init>(Lcom/apicloud/a/i/a/i/a;Landroid/view/View;Landroid/view/ViewGroup;Lcom/apicloud/a/i/a/i/e;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/i/a$1;->b:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
