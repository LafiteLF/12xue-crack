.class public final enum Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;
.super Ljava/lang/Enum;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/FNPhotograph/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

.field public static final enum FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

.field public static final enum NoBlank:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    const/4 v1, 0x0

    const-string v2, "FitToParent"

    invoke-direct {v0, v2, v1}, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    .line 70
    new-instance v0, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    const/4 v2, 0x1

    const-string v3, "NoBlank"

    invoke-direct {v0, v3, v2}, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->NoBlank:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    .line 68
    sget-object v4, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->$VALUES:[Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;
    .locals 1

    .line 68
    const-class v0, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    return-object p0
.end method

.method public static values()[Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;
    .locals 1

    .line 68
    sget-object v0, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->$VALUES:[Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    invoke-virtual {v0}, [Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    return-object v0
.end method
