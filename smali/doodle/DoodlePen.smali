.class public final enum Ldoodle/DoodlePen;
.super Ljava/lang/Enum;
.source "DoodlePen.java"

# interfaces
.implements Ldoodle/core/IDoodlePen;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldoodle/DoodlePen;",
        ">;",
        "Ldoodle/core/IDoodlePen;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldoodle/DoodlePen;

.field public static final enum BITMAP:Ldoodle/DoodlePen;

.field public static final enum BRUSH:Ldoodle/DoodlePen;

.field public static final enum COPY:Ldoodle/DoodlePen;

.field public static final enum ERASER:Ldoodle/DoodlePen;

.field public static final enum TEXT:Ldoodle/DoodlePen;


# instance fields
.field private mCopyLocation:Ldoodle/CopyLocation;

.field private mMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Ldoodle/DoodlePen;

    const/4 v1, 0x0

    const-string v2, "BRUSH"

    invoke-direct {v0, v2, v1}, Ldoodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    .line 18
    new-instance v0, Ldoodle/DoodlePen;

    const/4 v2, 0x1

    const-string v3, "COPY"

    invoke-direct {v0, v3, v2}, Ldoodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    .line 19
    new-instance v0, Ldoodle/DoodlePen;

    const/4 v3, 0x2

    const-string v4, "ERASER"

    invoke-direct {v0, v4, v3}, Ldoodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    .line 20
    new-instance v0, Ldoodle/DoodlePen;

    const/4 v4, 0x3

    const-string v5, "TEXT"

    invoke-direct {v0, v5, v4}, Ldoodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    .line 21
    new-instance v0, Ldoodle/DoodlePen;

    const/4 v5, 0x4

    const-string v6, "BITMAP"

    invoke-direct {v0, v6, v5}, Ldoodle/DoodlePen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    const/4 v6, 0x5

    new-array v6, v6, [Ldoodle/DoodlePen;

    .line 15
    sget-object v7, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    aput-object v7, v6, v1

    sget-object v1, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    aput-object v1, v6, v2

    sget-object v1, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    aput-object v1, v6, v3

    sget-object v1, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Ldoodle/DoodlePen;->$VALUES:[Ldoodle/DoodlePen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldoodle/DoodlePen;
    .locals 1

    .line 15
    const-class v0, Ldoodle/DoodlePen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldoodle/DoodlePen;

    return-object p0
.end method

.method public static values()[Ldoodle/DoodlePen;
    .locals 1

    .line 15
    sget-object v0, Ldoodle/DoodlePen;->$VALUES:[Ldoodle/DoodlePen;

    invoke-virtual {v0}, [Ldoodle/DoodlePen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldoodle/DoodlePen;

    return-object v0
.end method


# virtual methods
.method public config(Ldoodle/core/IDoodleItem;Landroid/graphics/Paint;)V
    .locals 3

    .line 28
    move-object p2, p1

    check-cast p2, Ldoodle/DoodleItemBase;

    .line 29
    invoke-virtual {p2}, Ldoodle/DoodleItemBase;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p2

    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-ne p2, v0, :cond_1

    .line 33
    move-object p2, p1

    check-cast p2, Ldoodle/DoodlePath;

    invoke-virtual {p2}, Ldoodle/DoodlePath;->getCopyLocation()Ldoodle/CopyLocation;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Ldoodle/CopyLocation;->getTouchStartX()F

    move-result v0

    invoke-virtual {p2}, Ldoodle/CopyLocation;->getCopyStartX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 37
    invoke-virtual {p2}, Ldoodle/CopyLocation;->getTouchStartY()F

    move-result v1

    invoke-virtual {p2}, Ldoodle/CopyLocation;->getCopyStartY()F

    move-result p2

    sub-float p2, v1, p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 39
    :goto_0
    iget-object v1, p0, Ldoodle/DoodlePen;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 40
    iget-object v1, p0, Ldoodle/DoodlePen;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x80000000

    add-float/2addr v0, v2

    add-float/2addr v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 41
    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object p2

    instance-of p2, p2, Ldoodle/DoodleColor;

    if-eqz p2, :cond_1

    .line 42
    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object p1

    check-cast p1, Ldoodle/DoodleColor;

    iget-object p2, p0, Ldoodle/DoodlePen;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Ldoodle/DoodleColor;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public copy()Ldoodle/core/IDoodlePen;
    .locals 0

    return-object p0
.end method

.method public drawHelpers(Landroid/graphics/Canvas;Ldoodle/core/IDoodle;)V
    .locals 1

    .line 69
    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-ne p0, v0, :cond_0

    .line 70
    instance-of v0, p2, Ldoodle/DoodleView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Ldoodle/DoodlePen;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-interface {p2}, Ldoodle/core/IDoodle;->getSize()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Ldoodle/CopyLocation;->drawItSelf(Landroid/graphics/Canvas;F)V

    :cond_0
    return-void
.end method

.method public getCopyLocation()Ldoodle/CopyLocation;
    .locals 1

    .line 48
    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Ldoodle/DoodlePen;->mCopyLocation:Ldoodle/CopyLocation;

    if-nez v0, :cond_2

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Ldoodle/DoodlePen;->mCopyLocation:Ldoodle/CopyLocation;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ldoodle/CopyLocation;

    invoke-direct {v0}, Ldoodle/CopyLocation;-><init>()V

    iput-object v0, p0, Ldoodle/DoodlePen;->mCopyLocation:Ldoodle/CopyLocation;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ldoodle/DoodlePen;->mMatrix:Landroid/graphics/Matrix;

    .line 57
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 59
    :cond_2
    :goto_0
    iget-object v0, p0, Ldoodle/DoodlePen;->mCopyLocation:Ldoodle/CopyLocation;

    return-object v0
.end method
