.class public final enum Ldoodle/DoodleColor$Type;
.super Ljava/lang/Enum;
.source "DoodleColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoodle/DoodleColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldoodle/DoodleColor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldoodle/DoodleColor$Type;

.field public static final enum BITMAP:Ldoodle/DoodleColor$Type;

.field public static final enum COLOR:Ldoodle/DoodleColor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Ldoodle/DoodleColor$Type;

    const/4 v1, 0x0

    const-string v2, "COLOR"

    invoke-direct {v0, v2, v1}, Ldoodle/DoodleColor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleColor$Type;->COLOR:Ldoodle/DoodleColor$Type;

    .line 20
    new-instance v0, Ldoodle/DoodleColor$Type;

    const/4 v2, 0x1

    const-string v3, "BITMAP"

    invoke-direct {v0, v3, v2}, Ldoodle/DoodleColor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodleColor$Type;->BITMAP:Ldoodle/DoodleColor$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Ldoodle/DoodleColor$Type;

    .line 18
    sget-object v4, Ldoodle/DoodleColor$Type;->COLOR:Ldoodle/DoodleColor$Type;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Ldoodle/DoodleColor$Type;->$VALUES:[Ldoodle/DoodleColor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldoodle/DoodleColor$Type;
    .locals 1

    .line 18
    const-class v0, Ldoodle/DoodleColor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldoodle/DoodleColor$Type;

    return-object p0
.end method

.method public static values()[Ldoodle/DoodleColor$Type;
    .locals 1

    .line 18
    sget-object v0, Ldoodle/DoodleColor$Type;->$VALUES:[Ldoodle/DoodleColor$Type;

    invoke-virtual {v0}, [Ldoodle/DoodleColor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldoodle/DoodleColor$Type;

    return-object v0
.end method
