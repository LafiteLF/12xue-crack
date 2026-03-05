.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;
.super Ljava/lang/Object;
.source "FormatMimeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;
    }
.end annotation


# static fields
.field private static sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;


# instance fields
.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getSingleton()Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;
    .locals 7

    .line 57
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v1, "application/ogg"

    const-string v2, "ogg"

    const-string v3, "OGG\u6587\u4ef6"

    .line 59
    invoke-direct {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    const-string v3, "PDF\u6587\u4ef6"

    invoke-direct {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v1, "\u538b\u7f29\u6587\u4ef6"

    const-string v2, "application/rar"

    const-string v3, "rar"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/rss+xml"

    const-string v3, "rss"

    const-string v4, "RSS\u6e90"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "zip"

    const-string v3, "application/zip"

    invoke-direct {v0, v3, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "application/x-zip-compressed"

    invoke-direct {v0, v3, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.android.package-archive"

    const-string v3, "apk"

    const-string v4, "\u5e94\u7528\u7a0b\u5e8f"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/msword"

    const-string v3, "DOC\u6587\u6863"

    const-string v4, "doc"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "dot"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v4, "docx"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v4, "dotx"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "EXCEL\u8868\u683c"

    const-string v3, "application/vnd.ms-excel"

    const-string v4, "xls"

    invoke-direct {v0, v3, v4, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "application/vnd.ms-excel"

    const-string v4, "xlt"

    invoke-direct {v0, v3, v4, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v4, "xlsx"

    invoke-direct {v0, v3, v4, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "xltx"

    const-string v4, "EXCEL\u8868\u683c\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "PPT\u6587\u4ef6"

    const-string v4, "ppt"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "pot"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "pps"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v4, "pptx"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v4, "potx"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v4, "ppsx"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-apple-diskimage"

    const-string v3, "dmg"

    const-string v4, "\u955c\u50cf\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-gtar"

    const-string v3, "gtar"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "tgz"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "taz"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-iso9660-image"

    const-string v3, "iso"

    const-string v4, "\u955c\u50cf\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-pkcs12"

    const-string v3, "p12"

    const-string v4, "P12\u8bc1\u4e66\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-pkcs7-certreqresp"

    const-string v3, "p7r"

    const-string v4, "P7R\u8bc1\u4e66\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-pkcs7-crl"

    const-string v3, "crl"

    const-string v4, "CRL\u8bc1\u4e66\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-shockwave-flash"

    const-string v3, "swf"

    const-string v4, "FLASH\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "application/x-tar"

    const-string v3, "tar"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v1, "application/x-webarchive"

    const-string v2, "webarchive"

    const-string v3, "WEB\u7f13\u5b58\u6587\u4ef6"

    invoke-direct {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v1, "application/xhtml+xml"

    const-string v2, "xhtml"

    const-string v3, "\u7f51\u9875\u6587\u4ef6"

    invoke-direct {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v1, "\u89c6\u9891\u6587\u4ef6"

    const-string v2, "audio/3gpp"

    const-string v3, "3gpp"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/basic"

    const-string v3, "snd"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/midi"

    const-string v3, "\u97f3\u9891\u6587\u4ef6"

    const-string v4, "mid"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "midi"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "kar"

    invoke-direct {v0, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/mpeg"

    const-string v4, "mpga"

    const-string v5, "MP3\u6587\u4ef6"

    invoke-direct {v0, v2, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "mpega"

    const-string v5, "MP4\u89c6\u9891\u6587\u4ef6"

    invoke-direct {v0, v2, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "mp2"

    const-string v5, "MP2\u6587\u4ef6"

    invoke-direct {v0, v2, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "mp3"

    const-string v5, "MP3\u6587\u4ef6"

    invoke-direct {v0, v2, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v4, "MP4\u6587\u4ef6"

    const-string v5, "m4a"

    invoke-direct {v0, v2, v5, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "mp4"

    invoke-direct {v0, v2, v5, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/mpegurl"

    const-string v5, "m3u"

    invoke-direct {v0, v2, v5, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/x-mpegurl"

    const-string v5, "m3u"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/x-ms-wma"

    const-string v5, "wma"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/x-ms-wax"

    const-string v5, "wax"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/x-pn-realaudio"

    const-string v5, "ra"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "rm"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "ram"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/x-realaudio"

    const-string v5, "ra"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "audio/x-wav"

    const-string v3, "wav"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/bmp"

    const-string v3, "bmp"

    const-string v5, "BMP\u683c\u5f0f\u56fe\u7247"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/gif"

    const-string v3, "gif"

    const-string v5, "GIF\u683c\u5f0f\u56fe\u7247"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/ico"

    const-string v3, "cur"

    const-string v5, "ICON\u56fe\u7247"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/ico"

    const-string v3, "ico"

    const-string v5, "ICON\u56fe\u7247"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/ief"

    const-string v3, "ief"

    const-string v5, "IEF\u683c\u5f0f\u56fe\u7247"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "JPG\u56fe\u7247"

    const-string v3, "image/jpeg"

    const-string v5, "jpeg"

    invoke-direct {v0, v3, v5, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "jpg"

    invoke-direct {v0, v3, v5, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "jpe"

    invoke-direct {v0, v3, v5, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/pcx"

    const-string v3, "pcx"

    const-string v5, "PCX\u56fe\u7247"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/png"

    const-string v3, "png"

    const-string v5, "PNG\u56fe\u7247"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/svg+xml"

    const-string v3, "svg"

    const-string v5, "SVG\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/svg+xml"

    const-string v3, "svgz"

    const-string v5, "SVG\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/tiff"

    const-string v3, "tiff"

    const-string v5, "\u5b57\u4f53\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/tiff"

    const-string v3, "tif"

    const-string v5, "\u5b57\u4f53\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/vnd.djvu"

    const-string v3, "djvu"

    const-string v5, "\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/vnd.djvu"

    const-string v3, "djv"

    const-string v5, "\u7535\u5b50\u4e66\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "wbmp"

    const-string v5, "WBMP\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/comma-separated-values"

    const-string v3, "csv"

    const-string v5, "CSV\u6587\u6863"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/css"

    const-string v3, "css"

    const-string v5, "CSS\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/html"

    const-string v3, "htm"

    const-string v5, "HTML\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/html"

    const-string v3, "html"

    const-string v5, "HTML\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/plain"

    const-string v3, "txt"

    const-string v5, "TXT\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "asc"

    const-string v5, "ASC\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "text"

    const-string v5, "TXT\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "diff"

    const-string v5, "DIFF\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/text"

    const-string v3, "phps"

    const-string v5, "PHP\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/xml"

    const-string v3, "xml"

    const-string v5, "XML\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-c++hdr"

    const-string v3, "\u6e90\u6587\u4ef6"

    const-string v5, "hpp"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "hxx"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "hh"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-c++src"

    const-string v5, "c++"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "cpp"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v5, "cxx"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-chdr"

    const-string v5, "h"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-component"

    const-string v5, "htc"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-csh"

    const-string v5, "csh"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-csrc"

    const-string v5, "c"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-dsrc"

    const-string v5, "d"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-haskell"

    const-string v5, "hs"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-java"

    const-string v5, "java"

    const-string v6, "JAVA\u6587\u4ef6"

    invoke-direct {v0, v2, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "text/x-literate-haskell"

    const-string v5, "lhs"

    invoke-direct {v0, v2, v5, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/3gpp"

    const-string v3, "3gpp"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "3gp"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "3g2"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/dl"

    const-string v3, "dl"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/dv"

    const-string v3, "dif"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/dv"

    const-string v3, "dv"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/fli"

    const-string v3, "fli"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/m4v"

    const-string v3, "m4v"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/mpeg"

    const-string v3, "mpeg"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "mpg"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "mpe"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "video/mp4"

    const-string v5, "mp4"

    invoke-direct {v0, v3, v5, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v3, "VOB"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/quicktime"

    const-string v3, "qt"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/quicktime"

    const-string v3, "mov"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/vnd.mpegurl"

    const-string v3, "mxu"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-la-asf"

    const-string v3, "lsf"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-la-asf"

    const-string v3, "lsx"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-mng"

    const-string v3, "mng"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-ms-asf"

    const-string v3, "asf"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-ms-asf"

    const-string v3, "asx"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-ms-wm"

    const-string v3, "wm"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-ms-wmv"

    const-string v3, "wmv"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-ms-wmx"

    const-string v3, "wmx"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-ms-wvx"

    const-string v3, "wvx"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-msvideo"

    const-string v3, "avi"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "video/x-sgi-movie"

    const-string v3, "movie"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "x-conference/x-cooltalk"

    const-string v3, "ice"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v2, "x-epoc/x-sisx-app"

    const-string v3, "sisx"

    invoke-direct {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    const-string v1, "application/octet-stream"

    const-string v2, ""

    const-string v3, "\u65e0\u6cd5\u8bc6\u522b\u7684\u6587\u4ef6"

    invoke-direct {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->sMimeTypeMap:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    return-object v0
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;

    invoke-direct {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 19
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;->extension:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;->mimeType:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getformatNameFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType$T;->formatName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
