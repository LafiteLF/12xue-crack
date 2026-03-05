.class final enum Lcom/deepe/c/c/a/a/d$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/c/a/a/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/c/a/a/d$c;

.field public static final enum b:Lcom/deepe/c/c/a/a/d$c;

.field public static final enum c:Lcom/deepe/c/c/a/a/d$c;

.field private static final synthetic d:[Lcom/deepe/c/c/a/a/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/deepe/c/c/a/a/d$c;

    const/4 v1, 0x0

    const-string v2, "DESCENDANT"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/a/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/d$c;->a:Lcom/deepe/c/c/a/a/d$c;

    new-instance v0, Lcom/deepe/c/c/a/a/d$c;

    const/4 v2, 0x1

    const-string v3, "CHILD"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/c/a/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/d$c;->b:Lcom/deepe/c/c/a/a/d$c;

    new-instance v0, Lcom/deepe/c/c/a/a/d$c;

    const/4 v3, 0x2

    const-string v4, "FOLLOWS"

    invoke-direct {v0, v4, v3}, Lcom/deepe/c/c/a/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/d$c;->c:Lcom/deepe/c/c/a/a/d$c;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/deepe/c/c/a/a/d$c;

    sget-object v5, Lcom/deepe/c/c/a/a/d$c;->a:Lcom/deepe/c/c/a/a/d$c;

    aput-object v5, v4, v1

    sget-object v1, Lcom/deepe/c/c/a/a/d$c;->b:Lcom/deepe/c/c/a/a/d$c;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/deepe/c/c/a/a/d$c;->d:[Lcom/deepe/c/c/a/a/d$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$c;
    .locals 1

    const-class v0, Lcom/deepe/c/c/a/a/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/a/a/d$c;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/c/a/a/d$c;
    .locals 4

    sget-object v0, Lcom/deepe/c/c/a/a/d$c;->d:[Lcom/deepe/c/c/a/a/d$c;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/c/a/a/d$c;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
