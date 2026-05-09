.class public Ldoodle/dialog/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private final debug:Z

.field private mListener:Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Ldoodle/dialog/ColorPickerDialog;->debug:Z

    const-string p3, "ColorPicker"

    .line 24
    iput-object p3, p0, Ldoodle/dialog/ColorPickerDialog;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Ldoodle/dialog/ColorPickerDialog;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Ldoodle/dialog/ColorPickerDialog;->mListener:Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method

.method static synthetic access$000(Ldoodle/dialog/ColorPickerDialog;)Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;
    .locals 0

    .line 22
    iget-object p0, p0, Ldoodle/dialog/ColorPickerDialog;->mListener:Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public show(Ldoodle/core/IDoodle;Landroid/graphics/drawable/Drawable;I)V
    .locals 10

    .line 46
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 47
    iget-object v0, p0, Ldoodle/dialog/ColorPickerDialog;->context:Landroid/content/Context;

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v0, v1}, Landroids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 48
    iget-object v1, p0, Ldoodle/dialog/ColorPickerDialog;->context:Landroid/content/Context;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v1, v2}, Landroids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 50
    iget-object v2, p0, Ldoodle/dialog/ColorPickerDialog;->context:Landroid/content/Context;

    sget v3, Lcom/kukugtu/moduleplotting/R$layout;->doodle_color_selector_dialog:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    .line 51
    sget v2, Lcom/kukugtu/moduleplotting/R$id;->doodle_txtview_size:I

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    sget v3, Lcom/kukugtu/moduleplotting/R$id;->doodle_seekbar_size:I

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/SeekBar;

    .line 53
    new-instance v3, Ldoodle/dialog/ColorPickerDialog$1;

    invoke-direct {v3, p0, v2}, Ldoodle/dialog/ColorPickerDialog$1;-><init>(Ldoodle/dialog/ColorPickerDialog;Landroid/widget/TextView;)V

    invoke-virtual {v9, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    invoke-virtual {v9, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 72
    invoke-interface {p1}, Ldoodle/core/IDoodle;->getSize()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v9, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    sget p1, Lcom/kukugtu/moduleplotting/R$id;->doodle_color_selector_container:I

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 75
    new-instance p3, Ldoodle/dialog/ColorPickerView;

    iget-object v3, p0, Ldoodle/dialog/ColorPickerDialog;->context:Landroid/content/Context;

    const/high16 v4, -0x1000000

    const/4 v7, 0x0

    move-object v2, p3

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Ldoodle/dialog/ColorPickerView;-><init>(Landroid/content/Context;IIILdoodle/dialog/ColorPickerView$OnSelectedColorListener;)V

    .line 76
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 77
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3, p2}, Ldoodle/dialog/ColorPickerView;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    .line 78
    :cond_0
    instance-of v2, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 79
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    invoke-virtual {p3, p2}, Ldoodle/dialog/ColorPickerView;->setColor(I)V

    .line 81
    :cond_1
    :goto_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance p1, Ldoodle/dialog/ColorPickerDialog$2;

    invoke-direct {p1, p0, p3}, Ldoodle/dialog/ColorPickerDialog$2;-><init>(Ldoodle/dialog/ColorPickerDialog;Ldoodle/dialog/ColorPickerView;)V

    .line 91
    sget p2, Lcom/kukugtu/moduleplotting/R$id;->doodle_shader_container:I

    invoke-virtual {v8, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    move v1, v0

    .line 92
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    sget p1, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_01:I

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ldoodle/dialog/ColorPickerDialog$3;

    invoke-direct {p2, p0}, Ldoodle/dialog/ColorPickerDialog$3;-><init>(Ldoodle/dialog/ColorPickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget p1, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_02:I

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ldoodle/dialog/ColorPickerDialog$4;

    invoke-direct {p2, p0, p3, v9}, Ldoodle/dialog/ColorPickerDialog$4;-><init>(Ldoodle/dialog/ColorPickerDialog;Ldoodle/dialog/ColorPickerView;Landroid/widget/SeekBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8, p1}, Ldoodle/dialog/ColorPickerDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p0, v0}, Ldoodle/dialog/ColorPickerDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
