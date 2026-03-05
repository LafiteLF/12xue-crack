.class public Lcom/deepe/c/e/a;
.super Lcom/deepe/c/e/h;


# static fields
.field private static final serialVersionUID:J = -0x1c7ad0ec78430cb9L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/e/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/c/e/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method
