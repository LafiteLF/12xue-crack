.class public final enum Lcom/apicloud/a/i/c/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/c/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/c/f$a;

.field public static final enum b:Lcom/apicloud/a/i/c/f$a;

.field private static final synthetic c:[Lcom/apicloud/a/i/c/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/apicloud/a/i/c/f$a;

    const/4 v1, 0x0

    const-string v2, "LOOSING"

    invoke-direct {v0, v2, v1}, Lcom/apicloud/a/i/c/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/c/f$a;->a:Lcom/apicloud/a/i/c/f$a;

    new-instance v0, Lcom/apicloud/a/i/c/f$a;

    const/4 v2, 0x1

    const-string v3, "GAINING"

    invoke-direct {v0, v3, v2}, Lcom/apicloud/a/i/c/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/a/i/c/f$a;->b:Lcom/apicloud/a/i/c/f$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/apicloud/a/i/c/f$a;

    sget-object v4, Lcom/apicloud/a/i/c/f$a;->a:Lcom/apicloud/a/i/c/f$a;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/apicloud/a/i/c/f$a;->c:[Lcom/apicloud/a/i/c/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/c/f$a;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/c/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/c/f$a;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/c/f$a;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/c/f$a;->c:[Lcom/apicloud/a/i/c/f$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/c/f$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
