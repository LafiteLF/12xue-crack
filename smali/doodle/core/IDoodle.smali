.class public interface abstract Ldoodle/core/IDoodle;
.super Ljava/lang/Object;
.source "IDoodle.java"


# virtual methods
.method public abstract addItem(Ldoodle/core/IDoodleItem;)V
.end method

.method public abstract bottomItem(Ldoodle/core/IDoodleItem;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getAllItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldoodle/core/IDoodleItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getColor()Ldoodle/core/IDoodleColor;
.end method

.method public abstract getDoodleBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getDoodleMaxScale()F
.end method

.method public abstract getDoodleMinScale()F
.end method

.method public abstract getDoodleRotation()I
.end method

.method public abstract getDoodleScale()F
.end method

.method public abstract getDoodleTranslationX()F
.end method

.method public abstract getDoodleTranslationY()F
.end method

.method public abstract getPen()Ldoodle/core/IDoodlePen;
.end method

.method public abstract getShape()Ldoodle/core/IDoodleShape;
.end method

.method public abstract getSize()F
.end method

.method public abstract getUnitSize()F
.end method

.method public abstract getZoomerScale()F
.end method

.method public abstract isDrawableOutside()Z
.end method

.method public abstract isShowOriginal()Z
.end method

.method public abstract redo()Z
.end method

.method public abstract refresh()V
.end method

.method public abstract removeItem(Ldoodle/core/IDoodleItem;)V
.end method

.method public abstract save()V
.end method

.method public abstract setColor(Ldoodle/core/IDoodleColor;)V
.end method

.method public abstract setDoodleMaxScale(F)V
.end method

.method public abstract setDoodleMinScale(F)V
.end method

.method public abstract setDoodleRotation(I)V
.end method

.method public abstract setDoodleScale(FFF)V
.end method

.method public abstract setDoodleTranslation(FF)V
.end method

.method public abstract setDoodleTranslationX(F)V
.end method

.method public abstract setDoodleTranslationY(F)V
.end method

.method public abstract setIsDrawableOutside(Z)V
.end method

.method public abstract setPen(Ldoodle/core/IDoodlePen;)V
.end method

.method public abstract setShape(Ldoodle/core/IDoodleShape;)V
.end method

.method public abstract setShowOriginal(Z)V
.end method

.method public abstract setSize(F)V
.end method

.method public abstract setZoomerScale(F)V
.end method

.method public abstract topItem(Ldoodle/core/IDoodleItem;)V
.end method

.method public abstract undo()Z
.end method

.method public abstract undo(I)Z
.end method
