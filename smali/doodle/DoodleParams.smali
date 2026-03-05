.class public Ldoodle/DoodleParams;
.super Ljava/lang/Object;
.source "DoodleParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/DoodleParams$DialogInterceptor;,
        Ldoodle/DoodleParams$DialogType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ldoodle/DoodleParams;",
            ">;"
        }
    .end annotation
.end field

.field private static sDialogInterceptor:Ldoodle/DoodleParams$DialogInterceptor;


# instance fields
.field public mChangePanelVisibilityDelay:J

.field public mImagePath:Ljava/lang/String;

.field public mIsDrawableOutside:Z

.field public mIsFullScreen:Z

.field public mMaxScale:F

.field public mMinScale:F

.field public mPaintPixelSize:F

.field public mPaintUnitSize:F

.field public mSavePath:Ljava/lang/String;

.field public mSavePathIsDir:Z

.field public mZoomerScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ldoodle/DoodleParams$1;

    invoke-direct {v0}, Ldoodle/DoodleParams$1;-><init>()V

    sput-object v0, Ldoodle/DoodleParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    .line 39
    iput-wide v0, p0, Ldoodle/DoodleParams;->mChangePanelVisibilityDelay:J

    const/high16 v0, 0x40200000    # 2.5f

    .line 46
    iput v0, p0, Ldoodle/DoodleParams;->mZoomerScale:F

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Ldoodle/DoodleParams;->mIsFullScreen:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 57
    iput v0, p0, Ldoodle/DoodleParams;->mPaintPixelSize:F

    .line 63
    iput v0, p0, Ldoodle/DoodleParams;->mPaintUnitSize:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 68
    iput v0, p0, Ldoodle/DoodleParams;->mMinScale:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 69
    iput v0, p0, Ldoodle/DoodleParams;->mMaxScale:F

    return-void
.end method

.method public static getDialogInterceptor()Ldoodle/DoodleParams$DialogInterceptor;
    .locals 1

    .line 127
    sget-object v0, Ldoodle/DoodleParams;->sDialogInterceptor:Ldoodle/DoodleParams$DialogInterceptor;

    return-object v0
.end method

.method public static setDialogInterceptor(Ldoodle/DoodleParams$DialogInterceptor;)V
    .locals 0

    .line 123
    sput-object p0, Ldoodle/DoodleParams;->sDialogInterceptor:Ldoodle/DoodleParams$DialogInterceptor;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 98
    iget-object p2, p0, Ldoodle/DoodleParams;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Ldoodle/DoodleParams;->mSavePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-boolean p2, p0, Ldoodle/DoodleParams;->mSavePathIsDir:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-boolean p2, p0, Ldoodle/DoodleParams;->mIsDrawableOutside:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-wide v0, p0, Ldoodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget p2, p0, Ldoodle/DoodleParams;->mZoomerScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 104
    iget-boolean p2, p0, Ldoodle/DoodleParams;->mIsFullScreen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Ldoodle/DoodleParams;->mPaintPixelSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 106
    iget p2, p0, Ldoodle/DoodleParams;->mPaintUnitSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 107
    iget p2, p0, Ldoodle/DoodleParams;->mMinScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 108
    iget p2, p0, Ldoodle/DoodleParams;->mMaxScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
