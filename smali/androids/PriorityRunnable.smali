.class public Landroids/PriorityRunnable;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Landroids/CompareRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroids/CompareRunnable<",
        "Landroids/PriorityRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPriority:Landroids/Priority;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroids/Priority;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Landroids/PriorityRunnable;-><init>(Landroids/Priority;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroids/Priority;Ljava/lang/Runnable;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 16
    sget-object p1, Landroids/Priority;->DEFAULT:Landroids/Priority;

    :cond_0
    iput-object p1, p0, Landroids/PriorityRunnable;->mPriority:Landroids/Priority;

    .line 17
    iput-object p2, p0, Landroids/PriorityRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public compareTo(Landroids/PriorityRunnable;)I
    .locals 2

    .line 22
    iget-object v0, p0, Landroids/PriorityRunnable;->mPriority:Landroids/Priority;

    invoke-virtual {v0}, Landroids/Priority;->ordinal()I

    move-result v0

    iget-object v1, p1, Landroids/PriorityRunnable;->mPriority:Landroids/Priority;

    invoke-virtual {v1}, Landroids/Priority;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_0
    iget-object v0, p0, Landroids/PriorityRunnable;->mPriority:Landroids/Priority;

    invoke-virtual {v0}, Landroids/Priority;->ordinal()I

    move-result v0

    iget-object p1, p1, Landroids/PriorityRunnable;->mPriority:Landroids/Priority;

    invoke-virtual {p1}, Landroids/Priority;->ordinal()I

    move-result p1

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Landroids/PriorityRunnable;

    invoke-virtual {p0, p1}, Landroids/PriorityRunnable;->compareTo(Landroids/PriorityRunnable;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 1

    .line 33
    iget-object v0, p0, Landroids/PriorityRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
