.class Ldoodle/imagepicker/ImageSelectorView$3;
.super Ljava/lang/Object;
.source "ImageSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/imagepicker/ImageSelectorView;->scanImageData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/imagepicker/ImageSelectorView;


# direct methods
.method constructor <init>(Ldoodle/imagepicker/ImageSelectorView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 147
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 148
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-virtual {v0}, Ldoodle/imagepicker/ImageSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "image/jpeg"

    const-string v3, "image/png"

    .line 151
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v3, "mime_type=? or mime_type=?"

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 157
    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v1}, Ldoodle/imagepicker/ImageSelectorView;->access$900(Ldoodle/imagepicker/ImageSelectorView;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    move v2, v1

    .line 160
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    if-ge v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    const-string v3, "_data"

    .line 163
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v4}, Ldoodle/imagepicker/ImageSelectorView;->access$100(Ldoodle/imagepicker/ImageSelectorView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v0}, Ldoodle/imagepicker/ImageSelectorView;->access$900(Ldoodle/imagepicker/ImageSelectorView;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ldoodle/imagepicker/ImageSelectorView;->access$902(Ldoodle/imagepicker/ImageSelectorView;I)I

    .line 170
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v0, v1}, Ldoodle/imagepicker/ImageSelectorView;->access$602(Ldoodle/imagepicker/ImageSelectorView;Z)Z

    const/4 v0, 0x1

    if-ge v2, v4, :cond_2

    .line 172
    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v1, v0}, Ldoodle/imagepicker/ImageSelectorView;->access$502(Ldoodle/imagepicker/ImageSelectorView;Z)Z

    .line 174
    :cond_2
    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$3;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v1}, Ldoodle/imagepicker/ImageSelectorView;->access$1000(Ldoodle/imagepicker/ImageSelectorView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
