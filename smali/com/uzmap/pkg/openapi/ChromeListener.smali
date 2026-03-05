.class public abstract Lcom/uzmap/pkg/openapi/ChromeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/sdk/WebShare$PathHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public handle(Lcom/deepe/sdk/RESRequest;)Lcom/deepe/sdk/RESResponse;
    .locals 1

    invoke-virtual {p1}, Lcom/deepe/sdk/RESRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/openapi/ChromeListener;->shouldInterceptRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/sdk/RESResponse;

    move-result-object p1

    return-object p1
.end method

.method public onAcwLog(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCloseApp(Lcom/deepe/sdk/ViewEntity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCloseWindow(Lcom/deepe/sdk/ViewEntity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onCreateWindow(Lcom/deepe/sdk/ViewEntity;Lcom/deepe/sdk/OptResult;)Z
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public final onEngineLog(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/openapi/ChromeListener;->onAcwLog(ILjava/lang/String;)V

    return-void
.end method

.method public abstract onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z
.end method

.method public abstract onHideCustomView()Z
.end method

.method public abstract onJsAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end method

.method public abstract onLoadResource(Ljava/lang/String;)V
.end method

.method public abstract onPageFinished(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onProgressChanged(I)V
.end method

.method public abstract onReceivedError(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
.end method

.method public abstract onReceivedTitle(Ljava/lang/String;)V
.end method

.method public onRenderProcessGone(Lcom/uzmap/pkg/uzcore/a;Lcom/deepe/sdk/ProcessGoneDetail;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onRequestFocus(Landroid/view/View;)V
.end method

.method public onRequestFullScreen(ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onRequestOrientation(I)Z
.end method

.method public abstract onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)Z
.end method

.method public abstract onShowFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
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
.end method

.method public abstract shouldInterceptRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/sdk/RESResponse;
.end method

.method public abstract shouldOverrideUrlLoading(Ljava/lang/String;Ljava/lang/String;)Z
.end method
