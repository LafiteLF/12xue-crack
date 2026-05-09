.class public Lcom/eclipsesource/v8/inspector/V8Inspector;
.super Ljava/lang/Object;


# instance fields
.field private debuggerConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eclipsesource/v8/inspector/DebuggerConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private inspectorPtr:J

.field private runtime:Lcom/eclipsesource/v8/V8;

.field private waitingForConnection:Z


# direct methods
.method protected constructor <init>(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/inspector/V8InspectorDelegate;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->inspectorPtr:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->waitingForConnection:Z

    iput-object p1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->runtime:Lcom/eclipsesource/v8/V8;

    invoke-virtual {p1, p2, p3}, Lcom/eclipsesource/v8/V8;->createInspector(Lcom/eclipsesource/v8/inspector/V8InspectorDelegate;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->inspectorPtr:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->debuggerConnectionListeners:Ljava/util/List;

    return-void
.end method

.method public static createV8Inspector(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/inspector/V8InspectorDelegate;)Lcom/eclipsesource/v8/inspector/V8Inspector;
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/inspector/V8Inspector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/eclipsesource/v8/inspector/V8Inspector;-><init>(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/inspector/V8InspectorDelegate;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createV8Inspector(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/inspector/V8InspectorDelegate;Ljava/lang/String;)Lcom/eclipsesource/v8/inspector/V8Inspector;
    .locals 1

    new-instance v0, Lcom/eclipsesource/v8/inspector/V8Inspector;

    invoke-direct {v0, p0, p1, p2}, Lcom/eclipsesource/v8/inspector/V8Inspector;-><init>(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/inspector/V8InspectorDelegate;Ljava/lang/String;)V

    return-object v0
.end method

.method private verifyDebuggerConnection(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->runtime:Lcom/eclipsesource/v8/V8;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSON.parse(JSON.stringify("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/eclipsesource/v8/V8;->executeObjectScript(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    const-string p1, "method"

    invoke-virtual {v0, p1}, Lcom/eclipsesource/v8/V8Object;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Runtime.runIfWaitingForDebugger"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->waitingForConnection:Z

    iget-object p1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->runtime:Lcom/eclipsesource/v8/V8;

    iget-wide v1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->inspectorPtr:J

    const-string v3, ""

    invoke-virtual {p1, v1, v2, v3}, Lcom/eclipsesource/v8/V8;->schedulePauseOnNextStatement(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->debuggerConnectionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eclipsesource/v8/inspector/DebuggerConnectionListener;

    invoke-interface {v1}, Lcom/eclipsesource/v8/inspector/DebuggerConnectionListener;->onDebuggerConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Object;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Object;->close()V

    :cond_3
    throw p1
.end method


# virtual methods
.method public addDebuggerConnectionListener(Lcom/eclipsesource/v8/inspector/DebuggerConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->debuggerConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchProtocolMessage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->runtime:Lcom/eclipsesource/v8/V8;

    iget-wide v1, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->inspectorPtr:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/eclipsesource/v8/V8;->dispatchProtocolMessage(JLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->waitingForConnection:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/eclipsesource/v8/inspector/V8Inspector;->verifyDebuggerConnection(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeDebuggerConnectionListener(Lcom/eclipsesource/v8/inspector/DebuggerConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/inspector/V8Inspector;->debuggerConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
