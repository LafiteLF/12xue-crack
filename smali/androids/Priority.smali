.class public final enum Landroids/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroids/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroids/Priority;

.field public static final enum BG_LOW:Landroids/Priority;

.field public static final enum BG_NORMAL:Landroids/Priority;

.field public static final enum BG_TOP:Landroids/Priority;

.field public static final enum DEFAULT:Landroids/Priority;

.field public static final enum UI_LOW:Landroids/Priority;

.field public static final enum UI_NORMAL:Landroids/Priority;

.field public static final enum UI_TOP:Landroids/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Landroids/Priority;

    const/4 v1, 0x0

    const-string v2, "UI_TOP"

    invoke-direct {v0, v2, v1}, Landroids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/Priority;->UI_TOP:Landroids/Priority;

    .line 5
    new-instance v0, Landroids/Priority;

    const/4 v2, 0x1

    const-string v3, "UI_NORMAL"

    invoke-direct {v0, v3, v2}, Landroids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/Priority;->UI_NORMAL:Landroids/Priority;

    .line 6
    new-instance v0, Landroids/Priority;

    const/4 v3, 0x2

    const-string v4, "UI_LOW"

    invoke-direct {v0, v4, v3}, Landroids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/Priority;->UI_LOW:Landroids/Priority;

    .line 7
    new-instance v0, Landroids/Priority;

    const/4 v4, 0x3

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v4}, Landroids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/Priority;->DEFAULT:Landroids/Priority;

    .line 8
    new-instance v0, Landroids/Priority;

    const/4 v5, 0x4

    const-string v6, "BG_TOP"

    invoke-direct {v0, v6, v5}, Landroids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/Priority;->BG_TOP:Landroids/Priority;

    .line 9
    new-instance v0, Landroids/Priority;

    const/4 v6, 0x5

    const-string v7, "BG_NORMAL"

    invoke-direct {v0, v7, v6}, Landroids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/Priority;->BG_NORMAL:Landroids/Priority;

    .line 10
    new-instance v0, Landroids/Priority;

    const/4 v7, 0x6

    const-string v8, "BG_LOW"

    invoke-direct {v0, v8, v7}, Landroids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/Priority;->BG_LOW:Landroids/Priority;

    const/4 v8, 0x7

    new-array v8, v8, [Landroids/Priority;

    .line 3
    sget-object v9, Landroids/Priority;->UI_TOP:Landroids/Priority;

    aput-object v9, v8, v1

    sget-object v1, Landroids/Priority;->UI_NORMAL:Landroids/Priority;

    aput-object v1, v8, v2

    sget-object v1, Landroids/Priority;->UI_LOW:Landroids/Priority;

    aput-object v1, v8, v3

    sget-object v1, Landroids/Priority;->DEFAULT:Landroids/Priority;

    aput-object v1, v8, v4

    sget-object v1, Landroids/Priority;->BG_TOP:Landroids/Priority;

    aput-object v1, v8, v5

    sget-object v1, Landroids/Priority;->BG_NORMAL:Landroids/Priority;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Landroids/Priority;->$VALUES:[Landroids/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroids/Priority;
    .locals 1

    .line 3
    const-class v0, Landroids/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroids/Priority;

    return-object p0
.end method

.method public static values()[Landroids/Priority;
    .locals 1

    .line 3
    sget-object v0, Landroids/Priority;->$VALUES:[Landroids/Priority;

    invoke-virtual {v0}, [Landroids/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroids/Priority;

    return-object v0
.end method
