.class public final enum Lcom/apicloud/third/yoga/YogaLogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/third/yoga/YogaLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/apicloud/third/yoga/YogaLogLevel;

.field private static final synthetic ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaLogLevel;

.field public static final enum ERROR:Lcom/apicloud/third/yoga/YogaLogLevel;

.field public static final enum FATAL:Lcom/apicloud/third/yoga/YogaLogLevel;

.field public static final enum INFO:Lcom/apicloud/third/yoga/YogaLogLevel;

.field public static final enum VERBOSE:Lcom/apicloud/third/yoga/YogaLogLevel;

.field public static final enum WARN:Lcom/apicloud/third/yoga/YogaLogLevel;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/third/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaLogLevel;->ERROR:Lcom/apicloud/third/yoga/YogaLogLevel;

    new-instance v0, Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2, v2}, Lcom/apicloud/third/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaLogLevel;->WARN:Lcom/apicloud/third/yoga/YogaLogLevel;

    new-instance v0, Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3, v3}, Lcom/apicloud/third/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaLogLevel;->INFO:Lcom/apicloud/third/yoga/YogaLogLevel;

    new-instance v0, Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v4, 0x3

    const-string v5, "DEBUG"

    invoke-direct {v0, v5, v4, v4}, Lcom/apicloud/third/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaLogLevel;->DEBUG:Lcom/apicloud/third/yoga/YogaLogLevel;

    new-instance v0, Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v5, 0x4

    const-string v6, "VERBOSE"

    invoke-direct {v0, v6, v5, v5}, Lcom/apicloud/third/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaLogLevel;->VERBOSE:Lcom/apicloud/third/yoga/YogaLogLevel;

    new-instance v0, Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v6, 0x5

    const-string v7, "FATAL"

    invoke-direct {v0, v7, v6, v6}, Lcom/apicloud/third/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaLogLevel;->FATAL:Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/apicloud/third/yoga/YogaLogLevel;

    sget-object v8, Lcom/apicloud/third/yoga/YogaLogLevel;->ERROR:Lcom/apicloud/third/yoga/YogaLogLevel;

    aput-object v8, v7, v1

    sget-object v1, Lcom/apicloud/third/yoga/YogaLogLevel;->WARN:Lcom/apicloud/third/yoga/YogaLogLevel;

    aput-object v1, v7, v2

    sget-object v1, Lcom/apicloud/third/yoga/YogaLogLevel;->INFO:Lcom/apicloud/third/yoga/YogaLogLevel;

    aput-object v1, v7, v3

    sget-object v1, Lcom/apicloud/third/yoga/YogaLogLevel;->DEBUG:Lcom/apicloud/third/yoga/YogaLogLevel;

    aput-object v1, v7, v4

    sget-object v1, Lcom/apicloud/third/yoga/YogaLogLevel;->VERBOSE:Lcom/apicloud/third/yoga/YogaLogLevel;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/apicloud/third/yoga/YogaLogLevel;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/third/yoga/YogaLogLevel;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/apicloud/third/yoga/YogaLogLevel;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/apicloud/third/yoga/YogaLogLevel;->FATAL:Lcom/apicloud/third/yoga/YogaLogLevel;

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
    sget-object p0, Lcom/apicloud/third/yoga/YogaLogLevel;->VERBOSE:Lcom/apicloud/third/yoga/YogaLogLevel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaLogLevel;->DEBUG:Lcom/apicloud/third/yoga/YogaLogLevel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/apicloud/third/yoga/YogaLogLevel;->INFO:Lcom/apicloud/third/yoga/YogaLogLevel;

    return-object p0

    :cond_4
    sget-object p0, Lcom/apicloud/third/yoga/YogaLogLevel;->WARN:Lcom/apicloud/third/yoga/YogaLogLevel;

    return-object p0

    :cond_5
    sget-object p0, Lcom/apicloud/third/yoga/YogaLogLevel;->ERROR:Lcom/apicloud/third/yoga/YogaLogLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaLogLevel;
    .locals 1

    const-class v0, Lcom/apicloud/third/yoga/YogaLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/third/yoga/YogaLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/third/yoga/YogaLogLevel;
    .locals 4

    sget-object v0, Lcom/apicloud/third/yoga/YogaLogLevel;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaLogLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/third/yoga/YogaLogLevel;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/yoga/YogaLogLevel;->mIntValue:I

    return v0
.end method
