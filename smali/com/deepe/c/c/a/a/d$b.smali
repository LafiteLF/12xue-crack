.class final enum Lcom/deepe/c/c/a/a/d$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/c/a/a/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/c/a/a/d$b;

.field public static final enum b:Lcom/deepe/c/c/a/a/d$b;

.field public static final enum c:Lcom/deepe/c/c/a/a/d$b;

.field public static final enum d:Lcom/deepe/c/c/a/a/d$b;

.field private static final synthetic e:[Lcom/deepe/c/c/a/a/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepe/c/c/a/a/d$b;

    const/4 v1, 0x0

    const-string v2, "EXISTS"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/d$b;->a:Lcom/deepe/c/c/a/a/d$b;

    new-instance v0, Lcom/deepe/c/c/a/a/d$b;

    const/4 v2, 0x1

    const-string v3, "EQUALS"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/c/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/d$b;->b:Lcom/deepe/c/c/a/a/d$b;

    new-instance v0, Lcom/deepe/c/c/a/a/d$b;

    const/4 v3, 0x2

    const-string v4, "INCLUDES"

    invoke-direct {v0, v4, v3}, Lcom/deepe/c/c/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/d$b;->c:Lcom/deepe/c/c/a/a/d$b;

    new-instance v0, Lcom/deepe/c/c/a/a/d$b;

    const/4 v4, 0x3

    const-string v5, "DASHMATCH"

    invoke-direct {v0, v5, v4}, Lcom/deepe/c/c/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/d$b;->d:Lcom/deepe/c/c/a/a/d$b;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/deepe/c/c/a/a/d$b;

    sget-object v6, Lcom/deepe/c/c/a/a/d$b;->a:Lcom/deepe/c/c/a/a/d$b;

    aput-object v6, v5, v1

    sget-object v1, Lcom/deepe/c/c/a/a/d$b;->b:Lcom/deepe/c/c/a/a/d$b;

    aput-object v1, v5, v2

    sget-object v1, Lcom/deepe/c/c/a/a/d$b;->c:Lcom/deepe/c/c/a/a/d$b;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/deepe/c/c/a/a/d$b;->e:[Lcom/deepe/c/c/a/a/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$b;
    .locals 1

    const-class v0, Lcom/deepe/c/c/a/a/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/a/a/d$b;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/c/a/a/d$b;
    .locals 4

    sget-object v0, Lcom/deepe/c/c/a/a/d$b;->e:[Lcom/deepe/c/c/a/a/d$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/c/a/a/d$b;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
