.class Lmoduledialog/apidialog/APIDialog1$1;
.super Ljava/lang/Object;
.source "APIDialog1.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoduledialog/apidialog/APIDialog1;->jsmethod_showDialog(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoduledialog/apidialog/APIDialog1;

.field final synthetic val$isMove:[J

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lmoduledialog/apidialog/APIDialog1;[JLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lmoduledialog/apidialog/APIDialog1$1;->this$0:Lmoduledialog/apidialog/APIDialog1;

    iput-object p2, p0, Lmoduledialog/apidialog/APIDialog1$1;->val$isMove:[J

    iput-object p3, p0, Lmoduledialog/apidialog/APIDialog1$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lmoduledialog/apidialog/APIDialog1$1;->val$isMove:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, p1, v0

    return v1

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v2, p0, Lmoduledialog/apidialog/APIDialog1$1;->val$isMove:[J

    aget-wide v3, v2, v0

    sub-long/2addr p1, v3

    const-wide/16 v2, 0xc8

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    invoke-static {}, Lmoduledialog/apidialog/APIDialog1;->access$000()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 107
    invoke-static {}, Lmoduledialog/apidialog/APIDialog1;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmoduledialog/bean/ViewParams;

    .line 108
    iget-object v0, p0, Lmoduledialog/apidialog/APIDialog1$1;->this$0:Lmoduledialog/apidialog/APIDialog1;

    invoke-virtual {p2}, Lmoduledialog/bean/ViewParams;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmoduledialog/apidialog/APIDialog1;->removeViewFromCurWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 110
    invoke-static {p1}, Lmoduledialog/apidialog/APIDialog1;->access$002(Ljava/util/List;)Ljava/util/List;

    .line 111
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "clickID"

    const-string v0, "dismiss"

    .line 112
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p2, p0, Lmoduledialog/apidialog/APIDialog1$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {p2, p1, v1}, Lmoduledialog/utils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/Map;Z)V

    :cond_2
    return v1
.end method
