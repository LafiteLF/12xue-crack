.class public final Lco/senab/photoview/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static logger:Lco/senab/photoview/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lco/senab/photoview/log/LoggerDefault;

    invoke-direct {v0}, Lco/senab/photoview/log/LoggerDefault;-><init>()V

    sput-object v0, Lco/senab/photoview/log/LogManager;->logger:Lco/senab/photoview/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lco/senab/photoview/log/Logger;
    .locals 1

    .line 32
    sget-object v0, Lco/senab/photoview/log/LogManager;->logger:Lco/senab/photoview/log/Logger;

    return-object v0
.end method

.method public static setLogger(Lco/senab/photoview/log/Logger;)V
    .locals 0

    .line 28
    sput-object p0, Lco/senab/photoview/log/LogManager;->logger:Lco/senab/photoview/log/Logger;

    return-void
.end method
