.class public Lcom/apicloud/ijkplayer/UZIJKPlayerApplication;
.super Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;
.source "UZIJKPlayerApplication.java"


# static fields
.field public static final ACTIVITYPAUSE:Ljava/lang/String; = "com.apicloud.ijkplayer.pause"

.field public static final ACTIVITYRESUME:Ljava/lang/String; = "com.apicloud.ijkplayer.resume"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityFinish(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityFinish(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    return-void
.end method

.method public onActivityPause(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 1

    .line 23
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityPause(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    .line 24
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.apicloud.ijkplayer.pause"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V
    .locals 1

    .line 31
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityResume(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    .line 32
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.apicloud.ijkplayer.resume"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
