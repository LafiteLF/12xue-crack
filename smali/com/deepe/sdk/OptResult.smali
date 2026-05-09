.class public Lcom/deepe/sdk/OptResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/sdk/OptResult$ResultReceiver;
    }
.end annotation


# instance fields
.field private final mReceiver:Lcom/deepe/sdk/OptResult$ResultReceiver;

.field private mResult:Z


# direct methods
.method public constructor <init>(Lcom/deepe/sdk/OptResult$ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/sdk/OptResult;->mReceiver:Lcom/deepe/sdk/OptResult$ResultReceiver;

    return-void
.end method

.method private final wakeUp()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/OptResult;->mReceiver:Lcom/deepe/sdk/OptResult$ResultReceiver;

    invoke-interface {v0, p0}, Lcom/deepe/sdk/OptResult$ResultReceiver;->onComplete(Lcom/deepe/sdk/OptResult;)V

    return-void
.end method


# virtual methods
.method public final confirm()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/sdk/OptResult;->mResult:Z

    invoke-direct {p0}, Lcom/deepe/sdk/OptResult;->wakeUp()V

    return-void
.end method

.method public final getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/sdk/OptResult;->mResult:Z

    return v0
.end method
