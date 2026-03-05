.class public Lcom/deepe/c/j/e;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "GET"

    const-string v1, "POST"

    const-string v2, "PUT"

    const-string v3, "DELETE"

    const-string v4, "HEAD"

    const-string v5, "OPTIONS"

    const-string v6, "TRACE"

    const-string v7, "PATCH"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/k;)V
    .locals 0

    return-void
.end method
