.class final Lcom/uzmap/pkg/openapi/ViewClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/ac;
.implements Lcom/uzmap/pkg/uzcore/e$a;


# instance fields
.field private a:Lcom/uzmap/pkg/openapi/APIListener;

.field private final b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Lcom/uzmap/pkg/uzcore/ag;

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/uzmap/pkg/openapi/ChromeListener;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->c:I

    iput v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->f:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    new-instance p1, Lcom/uzmap/pkg/uzcore/ag;

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/ag;-><init>(F)V

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->e:Lcom/uzmap/pkg/uzcore/ag;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/ac;)V

    return-void
.end method

.method private onScreenOrientationChanged()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->c:I

    iput v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->d:I

    return-void
.end method


# virtual methods
.method public deliverConsoleMessage(Lcom/uzmap/pkg/uzcore/i/j;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/i/j;->a:Landroid/webkit/ConsoleMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/i/j;->a:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/APIListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)V

    :cond_0
    return-void
.end method

.method public deliverHtml5Event(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object v0

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->getEventListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    if-eqz p1, :cond_3

    instance-of p1, p1, Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    instance-of v0, p3, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    move-object p1, p3

    check-cast p1, Lorg/json/JSONObject;

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    check-cast p3, Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {p3, p2, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->sendEventToHtml5(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/openapi/Html5EventListener;

    invoke-virtual {v1, p2}, Lcom/uzmap/pkg/openapi/Html5EventListener;->matching(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, p3}, Lcom/uzmap/pkg/openapi/Html5EventListener;->onReceive(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deliverJsError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deliverLog(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onEngineLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deliverPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/APIListener;->onPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->onPageFinished(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public deliverPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/openapi/APIListener;->onPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->onPageStarted(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public deliverProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/APIListener;->onProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onProgressChanged(I)V

    :cond_1
    return-void
.end method

.method public deliverReceivedError(Lcom/uzmap/pkg/uzcore/a;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uzmap/pkg/openapi/APIListener;->onReceivedError(Lcom/uzmap/pkg/openapi/WebViewProvider;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4}, Lcom/uzmap/pkg/openapi/ChromeListener;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/deepe/sdk/WebShare;->removePathHandler(Lcom/deepe/sdk/WebShare$PathHandler;)V

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/d;->c(Lcom/uzmap/pkg/uzcore/ac;)V

    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/ChromeListener;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onActivated(Z)V
    .locals 0

    return-void
.end method

.method public onApiAlert(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c;->d(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onApiConfirm(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c;->e(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onApiPrompt(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c;->f(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCloseApp(Lcom/deepe/sdk/ViewEntity;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->onCloseApp(Lcom/deepe/sdk/ViewEntity;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCloseWindow(Lcom/deepe/sdk/ViewEntity;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->onCloseWindow(Lcom/deepe/sdk/ViewEntity;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onCreateWindow(Lcom/deepe/sdk/ViewEntity;Lcom/deepe/sdk/OptResult;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onCreateWindow(Lcom/deepe/sdk/ViewEntity;Lcom/deepe/sdk/OptResult;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onDownloadComplete(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uzmap/pkg/openapi/ChromeListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFirstPageFinish()V
    .locals 0

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onHibernate(Z)V
    .locals 0

    return-void
.end method

.method public onHideCustomView()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/ChromeListener;->onHideCustomView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onHomeKeyPress(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/openapi/ChromeListener;->onJsAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->onLoadResource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNetworkChanged(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/SuperWebview;->onNetworkChanged(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPrivacyAgreed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedPageTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/APIListener;->onReceivedTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onReceivedTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRenderProcessGone(Lcom/uzmap/pkg/uzcore/a;Lcom/deepe/sdk/ProcessGoneDetail;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onRenderProcessGone(Lcom/uzmap/pkg/uzcore/a;Lcom/deepe/sdk/ProcessGoneDetail;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestFocus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->onRequestFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/openapi/ChromeListener;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onShowFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onShowFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestAppInForceground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestAppInImmerseState()Z
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public requestAppidle(ZI)V
    .locals 0

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
    .locals 1

    new-instance v0, Lcom/deepe/sdk/ViewEntity;

    invoke-direct {v0}, Lcom/deepe/sdk/ViewEntity;-><init>()V

    iput-boolean p1, v0, Lcom/deepe/sdk/ViewEntity;->silent:Z

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/openapi/ViewClient;->onCloseApp(Lcom/deepe/sdk/ViewEntity;)Z

    move-result p1

    return p1
.end method

.method public requestForceFinishAppWidthAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestFullScreen(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onRequestFullScreen(ZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestHandlderIntent(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestHideCustomView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestKeepScreenOn(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestNativeAccess(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/APIListener;->onHtml5AccessRequest(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result p1

    return p1
.end method

.method public requestOrientation(I)Z
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->onRequestOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/ViewClient;->onScreenOrientationChanged()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-ne v3, p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/ViewClient;->onScreenOrientationChanged()V

    return v1

    :cond_3
    return v2
.end method

.method public requestPageTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->i:Ljava/lang/String;

    return-object v0
.end method

.method public requestRebootApp(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestRemoveLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestShouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/openapi/APIListener;->shouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestShouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/APIListener;->shouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/uzmap/pkg/openapi/ChromeListener;->shouldOverrideUrlLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public requestShowCustomView(Lcom/uzmap/pkg/uzcore/i/l;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestShowLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestStartActivity(Landroid/content/Intent;IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p1, "ViewClient requestStartActivity but Context not a Activity"

    invoke-static {p1}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public requestVisualHeight(Z)I
    .locals 3

    iget v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->c:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->c:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v0

    :cond_1
    sget-boolean p1, Lcom/deepe/d/a;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SuperWebview@"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestVisualHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->f(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public requestVisualWidth(Z)I
    .locals 3

    iget v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->d:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v0

    :cond_1
    sget-boolean p1, Lcom/deepe/d/a;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SuperWebview@"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestVisualWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->f(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public requestVisualWinRect(Z)Lcom/uzmap/pkg/uzcore/ag;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->e:Lcom/uzmap/pkg/uzcore/ag;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/ag;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->e:Lcom/uzmap/pkg/uzcore/ag;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->e:Lcom/uzmap/pkg/uzcore/ag;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->e:Lcom/uzmap/pkg/uzcore/ag;

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    :goto_0
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/ag;->a(F)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->e:Lcom/uzmap/pkg/uzcore/ag;

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/ViewClient;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/ag;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->e:Lcom/uzmap/pkg/uzcore/ag;

    return-object p1
.end method

.method public setApiClient(Lcom/uzmap/pkg/openapi/APIListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->a:Lcom/uzmap/pkg/openapi/APIListener;

    return-void
.end method

.method public setChromeListener(Lcom/uzmap/pkg/openapi/ChromeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->g:Lcom/uzmap/pkg/openapi/ChromeListener;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/deepe/sdk/WebShare;->addPathHandler(Lcom/deepe/sdk/WebShare$PathHandler;)V

    :cond_0
    return-void
.end method

.method public setImmerseState(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public final setInnerMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->h:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/ViewClient;->i:Ljava/lang/String;

    return-void
.end method
