.class public final enum Lcom/apicloud/a/f/c/c$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/f/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/f/c/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/f/c/c$b;

.field public static final enum b:Lcom/apicloud/a/f/c/c$b;

.field private static final synthetic d:[Lcom/apicloud/a/f/c/c$b;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/apicloud/a/f/c/c$b;

    const/4 v1, 0x0

    const-string v2, "LOCAL"

    const-string v3, "local"

    invoke-direct {v0, v2, v1, v3}, Lcom/apicloud/a/f/c/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/f/c/c$b;->a:Lcom/apicloud/a/f/c/c$b;

    new-instance v0, Lcom/apicloud/a/f/c/c$b;

    const/4 v2, 0x1

    const-string v3, "SESSION"

    const-string v4, "session"

    invoke-direct {v0, v3, v2, v4}, Lcom/apicloud/a/f/c/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/f/c/c$b;->b:Lcom/apicloud/a/f/c/c$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/apicloud/a/f/c/c$b;

    sget-object v4, Lcom/apicloud/a/f/c/c$b;->a:Lcom/apicloud/a/f/c/c$b;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/apicloud/a/f/c/c$b;->d:[Lcom/apicloud/a/f/c/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/apicloud/a/f/c/c$b;->c:Ljava/lang/String;

    return-void
.end method

.method static final a(Ljava/lang/String;)Lcom/apicloud/a/f/c/c$b;
    .locals 5

    invoke-static {}, Lcom/apicloud/a/f/c/c$b;->values()[Lcom/apicloud/a/f/c/c$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    sget-object p0, Lcom/apicloud/a/f/c/c$b;->a:Lcom/apicloud/a/f/c/c$b;

    return-object p0

    :cond_0
    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/apicloud/a/f/c/c$b;->c:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/f/c/c$b;
    .locals 1

    const-class v0, Lcom/apicloud/a/f/c/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/f/c/c$b;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/f/c/c$b;
    .locals 4

    sget-object v0, Lcom/apicloud/a/f/c/c$b;->d:[Lcom/apicloud/a/f/c/c$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/f/c/c$b;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
