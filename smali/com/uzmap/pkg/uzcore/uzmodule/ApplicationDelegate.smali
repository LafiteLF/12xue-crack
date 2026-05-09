.class public abstract Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onActivityCreate(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 0

    return-void
.end method

.method public onActivityFinish(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onActivityFinish(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 0

    return-void
.end method

.method public onActivityPause(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onActivityPause(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 0

    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 0

    return-void
.end method

.method public onApplicationCreate(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onApplicationCreate(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onApplicationCreate(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public supportMulti()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
