.class public final enum Lcom/apicloud/third/yoga/YogaExperimentalFeature;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/third/yoga/YogaExperimentalFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaExperimentalFeature;

.field public static final enum WEB_FLEX_BASIS:Lcom/apicloud/third/yoga/YogaExperimentalFeature;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    const/4 v1, 0x0

    const-string v2, "WEB_FLEX_BASIS"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/third/yoga/YogaExperimentalFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;->WEB_FLEX_BASIS:Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    aput-object v0, v2, v1

    sput-object v2, Lcom/apicloud/third/yoga/YogaExperimentalFeature;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/apicloud/third/yoga/YogaExperimentalFeature;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;->WEB_FLEX_BASIS:Lcom/apicloud/third/yoga/YogaExperimentalFeature;

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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaExperimentalFeature;
    .locals 1

    const-class v0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/third/yoga/YogaExperimentalFeature;
    .locals 4

    sget-object v0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/third/yoga/YogaExperimentalFeature;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/yoga/YogaExperimentalFeature;->mIntValue:I

    return v0
.end method
