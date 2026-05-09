.class public final enum Lcom/deepe/c/c/a/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/c/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/c/a/a$b;

.field public static final enum b:Lcom/deepe/c/c/a/a$b;

.field private static final synthetic c:[Lcom/deepe/c/c/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepe/c/c/a/a$b;

    const/4 v1, 0x0

    const-string v2, "meet"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    new-instance v0, Lcom/deepe/c/c/a/a$b;

    const/4 v2, 0x1

    const-string v3, "slice"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/c/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a$b;->b:Lcom/deepe/c/c/a/a$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/deepe/c/c/a/a$b;

    sget-object v4, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/deepe/c/c/a/a$b;->c:[Lcom/deepe/c/c/a/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a$b;
    .locals 1

    const-class v0, Lcom/deepe/c/c/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/a/a$b;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/c/a/a$b;
    .locals 4

    sget-object v0, Lcom/deepe/c/c/a/a$b;->c:[Lcom/deepe/c/c/a/a$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/c/a/a$b;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
