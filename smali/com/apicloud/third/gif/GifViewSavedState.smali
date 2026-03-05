.class Lcom/apicloud/third/gif/GifViewSavedState;
.super Landroid/view/View$BaseSavedState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/apicloud/third/gif/GifViewSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mStates:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/apicloud/third/gif/GifViewSavedState$1;

    invoke-direct {v0}, Lcom/apicloud/third/gif/GifViewSavedState$1;-><init>()V

    sput-object v0, Lcom/apicloud/third/gif/GifViewSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/apicloud/third/gif/GifViewSavedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifViewSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;[J)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method varargs constructor <init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    array-length p1, p2

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    aget-object v0, p2, p1

    instance-of v1, v0, Lcom/apicloud/third/gif/GifDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    check-cast v0, Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getSavedState()[J

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method restoreState(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/apicloud/third/gif/GifDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, p1, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    aget-object p2, v1, p2

    iget-object v1, p1, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, v1}, Lcom/apicloud/third/gif/GifInfoHandle;->restoreSavedState([JLandroid/graphics/Bitmap;)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/third/gif/GifDrawable;->startAnimation(J)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
