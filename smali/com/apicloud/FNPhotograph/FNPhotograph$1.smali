.class Lcom/apicloud/FNPhotograph/FNPhotograph$1;
.super Landroid/view/OrientationEventListener;
.source "FNPhotograph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/content/Context;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$1;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    const/16 v0, 0x87

    const/16 v1, 0x2d

    if-gt v1, p1, :cond_0

    if-ge p1, v0, :cond_0

    const/16 p1, 0xb4

    .line 161
    sput p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->backCameraRotatedValue:I

    .line 162
    sput p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->frontCameraRotatedValue:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/16 v3, 0xe1

    if-gt v0, p1, :cond_1

    if-ge p1, v3, :cond_1

    .line 164
    sput v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->backCameraRotatedValue:I

    .line 165
    sput v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->frontCameraRotatedValue:I

    goto :goto_0

    :cond_1
    if-gt v3, p1, :cond_2

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_2

    const/4 p1, 0x0

    .line 167
    sput p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->backCameraRotatedValue:I

    .line 168
    sput p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->frontCameraRotatedValue:I

    goto :goto_0

    .line 170
    :cond_2
    sput v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->backCameraRotatedValue:I

    .line 171
    sput v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->frontCameraRotatedValue:I

    :goto_0
    return-void
.end method
