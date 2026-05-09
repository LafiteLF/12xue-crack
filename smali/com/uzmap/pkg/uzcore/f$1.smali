.class Lcom/uzmap/pkg/uzcore/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/f;->a(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/f;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    iput p2, p0, Lcom/uzmap/pkg/uzcore/f$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f;->q()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/f$1;->b:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/f;->e(I)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    iget v3, p0, Lcom/uzmap/pkg/uzcore/f$1;->b:I

    invoke-static {v2, v1, v3}, Lcom/uzmap/pkg/uzcore/f;->a(Lcom/uzmap/pkg/uzcore/f;Ljava/lang/String;I)Lcom/deepe/c/i/i;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/f;->a(Lcom/uzmap/pkg/uzcore/f;)Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    move-result-object v2

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->success(Lorg/json/JSONObject;Z)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/f;->b(Lcom/uzmap/pkg/uzcore/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/f;->c(Lcom/uzmap/pkg/uzcore/f;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->H()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->getScrollY()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v3, v2}, Lcom/uzmap/pkg/uzcore/a;->scrollTo(II)V

    invoke-interface {v0, v3, v1}, Lcom/uzmap/pkg/uzcore/a;->scrollTo(II)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/f;->d(Lcom/uzmap/pkg/uzcore/f;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f$1;->a:Lcom/uzmap/pkg/uzcore/f;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f;->requestLayout()V

    :cond_2
    return-void
.end method
