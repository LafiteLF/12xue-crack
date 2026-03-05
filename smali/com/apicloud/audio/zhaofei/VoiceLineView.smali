.class public Lcom/apicloud/audio/zhaofei/VoiceLineView;
.super Landroid/view/View;
.source "VoiceLineView.java"


# instance fields
.field private final RECT:I

.field private amplitude:F

.field private fineness:I

.field private isSet:Z

.field private lastTime:J

.field private lineSpeed:I

.field private maxVolume:F

.field private middleLineColor:I

.field private middleLineHeight:F

.field private mode:I

.field private paint:Landroid/graphics/Paint;

.field private paintVoicLine:Landroid/graphics/Paint;

.field paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private rectInitHeight:F

.field private rectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private rectSpace:F

.field private rectWidth:F

.field private sensibility:I

.field private speedY:J

.field private targetVolume:F

.field private translateX:F

.field private voiceLineColor:I

.field private volume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->RECT:I

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineColor:I

    .line 26
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->voiceLineColor:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 27
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineHeight:F

    const/4 v0, 0x4

    .line 34
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->sensibility:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 36
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->maxVolume:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->amplitude:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 49
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    .line 50
    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->fineness:I

    .line 51
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->targetVolume:F

    const-wide/16 v0, 0x32

    .line 54
    iput-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    const/high16 p1, 0x41c80000    # 25.0f

    .line 55
    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectWidth:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 56
    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectSpace:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 57
    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectInitHeight:F

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lastTime:J

    const/16 p1, 0x5a

    .line 61
    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lineSpeed:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->RECT:I

    const/high16 v1, -0x1000000

    .line 25
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineColor:I

    .line 26
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->voiceLineColor:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineHeight:F

    const/4 v1, 0x4

    .line 34
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->sensibility:I

    const/high16 v1, 0x42c80000    # 100.0f

    .line 36
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->maxVolume:F

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->amplitude:F

    const/high16 v2, 0x41200000    # 10.0f

    .line 49
    iput v2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    .line 50
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->fineness:I

    .line 51
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->targetVolume:F

    const-wide/16 v0, 0x32

    .line 54
    iput-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    const/high16 v0, 0x41c80000    # 25.0f

    .line 55
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectWidth:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 56
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectSpace:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 57
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectInitHeight:F

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lastTime:J

    const/16 v0, 0x5a

    .line 61
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lineSpeed:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->initAtts(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 23
    iput p3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->RECT:I

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineColor:I

    .line 26
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->voiceLineColor:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 27
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineHeight:F

    const/4 v0, 0x4

    .line 34
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->sensibility:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 36
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->maxVolume:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->amplitude:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 49
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    .line 50
    iput p3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->fineness:I

    .line 51
    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->targetVolume:F

    const-wide/16 v0, 0x32

    .line 54
    iput-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    const/high16 p3, 0x41c80000    # 25.0f

    .line 55
    iput p3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectWidth:F

    const/high16 p3, 0x40a00000    # 5.0f

    .line 56
    iput p3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectSpace:F

    const/high16 p3, 0x40800000    # 4.0f

    .line 57
    iput p3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectInitHeight:F

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lastTime:J

    const/16 p3, 0x5a

    .line 61
    iput p3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lineSpeed:I

    const/4 p3, 0x0

    .line 63
    iput-object p3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->initAtts(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawMiddleLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paint:Landroid/graphics/Paint;

    .line 116
    iget v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineHeight:F

    div-float/2addr v1, v2

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVoiceLine(Landroid/graphics/Canvas;)V
    .locals 12

    .line 125
    invoke-direct {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lineChange()V

    .line 126
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    .line 128
    iget v2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->voiceLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    move v3, v2

    .line 135
    :goto_0
    iget-object v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 137
    iget-object v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3

    .line 140
    iget v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    iget v6, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->amplitude:F

    move v4, v1

    .line 141
    :goto_2
    iget-object v5, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 142
    iget v5, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->amplitude:F

    float-to-double v6, v3

    const-wide v8, 0x3ff3851eb851eb85L    # 1.22

    int-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    iget v8, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    float-to-double v8, v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    .line 143
    iget-object v6, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget-object v8, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x41700000    # 15.0f

    mul-float/2addr v5, v8

    iget-object v8, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    sub-float/2addr v7, v5

    int-to-float v5, v0

    add-float/2addr v7, v5

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 139
    :cond_2
    iget v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->fineness:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto/16 :goto_1

    .line 146
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    mul-int/lit16 v3, v2, 0x82

    iget-object v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    :goto_4
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 156
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVoiceRect(Landroid/graphics/Canvas;)V
    .locals 13

    .line 160
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    .line 162
    iget v3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->voiceLineColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectList:Ljava/util/List;

    .line 170
    :cond_1
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectSpace:F

    iget v3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectWidth:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 171
    iget-wide v3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    int-to-long v5, v0

    rem-long/2addr v3, v5

    const-wide/16 v7, 0x6

    cmp-long v0, v3, v7

    const/4 v3, 0x0

    if-gez v0, :cond_5

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    iget v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectWidth:F

    neg-float v4, v4

    const/high16 v7, 0x41200000    # 10.0f

    sub-float/2addr v4, v7

    iget-wide v8, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    long-to-float v10, v8

    sub-float/2addr v4, v10

    rem-long/2addr v8, v5

    long-to-float v8, v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 173
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectInitHeight:F

    div-float/2addr v9, v2

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    cmpl-float v10, v9, v7

    if-nez v10, :cond_2

    move v9, v3

    goto :goto_0

    :cond_2
    div-float/2addr v9, v2

    :goto_0
    sub-float/2addr v8, v9

    float-to-int v8, v8

    const-wide/16 v9, -0xa

    iget-wide v11, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    sub-long/2addr v9, v11

    rem-long/2addr v11, v5

    add-long/2addr v9, v11

    long-to-int v5, v9

    .line 175
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v9, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectInitHeight:F

    div-float/2addr v9, v2

    add-float/2addr v6, v9

    iget v9, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    cmpl-float v7, v9, v7

    if-nez v7, :cond_3

    move v9, v3

    goto :goto_1

    :cond_3
    div-float/2addr v9, v2

    :goto_1
    add-float/2addr v6, v9

    float-to-int v6, v6

    invoke-direct {v0, v4, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    iget-object v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectSpace:F

    iget v7, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectWidth:F

    add-float/2addr v6, v7

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    cmpl-float v2, v4, v5

    if-lez v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_5
    iget-wide v4, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    long-to-float v0, v4

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_6

    .line 183
    iget-object v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 185
    :cond_6
    invoke-direct {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectChange()V

    return-void
.end method

.method private initAtts(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 80
    sget-object v0, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_viewMode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->mode:I

    .line 82
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_voiceLine:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->voiceLineColor:I

    .line 83
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_maxVolume:I

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->maxVolume:F

    .line 84
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_sensibility:I

    const/4 v2, 0x4

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->sensibility:I

    .line 85
    iget p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->mode:I

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 86
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_rectWidth:I

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectWidth:F

    .line 87
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_rectSpace:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectSpace:F

    .line 88
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_rectInitHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->rectInitHeight:F

    goto :goto_1

    .line 90
    :cond_0
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_middleLine:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineColor:I

    .line 91
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_middleLineHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->middleLineHeight:F

    .line 92
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_lineSpeed:I

    const/16 v1, 0x5a

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lineSpeed:I

    .line 93
    sget p2, Lcom/apicloud/audio/zhaofei/R$styleable;->voiceView_fineness:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->fineness:I

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 96
    iget-object p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->paths:Ljava/util/List;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private lineChange()V
    .locals 7

    .line 196
    iget-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lastTime:J

    .line 198
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lastTime:J

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lineSpeed:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->lastTime:J

    .line 202
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->translateX:F

    .line 207
    :goto_0
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    iget v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->targetVolume:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    .line 211
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    .line 212
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 215
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    goto :goto_1

    .line 217
    :cond_3
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    :cond_4
    :goto_1
    return-void
.end method

.method private rectChange()V
    .locals 4

    .line 224
    iget-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    const-wide/16 v2, 0x6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->speedY:J

    .line 225
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    iget v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->targetVolume:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    .line 229
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    .line 230
    iput v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 233
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    goto :goto_0

    .line 235
    :cond_2
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 104
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->drawVoiceRect(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->drawMiddleLine(Landroid/graphics/Canvas;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->drawVoiceLine(Landroid/graphics/Canvas;)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->run()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 242
    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1e

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->postInvalidateDelayed(J)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->invalidate()V

    :goto_0
    return-void
.end method

.method public setInitVolume(FF)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->maxVolume:F

    .line 251
    iput p2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->volume:F

    return-void
.end method

.method public setVolume(I)V
    .locals 3

    int-to-float v0, p1

    .line 189
    iget v1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->maxVolume:F

    iget v2, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->sensibility:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41c80000    # 25.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->isSet:Z

    .line 191
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->getHeight()I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float p1, v0

    iget v0, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->maxVolume:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/apicloud/audio/zhaofei/VoiceLineView;->targetVolume:F

    :cond_0
    return-void
.end method
