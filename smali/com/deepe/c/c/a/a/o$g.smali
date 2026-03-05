.class public final enum Lcom/deepe/c/c/a/a/o$g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/c/a/a/o$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/c/a/a/o$g;

.field public static final enum b:Lcom/deepe/c/c/a/a/o$g;

.field public static final enum c:Lcom/deepe/c/c/a/a/o$g;

.field private static final synthetic d:[Lcom/deepe/c/c/a/a/o$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/deepe/c/c/a/a/o$g;

    const/4 v1, 0x0

    const-string v2, "Butt"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/a/a/o$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$g;->a:Lcom/deepe/c/c/a/a/o$g;

    new-instance v0, Lcom/deepe/c/c/a/a/o$g;

    const/4 v2, 0x1

    const-string v3, "Round"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/c/a/a/o$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$g;->b:Lcom/deepe/c/c/a/a/o$g;

    new-instance v0, Lcom/deepe/c/c/a/a/o$g;

    const/4 v3, 0x2

    const-string v4, "Square"

    invoke-direct {v0, v4, v3}, Lcom/deepe/c/c/a/a/o$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$g;->c:Lcom/deepe/c/c/a/a/o$g;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/deepe/c/c/a/a/o$g;

    sget-object v5, Lcom/deepe/c/c/a/a/o$g;->a:Lcom/deepe/c/c/a/a/o$g;

    aput-object v5, v4, v1

    sget-object v1, Lcom/deepe/c/c/a/a/o$g;->b:Lcom/deepe/c/c/a/a/o$g;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/deepe/c/c/a/a/o$g;->d:[Lcom/deepe/c/c/a/a/o$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$g;
    .locals 1

    const-class v0, Lcom/deepe/c/c/a/a/o$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/a/a/o$g;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/c/a/a/o$g;
    .locals 4

    sget-object v0, Lcom/deepe/c/c/a/a/o$g;->d:[Lcom/deepe/c/c/a/a/o$g;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/c/a/a/o$g;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
