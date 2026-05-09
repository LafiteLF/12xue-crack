.class Lcom/uzmap/pkg/openapi/SuperWebview$2;
.super Lcom/deepe/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/openapi/SuperWebview;->startupProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/openapi/SuperWebview;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/openapi/SuperWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview$2;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-direct {p0}, Lcom/deepe/b/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview$2;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public isFromNativeSDK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSmartUpdateFinish(ZLcom/deepe/b/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview$2;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-static {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->access$2(Lcom/uzmap/pkg/openapi/SuperWebview;)Lcom/uzmap/pkg/uzcore/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview$2;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-static {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->access$2(Lcom/uzmap/pkg/openapi/SuperWebview;)Lcom/uzmap/pkg/uzcore/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/g;->a(ZLcom/deepe/b/b/c;)V

    :cond_0
    return-void
.end method

.method public requestFinishApp(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestRebootApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
