.class Ldoodle/DoodleActivity$4;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->createDoodleBitmap(Ldoodle/DoodleBitmap;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleActivity;

.field final synthetic val$doodleBitmap:Ldoodle/DoodleBitmap;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity;Ldoodle/DoodleBitmap;FF)V
    .locals 0

    .line 321
    iput-object p1, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    iput-object p2, p0, Ldoodle/DoodleActivity$4;->val$doodleBitmap:Ldoodle/DoodleBitmap;

    iput p3, p0, Ldoodle/DoodleActivity$4;->val$x:F

    iput p4, p0, Ldoodle/DoodleActivity$4;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onEnter(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 328
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$100(Ldoodle/DoodleActivity;)Ldoodle/DoodleView;

    move-result-object v0

    invoke-virtual {v0}, Ldoodle/DoodleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$100(Ldoodle/DoodleActivity;)Ldoodle/DoodleView;

    move-result-object v1

    invoke-virtual {v1}, Ldoodle/DoodleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {p1, v0, v1}, Landroids/utils/ImageUtils;->createBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 330
    iget-object p1, p0, Ldoodle/DoodleActivity$4;->val$doodleBitmap:Ldoodle/DoodleBitmap;

    if-nez p1, :cond_0

    .line 331
    new-instance p1, Ldoodle/DoodleBitmap;

    iget-object v0, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v3

    iget-object v0, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodle;->getSize()F

    move-result v5

    iget v6, p0, Ldoodle/DoodleActivity$4;->val$x:F

    iget v7, p0, Ldoodle/DoodleActivity$4;->val$y:F

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Ldoodle/DoodleBitmap;-><init>(Ldoodle/core/IDoodle;Landroid/graphics/Bitmap;FFF)V

    .line 332
    iget-object v0, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    invoke-interface {v0, p1}, Ldoodle/core/IDoodle;->addItem(Ldoodle/core/IDoodleItem;)V

    .line 333
    iget-object v0, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p1, v4}, Ldoodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    :goto_0
    iget-object p1, p0, Ldoodle/DoodleActivity$4;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->refresh()V

    return-void
.end method
