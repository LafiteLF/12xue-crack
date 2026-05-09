.class public Lcom/uzmap/pkg/openapi/ExternalActivity;
.super Lcom/uzmap/pkg/uzcore/UZAppActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final addHtml5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/openapi/ExternalActivity;->addH5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    :cond_0
    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/openapi/ExternalActivity;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/uzmap/pkg/openapi/ExternalActivity;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/openapi/ExternalActivity;->evaluateScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final isFromNativeSDK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConsoleMessage(Landroid/webkit/ConsoleMessage;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onHtml5AccessRequest(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V
    .locals 0

    return-void
.end method

.method protected onReceivedError(Lcom/uzmap/pkg/openapi/WebViewProvider;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onReceivedTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSmartUpdateFinish(Lcom/uzmap/pkg/openapi/IncPackage;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final removeAllHtml5EventListener()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/openapi/ExternalActivity;->removeH5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final removeHtml5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/openapi/ExternalActivity;->removeH5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final sendEventToHtml5(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/openapi/ExternalActivity;->sendEventToH5(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected shouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
