.class Lcom/uzmap/pkg/uzcore/UZAppActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/h/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/UZAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->b:Z

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->b:Z

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "startUrl"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/x;->v(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$13(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/b/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/b/e;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$13(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/b/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d;->a(Lcom/uzmap/pkg/uzcore/b/e;)V

    return-void
.end method
