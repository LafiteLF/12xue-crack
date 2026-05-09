.class Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaVoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eclipsesource/v8/debug/DebugHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BreakpointHandler"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$eclipsesource$v8$debug$DebugHandler$DebugEvent:[I


# instance fields
.field final synthetic this$0:Lcom/eclipsesource/v8/debug/DebugHandler;


# direct methods
.method static synthetic $SWITCH_TABLE$com$eclipsesource$v8$debug$DebugHandler$DebugEvent()[I
    .locals 3

    sget-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->$SWITCH_TABLE$com$eclipsesource$v8$debug$DebugHandler$DebugEvent:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->values()[Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->AfterCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->AsyncTaskEvent:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->BeforeCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Break:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->CompileError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Exception:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->NewFunction:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->PromiseError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Undefined:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->$SWITCH_TABLE$com$eclipsesource$v8$debug$DebugHandler$DebugEvent:[I

    return-object v0
.end method

.method private constructor <init>(Lcom/eclipsesource/v8/debug/DebugHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->this$0:Lcom/eclipsesource/v8/debug/DebugHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eclipsesource/v8/debug/DebugHandler;Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;-><init>(Lcom/eclipsesource/v8/debug/DebugHandler;)V

    return-void
.end method

.method private createDebugEvent(Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;Lcom/eclipsesource/v8/V8Object;)Lcom/eclipsesource/v8/debug/EventData;
    .locals 1

    invoke-static {}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->$SWITCH_TABLE$com$eclipsesource$v8$debug$DebugHandler$DebugEvent()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/eclipsesource/v8/debug/EventData;

    invoke-direct {p1, p2}, Lcom/eclipsesource/v8/debug/EventData;-><init>(Lcom/eclipsesource/v8/V8Object;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/eclipsesource/v8/debug/CompileEvent;

    invoke-direct {p1, p2}, Lcom/eclipsesource/v8/debug/CompileEvent;-><init>(Lcom/eclipsesource/v8/V8Object;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/eclipsesource/v8/debug/CompileEvent;

    invoke-direct {p1, p2}, Lcom/eclipsesource/v8/debug/CompileEvent;-><init>(Lcom/eclipsesource/v8/V8Object;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/eclipsesource/v8/debug/ExceptionEvent;

    invoke-direct {p1, p2}, Lcom/eclipsesource/v8/debug/ExceptionEvent;-><init>(Lcom/eclipsesource/v8/V8Object;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/eclipsesource/v8/debug/BreakEvent;

    invoke-direct {p1, p2}, Lcom/eclipsesource/v8/debug/BreakEvent;-><init>(Lcom/eclipsesource/v8/V8Object;)V

    return-object p1
.end method

.method private invokeHandler(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/debug/BreakHandler;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/eclipsesource/v8/V8Array;->getObject(I)Lcom/eclipsesource/v8/V8Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/eclipsesource/v8/V8Array;->getObject(I)Lcom/eclipsesource/v8/V8Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x3

    :try_start_2
    invoke-virtual {p1, v3}, Lcom/eclipsesource/v8/V8Array;->getObject(I)Lcom/eclipsesource/v8/V8Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v3, Lcom/eclipsesource/v8/debug/ExecutionState;

    invoke-direct {v3, v0}, Lcom/eclipsesource/v8/debug/ExecutionState;-><init>(Lcom/eclipsesource/v8/V8Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->values()[Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    move-result-object v4

    aget-object p2, v4, p2

    invoke-direct {p0, p2, v2}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->createDebugEvent(Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;Lcom/eclipsesource/v8/V8Object;)Lcom/eclipsesource/v8/debug/EventData;

    move-result-object v1

    invoke-interface {p3, p2, v3, v1, p1}, Lcom/eclipsesource/v8/debug/BreakHandler;->onBreak(Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;Lcom/eclipsesource/v8/debug/ExecutionState;Lcom/eclipsesource/v8/debug/EventData;Lcom/eclipsesource/v8/V8Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0, v0}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, v2}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, p1}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, v3}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, v1}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object p3, v1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p3, v1

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object p1, v1

    move-object p3, p1

    :goto_0
    move-object v3, p3

    goto :goto_1

    :catchall_3
    move-exception p2

    move-object p1, v1

    move-object p3, p1

    move-object v2, p3

    move-object v3, v2

    :goto_1
    move-object v1, v0

    goto :goto_2

    :catchall_4
    move-exception p2

    move-object p1, v1

    move-object p3, p1

    move-object v2, p3

    move-object v3, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, v2}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, p1}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, v3}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    invoke-direct {p0, p3}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->safeRelease(Lcom/eclipsesource/v8/Releasable;)V

    throw p2
.end method

.method private safeRelease(Lcom/eclipsesource/v8/Releasable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/eclipsesource/v8/Releasable;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->isUndefined()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getInteger(I)I

    move-result p1

    iget-object v0, p0, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->this$0:Lcom/eclipsesource/v8/debug/DebugHandler;

    invoke-static {v0}, Lcom/eclipsesource/v8/debug/DebugHandler;->access$0(Lcom/eclipsesource/v8/debug/DebugHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eclipsesource/v8/debug/BreakHandler;

    invoke-direct {p0, p2, p1, v1}, Lcom/eclipsesource/v8/debug/DebugHandler$BreakpointHandler;->invokeHandler(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/debug/BreakHandler;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
