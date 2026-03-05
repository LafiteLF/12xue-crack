.class public Ldoodle/DoodleColor;
.super Ljava/lang/Object;
.source "DoodleColor.java"

# interfaces
.implements Ldoodle/core/IDoodleColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/DoodleColor$Type;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColor:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mTileX:Landroid/graphics/Shader$TileMode;

.field private mTileY:Landroid/graphics/Shader$TileMode;

.field private mType:Ldoodle/DoodleColor$Type;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Ldoodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 30
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Ldoodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 33
    sget-object v0, Ldoodle/DoodleColor$Type;->COLOR:Ldoodle/DoodleColor$Type;

    iput-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    .line 34
    iput p1, p0, Ldoodle/DoodleColor;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2

    .line 42
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, p1, p2, v0, v1}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Ldoodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 30
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Ldoodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 46
    sget-object v0, Ldoodle/DoodleColor$Type;->BITMAP:Ldoodle/DoodleColor$Type;

    iput-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    .line 47
    iput-object p2, p0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    .line 48
    iput-object p1, p0, Ldoodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object p3, p0, Ldoodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 50
    iput-object p4, p0, Ldoodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public config(Ldoodle/core/IDoodleItem;Landroid/graphics/Paint;)V
    .locals 3

    .line 55
    check-cast p1, Ldoodle/DoodleItemBase;

    .line 56
    iget-object p1, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    sget-object v0, Ldoodle/DoodleColor$Type;->COLOR:Ldoodle/DoodleColor$Type;

    if-ne p1, v0, :cond_0

    .line 57
    iget p1, p0, Ldoodle/DoodleColor;->mColor:I

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    sget-object v0, Ldoodle/DoodleColor$Type;->BITMAP:Ldoodle/DoodleColor$Type;

    if-ne p1, v0, :cond_1

    .line 59
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Ldoodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ldoodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    iget-object v2, p0, Ldoodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 60
    iget-object v0, p0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 61
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    :goto_0
    return-void
.end method

.method public copy()Ldoodle/core/IDoodleColor;
    .locals 3

    .line 112
    iget-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    sget-object v1, Ldoodle/DoodleColor$Type;->COLOR:Ldoodle/DoodleColor$Type;

    if-ne v0, v1, :cond_0

    .line 113
    new-instance v0, Ldoodle/DoodleColor;

    iget v1, p0, Ldoodle/DoodleColor;->mColor:I

    invoke-direct {v0, v1}, Ldoodle/DoodleColor;-><init>(I)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ldoodle/DoodleColor;

    iget-object v1, p0, Ldoodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    :goto_0
    iget-object v1, p0, Ldoodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    iput-object v1, v0, Ldoodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 118
    iget-object v1, p0, Ldoodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    iput-object v1, v0, Ldoodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 119
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 102
    iget-object v0, p0, Ldoodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 98
    iget v0, p0, Ldoodle/DoodleColor;->mColor:I

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 94
    iget-object v0, p0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getType()Ldoodle/DoodleColor$Type;
    .locals 1

    .line 106
    iget-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    return-object v0
.end method

.method public setColor(I)V
    .locals 1

    .line 66
    sget-object v0, Ldoodle/DoodleColor$Type;->COLOR:Ldoodle/DoodleColor$Type;

    iput-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    .line 67
    iput p1, p0, Ldoodle/DoodleColor;->mColor:I

    return-void
.end method

.method public setColor(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 71
    sget-object v0, Ldoodle/DoodleColor$Type;->BITMAP:Ldoodle/DoodleColor$Type;

    iput-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    .line 72
    iput-object p1, p0, Ldoodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColor(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 1

    .line 76
    sget-object v0, Ldoodle/DoodleColor$Type;->BITMAP:Ldoodle/DoodleColor$Type;

    iput-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    .line 77
    iput-object p2, p0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    iput-object p1, p0, Ldoodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColor(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 82
    sget-object v0, Ldoodle/DoodleColor$Type;->BITMAP:Ldoodle/DoodleColor$Type;

    iput-object v0, p0, Ldoodle/DoodleColor;->mType:Ldoodle/DoodleColor$Type;

    .line 83
    iput-object p1, p0, Ldoodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    iput-object p2, p0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    .line 85
    iput-object p3, p0, Ldoodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 86
    iput-object p4, p0, Ldoodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 90
    iput-object p1, p0, Ldoodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method
