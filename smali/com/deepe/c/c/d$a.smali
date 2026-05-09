.class public Lcom/deepe/c/c/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "UNKNOWN"

    const-string v1, "ERROR_NETWORK"

    const-string v2, "ERROR_NO_CONNECTION"

    const-string v3, "ERROR_PARSE"

    const-string v4, "ERROR_SERVER"

    const-string v5, "ERROR_TIME_OUT"

    const-string v6, "ERROR_AUTH_FAIL"

    const-string v7, "ERROR_CANCELED"

    const-string v8, "ERROR_UNSAFE"

    const-string v9, "STORAGE_ERROR"

    const-string v10, "MEMORY_ERROR"

    const-string v11, "DECODE_ERROR"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/d$a;->a:[Ljava/lang/String;

    return-void
.end method

.method static final a(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/deepe/c/c/d$a;->a:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/deepe/c/c/d$a;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method
