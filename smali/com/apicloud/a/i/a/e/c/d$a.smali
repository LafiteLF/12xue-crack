.class public final enum Lcom/apicloud/a/i/a/e/c/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/e/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/a/e/c/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/a/e/c/d$a;

.field public static final enum b:Lcom/apicloud/a/i/a/e/c/d$a;

.field public static final enum c:Lcom/apicloud/a/i/a/e/c/d$a;

.field public static final enum d:Lcom/apicloud/a/i/a/e/c/d$a;

.field private static final synthetic f:[Lcom/apicloud/a/i/a/e/c/d$a;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/apicloud/a/i/a/e/c/d$a;

    const/4 v1, 0x0

    const-string v2, "PIXELATED"

    const-string v3, "pixelated"

    invoke-direct {v0, v2, v1, v3}, Lcom/apicloud/a/i/a/e/c/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/e/c/d$a;->a:Lcom/apicloud/a/i/a/e/c/d$a;

    new-instance v0, Lcom/apicloud/a/i/a/e/c/d$a;

    const/4 v2, 0x1

    const-string v3, "LOW"

    const-string v4, "low"

    invoke-direct {v0, v3, v2, v4}, Lcom/apicloud/a/i/a/e/c/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/e/c/d$a;->b:Lcom/apicloud/a/i/a/e/c/d$a;

    new-instance v0, Lcom/apicloud/a/i/a/e/c/d$a;

    const/4 v3, 0x2

    const-string v4, "MEDIUM"

    const-string v5, "medium"

    invoke-direct {v0, v4, v3, v5}, Lcom/apicloud/a/i/a/e/c/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/e/c/d$a;->c:Lcom/apicloud/a/i/a/e/c/d$a;

    new-instance v0, Lcom/apicloud/a/i/a/e/c/d$a;

    const/4 v4, 0x3

    const-string v5, "HIGH"

    const-string v6, "high"

    invoke-direct {v0, v5, v4, v6}, Lcom/apicloud/a/i/a/e/c/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/e/c/d$a;->d:Lcom/apicloud/a/i/a/e/c/d$a;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/apicloud/a/i/a/e/c/d$a;

    sget-object v6, Lcom/apicloud/a/i/a/e/c/d$a;->a:Lcom/apicloud/a/i/a/e/c/d$a;

    aput-object v6, v5, v1

    sget-object v1, Lcom/apicloud/a/i/a/e/c/d$a;->b:Lcom/apicloud/a/i/a/e/c/d$a;

    aput-object v1, v5, v2

    sget-object v1, Lcom/apicloud/a/i/a/e/c/d$a;->c:Lcom/apicloud/a/i/a/e/c/d$a;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/apicloud/a/i/a/e/c/d$a;->f:[Lcom/apicloud/a/i/a/e/c/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/apicloud/a/i/a/e/c/d$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/c/d$a;
    .locals 5

    invoke-static {}, Lcom/apicloud/a/i/a/e/c/d$a;->values()[Lcom/apicloud/a/i/a/e/c/d$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    sget-object p0, Lcom/apicloud/a/i/a/e/c/d$a;->b:Lcom/apicloud/a/i/a/e/c/d$a;

    return-object p0

    :cond_0
    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/apicloud/a/i/a/e/c/d$a;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/c/d$a;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/a/e/c/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a/e/c/d$a;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/a/e/c/d$a;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/e/c/d$a;->f:[Lcom/apicloud/a/i/a/e/c/d$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/a/e/c/d$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
