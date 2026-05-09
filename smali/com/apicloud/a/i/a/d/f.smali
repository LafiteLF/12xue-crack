.class public final enum Lcom/apicloud/a/i/a/d/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/a/i/a/d/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apicloud/a/i/a/d/f;

.field public static final enum b:Lcom/apicloud/a/i/a/d/f;

.field public static final enum c:Lcom/apicloud/a/i/a/d/f;

.field public static final enum d:Lcom/apicloud/a/i/a/d/f;

.field private static final synthetic f:[Lcom/apicloud/a/i/a/d/f;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/apicloud/a/i/a/d/f;

    const/4 v1, 0x0

    const-string v2, "CAMERA_PERMISSION"

    const-string v3, "\u65e0\u76f8\u673a\u6743\u9650"

    invoke-direct {v0, v2, v1, v3}, Lcom/apicloud/a/i/a/d/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/d/f;->a:Lcom/apicloud/a/i/a/d/f;

    new-instance v0, Lcom/apicloud/a/i/a/d/f;

    const/4 v2, 0x1

    const-string v3, "AUDIO_PERMISSION"

    const-string v4, "\u65e0\u9ea6\u514b\u98ce\u6743\u9650"

    invoke-direct {v0, v3, v2, v4}, Lcom/apicloud/a/i/a/d/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/d/f;->b:Lcom/apicloud/a/i/a/d/f;

    new-instance v0, Lcom/apicloud/a/i/a/d/f;

    const/4 v3, 0x2

    const-string v4, "FILE_PERMISSION"

    const-string v5, "\u65e0\u5b58\u50a8\u6743\u9650"

    invoke-direct {v0, v4, v3, v5}, Lcom/apicloud/a/i/a/d/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/d/f;->c:Lcom/apicloud/a/i/a/d/f;

    new-instance v0, Lcom/apicloud/a/i/a/d/f;

    const/4 v4, 0x3

    const-string v5, "OUT_OFF_MEMORY"

    const-string v6, "\u5185\u5b58\u6ea2\u51fa"

    invoke-direct {v0, v5, v4, v6}, Lcom/apicloud/a/i/a/d/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/d/f;->d:Lcom/apicloud/a/i/a/d/f;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/apicloud/a/i/a/d/f;

    sget-object v6, Lcom/apicloud/a/i/a/d/f;->a:Lcom/apicloud/a/i/a/d/f;

    aput-object v6, v5, v1

    sget-object v1, Lcom/apicloud/a/i/a/d/f;->b:Lcom/apicloud/a/i/a/d/f;

    aput-object v1, v5, v2

    sget-object v1, Lcom/apicloud/a/i/a/d/f;->c:Lcom/apicloud/a/i/a/d/f;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/apicloud/a/i/a/d/f;->f:[Lcom/apicloud/a/i/a/d/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/apicloud/a/i/a/d/f;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/f;
    .locals 1

    const-class v0, Lcom/apicloud/a/i/a/d/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a/d/f;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/a/i/a/d/f;
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/d/f;->f:[Lcom/apicloud/a/i/a/d/f;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/a/i/a/d/f;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
