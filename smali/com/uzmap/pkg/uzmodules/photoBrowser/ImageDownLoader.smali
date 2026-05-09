.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;
.super Landroid/os/AsyncTask;
.source "ImageDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static mCachePath:Ljava/lang/String;


# instance fields
.field private mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 164
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 165
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 164
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 62
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->getDataFromNet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataFromNet(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 73
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mCachePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "https"

    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 93
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    if-eqz p1, :cond_2

    .line 99
    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;->onFailed()V

    :cond_2
    return-object v1

    .line 106
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    if-eqz p1, :cond_4

    .line 112
    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;->onFailed()V

    :cond_4
    return-object v1

    :catch_2
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 83
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    if-eqz p1, :cond_5

    .line 84
    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;->onFailed()V

    :cond_5
    return-object v1
.end method

.method protected onCancelled()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;->onCancel()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;->onFinish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;->onStart()V

    :cond_0
    return-void
.end method

.method public saveFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "/"

    const/16 v1, 0x800

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 124
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mCachePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 135
    :goto_0
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    .line 136
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mCachePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 152
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 140
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mCachePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v2

    .line 150
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 152
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    :goto_4
    throw p1

    :catch_4
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 127
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mDownLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;

    if-eqz p1, :cond_2

    .line 128
    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;->onFailed()V

    :cond_2
    return-object v2
.end method
