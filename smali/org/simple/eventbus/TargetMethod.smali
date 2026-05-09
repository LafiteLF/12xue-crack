.class Lorg/simple/eventbus/TargetMethod;
.super Ljava/lang/Object;
.source "TargetMethod.java"


# instance fields
.field public eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/reflect/Method;

.field public threadMode:Lorg/simple/eventbus/ThreadMode;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/simple/eventbus/ThreadMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/simple/eventbus/ThreadMode;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 48
    iput-object p2, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    .line 49
    iput-object p3, p0, Lorg/simple/eventbus/TargetMethod;->threadMode:Lorg/simple/eventbus/ThreadMode;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 69
    :cond_2
    check-cast p1, Lorg/simple/eventbus/TargetMethod;

    .line 70
    iget-object v2, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 71
    iget-object v2, p1, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    if-eqz v2, :cond_4

    return v1

    .line 73
    :cond_3
    iget-object v3, p1, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 75
    :cond_4
    iget-object v2, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    .line 76
    iget-object p1, p1, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_6

    return v1

    .line 78
    :cond_5
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 56
    iget-object v0, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 57
    iget-object v2, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
