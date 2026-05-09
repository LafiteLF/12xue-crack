.class public final enum Lcom/uzmap/pkg/uzcore/p$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uzmap/pkg/uzcore/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uzmap/pkg/uzcore/p$a;

.field public static final enum b:Lcom/uzmap/pkg/uzcore/p$a;

.field public static final enum c:Lcom/uzmap/pkg/uzcore/p$a;

.field public static final enum d:Lcom/uzmap/pkg/uzcore/p$a;

.field public static final enum e:Lcom/uzmap/pkg/uzcore/p$a;

.field public static final enum f:Lcom/uzmap/pkg/uzcore/p$a;

.field private static final synthetic i:[Lcom/uzmap/pkg/uzcore/p$a;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/uzmap/pkg/uzcore/p$a;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "BACK"

    const-string v4, "keyback"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/uzmap/pkg/uzcore/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/p$a;

    const/4 v3, 0x1

    const-string v4, "VOLUME_UP"

    const-string v5, "volumeup"

    const/16 v6, 0x18

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/uzmap/pkg/uzcore/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/p$a;->b:Lcom/uzmap/pkg/uzcore/p$a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/p$a;

    const/4 v4, 0x2

    const-string v5, "VOLUME_DOWN"

    const-string v6, "volumedown"

    const/16 v7, 0x19

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/uzmap/pkg/uzcore/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/p$a;->c:Lcom/uzmap/pkg/uzcore/p$a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/p$a;

    const/4 v5, 0x3

    const-string v6, "MENU"

    const-string v7, "keymenu"

    const/16 v8, 0x52

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/uzmap/pkg/uzcore/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/p$a;->d:Lcom/uzmap/pkg/uzcore/p$a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/p$a;

    const-string v6, "PRESS"

    const-string v7, "keypress"

    const/16 v8, 0x3e9

    invoke-direct {v0, v6, v2, v7, v8}, Lcom/uzmap/pkg/uzcore/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/p$a;->e:Lcom/uzmap/pkg/uzcore/p$a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/p$a;

    const/4 v6, 0x5

    const-string v7, "LONG_PRESS"

    const-string v8, "longpress"

    const/16 v9, 0x3e8

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/uzmap/pkg/uzcore/p$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/p$a;->f:Lcom/uzmap/pkg/uzcore/p$a;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/uzmap/pkg/uzcore/p$a;

    sget-object v8, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    aput-object v8, v7, v1

    sget-object v1, Lcom/uzmap/pkg/uzcore/p$a;->b:Lcom/uzmap/pkg/uzcore/p$a;

    aput-object v1, v7, v3

    sget-object v1, Lcom/uzmap/pkg/uzcore/p$a;->c:Lcom/uzmap/pkg/uzcore/p$a;

    aput-object v1, v7, v4

    sget-object v1, Lcom/uzmap/pkg/uzcore/p$a;->d:Lcom/uzmap/pkg/uzcore/p$a;

    aput-object v1, v7, v5

    sget-object v1, Lcom/uzmap/pkg/uzcore/p$a;->e:Lcom/uzmap/pkg/uzcore/p$a;

    aput-object v1, v7, v2

    aput-object v0, v7, v6

    sput-object v7, Lcom/uzmap/pkg/uzcore/p$a;->i:[Lcom/uzmap/pkg/uzcore/p$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/p$a;->g:Ljava/lang/String;

    iput p4, p0, Lcom/uzmap/pkg/uzcore/p$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/p$a;
    .locals 1

    const-class v0, Lcom/uzmap/pkg/uzcore/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uzmap/pkg/uzcore/p$a;

    return-object p0
.end method

.method public static values()[Lcom/uzmap/pkg/uzcore/p$a;
    .locals 4

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->i:[Lcom/uzmap/pkg/uzcore/p$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/uzmap/pkg/uzcore/p$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
