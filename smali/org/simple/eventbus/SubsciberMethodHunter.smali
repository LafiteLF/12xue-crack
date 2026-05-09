.class public Lorg/simple/eventbus/SubsciberMethodHunter;
.super Ljava/lang/Object;
.source "SubsciberMethodHunter.java"


# instance fields
.field mSubcriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    return-void
.end method

.method private convertType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 154
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-class p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-class p1, Ljava/lang/Integer;

    goto :goto_0

    .line 158
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const-class p1, Ljava/lang/Float;

    goto :goto_0

    .line 160
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-class p1, Ljava/lang/Double;

    :cond_3
    :goto_0
    return-object p1
.end method

.method private isSystemCalss(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "java."

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private subscibe(Lorg/simple/eventbus/EventType;Lorg/simple/eventbus/TargetMethod;Ljava/lang/Object;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    .line 98
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 103
    :cond_0
    new-instance v1, Lorg/simple/eventbus/Subscription;

    invoke-direct {v1, p3, p2}, Lorg/simple/eventbus/Subscription;-><init>(Ljava/lang/Object;Lorg/simple/eventbus/TargetMethod;)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 108
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p2, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public findSubcribeMethods(Ljava/lang/Object;)V
    .locals 9

    .line 61
    iget-object v0, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/simple/eventbus/SubsciberMethodHunter;->isSystemCalss(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 68
    :goto_1
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    aget-object v4, v1, v3

    .line 71
    const-class v5, Lorg/simple/eventbus/Subscriber;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/simple/eventbus/Subscriber;

    if-eqz v5, :cond_2

    .line 74
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 76
    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 77
    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lorg/simple/eventbus/SubsciberMethodHunter;->convertType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 78
    new-instance v7, Lorg/simple/eventbus/EventType;

    invoke-interface {v5}, Lorg/simple/eventbus/Subscriber;->tag()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 79
    new-instance v8, Lorg/simple/eventbus/TargetMethod;

    .line 80
    invoke-interface {v5}, Lorg/simple/eventbus/Subscriber;->mode()Lorg/simple/eventbus/ThreadMode;

    move-result-object v5

    .line 79
    invoke-direct {v8, v4, v6, v5}, Lorg/simple/eventbus/TargetMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/simple/eventbus/ThreadMode;)V

    .line 81
    invoke-direct {p0, v7, v8, p1}, Lorg/simple/eventbus/SubsciberMethodHunter;->subscibe(Lorg/simple/eventbus/EventType;Lorg/simple/eventbus/TargetMethod;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 62
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the mSubcriberMap is null. "

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeMethodsFromMap(Ljava/lang/Object;)V
    .locals 7

    .line 119
    iget-object v0, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    .line 120
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 122
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_4

    .line 124
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 125
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 126
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 127
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simple/eventbus/Subscription;

    .line 128
    iget-object v5, v4, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "### \u79fb\u9664\u8ba2\u9605 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 139
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
