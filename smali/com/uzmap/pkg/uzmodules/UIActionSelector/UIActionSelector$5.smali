.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$5;
.super Ljava/lang/Object;
.source "UIActionSelector.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$5;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 719
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$5;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
