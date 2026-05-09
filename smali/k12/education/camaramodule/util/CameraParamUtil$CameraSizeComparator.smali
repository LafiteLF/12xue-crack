.class Lk12/education/camaramodule/util/CameraParamUtil$CameraSizeComparator;
.super Ljava/lang/Object;
.source "CameraParamUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk12/education/camaramodule/util/CameraParamUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/util/CameraParamUtil;


# direct methods
.method private constructor <init>(Lk12/education/camaramodule/util/CameraParamUtil;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lk12/education/camaramodule/util/CameraParamUtil$CameraSizeComparator;->this$0:Lk12/education/camaramodule/util/CameraParamUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lk12/education/camaramodule/util/CameraParamUtil;Lk12/education/camaramodule/util/CameraParamUtil$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lk12/education/camaramodule/util/CameraParamUtil$CameraSizeComparator;-><init>(Lk12/education/camaramodule/util/CameraParamUtil;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 2

    .line 117
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 115
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lk12/education/camaramodule/util/CameraParamUtil$CameraSizeComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
