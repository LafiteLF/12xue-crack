.class public final enum Lcom/apicloud/third/yoga/LayoutPassReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/third/yoga/LayoutPassReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABS_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

.field public static final enum ABS_MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

.field private static final synthetic ENUM$VALUES:[Lcom/apicloud/third/yoga/LayoutPassReason;

.field public static final enum FLEX_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

.field public static final enum FLEX_MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

.field public static final enum INITIAL:Lcom/apicloud/third/yoga/LayoutPassReason;

.field public static final enum MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

.field public static final enum MULTILINE_STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;

.field public static final enum STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v1, 0x0

    const-string v2, "INITIAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->INITIAL:Lcom/apicloud/third/yoga/LayoutPassReason;

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v2, 0x1

    const-string v3, "ABS_LAYOUT"

    invoke-direct {v0, v3, v2, v2}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->ABS_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v3, 0x2

    const-string v4, "STRETCH"

    invoke-direct {v0, v4, v3, v3}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v4, 0x3

    const-string v5, "MULTILINE_STRETCH"

    invoke-direct {v0, v5, v4, v4}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->MULTILINE_STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v5, 0x4

    const-string v6, "FLEX_LAYOUT"

    invoke-direct {v0, v6, v5, v5}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->FLEX_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v6, 0x5

    const-string v7, "MEASURE"

    invoke-direct {v0, v7, v6, v6}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v7, 0x6

    const-string v8, "ABS_MEASURE"

    invoke-direct {v0, v8, v7, v7}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->ABS_MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    new-instance v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v8, 0x7

    const-string v9, "FLEX_MEASURE"

    invoke-direct {v0, v9, v8, v8}, Lcom/apicloud/third/yoga/LayoutPassReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->FLEX_MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/apicloud/third/yoga/LayoutPassReason;

    sget-object v10, Lcom/apicloud/third/yoga/LayoutPassReason;->INITIAL:Lcom/apicloud/third/yoga/LayoutPassReason;

    aput-object v10, v9, v1

    sget-object v1, Lcom/apicloud/third/yoga/LayoutPassReason;->ABS_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

    aput-object v1, v9, v2

    sget-object v1, Lcom/apicloud/third/yoga/LayoutPassReason;->STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;

    aput-object v1, v9, v3

    sget-object v1, Lcom/apicloud/third/yoga/LayoutPassReason;->MULTILINE_STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;

    aput-object v1, v9, v4

    sget-object v1, Lcom/apicloud/third/yoga/LayoutPassReason;->FLEX_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

    aput-object v1, v9, v5

    sget-object v1, Lcom/apicloud/third/yoga/LayoutPassReason;->MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    aput-object v1, v9, v6

    sget-object v1, Lcom/apicloud/third/yoga/LayoutPassReason;->ABS_MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/apicloud/third/yoga/LayoutPassReason;->ENUM$VALUES:[Lcom/apicloud/third/yoga/LayoutPassReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/third/yoga/LayoutPassReason;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/apicloud/third/yoga/LayoutPassReason;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->FLEX_MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->ABS_MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->MEASURE:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->FLEX_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->MULTILINE_STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->STRETCH:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->ABS_LAYOUT:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/apicloud/third/yoga/LayoutPassReason;->INITIAL:Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/third/yoga/LayoutPassReason;
    .locals 1

    const-class v0, Lcom/apicloud/third/yoga/LayoutPassReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/third/yoga/LayoutPassReason;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/third/yoga/LayoutPassReason;
    .locals 4

    sget-object v0, Lcom/apicloud/third/yoga/LayoutPassReason;->ENUM$VALUES:[Lcom/apicloud/third/yoga/LayoutPassReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/third/yoga/LayoutPassReason;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/yoga/LayoutPassReason;->mIntValue:I

    return v0
.end method
