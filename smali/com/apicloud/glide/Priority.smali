.class public final enum Lcom/apicloud/glide/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/glide/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apicloud/glide/Priority;

.field public static final enum HIGH:Lcom/apicloud/glide/Priority;

.field public static final enum IMMEDIATE:Lcom/apicloud/glide/Priority;

.field public static final enum LOW:Lcom/apicloud/glide/Priority;

.field public static final enum NORMAL:Lcom/apicloud/glide/Priority;

.field public static final enum priority:Lcom/apicloud/glide/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lcom/apicloud/glide/Priority;

    const/4 v1, 0x0

    const-string v2, "IMMEDIATE"

    invoke-direct {v0, v2, v1}, Lcom/apicloud/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/glide/Priority;->IMMEDIATE:Lcom/apicloud/glide/Priority;

    .line 10
    new-instance v0, Lcom/apicloud/glide/Priority;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lcom/apicloud/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/glide/Priority;->HIGH:Lcom/apicloud/glide/Priority;

    .line 11
    new-instance v0, Lcom/apicloud/glide/Priority;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v3}, Lcom/apicloud/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/glide/Priority;->NORMAL:Lcom/apicloud/glide/Priority;

    .line 12
    new-instance v0, Lcom/apicloud/glide/Priority;

    const/4 v4, 0x3

    const-string v5, "LOW"

    invoke-direct {v0, v5, v4}, Lcom/apicloud/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/glide/Priority;->LOW:Lcom/apicloud/glide/Priority;

    new-instance v0, Lcom/apicloud/glide/Priority;

    const/4 v5, 0x4

    const-string v6, "priority"

    invoke-direct {v0, v6, v5}, Lcom/apicloud/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/glide/Priority;->priority:Lcom/apicloud/glide/Priority;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/apicloud/glide/Priority;

    .line 8
    sget-object v7, Lcom/apicloud/glide/Priority;->IMMEDIATE:Lcom/apicloud/glide/Priority;

    aput-object v7, v6, v1

    sget-object v1, Lcom/apicloud/glide/Priority;->HIGH:Lcom/apicloud/glide/Priority;

    aput-object v1, v6, v2

    sget-object v1, Lcom/apicloud/glide/Priority;->NORMAL:Lcom/apicloud/glide/Priority;

    aput-object v1, v6, v3

    sget-object v1, Lcom/apicloud/glide/Priority;->LOW:Lcom/apicloud/glide/Priority;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/apicloud/glide/Priority;->$VALUES:[Lcom/apicloud/glide/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/glide/Priority;
    .locals 1

    .line 8
    const-class v0, Lcom/apicloud/glide/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/glide/Priority;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/glide/Priority;
    .locals 1

    .line 8
    sget-object v0, Lcom/apicloud/glide/Priority;->$VALUES:[Lcom/apicloud/glide/Priority;

    invoke-virtual {v0}, [Lcom/apicloud/glide/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apicloud/glide/Priority;

    return-object v0
.end method
