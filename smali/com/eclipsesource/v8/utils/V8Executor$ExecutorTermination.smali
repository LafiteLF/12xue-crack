.class Lcom/eclipsesource/v8/utils/V8Executor$ExecutorTermination;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaVoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eclipsesource/v8/utils/V8Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExecutorTermination"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eclipsesource/v8/utils/V8Executor;


# direct methods
.method constructor <init>(Lcom/eclipsesource/v8/utils/V8Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/eclipsesource/v8/utils/V8Executor$ExecutorTermination;->this$0:Lcom/eclipsesource/v8/utils/V8Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)V
    .locals 0

    iget-object p1, p0, Lcom/eclipsesource/v8/utils/V8Executor$ExecutorTermination;->this$0:Lcom/eclipsesource/v8/utils/V8Executor;

    invoke-static {p1}, Lcom/eclipsesource/v8/utils/V8Executor;->access$0(Lcom/eclipsesource/v8/utils/V8Executor;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "V8Thread Termination"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
