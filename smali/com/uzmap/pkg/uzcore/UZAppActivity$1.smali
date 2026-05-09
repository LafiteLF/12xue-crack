.class Lcom/uzmap/pkg/uzcore/UZAppActivity$1;
.super Lcom/uzmap/pkg/uzcore/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/UZAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/UZAppActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/b/d;->h(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p3, Lcom/deepe/b;->O:Ljava/lang/String;

    move p1, v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/b/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->deviceBeRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p3, Lcom/deepe/b;->P:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->askPrivacyAgreed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;->b(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1, v1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$0(Lcom/uzmap/pkg/uzcore/UZAppActivity;ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V

    return-void
.end method
