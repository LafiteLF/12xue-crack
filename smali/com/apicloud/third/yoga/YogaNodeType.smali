.class public final enum Lcom/apicloud/third/yoga/YogaNodeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/third/yoga/YogaNodeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/apicloud/third/yoga/YogaNodeType;

.field private static final synthetic ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaNodeType;

.field public static final enum TEXT:Lcom/apicloud/third/yoga/YogaNodeType;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/apicloud/third/yoga/YogaNodeType;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/third/yoga/YogaNodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaNodeType;->DEFAULT:Lcom/apicloud/third/yoga/YogaNodeType;

    new-instance v0, Lcom/apicloud/third/yoga/YogaNodeType;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2, v2}, Lcom/apicloud/third/yoga/YogaNodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaNodeType;->TEXT:Lcom/apicloud/third/yoga/YogaNodeType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/apicloud/third/yoga/YogaNodeType;

    sget-object v4, Lcom/apicloud/third/yoga/YogaNodeType;->DEFAULT:Lcom/apicloud/third/yoga/YogaNodeType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/apicloud/third/yoga/YogaNodeType;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaNodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/third/yoga/YogaNodeType;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/apicloud/third/yoga/YogaNodeType;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/apicloud/third/yoga/YogaNodeType;->TEXT:Lcom/apicloud/third/yoga/YogaNodeType;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaNodeType;->DEFAULT:Lcom/apicloud/third/yoga/YogaNodeType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaNodeType;
    .locals 1

    const-class v0, Lcom/apicloud/third/yoga/YogaNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/third/yoga/YogaNodeType;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/third/yoga/YogaNodeType;
    .locals 4

    sget-object v0, Lcom/apicloud/third/yoga/YogaNodeType;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaNodeType;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/third/yoga/YogaNodeType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/yoga/YogaNodeType;->mIntValue:I

    return v0
.end method
