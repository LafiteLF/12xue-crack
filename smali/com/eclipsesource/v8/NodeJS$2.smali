.class Lcom/eclipsesource/v8/NodeJS$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eclipsesource/v8/NodeJS;->createScriptExecutionCallback(Ljava/io/File;)Lcom/eclipsesource/v8/V8Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eclipsesource/v8/NodeJS;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/eclipsesource/v8/NodeJS;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/eclipsesource/v8/NodeJS$2;->this$0:Lcom/eclipsesource/v8/NodeJS;

    iput-object p2, p0, Lcom/eclipsesource/v8/NodeJS$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Lcom/eclipsesource/v8/V8Array;

    iget-object p2, p0, Lcom/eclipsesource/v8/NodeJS$2;->this$0:Lcom/eclipsesource/v8/NodeJS;

    invoke-static {p2}, Lcom/eclipsesource/v8/NodeJS;->access$1(Lcom/eclipsesource/v8/NodeJS;)Lcom/eclipsesource/v8/V8;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/eclipsesource/v8/V8Array;-><init>(Lcom/eclipsesource/v8/V8;)V

    :try_start_0
    iget-object p2, p0, Lcom/eclipsesource/v8/NodeJS$2;->val$file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eclipsesource/v8/V8Array;->push(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Array;

    iget-object p2, p0, Lcom/eclipsesource/v8/NodeJS$2;->this$0:Lcom/eclipsesource/v8/NodeJS;

    invoke-static {p2}, Lcom/eclipsesource/v8/NodeJS;->access$2(Lcom/eclipsesource/v8/NodeJS;)Lcom/eclipsesource/v8/V8Function;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/eclipsesource/v8/V8Function;->call(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->close()V

    throw p2
.end method
