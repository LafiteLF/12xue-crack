.class Ldoodle/imagepicker/ImageSelectorView$2;
.super Ljava/lang/Object;
.source "ImageSelectorView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/imagepicker/ImageSelectorView;-><init>(Landroid/content/Context;ZILjava/util/List;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/imagepicker/ImageSelectorView;


# direct methods
.method constructor <init>(Ldoodle/imagepicker/ImageSelectorView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$2;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 107
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$2;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$500(Ldoodle/imagepicker/ImageSelectorView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$2;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$600(Ldoodle/imagepicker/ImageSelectorView;)Z

    move-result p1

    if-nez p1, :cond_0

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0xa

    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$2;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    .line 108
    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$100(Ldoodle/imagepicker/ImageSelectorView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    .line 109
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$2;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$700(Ldoodle/imagepicker/ImageSelectorView;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
