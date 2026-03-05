.class public abstract Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;
.implements Lcom/uzmap/pkg/uzcore/uzmodule/a;
.implements Lcom/uzmap/pkg/uzcore/x;


# instance fields
.field private _mContext:Landroid/content/Context;

.field protected mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mEngine:Lcom/uzmap/pkg/uzcore/e;

.field private mIntentResult:Z

.field private mModuleName:Ljava/lang/String;

.field protected mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/UZWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->initPlatform(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final activity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->_mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final closeWidgetWidthInfo(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$5;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$5;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;Lcom/uzmap/pkg/uzcore/uzmodule/b/u;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->_mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final destroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mIntentResult:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, p0, v2, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a;IZ)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mIntentResult:Z

    return-void
.end method

.method public final execScript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->execScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final execScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZWebView;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final execScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->s()Lcom/uzmap/pkg/uzcore/d/i;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-direct {v1, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    iput-object p1, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->a:Ljava/lang/String;

    iput-object p2, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->b:Ljava/lang/String;

    iput-object p3, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/d/h;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V

    return-void
.end method

.method public final finishApplication()V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$1;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getContext()Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object v0
.end method

.method public final getCurView()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    return-object v0
.end method

.method public getFeatureValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->B()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/b/d;->d(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getFrameName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/uzmap/pkg/uzcore/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->l()Lcom/uzmap/pkg/uzcore/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getWebviewId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-static {v0}, Lcom/deepe/sdk/WebShare;->makeWebviewTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->B()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getWindowName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->s()Lcom/uzmap/pkg/uzcore/d/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public inImmerseState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->A()Z

    move-result v0

    return v0
.end method

.method protected final initPlatform(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->_mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->_mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/uzmap/pkg/uzcore/UZAppActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/uzmap/pkg/uzcore/UZAppActivity;

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    :cond_1
    return-void
.end method

.method public final insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    return-void
.end method

.method public final insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;ZZ)V
    .locals 8

    new-instance v7, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$2;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    return-void
.end method

.method public isForbiddenScheme(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->B()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/b/d;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final logTo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/e;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final makeAbsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final makeRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/al;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/al;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->makeAbsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onClean()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final openWidgetById(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, v1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->openWidgetWidthInfo(Lcom/uzmap/pkg/uzcore/b/d;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected final openWidgetWidthInfo(Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$4;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$4;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;Lcom/uzmap/pkg/uzcore/b/d;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeViewFromCurWindow(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$3;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule$3;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->runOnUiThreadDelay(Ljava/lang/Runnable;I)Z

    move-result p1

    return p1
.end method

.method public final runOnUiThreadDelay(Ljava/lang/Runnable;I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2}, Lcom/uzmap/pkg/uzcore/UZWebView;->a(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final sendEventToHtml5(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final setIntentResult(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a;IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mIntentResult:Z

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mModuleName:Ljava/lang/String;

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/uzmap/pkg/uzcore/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;IZ)Z

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivityForResult(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;I)V

    return-void
.end method

.method public final startActivityForResult(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;IZ)Z

    return-void
.end method

.method public final startActivityForResult(Lcom/uzmap/pkg/uzcore/uzmodule/UZActivityResult;Landroid/content/Intent;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivityForResult(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;I)V

    return-void
.end method

.method protected valid()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
