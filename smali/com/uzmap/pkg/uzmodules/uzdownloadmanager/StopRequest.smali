.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
.super Ljava/lang/Throwable;
.source "StopRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x40e74f1dd8c2eae2L


# instance fields
.field public final mFinalStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->mFinalStatus:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .line 24
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public static throwUnhandledHttpError(ILjava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled HTTP response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x190

    if-lt p0, v0, :cond_1

    const/16 v1, 0x258

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v1, 0x12c

    if-lt p0, v1, :cond_2

    if-ge p0, v0, :cond_2

    .line 43
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v0, 0x1ed

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p0

    .line 45
    :cond_2
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v0, 0x1ee

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFinalStatus()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->mFinalStatus:I

    return v0
.end method
