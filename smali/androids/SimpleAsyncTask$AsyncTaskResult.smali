.class Landroids/SimpleAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Landroids/SimpleAsyncTask;


# direct methods
.method varargs constructor <init>(Landroids/SimpleAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroids/SimpleAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Landroids/SimpleAsyncTask$AsyncTaskResult;->mTask:Landroids/SimpleAsyncTask;

    .line 383
    iput-object p2, p0, Landroids/SimpleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
