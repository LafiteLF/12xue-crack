.class public interface abstract Lcom/uzmap/pkg/uzcore/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract deliverConsoleMessage(Lcom/uzmap/pkg/uzcore/i/j;)V
.end method

.method public abstract deliverHtml5Event(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract deliverJsError(Ljava/lang/String;)V
.end method

.method public abstract deliverLog(ILjava/lang/String;)V
.end method

.method public abstract deliverPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
.end method

.method public abstract deliverPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract deliverProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V
.end method

.method public abstract deliverReceivedError(Lcom/uzmap/pkg/uzcore/a;ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public abstract onApiAlert(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
.end method

.method public abstract onApiConfirm(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
.end method

.method public abstract onApiPrompt(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
.end method

.method public abstract onCloseWindow(Lcom/deepe/sdk/ViewEntity;)Z
.end method

.method public abstract onCreateWindow(Lcom/deepe/sdk/ViewEntity;Lcom/deepe/sdk/OptResult;)Z
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract onFirstPageFinish()V
.end method

.method public abstract onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z
.end method

.method public abstract onHideCustomView()Z
.end method

.method public abstract onJsAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end method

.method public abstract onLoadResource(Ljava/lang/String;)V
.end method

.method public abstract onPrivacyAgreed()Z
.end method

.method public abstract onReceivedPageTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
.end method

.method public abstract onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
.end method

.method public abstract onRenderProcessGone(Lcom/uzmap/pkg/uzcore/a;Lcom/deepe/sdk/ProcessGoneDetail;)Z
.end method

.method public abstract onRequestFocus(Landroid/view/View;)V
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

.method public abstract requestAppInImmerseState()Z
.end method

.method public abstract requestAppidle(ZI)V
.end method

.method public abstract requestConnectivityListen(Z)Z
.end method

.method public abstract requestFinishApp(Z)Z
.end method

.method public abstract requestForceFinishAppWidthAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract requestFullScreen(ZZ)Z
.end method

.method public abstract requestHandlderIntent(Ljava/lang/String;)Z
.end method

.method public abstract requestHideCustomView()Z
.end method

.method public abstract requestKeepScreenOn(Z)Z
.end method

.method public abstract requestNativeAccess(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
.end method

.method public abstract requestOrientation(I)Z
.end method

.method public abstract requestPageTitle()Ljava/lang/String;
.end method

.method public abstract requestRebootApp(Ljava/lang/String;)Z
.end method

.method public abstract requestRemoveLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z
.end method

.method public abstract requestShouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract requestShouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z
.end method

.method public abstract requestShowCustomView(Lcom/uzmap/pkg/uzcore/i/l;I)Z
.end method

.method public abstract requestShowLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z
.end method

.method public abstract requestStartActivity(Landroid/content/Intent;IZ)Z
.end method

.method public abstract requestVisualHeight(Z)I
.end method

.method public abstract requestVisualWidth(Z)I
.end method
