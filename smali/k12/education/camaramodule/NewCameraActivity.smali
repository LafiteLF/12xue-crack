.class public Lk12/education/camaramodule/NewCameraActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NewCameraActivity.java"


# instance fields
.field private final GET_PERMISSION_REQUEST:I

.field private granted:Z

.field private jCameraView:Lk12/education/camaramodule/JCameraView;

.field private mediaQuality:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x64

    .line 30
    iput v0, p0, Lk12/education/camaramodule/NewCameraActivity;->GET_PERMISSION_REQUEST:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lk12/education/camaramodule/NewCameraActivity;->granted:Z

    return-void
.end method

.method static synthetic access$000(Lk12/education/camaramodule/NewCameraActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lk12/education/camaramodule/NewCameraActivity;->getPermissions()V

    return-void
.end method

.method private getPermissions()V
    .locals 4

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 180
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.RECORD_AUDIO"

    if-nez v1, :cond_0

    .line 181
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lk12/education/camaramodule/NewCameraActivity;->granted:Z

    goto :goto_0

    .line 187
    :cond_0
    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lk12/education/camaramodule/NewCameraActivity;->granted:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lk12/education/camaramodule/R$layout;->mo_cameramodule_activity_camara:I

    invoke-virtual {p0, p1}, Lk12/education/camaramodule/NewCameraActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lk12/education/camaramodule/NewCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "time"

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lk12/education/camaramodule/NewCameraActivity;->time:I

    .line 43
    invoke-virtual {p0}, Lk12/education/camaramodule/NewCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mediaQuality"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->mediaQuality:Ljava/lang/String;

    .line 45
    sget p1, Lk12/education/camaramodule/R$id;->jcameraview:I

    invoke-virtual {p0, p1}, Lk12/education/camaramodule/NewCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lk12/education/camaramodule/JCameraView;

    iput-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    .line 47
    iget v0, p0, Lk12/education/camaramodule/NewCameraActivity;->time:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setVideoTime(I)V

    .line 50
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "12xue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setSaveVideoPath(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    const/16 v0, 0x102

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setFeatures(I)V

    .line 56
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->mediaQuality:Ljava/lang/String;

    const-string v0, "high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x1e8480

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setMediaQuality(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->mediaQuality:Ljava/lang/String;

    const-string v1, "middle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    const v1, 0x186a00

    invoke-virtual {p1, v1}, Lk12/education/camaramodule/JCameraView;->setMediaQuality(I)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->mediaQuality:Ljava/lang/String;

    const-string v1, "low"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    const v1, 0x124f80

    invoke-virtual {p1, v1}, Lk12/education/camaramodule/JCameraView;->setMediaQuality(I)V

    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setMediaQuality(I)V

    .line 67
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    new-instance v0, Lk12/education/camaramodule/NewCameraActivity$1;

    invoke-direct {v0, p0}, Lk12/education/camaramodule/NewCameraActivity$1;-><init>(Lk12/education/camaramodule/NewCameraActivity;)V

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setErrorLisenter(Lk12/education/camaramodule/listener/ErrorListener;)V

    .line 83
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    new-instance v0, Lk12/education/camaramodule/NewCameraActivity$2;

    invoke-direct {v0, p0}, Lk12/education/camaramodule/NewCameraActivity$2;-><init>(Lk12/education/camaramodule/NewCameraActivity;)V

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setJCameraLisenter(Lk12/education/camaramodule/listener/JCameraListener;)V

    .line 121
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    new-instance v0, Lk12/education/camaramodule/NewCameraActivity$3;

    invoke-direct {v0, p0}, Lk12/education/camaramodule/NewCameraActivity$3;-><init>(Lk12/education/camaramodule/NewCameraActivity;)V

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setLeftClickListener(Lk12/education/camaramodule/listener/ClickListener;)V

    .line 128
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    new-instance v0, Lk12/education/camaramodule/NewCameraActivity$4;

    invoke-direct {v0, p0}, Lk12/education/camaramodule/NewCameraActivity$4;-><init>(Lk12/education/camaramodule/NewCameraActivity;)V

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/JCameraView;->setRightClickListener(Lk12/education/camaramodule/listener/ClickListener;)V

    .line 136
    invoke-direct {p0}, Lk12/education/camaramodule/NewCameraActivity;->getPermissions()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 172
    iget-object v0, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    invoke-virtual {v0}, Lk12/education/camaramodule/JCameraView;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 199
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_7

    .line 202
    array-length p1, p3

    const/4 p2, 0x1

    if-lt p1, p2, :cond_7

    const/4 p1, 0x0

    .line 203
    aget v0, p3, p1

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-nez v0, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    move v0, p1

    .line 210
    :goto_1
    aget v1, p3, p2

    if-nez v1, :cond_2

    move v1, p2

    goto :goto_2

    :cond_2
    move v1, p1

    :goto_2
    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v1, 0x2

    .line 216
    aget p3, p3, v1

    if-nez p3, :cond_4

    move p3, p2

    goto :goto_3

    :cond_4
    move p3, p1

    :goto_3
    if-nez p3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-nez v0, :cond_6

    .line 222
    iput-boolean p2, p0, Lk12/education/camaramodule/NewCameraActivity;->granted:Z

    .line 223
    iget-object p1, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    invoke-virtual {p1}, Lk12/education/camaramodule/JCameraView;->onResume()V

    goto :goto_4

    :cond_6
    const-string p2, "\u8bf7\u5230\u8bbe\u7f6e-\u6743\u9650\u7ba1\u7406\u4e2d\u5f00\u542f"

    .line 225
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 226
    invoke-virtual {p0}, Lk12/education/camaramodule/NewCameraActivity;->finish()V

    :cond_7
    :goto_4
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 164
    iget-boolean v0, p0, Lk12/education/camaramodule/NewCameraActivity;->granted:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lk12/education/camaramodule/NewCameraActivity;->jCameraView:Lk12/education/camaramodule/JCameraView;

    invoke-virtual {v0}, Lk12/education/camaramodule/JCameraView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 141
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lk12/education/camaramodule/NewCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lk12/education/camaramodule/NewCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
