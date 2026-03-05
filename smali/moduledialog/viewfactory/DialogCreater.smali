.class public Lmoduledialog/viewfactory/DialogCreater;
.super Ljava/lang/Object;
.source "DialogCreater.java"


# instance fields
.field private moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method static synthetic access$000(Lmoduledialog/viewfactory/DialogCreater;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 38
    iget-object p0, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method


# virtual methods
.method public createView(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmoduledialog/bean/ViewData;",
            ">;)",
            "Ljava/util/List<",
            "Lmoduledialog/bean/ViewParams;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v1, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/kukugtu/moduledialog/R$layout;->dialog_sure:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 52
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    new-instance v4, Lmoduledialog/bean/ViewParams;

    invoke-direct {v4, v1, v2}, Lmoduledialog/bean/ViewParams;-><init>(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmoduledialog/bean/ViewData;

    .line 62
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Lmoduledialog/bean/ViewData;->getW()I

    move-result v5

    invoke-virtual {v2}, Lmoduledialog/bean/ViewData;->getH()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {v2}, Lmoduledialog/bean/ViewData;->getX()I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 64
    invoke-virtual {v2}, Lmoduledialog/bean/ViewData;->getY()I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 66
    invoke-virtual {v2}, Lmoduledialog/bean/ViewData;->getViewType()I

    move-result v5

    const-string v6, "#ffffff"

    const/16 v7, 0x11

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 139
    :pswitch_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    check-cast v2, Lmoduledialog/bean/IconViewData;

    .line 141
    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2}, Lmoduledialog/bean/IconViewData;->getImg_base64()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    iget-object v6, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2}, Lmoduledialog/bean/IconViewData;->getImg_base64_down()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    :try_start_0
    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :try_start_1
    invoke-static {v6}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    move-object v5, v3

    .line 149
    :goto_1
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v3

    .line 152
    :goto_2
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 153
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 155
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    new-instance v7, Lmoduledialog/viewfactory/DialogCreater$5;

    invoke-direct {v7, p0, v1, v6, v5}, Lmoduledialog/viewfactory/DialogCreater$5;-><init>(Lmoduledialog/viewfactory/DialogCreater;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    new-instance v5, Lmoduledialog/viewfactory/DialogCreater$6;

    invoke-direct {v5, p0, v2}, Lmoduledialog/viewfactory/DialogCreater$6;-><init>(Lmoduledialog/viewfactory/DialogCreater;Lmoduledialog/bean/IconViewData;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 72
    :pswitch_1
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    check-cast v2, Lmoduledialog/bean/BtnViewData;

    .line 74
    invoke-virtual {v2}, Lmoduledialog/bean/BtnViewData;->getShowText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    sget v5, Lcom/kukugtu/moduledialog/R$drawable;->radius_circle_4bc7c7:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lmoduledialog/bean/BtnViewData;->getTextSize()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lmoduledialog/utils/CommonUtils;->px2sp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    new-instance v5, Lmoduledialog/viewfactory/DialogCreater$1;

    invoke-direct {v5, p0, v1}, Lmoduledialog/viewfactory/DialogCreater$1;-><init>(Lmoduledialog/viewfactory/DialogCreater;Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    new-instance v5, Lmoduledialog/viewfactory/DialogCreater$2;

    invoke-direct {v5, p0, v2}, Lmoduledialog/viewfactory/DialogCreater$2;-><init>(Lmoduledialog/viewfactory/DialogCreater;Lmoduledialog/bean/BtnViewData;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 101
    :pswitch_2
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    check-cast v2, Lmoduledialog/bean/BtnViewData;

    .line 103
    invoke-virtual {v2}, Lmoduledialog/bean/BtnViewData;->getShowText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    sget v5, Lcom/kukugtu/moduledialog/R$drawable;->radius_radius_4bc7c7:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lmoduledialog/bean/BtnViewData;->getTextSize()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lmoduledialog/utils/CommonUtils;->px2sp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    new-instance v5, Lmoduledialog/viewfactory/DialogCreater$3;

    invoke-direct {v5, p0, v1}, Lmoduledialog/viewfactory/DialogCreater$3;-><init>(Lmoduledialog/viewfactory/DialogCreater;Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    new-instance v5, Lmoduledialog/viewfactory/DialogCreater$4;

    invoke-direct {v5, p0, v2}, Lmoduledialog/viewfactory/DialogCreater$4;-><init>(Lmoduledialog/viewfactory/DialogCreater;Lmoduledialog/bean/BtnViewData;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 130
    :pswitch_3
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    check-cast v2, Lmoduledialog/bean/TextMsgViewData;

    .line 132
    invoke-virtual {v2}, Lmoduledialog/bean/TextMsgViewData;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x0

    .line 134
    invoke-virtual {v2}, Lmoduledialog/bean/TextMsgViewData;->getLineSpacting()F

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 135
    iget-object v5, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lmoduledialog/bean/TextMsgViewData;->getTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5, v2}, Lmoduledialog/utils/CommonUtils;->px2sp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 68
    :pswitch_4
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lmoduledialog/viewfactory/DialogCreater;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    sget v2, Lcom/kukugtu/moduledialog/R$drawable;->radius_white:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    :goto_3
    new-instance v2, Lmoduledialog/bean/ViewParams;

    invoke-direct {v2, v1, v4}, Lmoduledialog/bean/ViewParams;-><init>(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
