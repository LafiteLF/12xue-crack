.class public final enum Lcom/apicloud/third/yoga/YogaEdge;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/third/yoga/YogaEdge;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum END:Lcom/apicloud/third/yoga/YogaEdge;

.field private static final synthetic ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum LEFT:Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum START:Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum TOP:Lcom/apicloud/third/yoga/YogaEdge;

.field public static final enum VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1, v1}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v2, 0x1

    const-string v3, "TOP"

    invoke-direct {v0, v3, v2, v2}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    invoke-direct {v0, v4, v3, v3}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v4, 0x3

    const-string v5, "BOTTOM"

    invoke-direct {v0, v5, v4, v4}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v5, 0x4

    const-string v6, "START"

    invoke-direct {v0, v6, v5, v5}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v6, 0x5

    const-string v7, "END"

    invoke-direct {v0, v7, v6, v6}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v7, 0x6

    const-string v8, "HORIZONTAL"

    invoke-direct {v0, v8, v7, v7}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v8, 0x7

    const-string v9, "VERTICAL"

    invoke-direct {v0, v9, v8, v8}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    new-instance v0, Lcom/apicloud/third/yoga/YogaEdge;

    const/16 v9, 0x8

    const-string v10, "ALL"

    invoke-direct {v0, v10, v9, v9}, Lcom/apicloud/third/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/apicloud/third/yoga/YogaEdge;

    sget-object v11, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v11, v10, v1

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v1, v10, v2

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v1, v10, v3

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v1, v10, v4

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v1, v10, v5

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v1, v10, v6

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v1, v10, v7

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/apicloud/third/yoga/YogaEdge;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaEdge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/apicloud/third/yoga/YogaEdge;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/apicloud/third/yoga/YogaEdge;
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
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaEdge;
    .locals 1

    const-class v0, Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/third/yoga/YogaEdge;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/third/yoga/YogaEdge;
    .locals 4

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->ENUM$VALUES:[Lcom/apicloud/third/yoga/YogaEdge;

    array-length v1, v0

    new-array v2, v1, [Lcom/apicloud/third/yoga/YogaEdge;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/yoga/YogaEdge;->mIntValue:I

    return v0
.end method
