.class public Lcom/deepe/e/j;
.super Lcom/deepe/e/c;


# static fields
.field static final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "showToast"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "hideToast"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "showLoading"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "hideLoading"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "showModal"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "showActionSheet"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "setNavigationBarTitle"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "setNavigationBarColor"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "showNavigationBarLoading"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "hideNavigationBarLoading"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "setTabBarItem"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "setTabBarStyle"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "hideTabBar"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "showTabBar"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "setTabBarBadge"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "removeTabBarBadge"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "showTabBarRedDot"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "hideTabBarRedDot"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "setBackgroundColor"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "setBackgroundTextStyle"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "onWindowResize"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    const-string v1, "offWindowResize"

    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/e/c;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    return-void
.end method

.method private a(I)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tapIndex"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/deepe/e/j;I)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/e/j;->a(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/e/j;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/e/j;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "confirm"

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "cancel"

    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private a(Lcom/deepe/e/d;Z)V
    .locals 4

    new-instance p2, Lcom/deepe/e/j$1;

    invoke-direct {p2, p0, p1}, Lcom/deepe/e/j$1;-><init>(Lcom/deepe/e/j;Lcom/deepe/e/d;)V

    const/4 v0, 0x0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/deepe/a/g/b$a;->a:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "content"

    invoke-virtual {p1, v2, v1}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/deepe/a/g/b$a;->b:Ljava/lang/String;

    const-string v2, "showCancel"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/deepe/e/d;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p2, Lcom/deepe/a/g/b$a;->c:Z

    const-string v2, "cancelText"

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {p1, v2, v3}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/deepe/a/g/b$a;->d:Ljava/lang/String;

    const-string v2, "confirmText"

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {p1, v2, v3}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/deepe/a/g/b$a;->f:Ljava/lang/String;

    const-string v2, "editable"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/deepe/e/d;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p2, Lcom/deepe/a/g/b$a;->h:Z

    const-string v2, "placeholderText"

    invoke-virtual {p1, v2, v1}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/deepe/a/g/b$a;->i:Ljava/lang/String;

    const-string v1, "cancelColor"

    invoke-virtual {p1, v1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "confirmColor"

    invoke-virtual {p1, v2, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/high16 v0, -0x1000000

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iput v0, p2, Lcom/deepe/a/g/b$a;->e:I

    const v0, -0xa8946b

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    iput v0, p2, Lcom/deepe/a/g/b$a;->g:I

    invoke-virtual {p0}, Lcom/deepe/e/j;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/deepe/a/g/b;->a(Landroid/content/Context;Lcom/deepe/a/g/b$a;)Lcom/deepe/a/g/a;

    return-void
.end method

.method private b(Lcom/deepe/e/d;Z)V
    .locals 2

    new-instance p2, Lcom/deepe/e/j$2;

    invoke-direct {p2, p0, p1}, Lcom/deepe/e/j$2;-><init>(Lcom/deepe/e/j;Lcom/deepe/e/d;)V

    const/4 v0, 0x0

    const-string v1, "alertText"

    invoke-virtual {p1, v1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/deepe/a/g/b$b;->a:Ljava/lang/String;

    const-string v1, "itemColor"

    invoke-virtual {p1, v1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, p2, Lcom/deepe/a/g/b$b;->c:I

    const-string v0, "itemList"

    invoke-virtual {p1, v0}, Lcom/deepe/e/d;->optArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p2, Lcom/deepe/a/g/b$b;->b:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/e/j;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/deepe/a/g/b;->a(Landroid/content/Context;Lcom/deepe/a/g/b$b;)Lcom/deepe/a/g/a/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "hideToast"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/e/j;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/a/g/b;->a(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_1
    const-string p3, "showLoading"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/deepe/e/j;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    const/16 p3, 0x22

    goto :goto_0

    :sswitch_2
    const-string p3, "hideLoading"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/deepe/e/j;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    const/16 p3, 0x23

    goto :goto_0

    :sswitch_3
    const-string v0, "showActionSheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/deepe/e/j;->b(Lcom/deepe/e/d;Z)V

    goto :goto_1

    :sswitch_4
    const-string p3, "showToast"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/deepe/e/j;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    const/16 p3, 0x43

    :goto_0
    invoke-virtual {p2}, Lcom/deepe/e/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    const-string v0, "showModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/deepe/e/j;->a(Lcom/deepe/e/d;Z)V

    :goto_1
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72727a50 -> :sswitch_5
        -0x720fded6 -> :sswitch_4
        -0x20d0a274 -> :sswitch_3
        0xce38d9a -> :sswitch_2
        0x2b33b77f -> :sswitch_1
        0x3244c205 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/deepe/e/j;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
