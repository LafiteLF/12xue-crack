.class final enum Lcom/apicloud/a/i/a/u/a/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/u/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/a/u/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/a/u/a/d$a;

.field public static final enum b:Lcom/apicloud/a/i/a/u/a/d$a;

.field public static final enum c:Lcom/apicloud/a/i/a/u/a/d$a;

.field private static final synthetic d:[Lcom/apicloud/a/i/a/u/a/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/apicloud/a/i/a/u/a/d$a;

    const/4 v1, 0x0

    const-string v2, "CLICK"

    invoke-direct {v0, v2, v1}, Lcom/apicloud/a/i/a/u/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/a/u/a/d$a;->a:Lcom/apicloud/a/i/a/u/a/d$a;

    new-instance v0, Lcom/apicloud/a/i/a/u/a/d$a;

    const/4 v2, 0x1

    const-string v3, "FLING"

    invoke-direct {v0, v3, v2}, Lcom/apicloud/a/i/a/u/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/a/u/a/d$a;->b:Lcom/apicloud/a/i/a/u/a/d$a;

    new-instance v0, Lcom/apicloud/a/i/a/u/a/d$a;

    const/4 v3, 0x2

    const-string v4, "DRAG"

    invoke-direct {v0, v4, v3}, Lcom/apicloud/a/i/a/u/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/a/u/a/d$a;->c:Lcom/apicloud/a/i/a/u/a/d$a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/apicloud/a/i/a/u/a/d$a;

    sget-object v5, Lcom/apicloud/a/i/a/u/a/d$a;->a:Lcom/apicloud/a/i/a/u/a/d$a;

    aput-object v5, v4, v1

    sget-object v1, Lcom/apicloud/a/i/a/u/a/d$a;->b:Lcom/apicloud/a/i/a/u/a/d$a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/apicloud/a/i/a/u/a/d$a;->d:[Lcom/apicloud/a/i/a/u/a/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/a/u/a/d$a;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/a/u/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a/u/a/d$a;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/a/u/a/d$a;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/u/a/d$a;->d:[Lcom/apicloud/a/i/a/u/a/d$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/a/u/a/d$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
