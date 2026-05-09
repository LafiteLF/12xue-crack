.class public abstract Lcom/deepe/sdk/PerformanceContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/sdk/PerformanceContext$HttpError;,
        Lcom/deepe/sdk/PerformanceContext$HttpTiming;,
        Lcom/deepe/sdk/PerformanceContext$ResourceTiming;,
        Lcom/deepe/sdk/PerformanceContext$TimingQuota;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract cls()D
.end method

.method public abstract fcp()J
.end method

.method public abstract getConsoleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/webkit/ConsoleMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpErrors()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$HttpError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpTimings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$HttpTiming;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJSTimings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourceTimings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$ResourceTiming;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimingQuota()Lcom/deepe/sdk/PerformanceContext$TimingQuota;
.end method

.method public abstract indexId()Ljava/lang/String;
.end method

.method public abstract inp()J
.end method

.method public abstract isReuseMode()Z
.end method

.method public abstract lcp()J
.end method

.method public abstract mark(Ljava/lang/String;)V
.end method

.method public abstract measure(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract rating()I
.end method

.method public abstract score()I
.end method

.method public abstract setTimingQuota(Lcom/deepe/sdk/PerformanceContext$TimingQuota;)V
.end method

.method public abstract si()J
.end method

.method public abstract tbt()J
.end method

.method public abstract timeOrigin()J
.end method

.method public abstract title()Ljava/lang/String;
.end method

.method public abstract total()J
.end method

.method public abstract traceDuration()J
.end method

.method public abstract traceEndTime()J
.end method

.method public abstract ttfb()J
.end method

.method public abstract url()Ljava/lang/String;
.end method
