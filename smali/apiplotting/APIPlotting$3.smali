.class Lapiplotting/APIPlotting$3;
.super Ljava/lang/Object;
.source "APIPlotting.java"

# interfaces
.implements Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapiplotting/APIPlotting;->loadBitmap(Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapiplotting/APIPlotting;


# direct methods
.method constructor <init>(Lapiplotting/APIPlotting;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lapiplotting/APIPlotting$3;->this$0:Lapiplotting/APIPlotting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSelectableItem(Ldoodle/core/IDoodle;FF)V
    .locals 0

    return-void
.end method

.method public onSelectedItem(Ldoodle/core/IDoodle;Ldoodle/core/IDoodleSelectableItem;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 203
    iget-object p1, p0, Lapiplotting/APIPlotting$3;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p2}, Ldoodle/core/IDoodleSelectableItem;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object p3

    invoke-interface {p1, p3}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 204
    iget-object p1, p0, Lapiplotting/APIPlotting$3;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p2}, Ldoodle/core/IDoodleSelectableItem;->getSize()F

    move-result p2

    invoke-interface {p1, p2}, Ldoodle/core/IDoodle;->setSize(F)V

    :cond_0
    return-void
.end method
