.class public Lcom/apicloud/devlop/FNImageClip/ClipRect;
.super Ljava/lang/Object;
.source "ClipRect.java"


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->left:I

    .line 14
    iput p2, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->top:I

    .line 15
    iput p3, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->right:I

    .line 16
    iput p4, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->bottom:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->bottom:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->top:I

    return v0
.end method

.method public setBottom(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->bottom:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->left:I

    return-void
.end method

.method public setRight(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->right:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->top:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipRect [left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipRect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
