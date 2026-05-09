.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;
.super Ljava/lang/Object;
.source "UzImgsActivity.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/view/View;ILandroid/widget/CheckBox;Landroid/widget/ImageView;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 74
    iget-boolean p4, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 75
    iput-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    goto :goto_0

    .line 77
    :cond_0
    iput-boolean v1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    .line 80
    :goto_0
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 81
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-virtual {p4, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->iconImage(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;ILandroid/widget/CheckBox;)Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 89
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/HashMap;

    move-result-object p4

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 89
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 98
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 100
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->notifyDataSetChanged()V

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 104
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    const-string p2, "navi_title"

    .line 106
    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p2

    .line 105
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/TextView;

    .line 107
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/lang/String;

    move-result-object p2

    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "*"

    .line 107
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 111
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
