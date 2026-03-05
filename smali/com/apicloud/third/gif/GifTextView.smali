.class public Lcom/apicloud/third/gif/GifTextView;
.super Landroid/widget/TextView;


# instance fields
.field private viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lcom/apicloud/third/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/apicloud/third/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p2, p3, p4}, Lcom/apicloud/third/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyGifViewAttributes()V
    .locals 6

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iget v0, v0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-lt v2, v5, :cond_1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iget v0, v0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/third/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    aget-object v0, v4, v2

    iget-object v1, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iget v1, v1, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-static {v1, v0}, Lcom/apicloud/third/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iget v5, v5, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-static {v5, v4}, Lcom/apicloud/third/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/apicloud/third/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lcom/apicloud/third/gif/GifDrawable;

    invoke-direct {v1, v0, p1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 9

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "drawableLeft"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "drawableTop"

    invoke-interface {p1, v1, v3, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "drawableRight"

    invoke-interface {p1, v1, v4, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "drawableBottom"

    invoke-interface {p1, v1, v5, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "drawableStart"

    invoke-interface {p1, v1, v6, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v7, "drawableEnd"

    invoke-interface {p1, v1, v7, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getLayoutDirection()I

    move-result v8

    if-nez v8, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    if-nez v7, :cond_4

    move-object v7, v4

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez v7, :cond_3

    move-object v7, v2

    :cond_3
    move-object v2, v4

    :cond_4
    :goto_2
    invoke-virtual {p0, v2, v3, v7, v5}, Lcom/apicloud/third/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string v2, "background"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/third/gif/GifTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifTextView;->applyGifViewAttributes()V

    :cond_5
    new-instance p1, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {p1}, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;-><init>()V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    return-void
.end method

.method private setCompoundDrawablesVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apicloud/third/gif/GifTextView;->setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apicloud/third/gif/GifTextView;->setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private static setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/apicloud/third/gif/GifTextView;->setCompoundDrawablesVisible(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/third/gif/GifTextView;->setCompoundDrawablesVisible(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Lcom/apicloud/third/gif/GifViewSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/apicloud/third/gif/GifViewSavedState;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2, v1}, Lcom/apicloud/third/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v2}, Lcom/apicloud/third/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x2

    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v2}, Lcom/apicloud/third/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p1, v0, v3}, Lcom/apicloud/third/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v1

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/apicloud/third/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    aget-object v0, v0, v2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/third/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/third/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iget-boolean v1, v1, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const/4 v3, 0x2

    aget-object v1, v1, v3

    aput-object v1, v0, v2

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    new-instance v1, Lcom/apicloud/third/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/apicloud/third/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/third/gif/GifTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p4}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/third/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p4}, Lcom/apicloud/third/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/third/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iput-boolean p1, v0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    return-void
.end method
