.class public final enum Lcom/qiniu/android/dns/NetworkInfo$NetSatus;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetSatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qiniu/android/dns/NetworkInfo$NetSatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

.field public static final enum MOBILE:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

.field public static final enum NO_NETWORK:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

.field public static final enum WIFI:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    const/4 v1, 0x0

    const-string v2, "NO_NETWORK"

    invoke-direct {v0, v2, v1}, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->NO_NETWORK:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    new-instance v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2}, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->WIFI:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    new-instance v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    const/4 v3, 0x2

    const-string v4, "MOBILE"

    invoke-direct {v0, v4, v3}, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->MOBILE:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    .line 61
    sget-object v5, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->NO_NETWORK:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->WIFI:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->$VALUES:[Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qiniu/android/dns/NetworkInfo$NetSatus;
    .locals 1

    .line 61
    const-class v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    return-object p0
.end method

.method public static values()[Lcom/qiniu/android/dns/NetworkInfo$NetSatus;
    .locals 1

    .line 61
    sget-object v0, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->$VALUES:[Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    invoke-virtual {v0}, [Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    return-object v0
.end method
