.class Lcom/uzmap/pkg/uzcore/UZAppActivity$a;
.super Lcom/deepe/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/UZAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/UZAppActivity;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {p0}, Lcom/deepe/b/d$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Lcom/uzmap/pkg/uzcore/UZAppActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/UZAppActivity$a;)Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object v0
.end method

.method public isFromNativeSDK()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    return v0
.end method

.method public onSmartUpdateFinish(ZLcom/deepe/b/b/c;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity$a$1;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity$a;ZLcom/deepe/b/b/c;)V

    const-wide/16 p1, 0xbb8

    invoke-static {v0, p1, p2}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public requestFinishApp(Z)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->isFromNativeSDK()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$5(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$4(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public requestRebootApp()Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;->a:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->access$7(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
