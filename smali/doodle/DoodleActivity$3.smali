.class Ldoodle/DoodleActivity$3;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->createDoodleText(Ldoodle/DoodleText;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleActivity;

.field final synthetic val$doodleText:Ldoodle/DoodleText;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity;Ldoodle/DoodleText;FF)V
    .locals 0

    .line 297
    iput-object p1, p0, Ldoodle/DoodleActivity$3;->this$0:Ldoodle/DoodleActivity;

    iput-object p2, p0, Ldoodle/DoodleActivity$3;->val$doodleText:Ldoodle/DoodleText;

    iput p3, p0, Ldoodle/DoodleActivity$3;->val$x:F

    iput p4, p0, Ldoodle/DoodleActivity$3;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$3;->val$doodleText:Ldoodle/DoodleText;

    if-nez p1, :cond_1

    .line 305
    new-instance p1, Ldoodle/DoodleText;

    iget-object v0, p0, Ldoodle/DoodleActivity$3;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    iget-object v0, p0, Ldoodle/DoodleActivity$3;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodle;->getSize()F

    move-result v3

    iget-object v0, p0, Ldoodle/DoodleActivity$3;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodle;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodleColor;->copy()Ldoodle/core/IDoodleColor;

    move-result-object v4

    iget v5, p0, Ldoodle/DoodleActivity$3;->val$x:F

    iget v6, p0, Ldoodle/DoodleActivity$3;->val$y:F

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ldoodle/DoodleText;-><init>(Ldoodle/core/IDoodle;Ljava/lang/String;FLdoodle/core/IDoodleColor;FF)V

    .line 306
    iget-object v0, p0, Ldoodle/DoodleActivity$3;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    invoke-interface {v0, p1}, Ldoodle/core/IDoodle;->addItem(Ldoodle/core/IDoodleItem;)V

    .line 307
    iget-object v0, p0, Ldoodle/DoodleActivity$3;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p1, v2}, Ldoodle/DoodleText;->setText(Ljava/lang/String;)V

    .line 311
    :goto_0
    iget-object p1, p0, Ldoodle/DoodleActivity$3;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->refresh()V

    return-void
.end method
