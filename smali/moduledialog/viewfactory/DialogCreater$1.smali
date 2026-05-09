.class Lmoduledialog/viewfactory/DialogCreater$1;
.super Ljava/lang/Object;
.source "DialogCreater.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoduledialog/viewfactory/DialogCreater;->createView(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoduledialog/viewfactory/DialogCreater;

.field final synthetic val$btnViewCircle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lmoduledialog/viewfactory/DialogCreater;Landroid/widget/TextView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmoduledialog/viewfactory/DialogCreater$1;->this$0:Lmoduledialog/viewfactory/DialogCreater;

    iput-object p2, p0, Lmoduledialog/viewfactory/DialogCreater$1;->val$btnViewCircle:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lmoduledialog/viewfactory/DialogCreater$1;->val$btnViewCircle:Landroid/widget/TextView;

    sget p2, Lcom/kukugtu/moduledialog/R$drawable;->radius_circle_3fa6a6:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 85
    iget-object p1, p0, Lmoduledialog/viewfactory/DialogCreater$1;->val$btnViewCircle:Landroid/widget/TextView;

    sget p2, Lcom/kukugtu/moduledialog/R$drawable;->radius_circle_4bc7c7:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
