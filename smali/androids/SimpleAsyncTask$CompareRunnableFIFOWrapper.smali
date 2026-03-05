.class Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"

# interfaces
.implements Landroids/CompareRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareRunnableFIFOWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroids/CompareRunnable<",
        "Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static mCount:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mRunnable:Landroids/CompareRunnable;

.field private final mSecondPriority:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>(Landroids/CompareRunnable;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Landroids/CompareRunnable;

    .line 110
    sget-object p1, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mSecondPriority:J

    return-void
.end method

.method synthetic constructor <init>(Landroids/CompareRunnable;Landroids/SimpleAsyncTask$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;-><init>(Landroids/CompareRunnable;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;)I
    .locals 4

    .line 128
    iget-object v0, p0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Landroids/CompareRunnable;

    invoke-virtual {p1}, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->getRunnable()Landroids/CompareRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroids/CompareRunnable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-wide v0, p0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mSecondPriority:J

    invoke-virtual {p1}, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->getSecondPriority()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 102
    check-cast p1, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;

    invoke-virtual {p0, p1}, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->compareTo(Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;)I

    move-result p1

    return p1
.end method

.method public getRunnable()Landroids/CompareRunnable;
    .locals 1

    .line 114
    iget-object v0, p0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Landroids/CompareRunnable;

    return-object v0
.end method

.method public getSecondPriority()J
    .locals 2

    .line 118
    iget-wide v0, p0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mSecondPriority:J

    return-wide v0
.end method

.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Landroids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Landroids/CompareRunnable;

    invoke-interface {v0}, Landroids/CompareRunnable;->run()V

    return-void
.end method
