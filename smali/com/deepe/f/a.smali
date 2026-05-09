.class public final enum Lcom/deepe/f/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/f/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/f/a;

.field public static final enum b:Lcom/deepe/f/a;

.field public static final enum c:Lcom/deepe/f/a;

.field public static final enum d:Lcom/deepe/f/a;

.field public static final enum e:Lcom/deepe/f/a;

.field public static final enum f:Lcom/deepe/f/a;

.field public static final enum g:Lcom/deepe/f/a;

.field public static final enum h:Lcom/deepe/f/a;

.field private static final synthetic k:[Lcom/deepe/f/a;


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/deepe/f/a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/4 v3, -0x1

    const-string v4, "none"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->a:Lcom/deepe/f/a;

    new-instance v0, Lcom/deepe/f/a;

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    const-string v4, "unknown"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->b:Lcom/deepe/f/a;

    new-instance v0, Lcom/deepe/f/a;

    const/4 v3, 0x2

    const-string v4, "ETHERNET"

    const-string v5, "ethernet"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->c:Lcom/deepe/f/a;

    new-instance v0, Lcom/deepe/f/a;

    const/4 v4, 0x3

    const-string v5, "WIFI"

    const-string v6, "wifi"

    invoke-direct {v0, v5, v4, v3, v6}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->d:Lcom/deepe/f/a;

    new-instance v0, Lcom/deepe/f/a;

    const/4 v5, 0x4

    const-string v6, "CELL_2G"

    const-string v7, "2g"

    invoke-direct {v0, v6, v5, v4, v7}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->e:Lcom/deepe/f/a;

    new-instance v0, Lcom/deepe/f/a;

    const/4 v6, 0x5

    const-string v7, "CELL_3G"

    const-string v8, "3g"

    invoke-direct {v0, v7, v6, v5, v8}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->f:Lcom/deepe/f/a;

    new-instance v0, Lcom/deepe/f/a;

    const/4 v7, 0x6

    const-string v8, "CELL_4G"

    const-string v9, "4g"

    invoke-direct {v0, v8, v7, v6, v9}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->g:Lcom/deepe/f/a;

    new-instance v0, Lcom/deepe/f/a;

    const/4 v8, 0x7

    const-string v9, "CELL_5G"

    const-string v10, "5g"

    invoke-direct {v0, v9, v8, v7, v10}, Lcom/deepe/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/f/a;->h:Lcom/deepe/f/a;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/deepe/f/a;

    sget-object v10, Lcom/deepe/f/a;->a:Lcom/deepe/f/a;

    aput-object v10, v9, v1

    sget-object v1, Lcom/deepe/f/a;->b:Lcom/deepe/f/a;

    aput-object v1, v9, v2

    sget-object v1, Lcom/deepe/f/a;->c:Lcom/deepe/f/a;

    aput-object v1, v9, v3

    sget-object v1, Lcom/deepe/f/a;->d:Lcom/deepe/f/a;

    aput-object v1, v9, v4

    sget-object v1, Lcom/deepe/f/a;->e:Lcom/deepe/f/a;

    aput-object v1, v9, v5

    sget-object v1, Lcom/deepe/f/a;->f:Lcom/deepe/f/a;

    aput-object v1, v9, v6

    sget-object v1, Lcom/deepe/f/a;->g:Lcom/deepe/f/a;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/deepe/f/a;->k:[Lcom/deepe/f/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/deepe/f/a;->i:Ljava/lang/String;

    iput p3, p0, Lcom/deepe/f/a;->j:I

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/deepe/f/a;->values()[Lcom/deepe/f/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    sget-object p0, Lcom/deepe/f/a;->b:Lcom/deepe/f/a;

    invoke-virtual {p0}, Lcom/deepe/f/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/deepe/f/a;->b()I

    move-result v4

    if-ne v4, p0, :cond_1

    invoke-virtual {v3}, Lcom/deepe/f/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static d()Lcom/deepe/f/a;
    .locals 2

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/j;->i(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/deepe/f/a;->b:Lcom/deepe/f/a;

    return-object v0

    :cond_0
    sget-object v0, Lcom/deepe/f/a;->c:Lcom/deepe/f/a;

    return-object v0

    :cond_1
    sget-object v0, Lcom/deepe/f/a;->d:Lcom/deepe/f/a;

    return-object v0

    :cond_2
    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/deepe/f/a;->b:Lcom/deepe/f/a;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/deepe/f/a;->g:Lcom/deepe/f/a;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/deepe/f/a;->f:Lcom/deepe/f/a;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/deepe/f/a;->e:Lcom/deepe/f/a;

    return-object v0

    :cond_3
    sget-object v0, Lcom/deepe/f/a;->h:Lcom/deepe/f/a;

    return-object v0

    :cond_4
    sget-object v0, Lcom/deepe/f/a;->a:Lcom/deepe/f/a;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Lcom/deepe/f/a;->d()Lcom/deepe/f/a;

    move-result-object v0

    sget-object v1, Lcom/deepe/f/a;->a:Lcom/deepe/f/a;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/deepe/f/a;->b:Lcom/deepe/f/a;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .locals 2

    sget-object v0, Lcom/deepe/f/a;->d:Lcom/deepe/f/a;

    invoke-static {}, Lcom/deepe/f/a;->d()Lcom/deepe/f/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/j;->j(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_1

    :cond_1
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    const-string v0, "unknown"

    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/f/a;
    .locals 1

    const-class v0, Lcom/deepe/f/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/f/a;

    return-object p0
.end method

.method public static values()[Lcom/deepe/f/a;
    .locals 4

    sget-object v0, Lcom/deepe/f/a;->k:[Lcom/deepe/f/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/f/a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/f/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/deepe/f/a;->j:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/deepe/f/a;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
