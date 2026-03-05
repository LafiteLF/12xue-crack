.class Lk12/education/camaramodule/NewCameraActivity$2;
.super Ljava/lang/Object;
.source "NewCameraActivity.java"

# interfaces
.implements Lk12/education/camaramodule/listener/JCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/NewCameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/NewCameraActivity;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/NewCameraActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lk12/education/camaramodule/NewCameraActivity$2;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureSuccess(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JCameraView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "imgUrl"

    .line 88
    invoke-static {v0, p1}, Lk12/education/camaramodule/util/FileUtil;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 90
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "paizhao"

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key2"

    const-string v2, "value2"

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key3"

    const-string v2, "value3"

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lk12/education/camaramodule/NewCameraActivity$2;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lk12/education/camaramodule/NewCameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity$2;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    invoke-virtual {p1}, Lk12/education/camaramodule/NewCameraActivity;->finish()V

    return-void
.end method

.method public recordSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 107
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ret"

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "videoUrl"

    .line 111
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity$2;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lk12/education/camaramodule/NewCameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity$2;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    invoke-virtual {p1}, Lk12/education/camaramodule/NewCameraActivity;->finish()V

    return-void
.end method
