.class public Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UIActionSelector.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;
.implements Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;
.implements Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "lyh"


# instance fields
.field private cancelBtn:Landroid/widget/TextView;

.field private config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

.field private datas:Lorg/json/JSONArray;

.field private enterClick:Z

.field private height:I

.field private isClose:Z

.field private isShow:Z

.field private layoutID:I

.field private mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

.field private mAreaDatasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCitisDatasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

.field private mCurrentAreaName:Ljava/lang/String;

.field private mCurrentCityName:Ljava/lang/String;

.field private mCurrentProviceName:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

.field private mProvinceDatas:[Ljava/lang/String;

.field private moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private navigation:Landroid/widget/RelativeLayout;

.field private okBtn:Landroid/widget/TextView;

.field public selectorContainer:Landroid/widget/LinearLayout;

.field private textViewId:I

.field private view:Landroid/view/View;

.field private weelViews:[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

.field private windowHeight:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 101
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCitisDatasMap:Ljava/util/Map;

    .line 106
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mAreaDatasMap:Ljava/util/Map;

    const-string p1, ""

    .line 120
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->height:I

    return p1
.end method

.method static synthetic access$102(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->initView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->layoutID:I

    return p0
.end method

.method static synthetic access$1402(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->layoutID:I

    return p1
.end method

.method static synthetic access$1500(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->textViewId:I

    return p0
.end method

.method static synthetic access$1502(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->textViewId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->setOnclick()V

    return-void
.end method

.method static synthetic access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lorg/json/JSONArray;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->datas:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->datas:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->updateCities()V

    return-void
.end method

.method static synthetic access$2200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->updateAreas()V

    return-void
.end method

.method static synthetic access$2300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->weelViews:[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->weelViews:[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->isShow:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->isClose:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->isClose:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->enterClick:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->enterClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)[Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvinceDatas:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvinceDatas:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/util/Map;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCitisDatasMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$402(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCitisDatasMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/util/Map;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mAreaDatasMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mAreaDatasMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$600(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->windowHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->windowHeight:I

    return p1
.end method

.method static synthetic access$802(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->y:I

    return p1
.end method

.method static synthetic access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method

.method public static addStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 1015
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1016
    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p0, v1, [I

    const v1, 0x101009c

    aput v1, p0, v4

    .line 1017
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p0, v4, [I

    .line 1018
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 992
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 995
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    .line 998
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    .line 999
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1004
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1008
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1010
    throw p1

    .line 1008
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1
    move-exception p2

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p2

    :goto_2
    if-eqz p1, :cond_4

    .line 1004
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_3

    .line 1008
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1010
    :cond_3
    throw p1

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 1008
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1011
    :cond_5
    throw p2
.end method

.method public static getColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v2, v0, [I

    .line 1024
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v4, v2, [I

    const v5, 0x101009e

    aput v5, v4, v3

    aput-object v4, v1, v2

    new-array v0, v0, [I

    aput p0, v0, v3

    aput p1, v0, v2

    .line 1027
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private initJsonData()V
    .locals 7

    .line 841
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "city"

    .line 842
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResRawID(Ljava/lang/String;)I

    move-result v1

    .line 843
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 846
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 847
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v4, v2, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 848
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 851
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mJsonObj:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 855
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 853
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private initView()V
    .locals 4

    const-string v0, "rl_navigation"

    .line 401
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->navigation:Landroid/widget/RelativeLayout;

    const-string v0, "btn_cancle"

    .line 404
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    .line 410
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextColorActive:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 413
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 416
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 417
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 418
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 419
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelMarginL:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 420
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 428
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBg:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBgActive:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 436
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBgActive:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 439
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->addStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "titleText"

    .line 443
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 444
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 447
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleAlignment:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x13

    .line 449
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleAlignment:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x15

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_3
    const/16 v1, 0x11

    .line 453
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_2
    const-string v1, "border"

    .line 456
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 457
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 458
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->lineColor:Ljava/lang/String;

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 460
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->lineHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 462
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 463
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleHeight:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 467
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleHeaderBg:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 468
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 474
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->navigation:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "btn_enter"

    .line 478
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    .line 484
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextColorActive:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    .line 486
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 487
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 490
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 491
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 492
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 493
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okMarginR:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 494
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 500
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 502
    :cond_4
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBg:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 505
    :goto_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBgActive:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 508
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 510
    :cond_5
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBgActive:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 513
    :goto_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->addStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "id_province"

    .line 518
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    const-string v0, "id_city"

    .line 520
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    const-string v0, "id_area"

    .line 522
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 523
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    .line 525
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->navigation:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$3;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$3;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnclick()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addChangingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addChangingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;)V

    .line 364
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addChangingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelChangedListener;)V

    .line 366
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addClickingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;)V

    .line 367
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addClickingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;)V

    .line 368
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->addClickingListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/OnWheelClickedListener;)V

    .line 369
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->cancelBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->okBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$2;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateAreas()V
    .locals 3

    const-string v0, "ttt"

    const-string v1, "updateAreas"

    .line 761
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getCurrentItem()I

    move-result v0

    .line 764
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCitisDatasMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 765
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 766
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mAreaDatasMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 770
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_1
    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 773
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->layoutID:I

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemResource(I)V

    .line 774
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->textViewId:I

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemTextResource(I)V

    .line 775
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setViewAdapter(Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;)V

    .line 776
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    .line 778
    array-length v1, v0

    if-lez v1, :cond_2

    .line 779
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private updateCities()V
    .locals 7

    const-string v0, "ttt"

    const-string v1, "updateCities"

    .line 789
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getCurrentItem()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 795
    :goto_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvinceDatas:[Ljava/lang/String;

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    array-length v4, v3

    if-gt v1, v4, :cond_1

    .line 796
    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCitisDatasMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_2

    .line 801
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 804
    array-length v6, v1

    if-ne v6, v4, :cond_3

    const-string v6, "excute"

    .line 805
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    aget-object v0, v1, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 807
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    :cond_3
    if-eqz v1, :cond_4

    .line 811
    array-length v0, v1

    if-ne v0, v5, :cond_4

    new-array v0, v4, [Ljava/lang/String;

    .line 812
    aget-object v1, v1, v2

    aput-object v1, v0, v2

    aput-object v3, v0, v5

    .line 813
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCitisDatasMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {v1, v3, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 816
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->layoutID:I

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemResource(I)V

    .line 817
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->textViewId:I

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemTextResource(I)V

    .line 818
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setViewAdapter(Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;)V

    .line 819
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    .line 821
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->updateAreas()V

    return-void

    .line 825
    :cond_4
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {v0, v3, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 826
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->layoutID:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemResource(I)V

    .line 827
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->textViewId:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemTextResource(I)V

    .line 828
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setViewAdapter(Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;)V

    .line 829
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    .line 831
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->updateAreas()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 2

    .line 937
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "msg"

    .line 939
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 941
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 943
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public generateBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "file://"

    .line 947
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    .line 948
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    const-string v2, "android_asset"

    .line 952
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x2f

    .line 953
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 954
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 955
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getContext()Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 957
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 958
    invoke-direct {p0, v1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 960
    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 964
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 965
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 967
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1035
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1036
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1038
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1039
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v1

    .line 1041
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_2

    :cond_0
    move-object p1, v1

    :goto_2
    if-eqz v1, :cond_1

    .line 1046
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1048
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object p1
.end method

.method public getJSONObjectByName(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 674
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 675
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    const-string v4, ""

    .line 676
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public hiddenView(Ljava/lang/String;)V
    .locals 3

    .line 577
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->height:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v1, 0x1

    .line 578
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0x12c

    .line 579
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 580
    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 666
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 979
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 982
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 974
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->isClose:Z

    const-string v0, "anim"

    .line 729
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "animation"

    .line 730
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 735
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->hiddenView(Ljava/lang/String;)V

    goto :goto_1

    .line 737
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 738
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    :goto_1
    return-void
.end method

.method public jsmethod_getActive(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 565
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "level1"

    .line 567
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "level2"

    .line 568
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    const-string v3, "__tag(\\d){0,}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "level3"

    .line 569
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 571
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 573
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_hide(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 543
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 544
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 132
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 133
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public jsmethod_setActive(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "actives"

    .line 550
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 553
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->weelViews:[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    array-length v1, v1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 558
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->weelViews:[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public jsmethod_show(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 686
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 687
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public marginSetting()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->col:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 340
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 341
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->col:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 346
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 347
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->col:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 353
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 354
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->config:Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_2
    return-void
.end method

.method public onChanged(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;II)V
    .locals 7

    .line 866
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    if-ne p1, p2, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->updateCities()V

    goto :goto_0

    .line 868
    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    if-ne p1, p2, :cond_1

    .line 869
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->updateAreas()V

    goto :goto_0

    .line 871
    :cond_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    if-ne p1, p2, :cond_2

    .line 872
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mAreaDatasMap:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 873
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 874
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mAreaDatasMap:Ljava/util/Map;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    .line 881
    :cond_2
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "eventType"

    const-string p3, "onChange"

    .line 883
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 884
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "level1"

    .line 885
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    :cond_3
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, ""

    const-string v0, "__tag(\\d){0,}"

    if-nez p2, :cond_4

    :try_start_1
    const-string p2, "level2"

    .line 888
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    :cond_4
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "level3"

    .line 891
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    :cond_5
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->datas:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getJSONObjectByName(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    const-string v2, "sub"

    if-eqz p2, :cond_7

    .line 899
    :try_start_2
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 900
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-virtual {v4, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v3, p3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getJSONObjectByName(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 902
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getJSONObjectByName(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_6
    move-object v6, v1

    move-object v1, p3

    move-object p3, v6

    goto :goto_1

    :cond_7
    move-object p3, v1

    .line 907
    :goto_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_8

    .line 909
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 910
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 911
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 912
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    if-eqz v1, :cond_9

    .line 915
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 916
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 917
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 918
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    if-eqz p3, :cond_a

    .line 921
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a
    const-string p2, "selectedInfo"

    .line 923
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 927
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 1081
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    const/4 v0, 0x0

    .line 1082
    sput v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->flag:I

    return-void
.end method

.method public onItemClicked(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mProvince:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    const-string v1, "lyh"

    if-ne p1, v0, :cond_0

    .line 1059
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked  mProvince  itemIndex =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    if-ne p1, v0, :cond_1

    .line 1061
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked  mCity  itemIndex =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    if-ne p1, v0, :cond_2

    .line 1063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked  mArea  itemIndex =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onTapUp()V
    .locals 4

    .line 1098
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$6;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$6;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1088
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 1089
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1091
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public showChoose(Landroid/view/View;)V
    .locals 2

    .line 933
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentProviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCurrentAreaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showLevel(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 1070
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mCity:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setVisibility(I)V

    .line 1071
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->mArea:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showView()V
    .locals 4

    .line 692
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->isShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    .line 697
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 698
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->height:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 699
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->y:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 700
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->height:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v2, 0x1

    .line 703
    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x12c

    .line 704
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 705
    new-instance v2, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$5;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$5;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 722
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 743
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    return-object v0

    .line 749
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 753
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
