.class public Ldoodle/DoodlePath;
.super Ldoodle/DoodleRotatableItemBase;
.source "DoodlePath.java"


# instance fields
.field private mArrowTrianglePath:Landroid/graphics/Path;

.field private mBound:Landroid/graphics/RectF;

.field private mCopyLocation:Ldoodle/CopyLocation;

.field private mDxy:Landroid/graphics/PointF;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSxy:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ldoodle/core/IDoodle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v1, v0, v0}, Ldoodle/DoodleRotatableItemBase;-><init>(Ldoodle/core/IDoodle;IFF)V

    .line 23
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    .line 24
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    .line 154
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 35
    invoke-direct/range {v0 .. v5}, Ldoodle/DoodleRotatableItemBase;-><init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;IFF)V

    .line 23
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    .line 24
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    .line 154
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    return-void
.end method

.method private getDxy()Landroid/graphics/PointF;
    .locals 1

    .line 87
    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getSxy()Landroid/graphics/PointF;
    .locals 1

    .line 91
    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    return-object v0
.end method

.method public static toPath(Ldoodle/core/IDoodle;Landroid/graphics/Path;)Ldoodle/DoodlePath;
    .locals 2

    .line 111
    new-instance v0, Ldoodle/DoodlePath;

    invoke-direct {v0, p0}, Ldoodle/DoodlePath;-><init>(Ldoodle/core/IDoodle;)V

    .line 112
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodlePen;->copy()Ldoodle/core/IDoodlePen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 113
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodleShape;->copy()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setShape(Ldoodle/core/IDoodleShape;)V

    .line 114
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setSize(F)V

    .line 115
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodleColor;->copy()Ldoodle/core/IDoodleColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 117
    invoke-virtual {v0, p1}, Ldoodle/DoodlePath;->updatePath(Landroid/graphics/Path;)V

    .line 118
    instance-of p0, p0, Ldoodle/DoodleView;

    if-eqz p0, :cond_0

    .line 119
    sget-object p0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    invoke-virtual {p0}, Ldoodle/DoodlePen;->getCopyLocation()Ldoodle/CopyLocation;

    move-result-object p0

    invoke-virtual {p0}, Ldoodle/CopyLocation;->copy()Ldoodle/CopyLocation;

    move-result-object p0

    iput-object p0, v0, Ldoodle/DoodlePath;->mCopyLocation:Ldoodle/CopyLocation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 121
    iput-object p0, v0, Ldoodle/DoodlePath;->mCopyLocation:Ldoodle/CopyLocation;

    :goto_0
    return-object v0
.end method

.method public static toShape(Ldoodle/core/IDoodle;FFFF)Ldoodle/DoodlePath;
    .locals 2

    .line 95
    new-instance v0, Ldoodle/DoodlePath;

    invoke-direct {v0, p0}, Ldoodle/DoodlePath;-><init>(Ldoodle/core/IDoodle;)V

    .line 96
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodlePen;->copy()Ldoodle/core/IDoodlePen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 97
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodleShape;->copy()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setShape(Ldoodle/core/IDoodleShape;)V

    .line 98
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setSize(F)V

    .line 99
    invoke-interface {p0}, Ldoodle/core/IDoodle;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodleColor;->copy()Ldoodle/core/IDoodleColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodlePath;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 101
    invoke-virtual {v0, p1, p2, p3, p4}, Ldoodle/DoodlePath;->updateXY(FFFF)V

    .line 102
    invoke-virtual {v0}, Ldoodle/DoodlePath;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object p2, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-ne p1, p2, :cond_0

    .line 103
    instance-of p0, p0, Ldoodle/DoodleView;

    if-eqz p0, :cond_0

    .line 104
    sget-object p0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    invoke-virtual {p0}, Ldoodle/DoodlePen;->getCopyLocation()Ldoodle/CopyLocation;

    move-result-object p0

    invoke-virtual {p0}, Ldoodle/CopyLocation;->copy()Ldoodle/CopyLocation;

    move-result-object p0

    iput-object p0, v0, Ldoodle/DoodlePath;->mCopyLocation:Ldoodle/CopyLocation;

    :cond_0
    return-object v0
.end method

.method private updateArrowPath(Landroid/graphics/Path;FFFFF)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    float-to-double v5, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    float-to-double v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v11, v7, v9

    div-double v13, v11, v5

    .line 184
    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    mul-double/2addr v11, v7

    div-double/2addr v11, v9

    mul-double v9, v5, v5

    add-double/2addr v11, v9

    .line 185
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    sub-double v22, v11, v15

    sub-float v4, v2, p2

    sub-float v11, v3, p3

    const/16 v19, 0x1

    move v15, v4

    move/from16 v16, v11

    move-wide/from16 v17, v13

    move-wide/from16 v20, v22

    .line 186
    invoke-static/range {v15 .. v21}, Ldoodle/util/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v12

    neg-double v13, v13

    const/16 v21, 0x1

    move/from16 v17, v4

    move/from16 v18, v11

    move-wide/from16 v19, v13

    .line 187
    invoke-static/range {v17 .. v23}, Ldoodle/util/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v13

    float-to-double v14, v2

    const/16 v22, 0x0

    .line 188
    aget-wide v16, v12, v22

    move-wide/from16 v18, v9

    sub-double v9, v14, v16

    double-to-float v9, v9

    move/from16 p6, v11

    float-to-double v10, v3

    const/16 v23, 0x1

    .line 189
    aget-wide v16, v12, v23

    sub-double v2, v10, v16

    double-to-float v2, v2

    .line 190
    aget-wide v16, v13, v22

    move v12, v4

    sub-double v3, v14, v16

    double-to-float v3, v3

    .line 191
    aget-wide v16, v13, v23

    move-wide/from16 v20, v14

    sub-double v13, v10, v16

    double-to-float v4, v13

    .line 193
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 194
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    div-double v2, v7, v5

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v7, v7

    add-double v7, v7, v18

    .line 199
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const/16 v19, 0x1

    move-wide/from16 v6, v20

    move v15, v12

    move/from16 v16, p6

    move-wide/from16 v17, v2

    move-wide/from16 v20, v4

    .line 200
    invoke-static/range {v15 .. v21}, Ldoodle/util/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v8

    neg-double v2, v2

    move-wide/from16 v17, v2

    .line 201
    invoke-static/range {v15 .. v21}, Ldoodle/util/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v2

    .line 202
    aget-wide v3, v8, v22

    sub-double v14, v6, v3

    double-to-float v3, v14

    .line 203
    aget-wide v4, v8, v23

    sub-double v4, v10, v4

    double-to-float v4, v4

    .line 204
    aget-wide v8, v2, v22

    sub-double v14, v6, v8

    double-to-float v5, v14

    .line 205
    aget-wide v6, v2, v23

    sub-double/2addr v10, v6

    double-to-float v2, v10

    .line 206
    iget-object v6, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    if-nez v6, :cond_0

    .line 207
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    .line 209
    :cond_0
    iget-object v6, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 210
    iget-object v6, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    iget-object v6, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object v2, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 213
    iget-object v2, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 214
    iget-object v2, v0, Ldoodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private updateCirclePath(Landroid/graphics/Path;FFFFF)V
    .locals 7

    .line 225
    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p6, v0, :cond_0

    .line 226
    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    sub-float p4, p2, p4

    mul-float/2addr p4, p4

    sub-float p5, p3, p5

    mul-float/2addr p5, p5

    add-float/2addr p4, p5

    float-to-double p4, p4

    .line 228
    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    double-to-float p4, p4

    .line 229
    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method

.method private updateLinePath(Landroid/graphics/Path;FFFFF)V
    .locals 0

    .line 218
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 219
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private updateRectPath(Landroid/graphics/Path;FFFFF)V
    .locals 6

    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    cmpg-float v0, p3, p5

    if-gez v0, :cond_0

    .line 238
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 240
    :cond_0
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p2

    move v2, p5

    move v3, p4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    cmpg-float v0, p3, p5

    if-gez v0, :cond_2

    .line 244
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p4

    move v2, p3

    move v3, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 246
    :cond_2
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 141
    iget-object v0, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 142
    iget-object v0, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    iget-object v0, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 145
    iget-object v0, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Ldoodle/core/IDoodlePen;->config(Ldoodle/core/IDoodleItem;Landroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Ldoodle/core/IDoodleColor;->config(Ldoodle/core/IDoodleItem;Landroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Ldoodle/core/IDoodleShape;->config(Ldoodle/core/IDoodleItem;Landroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getCopyLocation()Ldoodle/CopyLocation;
    .locals 1

    .line 79
    iget-object v0, p0, Ldoodle/DoodlePath;->mCopyLocation:Ldoodle/CopyLocation;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 83
    iget-object v0, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public isDoodleEditable()Z
    .locals 2

    .line 170
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v0

    sget-object v1, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    invoke-super {p0}, Ldoodle/DoodleRotatableItemBase;->isDoodleEditable()Z

    move-result v0

    return v0
.end method

.method protected resetBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 158
    iget-object v0, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 160
    iget-object v1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 161
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    sget-object v2, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    sget-object v2, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    sget-object v2, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    if-ne v1, v2, :cond_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Ldoodle/DoodlePath;->getDoodle()Ldoodle/core/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v0

    float-to-int v0, v0

    .line 164
    :cond_1
    iget-object v1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return-void
.end method

.method public setSize(F)V
    .locals 7

    .line 128
    invoke-super {p0, p1}, Ldoodle/DoodleRotatableItemBase;->setSize(F)V

    .line 129
    sget-object p1, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldoodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 131
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    .line 133
    :cond_0
    iget-object p1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 134
    iget-object v1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object p1, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldoodle/DoodlePath;->updateArrowPath(Landroid/graphics/Path;FFFFF)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Ldoodle/DoodlePath;->refresh()V

    return-void
.end method

.method public updateCopy(FFFF)V
    .locals 1

    .line 72
    iget-object v0, p0, Ldoodle/DoodlePath;->mCopyLocation:Ldoodle/CopyLocation;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Ldoodle/CopyLocation;->setStartPosition(FFFF)V

    return-void
.end method

.method public updatePath(Landroid/graphics/Path;)V
    .locals 2

    .line 62
    iput-object p1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 66
    iget-object p1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ldoodle/DoodlePath;->setPivotX(F)V

    .line 67
    iget-object p1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ldoodle/DoodlePath;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method public updateXY(FFFF)V
    .locals 7

    .line 39
    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 41
    iget-object v0, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    .line 44
    :cond_0
    iget-object v0, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 46
    sget-object v0, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldoodle/DoodlePath;->updateArrowPath(Landroid/graphics/Path;FFFFF)V

    goto/16 :goto_1

    .line 48
    :cond_1
    sget-object v0, Ldoodle/DoodleShape;->LINE:Ldoodle/DoodleShape;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldoodle/DoodlePath;->updateLinePath(Landroid/graphics/Path;FFFFF)V

    goto :goto_1

    .line 50
    :cond_2
    sget-object v0, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ldoodle/DoodleShape;->HOLLOW_CIRCLE:Ldoodle/DoodleShape;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 52
    :cond_3
    sget-object v0, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ldoodle/DoodleShape;->HOLLOW_RECT:Ldoodle/DoodleShape;

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53
    :cond_4
    iget-object v1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldoodle/DoodlePath;->updateRectPath(Landroid/graphics/Path;FFFFF)V

    goto :goto_1

    .line 51
    :cond_5
    :goto_0
    iget-object v1, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Ldoodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldoodle/DoodlePath;->updateCirclePath(Landroid/graphics/Path;FFFFF)V

    .line 56
    :cond_6
    :goto_1
    iget-object v0, p0, Ldoodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 57
    iget-object v0, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ldoodle/DoodlePath;->setPivotX(F)V

    .line 58
    iget-object v0, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Ldoodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ldoodle/DoodlePath;->setPivotY(F)V

    return-void
.end method
