.class public final enum Lcom/apicloud/a/i/a/e/a/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/a/e/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/a/e/a/c;

.field public static final enum b:Lcom/apicloud/a/i/a/e/a/c;

.field public static final enum c:Lcom/apicloud/a/i/a/e/a/c;

.field private static final synthetic g:[Lcom/apicloud/a/i/a/e/a/c;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/apicloud/a/i/a/e/a/c;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "PNG"

    const/4 v2, 0x0

    const-string v3, "image/png"

    const/16 v5, 0x64

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/i/a/e/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v6, Lcom/apicloud/a/i/a/e/a/c;->a:Lcom/apicloud/a/i/a/e/a/c;

    new-instance v0, Lcom/apicloud/a/i/a/e/a/c;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v8, "JPEG"

    const/4 v9, 0x1

    const-string v10, "image/jpeg"

    const/16 v12, 0x5c

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/apicloud/a/i/a/e/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v0, Lcom/apicloud/a/i/a/e/a/c;->b:Lcom/apicloud/a/i/a/e/a/c;

    new-instance v0, Lcom/apicloud/a/i/a/e/a/c;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, "WEBP"

    const/4 v3, 0x2

    const-string v4, "image/webp"

    const/16 v6, 0x50

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/apicloud/a/i/a/e/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v0, Lcom/apicloud/a/i/a/e/a/c;->c:Lcom/apicloud/a/i/a/e/a/c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/apicloud/a/i/a/e/a/c;

    sget-object v2, Lcom/apicloud/a/i/a/e/a/c;->a:Lcom/apicloud/a/i/a/e/a/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/apicloud/a/i/a/e/a/c;->b:Lcom/apicloud/a/i/a/e/a/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/apicloud/a/i/a/e/a/c;->g:[Lcom/apicloud/a/i/a/e/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/apicloud/a/i/a/e/a/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/apicloud/a/i/a/e/a/c;->f:Landroid/graphics/Bitmap$CompressFormat;

    iput p5, p0, Lcom/apicloud/a/i/a/e/a/c;->e:I

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/a/c;
    .locals 5

    invoke-static {}, Lcom/apicloud/a/i/a/e/a/c;->values()[Lcom/apicloud/a/i/a/e/a/c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    sget-object p0, Lcom/apicloud/a/i/a/e/a/c;->a:Lcom/apicloud/a/i/a/e/a/c;

    return-object p0

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/apicloud/a/i/a/e/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/a/c;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/a/e/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a/e/a/c;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/a/e/a/c;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/e/a/c;->g:[Lcom/apicloud/a/i/a/e/a/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/a/e/a/c;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/c;->f:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/a/c;->e:I

    return v0
.end method
