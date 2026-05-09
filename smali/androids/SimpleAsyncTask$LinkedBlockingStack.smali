.class public Landroids/SimpleAsyncTask$LinkedBlockingStack;
.super Ljava/util/concurrent/LinkedBlockingDeque;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedBlockingStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedBlockingDeque<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static sPolicy:Landroids/SimpleAsyncTask$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-object v0, Landroids/SimpleAsyncTask$Policy;->FIFO:Landroids/SimpleAsyncTask$Policy;

    sput-object v0, Landroids/SimpleAsyncTask$LinkedBlockingStack;->sPolicy:Landroids/SimpleAsyncTask$Policy;

    return-void
.end method

.method private constructor <init>(Landroids/SimpleAsyncTask$Policy;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 58
    sput-object p1, Landroids/SimpleAsyncTask$LinkedBlockingStack;->sPolicy:Landroids/SimpleAsyncTask$Policy;

    return-void
.end method

.method synthetic constructor <init>(Landroids/SimpleAsyncTask$Policy;Landroids/SimpleAsyncTask$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroids/SimpleAsyncTask$LinkedBlockingStack;-><init>(Landroids/SimpleAsyncTask$Policy;)V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 63
    sget-object v0, Landroids/SimpleAsyncTask$5;->$SwitchMap$androids$SimpleAsyncTask$Policy:[I

    sget-object v1, Landroids/SimpleAsyncTask$LinkedBlockingStack;->sPolicy:Landroids/SimpleAsyncTask$Policy;

    invoke-virtual {v1}, Landroids/SimpleAsyncTask$Policy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Landroids/SimpleAsyncTask$LinkedBlockingStack;->offerLast(Ljava/lang/Object;)Z

    return v1

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Landroids/SimpleAsyncTask$LinkedBlockingStack;->offerFirst(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Landroids/SimpleAsyncTask$LinkedBlockingStack;->size()I

    move-result p1

    invoke-static {}, Landroids/SimpleAsyncTask;->access$000()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroids/SimpleAsyncTask$LinkedBlockingStack;->removeLast()Ljava/lang/Object;

    :cond_1
    return v1
.end method
