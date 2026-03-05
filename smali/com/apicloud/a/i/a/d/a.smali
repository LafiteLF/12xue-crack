.class public final enum Lcom/apicloud/a/i/a/d/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/a/d/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/a/d/a;

.field public static final enum b:Lcom/apicloud/a/i/a/d/a;

.field public static final enum c:Lcom/apicloud/a/i/a/d/a;

.field private static final synthetic f:[Lcom/apicloud/a/i/a/d/a;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/apicloud/a/i/a/d/a;

    const/4 v1, 0x0

    const-string v2, "HIGH"

    const-string v3, "high"

    const/16 v4, 0x64

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/apicloud/a/i/a/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/a/d/a;->a:Lcom/apicloud/a/i/a/d/a;

    new-instance v0, Lcom/apicloud/a/i/a/d/a;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    const-string v4, "normal"

    const/16 v5, 0x4b

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/apicloud/a/i/a/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/a/d/a;->b:Lcom/apicloud/a/i/a/d/a;

    new-instance v0, Lcom/apicloud/a/i/a/d/a;

    const/4 v3, 0x2

    const-string v4, "LOW"

    const-string v5, "low"

    const/16 v6, 0x32

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/apicloud/a/i/a/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/a/d/a;->c:Lcom/apicloud/a/i/a/d/a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/apicloud/a/i/a/d/a;

    sget-object v5, Lcom/apicloud/a/i/a/d/a;->a:Lcom/apicloud/a/i/a/d/a;

    aput-object v5, v4, v1

    sget-object v1, Lcom/apicloud/a/i/a/d/a;->b:Lcom/apicloud/a/i/a/d/a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/apicloud/a/i/a/d/a;->f:[Lcom/apicloud/a/i/a/d/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/apicloud/a/i/a/d/a;->d:Ljava/lang/String;

    iput p4, p0, Lcom/apicloud/a/i/a/d/a;->e:I

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a;
    .locals 5

    invoke-static {}, Lcom/apicloud/a/i/a/d/a;->values()[Lcom/apicloud/a/i/a/d/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    sget-object p0, Lcom/apicloud/a/i/a/d/a;->b:Lcom/apicloud/a/i/a/d/a;

    return-object p0

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/apicloud/a/i/a/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/a/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a/d/a;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/a/d/a;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/d/a;->f:[Lcom/apicloud/a/i/a/d/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/a/d/a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a;->e:I

    return v0
.end method
