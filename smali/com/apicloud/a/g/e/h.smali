.class public final enum Lcom/apicloud/a/g/e/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/g/e/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/g/e/h;

.field public static final enum b:Lcom/apicloud/a/g/e/h;

.field public static final enum c:Lcom/apicloud/a/g/e/h;

.field public static final enum d:Lcom/apicloud/a/g/e/h;

.field private static final synthetic f:[Lcom/apicloud/a/g/e/h;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/apicloud/a/g/e/h;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/a/g/e/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/g/e/h;->a:Lcom/apicloud/a/g/e/h;

    new-instance v0, Lcom/apicloud/a/g/e/h;

    const/4 v2, 0x1

    const-string v3, "NONE"

    invoke-direct {v0, v3, v2, v2}, Lcom/apicloud/a/g/e/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/g/e/h;->b:Lcom/apicloud/a/g/e/h;

    new-instance v0, Lcom/apicloud/a/g/e/h;

    const/4 v3, 0x2

    const-string v4, "TEXT"

    invoke-direct {v0, v4, v3, v3}, Lcom/apicloud/a/g/e/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/g/e/h;->c:Lcom/apicloud/a/g/e/h;

    new-instance v0, Lcom/apicloud/a/g/e/h;

    const/4 v4, 0x3

    const-string v5, "ALL"

    invoke-direct {v0, v5, v4, v4}, Lcom/apicloud/a/g/e/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/a/g/e/h;->d:Lcom/apicloud/a/g/e/h;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/apicloud/a/g/e/h;

    sget-object v6, Lcom/apicloud/a/g/e/h;->a:Lcom/apicloud/a/g/e/h;

    aput-object v6, v5, v1

    sget-object v1, Lcom/apicloud/a/g/e/h;->b:Lcom/apicloud/a/g/e/h;

    aput-object v1, v5, v2

    sget-object v1, Lcom/apicloud/a/g/e/h;->c:Lcom/apicloud/a/g/e/h;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/apicloud/a/g/e/h;->f:[Lcom/apicloud/a/g/e/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/a/g/e/h;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/apicloud/a/g/e/h;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/a/g/e/h;->c:Lcom/apicloud/a/g/e/h;

    return-object p0

    :sswitch_1
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/apicloud/a/g/e/h;->b:Lcom/apicloud/a/g/e/h;

    return-object p0

    :sswitch_2
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/apicloud/a/g/e/h;->a:Lcom/apicloud/a/g/e/h;

    return-object p0

    :sswitch_3
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/apicloud/a/g/e/h;->d:Lcom/apicloud/a/g/e/h;

    return-object p0

    :goto_0
    sget-object p0, Lcom/apicloud/a/g/e/h;->b:Lcom/apicloud/a/g/e/h;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x179a1 -> :sswitch_3
        0x2dddaf -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x36452d -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/g/e/h;
    .locals 1

    const-class v0, Lcom/apicloud/a/g/e/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/g/e/h;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/g/e/h;
    .locals 4

    sget-object v0, Lcom/apicloud/a/g/e/h;->f:[Lcom/apicloud/a/g/e/h;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/g/e/h;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
