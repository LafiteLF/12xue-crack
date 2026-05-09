.class public Ldoodle/imagepicker/ImageSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final KEY_IMAGE:I = -0x7e0

.field public static final KEY_SELECTED_VIEW:I = -0x4ec1


# instance fields
.field id:I

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->id:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mList:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mContext:Landroid/content/Context;

    .line 33
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mSelectedSet:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private display(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ldoodle/imagepicker/ImageLoader;->getInstance(Landroid/content/Context;)Ldoodle/imagepicker/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldoodle/imagepicker/ImageLoader;->display(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSelected(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mSelectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mSelectedSet:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 76
    iget-object p2, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/kukugtu/moduleplotting/R$layout;->doodle_imageselector_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;-><init>(Ldoodle/imagepicker/ImageSelectorAdapter;Ldoodle/imagepicker/ImageSelectorAdapter$1;)V

    .line 78
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 79
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_image_selected:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->mImageSelected:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->id:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;

    :goto_0
    const/16 v0, -0x7e0

    .line 85
    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 v0, -0x4ec1

    .line 86
    iget-object v1, p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->mImageSelected:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mSelectedSet:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->mImageSelected:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->mImageSelected:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_1
    iget-object p3, p3, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p3, p1}, Ldoodle/imagepicker/ImageSelectorAdapter;->display(Landroid/view/View;Ljava/lang/String;)V

    return-object p2
.end method

.method public refreshPathList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mList:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0}, Ldoodle/imagepicker/ImageSelectorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeSelected(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorAdapter;->mSelectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
