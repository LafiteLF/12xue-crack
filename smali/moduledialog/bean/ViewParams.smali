.class public Lmoduledialog/bean/ViewParams;
.super Ljava/lang/Object;
.source "ViewParams.java"


# instance fields
.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmoduledialog/bean/ViewParams;->view:Landroid/view/View;

    .line 16
    iput-object p2, p0, Lmoduledialog/bean/ViewParams;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 28
    iget-object v0, p0, Lmoduledialog/bean/ViewParams;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 20
    iget-object v0, p0, Lmoduledialog/bean/ViewParams;->view:Landroid/view/View;

    return-object v0
.end method

.method public setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmoduledialog/bean/ViewParams;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lmoduledialog/bean/ViewParams;->view:Landroid/view/View;

    return-void
.end method
