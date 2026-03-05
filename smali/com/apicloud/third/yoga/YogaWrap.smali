.class public final enum Lcom/apicloud/third/yoga/YogaWrap;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/third/yoga/YogaWrap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaWrap;

.field public static final enum NO_WRAP:Lcom/apicloud/third/yoga/YogaWrap;

.field public static final enum WRAP:Lcom/apicloud/third/yoga/YogaWrap;

.field public static final enum WRAP_REVERSE:Lcom/apicloud/third/yoga/YogaWrap;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/apicloud/third/yoga/YogaWrap;

    const/4 v1, 0x0

    const-string v2, "NO_WRAP"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/third/yoga/YogaWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaWrap;->NO_WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    new-instance v0, Lcom/apicloud/third/yoga/YogaWrap;

    const/4 v2, 0x1

    const-string v3, "WRAP"

    invoke-direct {v0, v3, v2, v2}, Lcom/apicloud/third/yoga/YogaWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaWrap;->WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    new-instance v0, Lcom/apicloud/third/yoga/YogaWrap;

    const/4 v3, 0x2

    const-string v4, "WRAP_REVERSE"

    invoke-direct {v0, v4, v3, v3}, Lcom/apicloud/third/yoga/YogaWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaWrap;->WRAP_REVERSE:Lcom/apicloud/third/yoga/YogaWrap;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/apicloud/third/yoga/YogaWrap;

    sget-object v5, Lcom/apicloud/third/yoga/YogaWrap;->NO_WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    aput-object v5, v4, v1

    sget-object v1, Lcom/apicloud/third/yoga/YogaWrap;->WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/apicloud/third/yoga/YogaWrap;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaWrap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/third/yoga/YogaWrap;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/apicloud/third/yoga/YogaWrap;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/apicloud/third/yoga/YogaWrap;->WRAP_REVERSE:Lcom/apicloud/third/yoga/YogaWrap;

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
    sget-object p0, Lcom/apicloud/third/yoga/YogaWrap;->WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    return-object p0

    :cond_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaWrap;->NO_WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaWrap;
    .locals 1

    const-class v0, Lcom/apicloud/third/yoga/YogaWrap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/third/yoga/YogaWrap;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/third/yoga/YogaWrap;
    .locals 4

    sget-object v0, Lcom/apicloud/third/yoga/YogaWrap;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaWrap;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/third/yoga/YogaWrap;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/yoga/YogaWrap;->mIntValue:I

    return v0
.end method
