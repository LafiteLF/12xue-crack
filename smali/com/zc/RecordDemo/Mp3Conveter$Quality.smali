.class final enum Lcom/zc/RecordDemo/Mp3Conveter$Quality;
.super Ljava/lang/Enum;
.source "Mp3Conveter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zc/RecordDemo/Mp3Conveter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zc/RecordDemo/Mp3Conveter$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/zc/RecordDemo/Mp3Conveter$Quality;

.field public static final enum HIGH:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

.field public static final enum LOW:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

.field public static final enum MAX:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

.field public static final enum MEDIUM:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

.field public static final enum MIN:Lcom/zc/RecordDemo/Mp3Conveter$Quality;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    const/4 v1, 0x0

    const-string v2, "MIN"

    const-string v3, "min"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/zc/RecordDemo/Mp3Conveter$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->MIN:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    new-instance v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "LOW"

    const-string v5, "low"

    invoke-direct {v0, v4, v2, v5, v3}, Lcom/zc/RecordDemo/Mp3Conveter$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->LOW:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    new-instance v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    const/4 v4, 0x5

    const/4 v5, 0x2

    const-string v6, "MEDIUM"

    const-string v7, "medium"

    invoke-direct {v0, v6, v5, v7, v4}, Lcom/zc/RecordDemo/Mp3Conveter$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->MEDIUM:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    new-instance v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    const-string v6, "HIGH"

    const-string v7, "high"

    const/4 v8, 0x7

    invoke-direct {v0, v6, v3, v7, v8}, Lcom/zc/RecordDemo/Mp3Conveter$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->HIGH:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    new-instance v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    const/4 v6, 0x4

    const-string v7, "MAX"

    const-string v8, "max"

    const/16 v9, 0x9

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/zc/RecordDemo/Mp3Conveter$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->MAX:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    new-array v4, v4, [Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    .line 19
    sget-object v7, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->MIN:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    aput-object v7, v4, v1

    sget-object v1, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->LOW:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    aput-object v1, v4, v2

    sget-object v1, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->MEDIUM:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    aput-object v1, v4, v5

    sget-object v1, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->HIGH:Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    aput-object v1, v4, v3

    aput-object v0, v4, v6

    sput-object v4, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->ENUM$VALUES:[Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->value:I

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->name:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->value:I

    .line 28
    iput-object p3, p0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zc/RecordDemo/Mp3Conveter$Quality;
    .locals 1

    .line 1
    const-class v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    return-object p0
.end method

.method public static values()[Lcom/zc/RecordDemo/Mp3Conveter$Quality;
    .locals 4

    .line 1
    sget-object v0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->ENUM$VALUES:[Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    array-length v1, v0

    new-array v2, v1, [Lcom/zc/RecordDemo/Mp3Conveter$Quality;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/zc/RecordDemo/Mp3Conveter$Quality;->value:I

    return v0
.end method
