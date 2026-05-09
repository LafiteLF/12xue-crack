.class public final enum Lcom/apicloud/FNPhotograph/CameraView$QUALITY;
.super Ljava/lang/Enum;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/FNPhotograph/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QUALITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/FNPhotograph/CameraView$QUALITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

.field public static final enum HIGH:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

.field public static final enum LOW:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

.field public static final enum MEDIUM:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;


# instance fields
.field public qualityValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    const/4 v1, 0x0

    const-string v2, "LOW"

    const/16 v3, 0x28

    invoke-direct {v0, v2, v1, v3}, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->LOW:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    new-instance v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    const/16 v4, 0x50

    invoke-direct {v0, v3, v2, v4}, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->MEDIUM:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    new-instance v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    const/16 v5, 0x64

    invoke-direct {v0, v4, v3, v5}, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->HIGH:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    .line 72
    sget-object v5, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->LOW:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    aput-object v5, v4, v1

    sget-object v1, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->MEDIUM:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->$VALUES:[Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->qualityValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/FNPhotograph/CameraView$QUALITY;
    .locals 1

    .line 72
    const-class v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/FNPhotograph/CameraView$QUALITY;
    .locals 1

    .line 72
    sget-object v0, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->$VALUES:[Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    invoke-virtual {v0}, [Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    return-object v0
.end method
