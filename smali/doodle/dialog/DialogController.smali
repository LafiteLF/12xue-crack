.class public Ldoodle/dialog/DialogController;
.super Ljava/lang/Object;
.source "DialogController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030011

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 217
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    :goto_1
    return-object v0
.end method

.method public static showEnterCancelDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 8

    .line 31
    sget v0, Lcom/kukugtu/moduleplotting/R$string;->doodle_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/kukugtu/moduleplotting/R$string;->doodle_enter:I

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    .line 31
    invoke-static/range {v1 .. v7}, Ldoodle/dialog/DialogController;->showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showEnterDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 8

    .line 36
    sget v0, Lcom/kukugtu/moduleplotting/R$string;->doodle_enter:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 36
    invoke-static/range {v1 .. v7}, Ldoodle/dialog/DialogController;->showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showInputTextDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-static {p0}, Ldoodle/dialog/DialogController;->getDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 110
    sget v2, Lcom/kukugtu/moduleplotting/R$layout;->doodle_create_text:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 111
    new-instance v2, Ldoodle/dialog/DialogController$2;

    invoke-direct {v2, v1}, Ldoodle/dialog/DialogController$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ldoodle/util/DrawUtil;->assistActivity(Landroid/view/Window;)V

    .line 122
    :cond_1
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_edit:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 123
    sget v2, Lcom/kukugtu/moduleplotting/R$id;->doodle_text_cancel_btn:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 124
    sget v3, Lcom/kukugtu/moduleplotting/R$id;->doodle_text_enter_btn:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 126
    new-instance v3, Ldoodle/dialog/DialogController$3;

    invoke-direct {v3, v0, p0}, Ldoodle/dialog/DialogController$3;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-nez p1, :cond_2

    const-string p1, ""

    .line 149
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance p1, Ldoodle/dialog/DialogController$4;

    invoke-direct {p1, v1, p3, v2}, Ldoodle/dialog/DialogController$4;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance p1, Ldoodle/dialog/DialogController$5;

    invoke-direct {p1, v1, p2, p0, v0}, Ldoodle/dialog/DialogController$5;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public static showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    .line 42
    invoke-static {p0}, Ldoodle/dialog/DialogController;->getDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 44
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroids/utils/StatusBarUtil;->setStatusBarTranslucent(Landroid/view/Window;ZZ)V

    .line 45
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 46
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    new-instance v1, Ldoodle/dialog/DialogController$1;

    invoke-direct {v1, v0, p5, p6}, Ldoodle/dialog/DialogController$1;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {p0}, Landroids/base/InjectionLayoutInflater;->from(Landroid/content/Context;)Landroids/base/InjectionLayoutInflater;

    move-result-object p0

    sget p5, Lcom/kukugtu/moduleplotting/R$layout;->doodle_dialog:I

    .line 69
    invoke-static {v1}, Landroids/base/InjectionLayoutInflater;->getViewOnClickListenerInjector(Landroid/view/View$OnClickListener;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    move-result-object p6

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p5, v1, p6}, Landroids/base/InjectionLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;

    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 p5, 0x8

    if-eqz p0, :cond_0

    .line 73
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_title:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/View;->setVisibility(I)V

    .line 74
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_list_title_divider:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_title:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 81
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_msg:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 83
    :cond_1
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_msg:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 84
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_01:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 90
    :cond_2
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_01:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 95
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_02:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 97
    :cond_3
    sget p0, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_02:I

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object v0
.end method

.method public static showSelectImageDialog(Landroid/app/Activity;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)Landroid/app/Dialog;
    .locals 9

    .line 175
    invoke-static {p0}, Ldoodle/dialog/DialogController;->getDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 177
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 178
    sget v1, Lcom/kukugtu/moduleplotting/R$layout;->doodle_create_bitmap:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 179
    new-instance v2, Ldoodle/dialog/DialogController$6;

    invoke-direct {v2, v0}, Ldoodle/dialog/DialogController$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 187
    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_image_selector_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 188
    new-instance v8, Ldoodle/imagepicker/ImageSelectorView;

    new-instance v7, Ldoodle/dialog/DialogController$7;

    invoke-direct {v7, v0, p1}, Ldoodle/dialog/DialogController$7;-><init>(Landroid/app/Dialog;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ldoodle/imagepicker/ImageSelectorView;-><init>(Landroid/content/Context;ZILjava/util/List;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)V

    const/4 p0, 0x4

    .line 206
    invoke-virtual {v8, p0}, Ldoodle/imagepicker/ImageSelectorView;->setColumnCount(I)V

    .line 207
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method
