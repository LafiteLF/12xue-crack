.class public final enum Ldoodle/DoodleParams$DialogType;
.super Ljava/lang/Enum;
.source "DoodleParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoodle/DoodleParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldoodle/DoodleParams$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldoodle/DoodleParams$DialogType;

.field public static final enum CLEAR_ALL:Ldoodle/DoodleParams$DialogType;

.field public static final enum COLOR_PICKER:Ldoodle/DoodleParams$DialogType;

.field public static final enum SAVE:Ldoodle/DoodleParams$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 131
    new-instance v0, Ldoodle/DoodleParams$DialogType;

    const/4 v1, 0x0

    const-string v2, "SAVE"

    invoke-direct {v0, v2, v1}, Ldoodle/DoodleParams$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleParams$DialogType;->SAVE:Ldoodle/DoodleParams$DialogType;

    new-instance v0, Ldoodle/DoodleParams$DialogType;

    const/4 v2, 0x1

    const-string v3, "CLEAR_ALL"

    invoke-direct {v0, v3, v2}, Ldoodle/DoodleParams$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleParams$DialogType;->CLEAR_ALL:Ldoodle/DoodleParams$DialogType;

    new-instance v0, Ldoodle/DoodleParams$DialogType;

    const/4 v3, 0x2

    const-string v4, "COLOR_PICKER"

    invoke-direct {v0, v4, v3}, Ldoodle/DoodleParams$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleParams$DialogType;->COLOR_PICKER:Ldoodle/DoodleParams$DialogType;

    const/4 v4, 0x3

    new-array v4, v4, [Ldoodle/DoodleParams$DialogType;

    .line 130
    sget-object v5, Ldoodle/DoodleParams$DialogType;->SAVE:Ldoodle/DoodleParams$DialogType;

    aput-object v5, v4, v1

    sget-object v1, Ldoodle/DoodleParams$DialogType;->CLEAR_ALL:Ldoodle/DoodleParams$DialogType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Ldoodle/DoodleParams$DialogType;->$VALUES:[Ldoodle/DoodleParams$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldoodle/DoodleParams$DialogType;
    .locals 1

    .line 130
    const-class v0, Ldoodle/DoodleParams$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldoodle/DoodleParams$DialogType;

    return-object p0
.end method

.method public static values()[Ldoodle/DoodleParams$DialogType;
    .locals 1

    .line 130
    sget-object v0, Ldoodle/DoodleParams$DialogType;->$VALUES:[Ldoodle/DoodleParams$DialogType;

    invoke-virtual {v0}, [Ldoodle/DoodleParams$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldoodle/DoodleParams$DialogType;

    return-object v0
.end method
