.class public final enum Lcom/eclipsesource/v8/debug/StepAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eclipsesource/v8/debug/StepAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/eclipsesource/v8/debug/StepAction;

.field public static final enum STEP_FRAME:Lcom/eclipsesource/v8/debug/StepAction;

.field public static final enum STEP_IN:Lcom/eclipsesource/v8/debug/StepAction;

.field public static final enum STEP_NEXT:Lcom/eclipsesource/v8/debug/StepAction;

.field public static final enum STEP_OUT:Lcom/eclipsesource/v8/debug/StepAction;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/eclipsesource/v8/debug/StepAction;

    const/4 v1, 0x0

    const-string v2, "STEP_OUT"

    invoke-direct {v0, v2, v1, v1}, Lcom/eclipsesource/v8/debug/StepAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/StepAction;->STEP_OUT:Lcom/eclipsesource/v8/debug/StepAction;

    new-instance v0, Lcom/eclipsesource/v8/debug/StepAction;

    const/4 v2, 0x1

    const-string v3, "STEP_NEXT"

    invoke-direct {v0, v3, v2, v2}, Lcom/eclipsesource/v8/debug/StepAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/StepAction;->STEP_NEXT:Lcom/eclipsesource/v8/debug/StepAction;

    new-instance v0, Lcom/eclipsesource/v8/debug/StepAction;

    const/4 v3, 0x2

    const-string v4, "STEP_IN"

    invoke-direct {v0, v4, v3, v3}, Lcom/eclipsesource/v8/debug/StepAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/StepAction;->STEP_IN:Lcom/eclipsesource/v8/debug/StepAction;

    new-instance v0, Lcom/eclipsesource/v8/debug/StepAction;

    const/4 v4, 0x3

    const-string v5, "STEP_FRAME"

    invoke-direct {v0, v5, v4, v4}, Lcom/eclipsesource/v8/debug/StepAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/StepAction;->STEP_FRAME:Lcom/eclipsesource/v8/debug/StepAction;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/eclipsesource/v8/debug/StepAction;

    sget-object v6, Lcom/eclipsesource/v8/debug/StepAction;->STEP_OUT:Lcom/eclipsesource/v8/debug/StepAction;

    aput-object v6, v5, v1

    sget-object v1, Lcom/eclipsesource/v8/debug/StepAction;->STEP_NEXT:Lcom/eclipsesource/v8/debug/StepAction;

    aput-object v1, v5, v2

    sget-object v1, Lcom/eclipsesource/v8/debug/StepAction;->STEP_IN:Lcom/eclipsesource/v8/debug/StepAction;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/eclipsesource/v8/debug/StepAction;->ENUM$VALUES:[Lcom/eclipsesource/v8/debug/StepAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/eclipsesource/v8/debug/StepAction;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eclipsesource/v8/debug/StepAction;
    .locals 1

    const-class v0, Lcom/eclipsesource/v8/debug/StepAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eclipsesource/v8/debug/StepAction;

    return-object p0
.end method

.method public static values()[Lcom/eclipsesource/v8/debug/StepAction;
    .locals 4

    sget-object v0, Lcom/eclipsesource/v8/debug/StepAction;->ENUM$VALUES:[Lcom/eclipsesource/v8/debug/StepAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/eclipsesource/v8/debug/StepAction;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
