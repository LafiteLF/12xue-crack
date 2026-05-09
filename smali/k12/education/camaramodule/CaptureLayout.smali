.class public Lk12/education/camaramodule/CaptureLayout;
.super Landroid/widget/FrameLayout;
.source "CaptureLayout.java"


# instance fields
.field private btn_cancel:Lk12/education/camaramodule/TypeButton;

.field private btn_capture:Lk12/education/camaramodule/CaptureButton;

.field private btn_confirm:Lk12/education/camaramodule/TypeButton;

.field private btn_return:Lk12/education/camaramodule/ReturnButton;

.field private button_size:I

.field private captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

.field private iconLeft:I

.field private iconRight:I

.field private isFirst:Z

.field private iv_custom_left:Landroid/widget/ImageView;

.field private iv_custom_right:Landroid/widget/ImageView;

.field private layout_height:I

.field private layout_width:I

.field private leftClickListener:Lk12/education/camaramodule/listener/ClickListener;

.field private returnListener:Lk12/education/camaramodule/listener/ReturnListener;

.field private rightClickListener:Lk12/education/camaramodule/listener/ClickListener;

.field private txt_tip:Landroid/widget/TextView;

.field private typeLisenter:Lk12/education/camaramodule/listener/TypeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lk12/education/camaramodule/CaptureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lk12/education/camaramodule/CaptureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 64
    iput p2, p0, Lk12/education/camaramodule/CaptureLayout;->iconLeft:I

    .line 65
    iput p2, p0, Lk12/education/camaramodule/CaptureLayout;->iconRight:I

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lk12/education/camaramodule/CaptureLayout;->isFirst:Z

    const-string p3, "window"

    .line 80
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 81
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_0

    .line 85
    iget p1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    goto :goto_0

    .line 87
    :cond_0
    iget p1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    .line 89
    :goto_0
    iget p1, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    int-to-float p1, p1

    const/high16 p2, 0x40900000    # 4.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    .line 90
    div-int/lit8 p2, p1, 0x5

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lk12/education/camaramodule/CaptureLayout;->layout_height:I

    .line 92
    invoke-direct {p0}, Lk12/education/camaramodule/CaptureLayout;->initView()V

    .line 93
    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->initEvent()V

    return-void
.end method

.method static synthetic access$000(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/TypeButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    return-object p0
.end method

.method static synthetic access$100(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/TypeButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    return-object p0
.end method

.method static synthetic access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lk12/education/camaramodule/CaptureLayout;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    return-object p0
.end method

.method static synthetic access$300(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/TypeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lk12/education/camaramodule/CaptureLayout;->typeLisenter:Lk12/education/camaramodule/listener/TypeListener;

    return-object p0
.end method

.method static synthetic access$400(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/ClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lk12/education/camaramodule/CaptureLayout;->leftClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/ClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lk12/education/camaramodule/CaptureLayout;->rightClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-object p0
.end method

.method private initView()V
    .locals 11

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->setWillNotDraw(Z)V

    .line 143
    new-instance v1, Lk12/education/camaramodule/CaptureButton;

    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    invoke-direct {v1, v2, v3}, Lk12/education/camaramodule/CaptureButton;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    .line 144
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 145
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    iget-object v4, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    invoke-virtual {v4, v1}, Lk12/education/camaramodule/CaptureButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    new-instance v4, Lk12/education/camaramodule/CaptureLayout$2;

    invoke-direct {v4, p0}, Lk12/education/camaramodule/CaptureLayout$2;-><init>(Lk12/education/camaramodule/CaptureLayout;)V

    invoke-virtual {v1, v4}, Lk12/education/camaramodule/CaptureButton;->setCaptureLisenter(Lk12/education/camaramodule/listener/CaptureListener;)V

    .line 196
    new-instance v1, Lk12/education/camaramodule/TypeButton;

    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    const/4 v6, 0x1

    invoke-direct {v1, v4, v6, v5}, Lk12/education/camaramodule/TypeButton;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    .line 197
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    .line 198
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    iget v5, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    div-int/lit8 v5, v5, 0x4

    iget v7, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    const/4 v8, 0x2

    div-int/2addr v7, v8

    sub-int/2addr v5, v7

    invoke-virtual {v1, v5, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    iget-object v5, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v5, v1}, Lk12/education/camaramodule/TypeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    new-instance v5, Lk12/education/camaramodule/CaptureLayout$3;

    invoke-direct {v5, p0}, Lk12/education/camaramodule/CaptureLayout$3;-><init>(Lk12/education/camaramodule/CaptureLayout;)V

    invoke-virtual {v1, v5}, Lk12/education/camaramodule/TypeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v1, Lk12/education/camaramodule/TypeButton;

    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    invoke-direct {v1, v5, v8, v7}, Lk12/education/camaramodule/TypeButton;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    .line 214
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x15

    .line 215
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    iget v7, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    div-int/lit8 v7, v7, 0x4

    iget v9, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    div-int/2addr v9, v8

    sub-int/2addr v7, v9

    invoke-virtual {v1, v0, v0, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    iget-object v7, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v7, v1}, Lk12/education/camaramodule/TypeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    new-instance v7, Lk12/education/camaramodule/CaptureLayout$4;

    invoke-direct {v7, p0}, Lk12/education/camaramodule/CaptureLayout$4;-><init>(Lk12/education/camaramodule/CaptureLayout;)V

    invoke-virtual {v1, v7}, Lk12/education/camaramodule/TypeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v1, Lk12/education/camaramodule/ReturnButton;

    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    int-to-float v8, v8

    const/high16 v9, 0x40200000    # 2.5f

    div-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v7, v8}, Lk12/education/camaramodule/ReturnButton;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    .line 231
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 232
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    iget v8, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    div-int/lit8 v8, v8, 0x6

    invoke-virtual {v1, v8, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    iget-object v8, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    invoke-virtual {v8, v1}, Lk12/education/camaramodule/ReturnButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    new-instance v8, Lk12/education/camaramodule/CaptureLayout$5;

    invoke-direct {v8, p0}, Lk12/education/camaramodule/CaptureLayout$5;-><init>(Lk12/education/camaramodule/CaptureLayout;)V

    invoke-virtual {v1, v8}, Lk12/education/camaramodule/ReturnButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    .line 245
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    int-to-float v10, v8

    div-float/2addr v10, v9

    float-to-int v10, v10

    int-to-float v8, v8

    div-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 246
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    iget v4, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    div-int/lit8 v4, v4, 0x6

    invoke-virtual {v1, v4, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    iget-object v4, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    new-instance v4, Lk12/education/camaramodule/CaptureLayout$6;

    invoke-direct {v4, p0}, Lk12/education/camaramodule/CaptureLayout$6;-><init>(Lk12/education/camaramodule/CaptureLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    .line 260
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lk12/education/camaramodule/CaptureLayout;->button_size:I

    int-to-float v8, v4

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-int v4, v4

    invoke-direct {v1, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 261
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 262
    iget v4, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    div-int/lit8 v4, v4, 0x6

    invoke-virtual {v1, v0, v0, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    iget-object v4, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    new-instance v4, Lk12/education/camaramodule/CaptureLayout$7;

    invoke-direct {v4, p0}, Lk12/education/camaramodule/CaptureLayout$7;-><init>(Lk12/education/camaramodule/CaptureLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    .line 274
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 275
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 276
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 277
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const-string v4, "\u957f\u6309\u6444\u50cf"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initEvent()V
    .locals 2

    .line 104
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 99
    iget p1, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    iget p2, p0, Lk12/education/camaramodule/CaptureLayout;->layout_height:I

    invoke-virtual {p0, p1, p2}, Lk12/education/camaramodule/CaptureLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetCaptureLayout()V
    .locals 2

    .line 296
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    invoke-virtual {v0}, Lk12/education/camaramodule/CaptureButton;->resetState()V

    .line 297
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CaptureButton;->setVisibility(I)V

    .line 300
    iget v0, p0, Lk12/education/camaramodule/CaptureLayout;->iconLeft:I

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/ReturnButton;->setVisibility(I)V

    .line 304
    :goto_0
    iget v0, p0, Lk12/education/camaramodule/CaptureLayout;->iconRight:I

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setButtonFeatures(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CaptureButton;->setButtonFeatures(I)V

    return-void
.end method

.method public setCaptureLisenter(Lk12/education/camaramodule/listener/CaptureListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    .line 326
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CaptureButton;->setDuration(I)V

    return-void
.end method

.method public setIconSrc(II)V
    .locals 3

    .line 342
    iput p1, p0, Lk12/education/camaramodule/CaptureLayout;->iconLeft:I

    .line 343
    iput p2, p0, Lk12/education/camaramodule/CaptureLayout;->iconRight:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 345
    iget-object v2, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    invoke-virtual {p1, v1}, Lk12/education/camaramodule/ReturnButton;->setVisibility(I)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/ReturnButton;->setVisibility(I)V

    .line 352
    :goto_0
    iget p1, p0, Lk12/education/camaramodule/CaptureLayout;->iconRight:I

    if-eqz p1, :cond_1

    .line 353
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 356
    :cond_1
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setLeftClickListener(Lk12/education/camaramodule/listener/ClickListener;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->leftClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-void
.end method

.method public setReturnLisenter(Lk12/education/camaramodule/listener/ReturnListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->returnListener:Lk12/education/camaramodule/listener/ReturnListener;

    return-void
.end method

.method public setRightClickListener(Lk12/education/camaramodule/listener/ClickListener;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->rightClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-void
.end method

.method public setTextWithAnimation(Ljava/lang/String;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x9c4

    .line 321
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTypeLisenter(Lk12/education/camaramodule/listener/TypeListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout;->typeLisenter:Lk12/education/camaramodule/listener/TypeListener;

    return-void
.end method

.method public showTip()V
    .locals 2

    .line 338
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startAlphaAnimation()V
    .locals 3

    .line 310
    iget-boolean v0, p0, Lk12/education/camaramodule/CaptureLayout;->isFirst:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lk12/education/camaramodule/CaptureLayout;->isFirst:Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startTypeBtnAnimator()V
    .locals 9

    .line 111
    iget v0, p0, Lk12/education/camaramodule/CaptureLayout;->iconLeft:I

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_return:Lk12/education/camaramodule/ReturnButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/ReturnButton;->setVisibility(I)V

    .line 115
    :goto_0
    iget v0, p0, Lk12/education/camaramodule/CaptureLayout;->iconRight:I

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :cond_1
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_capture:Lk12/education/camaramodule/CaptureButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CaptureButton;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setClickable(Z)V

    .line 121
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/TypeButton;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout;->btn_cancel:Lk12/education/camaramodule/TypeButton;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    aput v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    const-string v6, "translationX"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 123
    iget-object v3, p0, Lk12/education/camaramodule/CaptureLayout;->btn_confirm:Lk12/education/camaramodule/TypeButton;

    new-array v7, v2, [F

    iget v8, p0, Lk12/education/camaramodule/CaptureLayout;->layout_width:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    aput v8, v7, v1

    aput v4, v7, v5

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 125
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    aput-object v3, v2, v5

    .line 126
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 127
    new-instance v0, Lk12/education/camaramodule/CaptureLayout$1;

    invoke-direct {v0, p0}, Lk12/education/camaramodule/CaptureLayout$1;-><init>(Lk12/education/camaramodule/CaptureLayout;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    .line 135
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 136
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
