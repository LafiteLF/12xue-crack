.class public final enum Lcom/apicloud/a/i/a/ad/a/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ad/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/a/ad/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/a/ad/a/b$a;

.field public static final enum b:Lcom/apicloud/a/i/a/ad/a/b$a;

.field public static final enum c:Lcom/apicloud/a/i/a/ad/a/b$a;

.field public static final enum d:Lcom/apicloud/a/i/a/ad/a/b$a;

.field public static final enum e:Lcom/apicloud/a/i/a/ad/a/b$a;

.field private static final synthetic g:[Lcom/apicloud/a/i/a/ad/a/b$a;


# instance fields
.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/b$a;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/apicloud/a/i/a/ad/a/b$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/apicloud/a/i/a/ad/a/b$a;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/b$a;

    const/4 v3, 0x1

    const-string v4, "LINEAR"

    invoke-direct {v0, v4, v3, v2}, Lcom/apicloud/a/i/a/ad/a/b$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/apicloud/a/i/a/ad/a/b$a;->b:Lcom/apicloud/a/i/a/ad/a/b$a;

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/b$a;

    const/4 v4, 0x2

    const-string v5, "EASE_IN_CUBIC"

    invoke-direct {v0, v5, v4, v2}, Lcom/apicloud/a/i/a/ad/a/b$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/apicloud/a/i/a/ad/a/b$a;->c:Lcom/apicloud/a/i/a/ad/a/b$a;

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/b$a;

    const/4 v5, 0x3

    const-string v6, "EASE_OUT_CUBIC"

    invoke-direct {v0, v6, v5, v2}, Lcom/apicloud/a/i/a/ad/a/b$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/apicloud/a/i/a/ad/a/b$a;->d:Lcom/apicloud/a/i/a/ad/a/b$a;

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/b$a;

    const/4 v6, 0x4

    const-string v7, "EASE_IN_OUT_CUBIC"

    invoke-direct {v0, v7, v6, v2}, Lcom/apicloud/a/i/a/ad/a/b$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/apicloud/a/i/a/ad/a/b$a;->e:Lcom/apicloud/a/i/a/ad/a/b$a;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/apicloud/a/i/a/ad/a/b$a;

    sget-object v7, Lcom/apicloud/a/i/a/ad/a/b$a;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    aput-object v7, v2, v1

    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->b:Lcom/apicloud/a/i/a/ad/a/b$a;

    aput-object v1, v2, v3

    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->c:Lcom/apicloud/a/i/a/ad/a/b$a;

    aput-object v1, v2, v4

    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->d:Lcom/apicloud/a/i/a/ad/a/b$a;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    sput-object v2, Lcom/apicloud/a/i/a/ad/a/b$a;->g:[Lcom/apicloud/a/i/a/ad/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/a/i/a/ad/a/b$a;->f:F

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ad/a/b$a;)F
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ad/a/b$a;->f:F

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/a/b$a;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a/ad/a/b$a;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/a/ad/a/b$a;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/ad/a/b$a;->g:[Lcom/apicloud/a/i/a/ad/a/b$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/a/ad/a/b$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
