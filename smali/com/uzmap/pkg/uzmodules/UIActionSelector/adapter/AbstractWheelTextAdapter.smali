.class public abstract Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;
.super Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0xefeff0

.field public static final DEFAULT_TEXT_SIZE:I = 0x14

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private textColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelAdapter;-><init>()V

    const/high16 v0, -0x1000000

    .line 52
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textColor:I

    const/16 v0, 0x14

    .line 53
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textSize:I

    .line 91
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 92
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    .line 93
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    const-string p2, "layout_inflater"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 1

    if-nez p2, :cond_0

    .line 246
    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Landroid/widget/TextView;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "AbstractWheelAdapter"

    const-string v0, "You must supply a resource ID for a TextView"

    .line 252
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 269
    :cond_1
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2

    .line 228
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 229
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->selectedBold:Z

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 215
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 217
    :cond_0
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 218
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_1
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-nez p2, :cond_0

    .line 190
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 194
    sget v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->itemHeight:I

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 195
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget p3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 200
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 204
    :cond_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0, p3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_2
    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemResource()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method public setEmptyItemResource(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemResourceId:I

    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->itemTextResourceId:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/AbstractWheelTextAdapter;->textSize:I

    return-void
.end method
