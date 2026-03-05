.class final enum Lcom/deepe/c/e/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/e/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/e/f$a;

.field public static final enum b:Lcom/deepe/c/e/f$a;

.field public static final enum c:Lcom/deepe/c/e/f$a;

.field public static final enum d:Lcom/deepe/c/e/f$a;

.field public static final enum e:Lcom/deepe/c/e/f$a;

.field public static final enum f:Lcom/deepe/c/e/f$a;

.field private static final synthetic g:[Lcom/deepe/c/e/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepe/c/e/f$a;

    const/4 v1, 0x0

    const-string v2, "EMPTY_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/e/f$a;->a:Lcom/deepe/c/e/f$a;

    new-instance v0, Lcom/deepe/c/e/f$a;

    const/4 v2, 0x1

    const-string v3, "NONEMPTY_ARRAY"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/e/f$a;->b:Lcom/deepe/c/e/f$a;

    new-instance v0, Lcom/deepe/c/e/f$a;

    const/4 v3, 0x2

    const-string v4, "EMPTY_OBJECT"

    invoke-direct {v0, v4, v3}, Lcom/deepe/c/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/e/f$a;->c:Lcom/deepe/c/e/f$a;

    new-instance v0, Lcom/deepe/c/e/f$a;

    const/4 v4, 0x3

    const-string v5, "DANGLING_KEY"

    invoke-direct {v0, v5, v4}, Lcom/deepe/c/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/e/f$a;->d:Lcom/deepe/c/e/f$a;

    new-instance v0, Lcom/deepe/c/e/f$a;

    const/4 v5, 0x4

    const-string v6, "NONEMPTY_OBJECT"

    invoke-direct {v0, v6, v5}, Lcom/deepe/c/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/e/f$a;->e:Lcom/deepe/c/e/f$a;

    new-instance v0, Lcom/deepe/c/e/f$a;

    const/4 v6, 0x5

    const-string v7, "NULL"

    invoke-direct {v0, v7, v6}, Lcom/deepe/c/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/e/f$a;->f:Lcom/deepe/c/e/f$a;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/deepe/c/e/f$a;

    sget-object v8, Lcom/deepe/c/e/f$a;->a:Lcom/deepe/c/e/f$a;

    aput-object v8, v7, v1

    sget-object v1, Lcom/deepe/c/e/f$a;->b:Lcom/deepe/c/e/f$a;

    aput-object v1, v7, v2

    sget-object v1, Lcom/deepe/c/e/f$a;->c:Lcom/deepe/c/e/f$a;

    aput-object v1, v7, v3

    sget-object v1, Lcom/deepe/c/e/f$a;->d:Lcom/deepe/c/e/f$a;

    aput-object v1, v7, v4

    sget-object v1, Lcom/deepe/c/e/f$a;->e:Lcom/deepe/c/e/f$a;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/deepe/c/e/f$a;->g:[Lcom/deepe/c/e/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/e/f$a;
    .locals 1

    const-class v0, Lcom/deepe/c/e/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/e/f$a;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/e/f$a;
    .locals 4

    sget-object v0, Lcom/deepe/c/e/f$a;->g:[Lcom/deepe/c/e/f$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/e/f$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
