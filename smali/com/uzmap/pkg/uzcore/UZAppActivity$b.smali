.class Lcom/uzmap/pkg/uzcore/UZAppActivity$b;
.super Lcom/uzmap/pkg/uzcore/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/UZAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

.field private b:Lcom/uzmap/pkg/uzcore/i/l;

.field private c:Lcom/uzmap/pkg/b/b/j;

.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/o;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->e:Z

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/UZAppActivity$b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->e:Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/UZAppActivity$b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public deliverConsoleMessage(Lcom/uzmap/pkg/uzcore/i/j;)V
    .locals 1

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/i/j;->a:Landroid/webkit/ConsoleMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/i/j;->a:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)V

    :cond_0
    return-void
.end method

.method public deliverHtml5Event(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->getEventListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/openapi/Html5EventListener;

    invoke-virtual {v1, p2}, Lcom/uzmap/pkg/openapi/Html5EventListener;->matching(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p3}, Lcom/uzmap/pkg/openapi/Html5EventListener;->onReceive(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deliverJsError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/b/b/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->c:Lcom/uzmap/pkg/b/b/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->c:Lcom/uzmap/pkg/b/b/j;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/b/b/j;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/b/b/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->c:Lcom/uzmap/pkg/b/b/j;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/b/b/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->c:Lcom/uzmap/pkg/b/b/j;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/j;->show()V

    :goto_0
    return-void
.end method

.method public deliverLog(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deliverPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V

    return-void
.end method

.method public deliverPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public deliverProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V

    return-void
.end method

.method public deliverReceivedError(Lcom/uzmap/pkg/uzcore/a;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onReceivedError(Lcom/uzmap/pkg/openapi/WebViewProvider;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFirstPageFinish()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$3(Lcom/uzmap/pkg/uzcore/UZAppActivity;ZLcom/uzmap/pkg/uzcore/c;)V

    return-void
.end method

.method public onPrivacyAgreed()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->doPrivacyAgreed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onReceivedPageTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onReceivedTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V

    return-void
.end method

.method public requestAppInImmerseState()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$11(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/i;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestAppidle(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$12(Lcom/uzmap/pkg/uzcore/UZAppActivity;ZI)V

    return-void
.end method

.method public requestConnectivityListen(Z)Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestFinishApp(Z)Z
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$5(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$4(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public requestForceFinishAppWidthAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$6(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestFullScreen(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/app/Activity;ZZ)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$8(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/h/t;->c(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public requestHandlderIntent(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$10(Lcom/uzmap/pkg/uzcore/UZAppActivity;Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final requestHideCustomView()Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->b:Lcom/uzmap/pkg/uzcore/i/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$8(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/t;->setVisibility(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->f:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->b:Lcom/uzmap/pkg/uzcore/i/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/i/l;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->b:Lcom/uzmap/pkg/uzcore/i/l;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->b:Lcom/uzmap/pkg/uzcore/i/l;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/i/l;->a()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->b:Lcom/uzmap/pkg/uzcore/i/l;

    const/4 v0, 0x1

    return v0
.end method

.method public requestKeepScreenOn(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/b/a/i;->c(Landroid/app/Activity;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public requestNativeAccess(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onHtml5AccessRequest(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result p1

    return p1
.end method

.method public requestOrientation(I)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$8(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/t;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public requestPageTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "App"

    return-object v0
.end method

.method public requestRebootApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$7(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestRemoveLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$3(Lcom/uzmap/pkg/uzcore/UZAppActivity;ZLcom/uzmap/pkg/uzcore/c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestShouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->shouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestShouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->shouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final requestShowCustomView(Lcom/uzmap/pkg/uzcore/i/l;I)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->b:Lcom/uzmap/pkg/uzcore/i/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->requestHideCustomView()Z

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->b:Lcom/uzmap/pkg/uzcore/i/l;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->f:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-static {}, Lcom/deepe/c/b/e;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$8(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/h/t;->setVisibility(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->d:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestShowLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z
    .locals 0

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/a;->b()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$9(Lcom/uzmap/pkg/uzcore/UZAppActivity;Z)V

    :cond_0
    return p2
.end method

.method public requestStartActivity(Landroid/content/Intent;IZ)Z
    .locals 0

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p3, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a(Z)V

    return p1
.end method

.method public requestVisualHeight(Z)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$8(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/t;->a(Z)I

    move-result p1

    return p1
.end method

.method public requestVisualWidth(Z)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$8(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/t;->b(Z)I

    move-result p1

    return p1
.end method
