.class public final enum Lcom/deepe/c/l/c/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/l/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/l/c/c;

.field public static final enum b:Lcom/deepe/c/l/c/c;

.field public static final enum c:Lcom/deepe/c/l/c/c;

.field public static final enum d:Lcom/deepe/c/l/c/c;

.field public static final enum e:Lcom/deepe/c/l/c/c;

.field public static final enum f:Lcom/deepe/c/l/c/c;

.field private static final synthetic g:[Lcom/deepe/c/l/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepe/c/l/c/c;

    const/4 v1, 0x0

    const-string v2, "CONTINUOUS"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/l/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    new-instance v0, Lcom/deepe/c/l/c/c;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/l/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    new-instance v0, Lcom/deepe/c/l/c/c;

    const/4 v3, 0x2

    const-string v4, "BINARY"

    invoke-direct {v0, v4, v3}, Lcom/deepe/c/l/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/c;->c:Lcom/deepe/c/l/c/c;

    new-instance v0, Lcom/deepe/c/l/c/c;

    const/4 v4, 0x3

    const-string v5, "PING"

    invoke-direct {v0, v5, v4}, Lcom/deepe/c/l/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/c;->d:Lcom/deepe/c/l/c/c;

    new-instance v0, Lcom/deepe/c/l/c/c;

    const/4 v5, 0x4

    const-string v6, "PONG"

    invoke-direct {v0, v6, v5}, Lcom/deepe/c/l/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    new-instance v0, Lcom/deepe/c/l/c/c;

    const/4 v6, 0x5

    const-string v7, "CLOSING"

    invoke-direct {v0, v7, v6}, Lcom/deepe/c/l/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/c;->f:Lcom/deepe/c/l/c/c;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/deepe/c/l/c/c;

    sget-object v8, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    aput-object v8, v7, v1

    sget-object v1, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    aput-object v1, v7, v2

    sget-object v1, Lcom/deepe/c/l/c/c;->c:Lcom/deepe/c/l/c/c;

    aput-object v1, v7, v3

    sget-object v1, Lcom/deepe/c/l/c/c;->d:Lcom/deepe/c/l/c/c;

    aput-object v1, v7, v4

    sget-object v1, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/deepe/c/l/c/c;->g:[Lcom/deepe/c/l/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/l/c/c;
    .locals 1

    const-class v0, Lcom/deepe/c/l/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/l/c/c;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/l/c/c;
    .locals 4

    sget-object v0, Lcom/deepe/c/l/c/c;->g:[Lcom/deepe/c/l/c/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/l/c/c;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
