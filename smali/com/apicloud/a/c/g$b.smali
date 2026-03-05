.class public final enum Lcom/apicloud/a/c/g$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/c/g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/c/g$b;

.field public static final enum b:Lcom/apicloud/a/c/g$b;

.field public static final enum c:Lcom/apicloud/a/c/g$b;

.field public static final enum d:Lcom/apicloud/a/c/g$b;

.field public static final enum e:Lcom/apicloud/a/c/g$b;

.field private static final synthetic g:[Lcom/apicloud/a/c/g$b;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/apicloud/a/c/g$b;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "LOG"

    invoke-direct {v0, v3, v1, v2}, Lcom/apicloud/a/c/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/c/g$b;->a:Lcom/apicloud/a/c/g$b;

    new-instance v0, Lcom/apicloud/a/c/g$b;

    const/4 v3, 0x1

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3, v2}, Lcom/apicloud/a/c/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/c/g$b;->b:Lcom/apicloud/a/c/g$b;

    new-instance v0, Lcom/apicloud/a/c/g$b;

    const/4 v4, 0x5

    const/4 v5, 0x2

    const-string v6, "WARN"

    invoke-direct {v0, v6, v5, v4}, Lcom/apicloud/a/c/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/c/g$b;->c:Lcom/apicloud/a/c/g$b;

    new-instance v0, Lcom/apicloud/a/c/g$b;

    const/4 v6, 0x3

    const-string v7, "DEBUG"

    invoke-direct {v0, v7, v6, v6}, Lcom/apicloud/a/c/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/c/g$b;->d:Lcom/apicloud/a/c/g$b;

    new-instance v0, Lcom/apicloud/a/c/g$b;

    const-string v7, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v7, v2, v8}, Lcom/apicloud/a/c/g$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/c/g$b;->e:Lcom/apicloud/a/c/g$b;

    new-array v4, v4, [Lcom/apicloud/a/c/g$b;

    sget-object v7, Lcom/apicloud/a/c/g$b;->a:Lcom/apicloud/a/c/g$b;

    aput-object v7, v4, v1

    sget-object v1, Lcom/apicloud/a/c/g$b;->b:Lcom/apicloud/a/c/g$b;

    aput-object v1, v4, v3

    sget-object v1, Lcom/apicloud/a/c/g$b;->c:Lcom/apicloud/a/c/g$b;

    aput-object v1, v4, v5

    sget-object v1, Lcom/apicloud/a/c/g$b;->d:Lcom/apicloud/a/c/g$b;

    aput-object v1, v4, v6

    aput-object v0, v4, v2

    sput-object v4, Lcom/apicloud/a/c/g$b;->g:[Lcom/apicloud/a/c/g$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/a/c/g$b;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/c/g$b;
    .locals 1

    const-class v0, Lcom/apicloud/a/c/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/c/g$b;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/c/g$b;
    .locals 4

    sget-object v0, Lcom/apicloud/a/c/g$b;->g:[Lcom/apicloud/a/c/g$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/c/g$b;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
