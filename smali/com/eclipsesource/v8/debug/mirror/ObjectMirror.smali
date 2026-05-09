.class public Lcom/eclipsesource/v8/debug/mirror/ObjectMirror;
.super Lcom/eclipsesource/v8/debug/mirror/ValueMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eclipsesource/v8/debug/mirror/ObjectMirror$PropertyKind;
    }
.end annotation


# static fields
.field private static final PROPERTIES:Ljava/lang/String; = "properties"

.field private static final PROPERTY_NAMES:Ljava/lang/String; = "propertyNames"


# direct methods
.method constructor <init>(Lcom/eclipsesource/v8/V8Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/eclipsesource/v8/debug/mirror/ValueMirror;-><init>(Lcom/eclipsesource/v8/V8Object;)V

    return-void
.end method


# virtual methods
.method public getProperties(Lcom/eclipsesource/v8/debug/mirror/ObjectMirror$PropertyKind;I)Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;
    .locals 2

    new-instance v0, Lcom/eclipsesource/v8/V8Array;

    iget-object v1, p0, Lcom/eclipsesource/v8/debug/mirror/ObjectMirror;->v8Object:Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Object;->getRuntime()Lcom/eclipsesource/v8/V8;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eclipsesource/v8/V8Array;-><init>(Lcom/eclipsesource/v8/V8;)V

    iget p1, p1, Lcom/eclipsesource/v8/debug/mirror/ObjectMirror$PropertyKind;->index:I

    invoke-virtual {v0, p1}, Lcom/eclipsesource/v8/V8Array;->push(I)Lcom/eclipsesource/v8/V8Array;

    invoke-virtual {v0, p2}, Lcom/eclipsesource/v8/V8Array;->push(I)Lcom/eclipsesource/v8/V8Array;

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/eclipsesource/v8/debug/mirror/ObjectMirror;->v8Object:Lcom/eclipsesource/v8/V8Object;

    const-string v1, "properties"

    invoke-virtual {p2, v1, v0}, Lcom/eclipsesource/v8/V8Object;->executeArrayFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)Lcom/eclipsesource/v8/V8Array;

    move-result-object p1

    new-instance p2, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;

    invoke-direct {p2, p1}, Lcom/eclipsesource/v8/debug/mirror/PropertiesArray;-><init>(Lcom/eclipsesource/v8/V8Array;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_1
    throw p2
.end method

.method public getPropertyNames(Lcom/eclipsesource/v8/debug/mirror/ObjectMirror$PropertyKind;I)[Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/eclipsesource/v8/V8Array;

    iget-object v1, p0, Lcom/eclipsesource/v8/debug/mirror/ObjectMirror;->v8Object:Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Object;->getRuntime()Lcom/eclipsesource/v8/V8;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eclipsesource/v8/V8Array;-><init>(Lcom/eclipsesource/v8/V8;)V

    iget p1, p1, Lcom/eclipsesource/v8/debug/mirror/ObjectMirror$PropertyKind;->index:I

    invoke-virtual {v0, p1}, Lcom/eclipsesource/v8/V8Array;->push(I)Lcom/eclipsesource/v8/V8Array;

    invoke-virtual {v0, p2}, Lcom/eclipsesource/v8/V8Array;->push(I)Lcom/eclipsesource/v8/V8Array;

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/eclipsesource/v8/debug/mirror/ObjectMirror;->v8Object:Lcom/eclipsesource/v8/V8Object;

    const-string v1, "propertyNames"

    invoke-virtual {p2, v1, v0}, Lcom/eclipsesource/v8/V8Object;->executeArrayFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)Lcom/eclipsesource/v8/V8Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result p2

    new-array v1, p2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_0
    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_2
    throw p2
.end method

.method public isObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eclipsesource/v8/debug/mirror/ObjectMirror;->v8Object:Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
