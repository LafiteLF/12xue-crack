.class public Lcom/apicloud/a/c/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/eclipsesource/v8/V8;

.field private b:Lcom/apicloud/a/c/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/apicloud/a/c/x;
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/x;

    invoke-direct {v0}, Lcom/apicloud/a/c/x;-><init>()V

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/x;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object p0

    const-string v1, "create v8 runtime"

    invoke-virtual {p0, v1}, Lcom/deepe/d/g;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Lcom/eclipsesource/v8/V8;)V
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/V8Function;

    new-instance v1, Lcom/apicloud/a/c/x$1;

    invoke-direct {v1, p0}, Lcom/apicloud/a/c/x$1;-><init>(Lcom/apicloud/a/c/x;)V

    invoke-direct {v0, p1, v1}, Lcom/eclipsesource/v8/V8Function;-><init>(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/JavaCallback;)V

    const-string v1, "window"

    invoke-virtual {p1, v1, v0}, Lcom/eclipsesource/v8/V8;->add(Ljava/lang/String;Lcom/eclipsesource/v8/V8Value;)Lcom/eclipsesource/v8/V8Object;

    const-string v1, "prototype"

    invoke-virtual {v0, v1}, Lcom/eclipsesource/v8/V8Function;->getObject(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V

    invoke-virtual {p1, v1}, Lcom/eclipsesource/v8/V8;->setPrototype(Lcom/eclipsesource/v8/V8Object;)Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Object;->close()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/eclipsesource/v8/V8;->createV8Runtime(Ljava/lang/String;)Lcom/eclipsesource/v8/V8;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-static {}, Lcom/apicloud/a/c/w;->a()Lcom/apicloud/a/c/w;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/c/x;->b:Lcom/apicloud/a/c/w;

    iget-object p1, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-direct {p0, p1}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/apicloud/a/c/w;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/x;->b:Lcom/apicloud/a/c/w;

    return-object v0
.end method

.method public a(I)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/V8ArrayBuffer;

    iget-object v1, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-direct {v0, v1, p1}, Lcom/eclipsesource/v8/V8ArrayBuffer;-><init>(Lcom/eclipsesource/v8/V8;I)V

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/V8ArrayBuffer;

    iget-object v1, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-direct {v0, v1, p1}, Lcom/eclipsesource/v8/V8ArrayBuffer;-><init>(Lcom/eclipsesource/v8/V8;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public a(Lcom/eclipsesource/v8/JavaCallback;)Lcom/eclipsesource/v8/V8Function;
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/V8Function;

    iget-object v1, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-direct {v0, v1, p1}, Lcom/eclipsesource/v8/V8Function;-><init>(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/JavaCallback;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-static {v0, p1}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->getV8Result(Lcom/eclipsesource/v8/V8;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "$_getTemplateData"

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/c/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    instance-of p3, p1, Lcom/eclipsesource/v8/V8Value;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/eclipsesource/v8/V8Value;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Value;->close()V

    :cond_1
    return-object p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eclipsesource/v8/V8;->executeScript(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p5}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p2, v2

    invoke-virtual {p0, v0, v3}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-virtual {p2, p1, v0}, Lcom/eclipsesource/v8/V8;->executeFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    return-object p1
.end method

.method public a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-static {v0, p1, p2}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->pushValue(Lcom/eclipsesource/v8/V8;Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/eclipsesource/v8/V8;->add(Ljava/lang/String;Z)Lcom/eclipsesource/v8/V8Object;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/eclipsesource/v8/V8;->add(Ljava/lang/String;I)Lcom/eclipsesource/v8/V8Object;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/eclipsesource/v8/V8;->add(Ljava/lang/String;D)Lcom/eclipsesource/v8/V8Object;

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/eclipsesource/v8/V8;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/eclipsesource/v8/V8Value;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    check-cast p2, Lcom/eclipsesource/v8/V8Value;

    invoke-virtual {v0, p1, p2}, Lcom/eclipsesource/v8/V8;->add(Ljava/lang/String;Lcom/eclipsesource/v8/V8Value;)Lcom/eclipsesource/v8/V8Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-virtual {v0, p1}, Lcom/eclipsesource/v8/V8;->release(Z)V

    iget-object p1, p0, Lcom/apicloud/a/c/x;->b:Lcom/apicloud/a/c/w;

    invoke-virtual {p1}, Lcom/apicloud/a/c/w;->d()V

    return-void
.end method

.method public b()Lcom/eclipsesource/v8/V8Object;
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/V8Object;

    iget-object v1, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-direct {v0, v1}, Lcom/eclipsesource/v8/V8Object;-><init>(Lcom/eclipsesource/v8/V8;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/eclipsesource/v8/V8Array;
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/V8Array;

    iget-object v1, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-direct {v0, v1}, Lcom/eclipsesource/v8/V8Array;-><init>(Lcom/eclipsesource/v8/V8;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/x;->a:Lcom/eclipsesource/v8/V8;

    invoke-virtual {v0, p1}, Lcom/eclipsesource/v8/V8;->getObject(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    move-result-object p1

    return-object p1
.end method
