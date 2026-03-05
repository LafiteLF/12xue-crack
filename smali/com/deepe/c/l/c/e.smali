.class public final enum Lcom/deepe/c/l/c/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/l/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/l/c/e;

.field public static final enum b:Lcom/deepe/c/l/c/e;

.field private static final synthetic c:[Lcom/deepe/c/l/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepe/c/l/c/e;

    const/4 v1, 0x0

    const-string v2, "CLIENT"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/l/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    new-instance v0, Lcom/deepe/c/l/c/e;

    const/4 v2, 0x1

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/l/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/l/c/e;->b:Lcom/deepe/c/l/c/e;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/deepe/c/l/c/e;

    sget-object v4, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/deepe/c/l/c/e;->c:[Lcom/deepe/c/l/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/l/c/e;
    .locals 1

    const-class v0, Lcom/deepe/c/l/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/l/c/e;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/l/c/e;
    .locals 4

    sget-object v0, Lcom/deepe/c/l/c/e;->c:[Lcom/deepe/c/l/c/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/l/c/e;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
