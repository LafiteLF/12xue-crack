.class Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImageSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoodle/imagepicker/ImageSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mImageSelected:Landroid/widget/ImageView;

.field final synthetic this$0:Ldoodle/imagepicker/ImageSelectorAdapter;


# direct methods
.method private constructor <init>(Ldoodle/imagepicker/ImageSelectorAdapter;)V
    .locals 0

    .line 102
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;->this$0:Ldoodle/imagepicker/ImageSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldoodle/imagepicker/ImageSelectorAdapter;Ldoodle/imagepicker/ImageSelectorAdapter$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Ldoodle/imagepicker/ImageSelectorAdapter$ViewHolder;-><init>(Ldoodle/imagepicker/ImageSelectorAdapter;)V

    return-void
.end method
