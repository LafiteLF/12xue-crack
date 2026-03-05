.class public final Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/NetworkSetting;
.super Ljava/lang/Object;
.source "NetworkSetting.java"


# static fields
.field private static sCheckSslTrusted:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCheckSslTrusted()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/NetworkSetting;->sCheckSslTrusted:Z

    return v0
.end method

.method public static setCheckSslTrusted(Z)V
    .locals 0

    .line 9
    sput-boolean p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/NetworkSetting;->sCheckSslTrusted:Z

    return-void
.end method
