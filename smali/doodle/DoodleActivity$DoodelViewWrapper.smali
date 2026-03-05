.class public Ldoodle/DoodleActivity$DoodelViewWrapper;
.super Ldoodle/DoodleView;
.source "DoodleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoodle/DoodleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoodelViewWrapper"
.end annotation


# instance fields
.field mBtnEditMode:Landroid/view/View;

.field private mBtnPenIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldoodle/core/IDoodlePen;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnShapeIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldoodle/core/IDoodleShape;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPaintSizeView:Landroid/widget/TextView;

.field final synthetic this$0:Ldoodle/DoodleActivity;


# direct methods
.method public constructor <init>(Ldoodle/DoodleActivity;Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;)V
    .locals 0

    .line 639
    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    .line 640
    invoke-direct {p0, p2, p3, p4}, Ldoodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;)V

    .line 647
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    .line 650
    sget-object p2, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_hand:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_copy:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_eraser:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_text:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_bitmap:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    .line 698
    sget-object p2, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_hand_write:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_arrow:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->LINE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_line:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->HOLLOW_CIRCLE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_holl_circle:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_fill_circle:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->HOLLOW_RECT:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_holl_rect:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_fill_rect:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    sget p2, Lcom/kukugtu/moduleplotting/R$id;->paint_size_text:I

    invoke-virtual {p1, p2}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mPaintSizeView:Landroid/widget/TextView;

    .line 768
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    sget p2, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_brush_edit:I

    invoke-virtual {p1, p2}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnEditMode:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Ldoodle/DoodleActivity;Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;Ldoodle/core/IDoodleTouchDetector;)V
    .locals 0

    .line 643
    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    .line 644
    invoke-direct {p0, p2, p3, p4, p5}, Ldoodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;Ldoodle/core/IDoodleTouchDetector;)V

    .line 647
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    .line 650
    sget-object p2, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_hand:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_copy:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_eraser:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_text:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_bitmap:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    .line 698
    sget-object p2, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_hand_write:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_arrow:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->LINE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_line:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->HOLLOW_CIRCLE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_holl_circle:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_fill_circle:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->HOLLOW_RECT:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_holl_rect:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    sget-object p2, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    sget p3, Lcom/kukugtu/moduleplotting/R$id;->btn_fill_rect:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    sget p2, Lcom/kukugtu/moduleplotting/R$id;->paint_size_text:I

    invoke-virtual {p1, p2}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mPaintSizeView:Landroid/widget/TextView;

    .line 768
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    sget p2, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_brush_edit:I

    invoke-virtual {p1, p2}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnEditMode:Landroid/view/View;

    return-void
.end method

.method private setSingleSelected(Ljava/util/Collection;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 782
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 784
    iget-object v1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-virtual {v1, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object v1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-virtual {v1, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 764
    invoke-super {p0}, Ldoodle/DoodleView;->clear()V

    .line 765
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    return-void
.end method

.method public enableZoomer(Z)V
    .locals 2

    .line 749
    invoke-super {p0, p1}, Ldoodle/DoodleView;->enableZoomer(Z)V

    .line 750
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_zoomer:I

    invoke-virtual {v0, v1}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz p1, :cond_0

    .line 752
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object v1

    iget v1, v1, Ldoodle/DoodleParams;->mZoomerScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public setColor(Ldoodle/core/IDoodleColor;)V
    .locals 2

    .line 725
    invoke-virtual {p0}, Ldoodle/DoodleActivity$DoodelViewWrapper;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v0

    sget-object v1, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ldoodle/DoodleActivity$DoodelViewWrapper;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v0

    sget-object v1, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    invoke-super {p0, p1}, Ldoodle/DoodleView;->setColor(Ldoodle/core/IDoodleColor;)V

    goto :goto_1

    .line 726
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ldoodle/DoodleActivity$DoodelViewWrapper;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v0

    instance-of v0, v0, Ldoodle/DoodleColor;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldoodle/DoodleActivity$DoodelViewWrapper;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v0

    check-cast v0, Ldoodle/DoodleColor;

    invoke-virtual {v0}, Ldoodle/DoodleColor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 728
    :cond_2
    new-instance v0, Ldoodle/DoodleColor;

    iget-object v1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Ldoodle/DoodleView;->setColor(Ldoodle/core/IDoodleColor;)V

    :goto_1
    const/4 v0, 0x0

    .line 735
    instance-of v1, p1, Ldoodle/DoodleColor;

    if-eqz v1, :cond_3

    .line 736
    move-object v0, p1

    check-cast v0, Ldoodle/DoodleColor;

    :cond_3
    if-eqz v0, :cond_5

    .line 739
    invoke-virtual {v0}, Ldoodle/DoodleColor;->getType()Ldoodle/DoodleColor$Type;

    move-result-object p1

    sget-object v1, Ldoodle/DoodleColor$Type;->COLOR:Ldoodle/DoodleColor$Type;

    if-ne p1, v1, :cond_4

    .line 740
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1600(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0}, Ldoodle/DoodleColor;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 741
    :cond_4
    invoke-virtual {v0}, Ldoodle/DoodleColor;->getType()Ldoodle/DoodleColor$Type;

    move-result-object p1

    sget-object v1, Ldoodle/DoodleColor$Type;->BITMAP:Ldoodle/DoodleColor$Type;

    if-ne p1, v1, :cond_5

    .line 742
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1600(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Ldoodle/DoodleColor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setEditMode(Z)V
    .locals 2

    .line 772
    invoke-super {p0, p1}, Ldoodle/DoodleView;->setEditMode(Z)V

    .line 773
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnEditMode:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz p1, :cond_0

    .line 775
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    sget v0, Lcom/kukugtu/moduleplotting/R$string;->doodle_edit_mode:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 777
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    :goto_0
    return-void
.end method

.method public setPen(Ldoodle/core/IDoodlePen;)V
    .locals 3

    .line 659
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ldoodle/DoodleActivity$DoodelViewWrapper;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v1

    invoke-virtual {p0}, Ldoodle/DoodleActivity$DoodelViewWrapper;->getSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-super {p0, p1}, Ldoodle/DoodleView;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 661
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 663
    iget-object v1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 665
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    .line 666
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnPenIds:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Ldoodle/DoodleActivity$DoodelViewWrapper;->setSingleSelected(Ljava/util/Collection;I)V

    .line 667
    sget-object v0, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    if-ne p1, v0, :cond_2

    .line 668
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1600(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 669
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto/16 :goto_0

    .line 672
    :cond_1
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto/16 :goto_0

    .line 674
    :cond_2
    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-ne p1, v0, :cond_3

    .line 675
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto/16 :goto_0

    .line 676
    :cond_3
    sget-object v0, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    if-ne p1, v0, :cond_4

    .line 677
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto/16 :goto_0

    .line 678
    :cond_4
    sget-object v0, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    if-ne p1, v0, :cond_6

    .line 679
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1600(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 680
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_5

    .line 681
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto :goto_0

    .line 683
    :cond_5
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto :goto_0

    .line 685
    :cond_6
    sget-object v0, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    if-ne p1, v0, :cond_8

    .line 686
    iget-object p1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1600(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 687
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_7

    .line 688
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto :goto_0

    .line 690
    :cond_7
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public setShape(Ldoodle/core/IDoodleShape;)V
    .locals 2

    .line 710
    invoke-super {p0, p1}, Ldoodle/DoodleView;->setShape(Ldoodle/core/IDoodleShape;)V

    .line 711
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mBtnShapeIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Ldoodle/DoodleActivity$DoodelViewWrapper;->setSingleSelected(Ljava/util/Collection;I)V

    return-void
.end method

.method public setSize(F)V
    .locals 3

    .line 718
    invoke-super {p0, p1}, Ldoodle/DoodleView;->setSize(F)V

    .line 719
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$200(Ldoodle/DoodleActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 720
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->mPaintSizeView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public undo()Z
    .locals 2

    .line 758
    iget-object v0, p0, Ldoodle/DoodleActivity$DoodelViewWrapper;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    .line 759
    invoke-super {p0}, Ldoodle/DoodleView;->undo()Z

    move-result v0

    return v0
.end method
