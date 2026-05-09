.class public final enum Lcom/apicloud/a/i/a/r/v;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/a/r/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/a/r/v;

.field public static final enum b:Lcom/apicloud/a/i/a/r/v;

.field public static final enum c:Lcom/apicloud/a/i/a/r/v;

.field private static final synthetic e:[Lcom/apicloud/a/i/a/r/v;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/apicloud/a/i/a/r/v;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/a/i/a/r/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/i/a/r/v;->a:Lcom/apicloud/a/i/a/r/v;

    new-instance v0, Lcom/apicloud/a/i/a/r/v;

    const/4 v2, 0x1

    const-string v3, "COLUMN_WIDTH"

    invoke-direct {v0, v3, v2, v2}, Lcom/apicloud/a/i/a/r/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/i/a/r/v;->b:Lcom/apicloud/a/i/a/r/v;

    new-instance v0, Lcom/apicloud/a/i/a/r/v;

    const/4 v3, 0x2

    const-string v4, "SPACING_WIDTH"

    invoke-direct {v0, v4, v3, v3}, Lcom/apicloud/a/i/a/r/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/i/a/r/v;->c:Lcom/apicloud/a/i/a/r/v;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/apicloud/a/i/a/r/v;

    sget-object v5, Lcom/apicloud/a/i/a/r/v;->a:Lcom/apicloud/a/i/a/r/v;

    aput-object v5, v4, v1

    sget-object v1, Lcom/apicloud/a/i/a/r/v;->b:Lcom/apicloud/a/i/a/r/v;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/apicloud/a/i/a/r/v;->e:[Lcom/apicloud/a/i/a/r/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/a/i/a/r/v;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/apicloud/a/i/a/r/v;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x75d274bd

    if-eq v0, v1, :cond_4

    const v1, -0x3236eff0

    if-eq v0, v1, :cond_2

    const v1, 0x33af38

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/apicloud/a/i/a/r/v;->a:Lcom/apicloud/a/i/a/r/v;

    return-object p0

    :cond_2
    const-string v0, "columnWidth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/apicloud/a/i/a/r/v;->b:Lcom/apicloud/a/i/a/r/v;

    return-object p0

    :cond_4
    const-string v0, "spacingWidth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    sget-object p0, Lcom/apicloud/a/i/a/r/v;->a:Lcom/apicloud/a/i/a/r/v;

    return-object p0

    :cond_5
    sget-object p0, Lcom/apicloud/a/i/a/r/v;->c:Lcom/apicloud/a/i/a/r/v;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/a/r/v;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/a/r/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a/r/v;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/a/r/v;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/r/v;->e:[Lcom/apicloud/a/i/a/r/v;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/a/r/v;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
