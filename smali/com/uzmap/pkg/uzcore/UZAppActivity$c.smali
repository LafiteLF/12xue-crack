.class Lcom/uzmap/pkg/uzcore/UZAppActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/UZAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/UZAppActivity;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Lcom/uzmap/pkg/uzcore/UZAppActivity$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$1(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$1(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onHomeKeyPress(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onNetworkChanged(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$1(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$1(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
