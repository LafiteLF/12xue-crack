.class public Lcom/apicloud/imagerotation/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# instance fields
.field private offsetX:I

.field private offsetY:I

.field private path:Ljava/lang/String;

.field private scaledHeight:I

.field private scaledWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/apicloud/imagerotation/BitmapInfo;->path:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/apicloud/imagerotation/BitmapInfo;->offsetX:I

    .line 20
    iput p3, p0, Lcom/apicloud/imagerotation/BitmapInfo;->offsetY:I

    .line 21
    iput p4, p0, Lcom/apicloud/imagerotation/BitmapInfo;->scaledWidth:I

    .line 22
    iput p5, p0, Lcom/apicloud/imagerotation/BitmapInfo;->scaledHeight:I

    return-void
.end method


# virtual methods
.method public getOffsetX()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/apicloud/imagerotation/BitmapInfo;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/apicloud/imagerotation/BitmapInfo;->offsetY:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/apicloud/imagerotation/BitmapInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getScaledHeight()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/apicloud/imagerotation/BitmapInfo;->scaledHeight:I

    return v0
.end method

.method public getScaledWidth()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/apicloud/imagerotation/BitmapInfo;->scaledWidth:I

    return v0
.end method

.method public setOffsetX(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/apicloud/imagerotation/BitmapInfo;->offsetX:I

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/apicloud/imagerotation/BitmapInfo;->offsetY:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/apicloud/imagerotation/BitmapInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setScaledHeight(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/apicloud/imagerotation/BitmapInfo;->scaledHeight:I

    return-void
.end method

.method public setScaledWidth(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/apicloud/imagerotation/BitmapInfo;->scaledWidth:I

    return-void
.end method
