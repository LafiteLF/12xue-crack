.class public abstract Lcom/apicloud/third/gif/GifDrawableInit;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/third/gif/GifDrawableInit<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mInputSource:Lcom/apicloud/third/gif/InputSource;

.field private mIsRenderingTriggeredOnDraw:Z

.field private mOldDrawable:Lcom/apicloud/third/gif/GifDrawable;

.field private final mOptions:Lcom/apicloud/third/gif/GifOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    new-instance v0, Lcom/apicloud/third/gif/GifOptions;

    invoke-direct {v0}, Lcom/apicloud/third/gif/GifOptions;-><init>()V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOptions:Lcom/apicloud/third/gif/GifOptions;

    return-void
.end method


# virtual methods
.method public build()Lcom/apicloud/third/gif/GifDrawable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOldDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v3, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    iget-object v4, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOptions:Lcom/apicloud/third/gif/GifOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/apicloud/third/gif/InputSource;->createGifDrawable(Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLcom/apicloud/third/gif/GifOptions;)Lcom/apicloud/third/gif/GifDrawable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source is not set"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public from(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$UriSource;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/third/gif/InputSource$UriSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Landroid/content/res/AssetFileDescriptor;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetFileDescriptor;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$AssetFileDescriptorSource;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/InputSource$AssetFileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$AssetSource;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/third/gif/InputSource$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Landroid/content/res/Resources;I)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$ResourcesSource;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/third/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/io/File;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/InputSource$FileSource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/io/FileDescriptor;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$FileDescriptorSource;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/InputSource$FileDescriptorSource;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/io/InputStream;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$InputStreamSource;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/InputSource$InputStreamSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/lang/String;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/InputSource$FileSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/nio/ByteBuffer;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$DirectByteBufferSource;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/InputSource$DirectByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public from([B)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/InputSource$ByteArraySource;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/InputSource$ByteArraySource;-><init>([B)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public getInputSource()Lcom/apicloud/third/gif/InputSource;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    return-object v0
.end method

.method public getOldDrawable()Lcom/apicloud/third/gif/GifDrawable;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOldDrawable:Lcom/apicloud/third/gif/GifDrawable;

    return-object v0
.end method

.method public getOptions()Lcom/apicloud/third/gif/GifOptions;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOptions:Lcom/apicloud/third/gif/GifOptions;

    return-object v0
.end method

.method public isRenderingTriggeredOnDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    return v0
.end method

.method public options(Lcom/apicloud/third/gif/GifOptions;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/third/gif/GifOptions;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOptions:Lcom/apicloud/third/gif/GifOptions;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifOptions;->setFrom(Lcom/apicloud/third/gif/GifOptions;)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public renderingTriggeredOnDraw(Z)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public sampleSize(I)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOptions:Lcom/apicloud/third/gif/GifOptions;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifOptions;->setInSampleSize(I)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method protected abstract self()Lcom/apicloud/third/gif/GifDrawableInit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setRenderingTriggeredOnDraw(Z)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/apicloud/third/gif/GifDrawableInit;->renderingTriggeredOnDraw(Z)Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public taskExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public threadPoolSize(I)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/apicloud/third/gif/GifDrawable;)Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/third/gif/GifDrawable;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawableInit;->mOldDrawable:Lcom/apicloud/third/gif/GifDrawable;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableInit;->self()Lcom/apicloud/third/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method
