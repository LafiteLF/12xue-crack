.class public Lcom/eclipsesource/v8/utils/ArrayBuffer;
.super Ljava/lang/Object;


# instance fields
.field private arrayBuffer:Lcom/eclipsesource/v8/V8ArrayBuffer;


# direct methods
.method public constructor <init>(Lcom/eclipsesource/v8/V8;Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-direct {v0, p1, p2}, Lcom/eclipsesource/v8/V8ArrayBuffer;-><init>(Lcom/eclipsesource/v8/V8;Ljava/nio/ByteBuffer;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->twin()Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8ArrayBuffer;->setWeak()Lcom/eclipsesource/v8/V8Value;

    move-result-object p1

    check-cast p1, Lcom/eclipsesource/v8/V8ArrayBuffer;

    iput-object p1, p0, Lcom/eclipsesource/v8/utils/ArrayBuffer;->arrayBuffer:Lcom/eclipsesource/v8/V8ArrayBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V

    throw p1
.end method

.method constructor <init>(Lcom/eclipsesource/v8/V8ArrayBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8ArrayBuffer;->twin()Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8ArrayBuffer;->setWeak()Lcom/eclipsesource/v8/V8Value;

    move-result-object p1

    check-cast p1, Lcom/eclipsesource/v8/V8ArrayBuffer;

    iput-object p1, p0, Lcom/eclipsesource/v8/utils/ArrayBuffer;->arrayBuffer:Lcom/eclipsesource/v8/V8ArrayBuffer;

    return-void
.end method


# virtual methods
.method public getV8ArrayBuffer()Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/utils/ArrayBuffer;->arrayBuffer:Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->twin()Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/utils/ArrayBuffer;->arrayBuffer:Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->isReleased()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
