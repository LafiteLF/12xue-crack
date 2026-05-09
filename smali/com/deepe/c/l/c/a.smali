.class public final enum Lcom/deepe/c/l/c/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/l/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/l/c/a;

.field public static final enum b:Lcom/deepe/c/l/c/a;

.field public static final enum c:Lcom/deepe/c/l/c/a;

.field private static final synthetic d:[Lcom/deepe/c/l/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/deepe/c/l/c/a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/l/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/a;->a:Lcom/deepe/c/l/c/a;

    new-instance v0, Lcom/deepe/c/l/c/a;

    const/4 v2, 0x1

    const-string v3, "ONEWAY"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/l/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/a;->b:Lcom/deepe/c/l/c/a;

    new-instance v0, Lcom/deepe/c/l/c/a;

    const/4 v3, 0x2

    const-string v4, "TWOWAY"

    invoke-direct {v0, v4, v3}, Lcom/deepe/c/l/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/a;->c:Lcom/deepe/c/l/c/a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/deepe/c/l/c/a;

    sget-object v5, Lcom/deepe/c/l/c/a;->a:Lcom/deepe/c/l/c/a;

    aput-object v5, v4, v1

    sget-object v1, Lcom/deepe/c/l/c/a;->b:Lcom/deepe/c/l/c/a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/deepe/c/l/c/a;->d:[Lcom/deepe/c/l/c/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/l/c/a;
    .locals 1

    const-class v0, Lcom/deepe/c/l/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/l/c/a;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/l/c/a;
    .locals 4

    sget-object v0, Lcom/deepe/c/l/c/a;->d:[Lcom/deepe/c/l/c/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/l/c/a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
