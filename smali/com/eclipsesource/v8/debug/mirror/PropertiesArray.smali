.class public Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/Releasable;


# instance fields
.field private v8Array:Lcom/eclipsesource/v8/V8Array;


# direct methods
.method constructor <init>(Lcom/eclipsesource/v8/V8Array;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->twin()Lcom/eclipsesource/v8/V8Array;

    move-result-object p1

    iput-object p1, p0, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;->v8Array:Lcom/eclipsesource/v8/V8Array;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;->v8Array:Lcom/eclipsesource/v8/V8Array;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;->v8Array:Lcom/eclipsesource/v8/V8Array;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_0
    return-void
.end method

.method public getProperty(I)Lcom/eclipsesource/v8/debug/mirror/PropertyMirror;
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;->v8Array:Lcom/eclipsesource/v8/V8Array;

    invoke-virtual {v0, p1}, Lcom/eclipsesource/v8/V8Array;->getObject(I)Lcom/eclipsesource/v8/V8Object;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/PropertyMirror;

    invoke-direct {v0, p1}, Lcom/eclipsesource/v8/debug/mirror/PropertyMirror;-><init>(Lcom/eclipsesource/v8/V8Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Object;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Object;->close()V

    throw v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;->v8Array:Lcom/eclipsesource/v8/V8Array;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;->close()V

    return-void
.end method
