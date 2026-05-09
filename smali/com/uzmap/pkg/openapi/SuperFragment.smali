.class public abstract Lcom/uzmap/pkg/openapi/SuperFragment;
.super Landroid/app/Fragment;


# instance fields
.field private a:Lcom/uzmap/pkg/openapi/SuperWebview;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final addHtml5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->addHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/openapi/SuperFragment;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/uzmap/pkg/openapi/SuperFragment;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/openapi/SuperWebview;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract getStartUrl()Ljava/lang/String;
.end method

.method public getSuperWebview()Lcom/uzmap/pkg/openapi/SuperWebview;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-nez p1, :cond_0

    new-instance p1, Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/openapi/SuperWebview;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-nez p1, :cond_0

    new-instance p1, Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/uzmap/pkg/openapi/SuperWebview;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperFragment;->getStartUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "file:///android_asset/widget/index.html"

    :cond_1
    iget-object p2, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->start(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->onResume()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public final removeAllHtml5EventListener()V
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeAllHtml5EventListener(Landroid/content/Context;)V

    return-void
.end method

.method public final removeHtml5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final sendEventToHtml5(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/uzmap/pkg/openapi/EventEntity;

    invoke-direct {v1, p1, p2}, Lcom/uzmap/pkg/openapi/EventEntity;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/openapi/SuperWebview;->sendEvent(Lcom/uzmap/pkg/openapi/EventEntity;)V

    :cond_0
    return-void
.end method

.method public setApiListener(Lcom/uzmap/pkg/openapi/APIListener;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->setApiListener(Lcom/uzmap/pkg/openapi/APIListener;)V

    :cond_0
    return-void
.end method

.method public windowBack()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperFragment;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->windowBack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
