.class Ldoodle/DoodleActivity$2;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleActivity;


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSelectableItem(Ldoodle/core/IDoodle;FF)V
    .locals 2

    .line 272
    iget-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 273
    iget-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1, v1, p2, p3}, Ldoodle/DoodleActivity;->access$600(Ldoodle/DoodleActivity;Ldoodle/DoodleText;FF)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    if-ne p1, v0, :cond_1

    .line 275
    iget-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1, v1, p2, p3}, Ldoodle/DoodleActivity;->access$700(Ldoodle/DoodleActivity;Ldoodle/DoodleBitmap;FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSelectedItem(Ldoodle/core/IDoodle;Ldoodle/core/IDoodleSelectableItem;Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p3, :cond_2

    .line 256
    iget-object p3, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p3}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p3

    invoke-interface {p2}, Ldoodle/core/IDoodleSelectableItem;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v1

    invoke-interface {p3, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 257
    iget-object p3, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p3}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p3

    invoke-interface {p2}, Ldoodle/core/IDoodleSelectableItem;->getSize()F

    move-result v1

    invoke-interface {p3, v1}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 258
    iget-object p3, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p3}, Ldoodle/DoodleActivity;->access$200(Ldoodle/DoodleActivity;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-interface {p2}, Ldoodle/core/IDoodleSelectableItem;->getSize()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 259
    iget-object p2, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p2}, Ldoodle/DoodleActivity;->access$500(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-interface {p1}, Ldoodle/core/IDoodle;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p2

    sget-object v1, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    if-eq p2, v1, :cond_1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object p2, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    sget p2, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_edit:I

    invoke-virtual {p1, p2}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 261
    :cond_1
    :goto_0
    iget-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    sget p2, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_edit:I

    invoke-virtual {p1, p2}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 266
    :cond_2
    iget-object p1, p0, Ldoodle/DoodleActivity$2;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$500(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
