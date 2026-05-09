.class public final enum Ldoodle/DoodleShape;
.super Ljava/lang/Enum;
.source "DoodleShape.java"

# interfaces
.implements Ldoodle/core/IDoodleShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldoodle/DoodleShape;",
        ">;",
        "Ldoodle/core/IDoodleShape;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldoodle/DoodleShape;

.field public static final enum ARROW:Ldoodle/DoodleShape;

.field public static final enum FILL_CIRCLE:Ldoodle/DoodleShape;

.field public static final enum FILL_RECT:Ldoodle/DoodleShape;

.field public static final enum HAND_WRITE:Ldoodle/DoodleShape;

.field public static final enum HOLLOW_CIRCLE:Ldoodle/DoodleShape;

.field public static final enum HOLLOW_RECT:Ldoodle/DoodleShape;

.field public static final enum LINE:Ldoodle/DoodleShape;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Ldoodle/DoodleShape;

    const/4 v1, 0x0

    const-string v2, "HAND_WRITE"

    invoke-direct {v0, v2, v1}, Ldoodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    .line 15
    new-instance v0, Ldoodle/DoodleShape;

    const/4 v2, 0x1

    const-string v3, "ARROW"

    invoke-direct {v0, v3, v2}, Ldoodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    .line 16
    new-instance v0, Ldoodle/DoodleShape;

    const/4 v3, 0x2

    const-string v4, "LINE"

    invoke-direct {v0, v4, v3}, Ldoodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleShape;->LINE:Ldoodle/DoodleShape;

    .line 17
    new-instance v0, Ldoodle/DoodleShape;

    const/4 v4, 0x3

    const-string v5, "FILL_CIRCLE"

    invoke-direct {v0, v5, v4}, Ldoodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    .line 18
    new-instance v0, Ldoodle/DoodleShape;

    const/4 v5, 0x4

    const-string v6, "HOLLOW_CIRCLE"

    invoke-direct {v0, v6, v5}, Ldoodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleShape;->HOLLOW_CIRCLE:Ldoodle/DoodleShape;

    .line 19
    new-instance v0, Ldoodle/DoodleShape;

    const/4 v6, 0x5

    const-string v7, "FILL_RECT"

    invoke-direct {v0, v7, v6}, Ldoodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    .line 20
    new-instance v0, Ldoodle/DoodleShape;

    const/4 v7, 0x6

    const-string v8, "HOLLOW_RECT"

    invoke-direct {v0, v8, v7}, Ldoodle/DoodleShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleShape;->HOLLOW_RECT:Ldoodle/DoodleShape;

    const/4 v8, 0x7

    new-array v8, v8, [Ldoodle/DoodleShape;

    .line 13
    sget-object v9, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    aput-object v9, v8, v1

    sget-object v1, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    aput-object v1, v8, v2

    sget-object v1, Ldoodle/DoodleShape;->LINE:Ldoodle/DoodleShape;

    aput-object v1, v8, v3

    sget-object v1, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    aput-object v1, v8, v4

    sget-object v1, Ldoodle/DoodleShape;->HOLLOW_CIRCLE:Ldoodle/DoodleShape;

    aput-object v1, v8, v5

    sget-object v1, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Ldoodle/DoodleShape;->$VALUES:[Ldoodle/DoodleShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldoodle/DoodleShape;
    .locals 1

    .line 13
    const-class v0, Ldoodle/DoodleShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldoodle/DoodleShape;

    return-object p0
.end method

.method public static values()[Ldoodle/DoodleShape;
    .locals 1

    .line 13
    sget-object v0, Ldoodle/DoodleShape;->$VALUES:[Ldoodle/DoodleShape;

    invoke-virtual {v0}, [Ldoodle/DoodleShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldoodle/DoodleShape;

    return-object v0
.end method


# virtual methods
.method public config(Ldoodle/core/IDoodleItem;Landroid/graphics/Paint;)V
    .locals 2

    .line 25
    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v0

    sget-object v1, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v0

    sget-object v1, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object p1

    sget-object v0, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_1
    return-void
.end method

.method public copy()Ldoodle/core/IDoodleShape;
    .locals 0

    return-object p0
.end method

.method public drawHelpers(Landroid/graphics/Canvas;Ldoodle/core/IDoodle;)V
    .locals 0

    return-void
.end method
