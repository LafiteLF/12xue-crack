.class public Lcom/deepe/e/b;
.super Lcom/deepe/e/c;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/e/c;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/e/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/e/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/deepe/c/a/i;->a(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v0, "setClipboardData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lcom/deepe/e/d;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/deepe/e/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/a/b/c;->a(Landroid/content/Context;)Lcom/deepe/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz p3, :cond_2

    new-instance p2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    if-eqz v0, :cond_1

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Z)V

    :goto_0
    return-object p2

    :cond_2
    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2, v2}, Lcom/deepe/e/d;->error(Lorg/json/JSONObject;)V

    goto/16 :goto_4

    :sswitch_1
    const-string p2, "getBatteryInfo"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_4

    :sswitch_2
    const-string p2, "hideKeyboard"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/deepe/e/b;->c()V

    goto/16 :goto_4

    :sswitch_3
    const-string v0, "vibrateShort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string p1, "type"

    invoke-virtual {p2, p1}, Lcom/deepe/e/d;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/deepe/e/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/a/b/k;->a(Landroid/content/Context;)Lcom/deepe/a/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/a/b/k;->a(Ljava/lang/String;)V

    if-nez p3, :cond_a

    goto :goto_3

    :sswitch_4
    const-string p2, "getBatteryInfoSync"

    goto :goto_1

    :sswitch_5
    const-string p2, "setVisualEffectOnCapture"

    goto :goto_1

    :sswitch_6
    const-string p2, "getScreenBrightness"

    goto :goto_1

    :sswitch_7
    const-string p2, "getScreenRecordingState"

    goto :goto_1

    :sswitch_8
    const-string v0, "getClipboardData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/deepe/e/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/a/b/c;->a(Landroid/content/Context;)Lcom/deepe/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/a/b/c;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_8

    if-nez p1, :cond_7

    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Z)V

    goto :goto_2

    :cond_7
    new-instance p2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    return-object p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/deepe/e/b;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;)V

    goto :goto_4

    :sswitch_9
    const-string p2, "getSelectedTextRange"

    goto :goto_1

    :sswitch_a
    const-string p2, "setScreenBrightness"

    goto :goto_1

    :sswitch_b
    const-string v0, "vibrateLong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/deepe/e/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/a/b/k;->a(Landroid/content/Context;)Lcom/deepe/a/b/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/a/b/k;->b()V

    if-nez p3, :cond_a

    :goto_3
    invoke-virtual {p2, v2}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;)V

    goto :goto_4

    :sswitch_c
    const-string p2, "addPhoneContact"

    goto/16 :goto_1

    :sswitch_d
    const-string p2, "checkIsOpenAccessibility"

    goto/16 :goto_1

    :cond_a
    :goto_4
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x798dcb0e -> :sswitch_d
        -0x7098f5ed -> :sswitch_c
        -0x511b9f75 -> :sswitch_b
        -0x5085d1a1 -> :sswitch_a
        -0x4fef5501 -> :sswitch_9
        -0x34d8bd56 -> :sswitch_8
        -0xaf17ede -> :sswitch_7
        0xb7d9953 -> :sswitch_6
        0x154aaf34 -> :sswitch_5
        0x19047360 -> :sswitch_4
        0x2e072c4d -> :sswitch_3
        0x3f895349 -> :sswitch_2
        0x526aff25 -> :sswitch_1
        0x5dfda91e -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setClipboardData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getBatteryInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "hideKeyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "vibrateShort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v0, "getBatteryInfoSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_5
    const-string v0, "setVisualEffectOnCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_6
    const-string v0, "getScreenBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_7
    const-string v0, "getScreenRecordingState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_8
    const-string v0, "getClipboardData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_9
    const-string v0, "getSelectedTextRange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_a
    const-string v0, "setScreenBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_b
    const-string v0, "vibrateLong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_c
    const-string v0, "addPhoneContact"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_d
    const-string v0, "checkIsOpenAccessibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x798dcb0e -> :sswitch_d
        -0x7098f5ed -> :sswitch_c
        -0x511b9f75 -> :sswitch_b
        -0x5085d1a1 -> :sswitch_a
        -0x4fef5501 -> :sswitch_9
        -0x34d8bd56 -> :sswitch_8
        -0xaf17ede -> :sswitch_7
        0xb7d9953 -> :sswitch_6
        0x154aaf34 -> :sswitch_5
        0x19047360 -> :sswitch_4
        0x2e072c4d -> :sswitch_3
        0x3f895349 -> :sswitch_2
        0x526aff25 -> :sswitch_1
        0x5dfda91e -> :sswitch_0
    .end sparse-switch
.end method
