.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isPortrait()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;->isPortrait()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
