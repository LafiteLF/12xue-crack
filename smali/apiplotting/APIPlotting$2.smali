.class Lapiplotting/APIPlotting$2;
.super Ljava/lang/Object;
.source "APIPlotting.java"

# interfaces
.implements Ldoodle/IDoodleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapiplotting/APIPlotting;->loadBitmap(Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapiplotting/APIPlotting;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lapiplotting/APIPlotting;Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    iput-object p2, p0, Lapiplotting/APIPlotting$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lapiplotting/APIPlotting$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Ldoodle/core/IDoodle;)V
    .locals 3

    .line 173
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    iget-object p1, p1, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->requestFocus()Z

    .line 175
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    new-instance v0, Ldoodle/DoodleParams;

    invoke-direct {v0}, Ldoodle/DoodleParams;-><init>()V

    invoke-static {p1, v0}, Lapiplotting/APIPlotting;->access$102(Lapiplotting/APIPlotting;Ldoodle/DoodleParams;)Ldoodle/DoodleParams;

    .line 176
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$100(Lapiplotting/APIPlotting;)Ldoodle/DoodleParams;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Ldoodle/DoodleParams;->mImagePath:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$100(Lapiplotting/APIPlotting;)Ldoodle/DoodleParams;

    move-result-object p1

    iput-object v0, p1, Ldoodle/DoodleParams;->mSavePath:Ljava/lang/String;

    .line 178
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$100(Lapiplotting/APIPlotting;)Ldoodle/DoodleParams;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Ldoodle/DoodleParams;->mSavePathIsDir:Z

    .line 181
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    div-int/lit16 p1, p1, 0x2d0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReady set :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DDDDD"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v0}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object v0

    int-to-float p1, p1

    invoke-interface {v0, p1}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 184
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object p1

    new-instance v0, Ldoodle/DoodleColor;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 186
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 187
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object p1

    sget-object v0, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    .line 188
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object p1

    iget-object v0, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v0}, Lapiplotting/APIPlotting;->access$100(Lapiplotting/APIPlotting;)Ldoodle/DoodleParams;

    move-result-object v0

    iget v0, v0, Ldoodle/DoodleParams;->mZoomerScale:F

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setZoomerScale(F)V

    .line 191
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$500(Lapiplotting/APIPlotting;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$500(Lapiplotting/APIPlotting;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$500(Lapiplotting/APIPlotting;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getSize()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$500(Lapiplotting/APIPlotting;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$500(Lapiplotting/APIPlotting;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    iget-object v0, p0, Lapiplotting/APIPlotting$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1, v0}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public onSaved(Ldoodle/core/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 4

    .line 125
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$100(Lapiplotting/APIPlotting;)Ldoodle/DoodleParams;

    move-result-object p1

    iget-object p1, p1, Ldoodle/DoodleParams;->mSavePath:Ljava/lang/String;

    .line 126
    iget-object p3, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p3}, Lapiplotting/APIPlotting;->access$100(Lapiplotting/APIPlotting;)Ldoodle/DoodleParams;

    move-result-object p3

    iget-boolean p3, p3, Ldoodle/DoodleParams;->mSavePathIsDir:Z

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".png"

    const-string v2, "plotting_file_"

    if-eqz v0, :cond_0

    .line 128
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p3

    const-string v0, "DCIM"

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    new-instance p3, Ljava/io/File;

    const-string v0, "Doodle"

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v2}, Lapiplotting/APIPlotting;->access$200(Lapiplotting/APIPlotting;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroids/utils/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 134
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v2}, Lapiplotting/APIPlotting;->access$200(Lapiplotting/APIPlotting;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroids/utils/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    .line 142
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    const/4 p3, 0x0

    .line 145
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 147
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 148
    iget-object p2, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-virtual {p2}, Lapiplotting/APIPlotting;->context()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroids/utils/ImageUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    .line 149
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "path"

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$300(Lapiplotting/APIPlotting;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    .line 153
    :try_start_2
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$200(Lapiplotting/APIPlotting;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :catch_0
    :try_start_3
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$300(Lapiplotting/APIPlotting;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p3

    goto :goto_2

    :catch_1
    move-object v0, p3

    .line 161
    :catch_2
    :try_start_4
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1}, Lapiplotting/APIPlotting;->access$300(Lapiplotting/APIPlotting;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 162
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    const-string p2, "\u4fdd\u5b58\u5931\u8d25"

    iget-object v1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {v1}, Lapiplotting/APIPlotting;->access$300(Lapiplotting/APIPlotting;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 165
    :cond_2
    :goto_1
    invoke-static {v0}, Landroids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    iget-object p1, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p1, p3}, Lapiplotting/APIPlotting;->access$302(Lapiplotting/APIPlotting;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void

    :catchall_1
    move-exception p1

    .line 165
    :goto_2
    invoke-static {v0}, Landroids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    iget-object p2, p0, Lapiplotting/APIPlotting$2;->this$0:Lapiplotting/APIPlotting;

    invoke-static {p2, p3}, Lapiplotting/APIPlotting;->access$302(Lapiplotting/APIPlotting;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 167
    throw p1
.end method
