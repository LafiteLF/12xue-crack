.class public final Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_RECT_HEIGHT:I = 0x28

.field private static final CORNER_RECT_WIDTH:I = 0x8

.field private static final OPAQUE:I = 0xff

.field private static final SCANNER_LINE_HEIGHT:I = 0xa

.field private static final SCANNER_LINE_MOVE_DISTANCE:I = 0x5

.field public static scannerEnd:I

.field public static scannerStart:I


# instance fields
.field private cornerColor:I

.field private frameColor:I

.field private laserColor:I

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLineColor:Ljava/lang/String;

.field private mOrientationStr:Ljava/lang/String;

.field private maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultColor:I

.field private resultPointColor:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0x3f000100    # -7.999878f

    .line 70
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultPointColor:I

    const v0, -0x6f000001

    .line 72
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->frameColor:I

    const v0, 0xff00

    .line 74
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->cornerColor:I

    const/high16 v1, -0x50000000

    .line 79
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultColor:I

    const/high16 v1, 0x60000000

    .line 80
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->maskColor:I

    .line 84
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->laserColor:I

    const-string v0, "\u5bf9\u51c6\u6761\u5f62\u7801\uff0f\u4e8c\u7ef4\u7801\uff0c\u5373\u53ef\u81ea\u52a8\u626b\u63cf"

    .line 88
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->text:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "orientation"

    const-string v3, "attr"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 96
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "ViewfinderView_orientation"

    .line 97
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResStyleableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mOrientationStr:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    sput v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    .line 101
    sput v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerEnd:I

    .line 102
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    new-instance p2, Ljava/util/HashSet;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 105
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v5, v0

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v5, v0

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v5, v0

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v5, v0

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    .line 240
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 239
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    .line 242
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 241
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 244
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    .line 245
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 244
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 246
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    .line 247
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 246
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 147
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultColor:I

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->maskColor:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p3

    int-to-float v2, v2

    .line 149
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v3

    iget-object v9, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 150
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    iget-object v15, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 151
    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v11, v3

    iget-object v12, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 152
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v9, v1

    move/from16 v1, p4

    int-to-float v11, v1

    iget-object v12, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const-string v1, "#90FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 225
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 226
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x1

    int-to-float v5, p2

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 251
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    sget v4, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    int-to-float v6, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    .line 260
    sget v4, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v4, v4, 0xa

    int-to-float v8, v4

    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->shadeColor(I)I

    move-result v9

    iget v10, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->laserColor:I

    sget-object v11, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    .line 259
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 263
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mLineColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    new-instance v4, Landroid/graphics/RadialGradient;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v6, v5

    .line 265
    sget v5, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v5, v5, 0x5

    int-to-float v7, v5

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, -0x1

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->shadeColor(I)I

    move-result v10

    .line 266
    sget-object v11, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v5, v4

    .line 264
    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 268
    :cond_0
    new-instance v4, Landroid/graphics/RadialGradient;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v13, v3

    .line 269
    sget v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v14, v3

    const/high16 v15, 0x43b40000    # 360.0f

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mLineColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v16

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mLineColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->shadeColor(I)I

    move-result v17

    .line 270
    sget-object v18, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v12, v4

    .line 268
    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 276
    :goto_0
    new-instance v3, Landroid/graphics/SweepGradient;

    .line 277
    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 278
    sget v6, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    .line 279
    iget v7, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v7}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->shadeColor(I)I

    move-result v7

    .line 280
    iget v8, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->laserColor:I

    .line 276
    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 282
    new-instance v3, Landroid/graphics/ComposeShader;

    .line 283
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 282
    invoke-direct {v3, v4, v2, v5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 285
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 286
    sget v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    sget v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerEnd:I

    if-gt v2, v3, :cond_1

    .line 291
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    sget v4, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    int-to-float v4, v4

    .line 292
    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    sget v5, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    .line 291
    invoke-direct {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 293
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 294
    sget v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v1, v1, 0x5

    sput v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    goto :goto_1

    .line 296
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    .line 298
    :goto_1
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 170
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 171
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    goto :goto_1

    .line 174
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 175
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 176
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    if-eqz v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 184
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 186
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v3, v1

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    .line 178
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPoint;

    .line 179
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v4, v2

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 197
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getHintTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getHintTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->sp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 199
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 200
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "hintText"

    const-string v2, "\u5bf9\u51c6\u6761\u5f62\u7801\uff0f\u4e8c\u7ef4\u7801\uff0c\u5373\u53ef\u81ea\u52a8\u626b\u63cf"

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v8, v1

    cmpl-float v1, v2, v8

    if-lez v1, :cond_0

    .line 206
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x28

    add-int/lit8 p2, p2, 0x32

    int-to-float p2, p2

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 328
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 316
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 111
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mOrientationStr:Ljava/lang/String;

    const-string v1, "port"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mOrientationStr:Ljava/lang/String;

    const-string v1, "land"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->getLandFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 124
    :cond_2
    sget v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    if-eqz v1, :cond_3

    sget v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerEnd:I

    if-nez v1, :cond_4

    .line 125
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerStart:I

    .line 126
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sput v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->scannerEnd:I

    .line 129
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 132
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 134
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 135
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 141
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    const-wide/16 v5, 0xa

    .line 142
    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    :goto_1
    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->mLineColor:Ljava/lang/String;

    return-void
.end method

.method public shadeColor(I)I
    .locals 2

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "20"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 310
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
