.class public Lk12/education/camaramodule/util/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAudioManage(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const/4 v1, 0x3

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 19
    invoke-virtual {p0, v1, v0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/16 v1, 0x8

    .line 20
    invoke-virtual {p0, v1, v0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x5

    .line 21
    invoke-virtual {p0, v1, v0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x2

    .line 22
    invoke-virtual {p0, v1, v0, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
